# Washington Anesthesia Partners — local preview server
# Uses raw TCP sockets (no admin rights needed)
# Open http://localhost:3000 in your browser

$port = 3000
$root = $PSScriptRoot

$mimeTypes = @{
    '.html'  = 'text/html; charset=utf-8'
    '.css'   = 'text/css; charset=utf-8'
    '.js'    = 'application/javascript'
    '.jpg'   = 'image/jpeg'
    '.jpeg'  = 'image/jpeg'
    '.png'   = 'image/png'
    '.gif'   = 'image/gif'
    '.svg'   = 'image/svg+xml'
    '.ico'   = 'image/x-icon'
    '.woff'  = 'font/woff'
    '.woff2' = 'font/woff2'
    '.pdf'   = 'application/pdf'
}

$endpoint = [System.Net.IPEndPoint]::new([System.Net.IPAddress]::Loopback, $port)
$server   = [System.Net.Sockets.TcpListener]::new($endpoint)
$server.Start()

Write-Host ""
Write-Host "  Server running at http://localhost:$port" -ForegroundColor Green
Write-Host "  Serving: $root" -ForegroundColor Cyan
Write-Host "  Press Ctrl+C to stop." -ForegroundColor Yellow
Write-Host ""

function Send-Response($stream, $status, $mime, $body) {
    $statusLine = "HTTP/1.1 $status`r`n"
    $headers    = "Content-Type: $mime`r`nContent-Length: $($body.Length)`r`nConnection: close`r`n`r`n"
    $head = [System.Text.Encoding]::ASCII.GetBytes($statusLine + $headers)
    $stream.Write($head, 0, $head.Length)
    $stream.Write($body, 0, $body.Length)
}

try {
    while ($true) {
        $client = $server.AcceptTcpClient()
        $stream = $client.GetStream()

        # Read the HTTP request line
        $reader  = [System.IO.StreamReader]::new($stream, [System.Text.Encoding]::ASCII)
        $reqLine = $reader.ReadLine()
        if (-not $reqLine) { $client.Close(); continue }

        # Parse: GET /path HTTP/1.1
        $parts   = $reqLine -split ' '
        $urlPath = if ($parts.Count -ge 2) { $parts[1] } else { '/' }
        # Strip query string
        $urlPath = ($urlPath -split '\?')[0]

        # Map to file path
        $relPath  = $urlPath.TrimStart('/').Replace('/', [System.IO.Path]::DirectorySeparatorChar)
        $filePath = Join-Path $root $relPath
        if ((Test-Path $filePath -PathType Container)) {
            $filePath = Join-Path $filePath 'index.html'
        }

        if (Test-Path $filePath -PathType Leaf) {
            $ext    = [System.IO.Path]::GetExtension($filePath).ToLower()
            $mime   = if ($mimeTypes[$ext]) { $mimeTypes[$ext] } else { 'application/octet-stream' }
            $body   = [System.IO.File]::ReadAllBytes($filePath)
            Send-Response $stream "200 OK" $mime $body
            Write-Host "  200  $urlPath"
        } else {
            $body = [System.Text.Encoding]::UTF8.GetBytes("404 Not Found: $urlPath")
            Send-Response $stream "404 Not Found" "text/plain" $body
            Write-Host "  404  $urlPath"
        }

        $stream.Flush()
        $client.Close()
    }
} finally {
    $server.Stop()
    Write-Host "Server stopped." -ForegroundColor Red
}
