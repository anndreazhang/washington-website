# Brand Guide: Washington Anesthesia Partners
**Created:** 2026-06-22
**Status:** APPROVED — use these values for the rebuild

---

## Brand Personality

Washington Anesthesia Partners serves ambulatory surgery centers and physician offices across the Pacific Northwest.
The brand should feel:
- **Precise** — anesthesia is an exact science; the design reflects that exactness
- **Grounded** — earthy, Pacific Northwest energy: composed, unhurried, trustworthy
- **Refined** — not clinical-cold or corporate-generic; elevated and intentional
- **Accessible** — serves multiple audiences (patients, facilities, providers, billing)

The visual language should read like a specialized, highly capable regional practice — not a hospital system, not a startup. Confident without being loud.

**Distinction from Wisconsin site:** Wisconsin uses cool navy blues, a bold serif, and a colder/more institutional palette. Washington uses warm forest greens, a more elegant serif, and a warmer/more grounded palette. The two sites should feel like sister companies — related industry, clearly distinct identities.

---

## Color Palette

### Primary Colors

| Name | Hex | RGB | Usage |
|---|---|---|---|
| Forest Deep | `#0D2818` | 13, 40, 24 | Nav background, footer, darkest text |
| Forest Mid | `#174030` | 23, 64, 48 | Dark section backgrounds, hover states |
| Evergreen | `#1B6B43` | 27, 107, 67 | Primary buttons, links, accents |
| Sage Bright | `#2A9960` | 42, 153, 96 | Button hover, active highlights |

### Secondary / Accent Colors

| Name | Hex | RGB | Usage |
|---|---|---|---|
| Amber | `#B87333` | 184, 115, 51 | Rare — badges, "20+ years" callouts, trust signals |
| Amber Light | `#F5EBD9` | 245, 235, 217 | Amber icon backgrounds, warm badge tints |

### Neutral Colors

| Name | Hex | RGB | Usage |
|---|---|---|---|
| Warm White | `#FAFAF8` | 250, 250, 248 | Page backgrounds, card backgrounds |
| Cream | `#F2F0EA` | 242, 240, 234 | Alternating section backgrounds |
| Stone Border | `#DDD9CE` | 221, 217, 206 | Card borders, dividers, input borders |
| Text Dark | `#0C1A10` | 12, 26, 16 | Main headings |
| Text Body | `#374840` | 55, 72, 64 | Body paragraphs |
| Text Muted | `#7A8C7E` | 122, 140, 126 | Dates, labels, secondary info |

### Status / Semantic Colors

| Name | Hex | Usage |
|---|---|---|
| Success | `#16A34A` | Form success, checkmarks |
| Error | `#DC2626` | Form validation errors |

### CSS Variables (copy into every stylesheet)
```css
:root {
  --color-forest-deep:   #0D2818;
  --color-forest-mid:    #174030;
  --color-evergreen:     #1B6B43;
  --color-sage-bright:   #2A9960;
  --color-amber:         #B87333;
  --color-amber-light:   #F5EBD9;

  --color-warm-white:    #FAFAF8;
  --color-cream:         #F2F0EA;
  --color-border:        #DDD9CE;

  --color-text-dark:     #0C1A10;
  --color-text-body:     #374840;
  --color-text-muted:    #7A8C7E;

  --color-success:       #16A34A;
  --color-error:         #DC2626;
}
```

---

## Typography

### Font Stack
Both fonts load from Google Fonts.

```html
<link href="https://fonts.googleapis.com/css2?family=DM+Serif+Display:ital@0;1&family=DM+Sans:wght@300;400;500;600;700&display=swap" rel="stylesheet" />
```

| Role | Font | Weight | Notes |
|---|---|---|---|
| Display / Hero | DM Serif Display | 400 (regular) | H1 only — elegant, precise serif |
| Section Headings | DM Serif Display | 400 | H2, H3 — italics sparingly for sub-labels |
| UI / Body | DM Sans | 300, 400, 500, 600, 700 | Everything else |

**Why DM Serif Display:** More delicate and refined than Playfair Display (Wisconsin). Thinner strokes, tighter letterforms, slightly literary feel. Works at large sizes without looking heavy.

**Why DM Sans:** Clean geometric sans, slightly warmer than Inter. Excellent legibility for medical/clinical text. The DM family pairing is intentional — the two fonts were designed together and share proportional harmony.

### Type Scale

| Token | Size | Weight | Font | Usage |
|---|---|---|---|---|
| `--text-hero` | clamp(2.6rem, 5.5vw, 4.2rem) | 400 | DM Serif Display | Hero headline |
| `--text-h2` | clamp(1.9rem, 3.5vw, 2.8rem) | 400 | DM Serif Display | Section titles |
| `--text-h3` | 1.15rem | 600 | DM Sans | Card titles, subsection heads |
| `--text-body-lg` | 1.05rem | 300 | DM Sans | Lead paragraphs, hero sub-copy |
| `--text-body` | 0.95rem | 400 | DM Sans | Standard body copy |
| `--text-sm` | 0.85rem | 400 | DM Sans | Captions, dates, labels |
| `--text-label` | 0.72rem | 700 | DM Sans | Section eyebrow labels (uppercase, tracked) |

### CSS Variables (type)
```css
:root {
  --font-serif: 'DM Serif Display', Georgia, serif;
  --font-sans:  'DM Sans', system-ui, sans-serif;

  --text-hero:    clamp(2.6rem, 5.5vw, 4.2rem);
  --text-h2:      clamp(1.9rem, 3.5vw, 2.8rem);
  --text-h3:      1.15rem;
  --text-body-lg: 1.05rem;
  --text-body:    0.95rem;
  --text-sm:      0.85rem;
  --text-label:   0.72rem;
}
```

### Typography Rules
- Section eyebrow labels (e.g. "ABOUT US", "OUR SERVICES") are always `--text-label`, `font-weight: 700`, `letter-spacing: 0.12em`, `text-transform: uppercase`, colored `--color-evergreen`
- Section titles use `--font-serif` + `--text-h2` in `--color-text-dark`
- Body copy uses `--font-sans` + `--color-text-body`
- DM Serif Display italic (`font-style: italic`) can be used for pull-quote emphasis or decorative sub-labels
- Never use DM Serif Display below 1.1rem

---

## Spacing System

Same 4px base unit as Wisconsin — consistent internal standard.

```css
:root {
  --space-1:  4px;
  --space-2:  8px;
  --space-3:  12px;
  --space-4:  16px;
  --space-5:  20px;
  --space-6:  24px;
  --space-8:  32px;
  --space-10: 40px;
  --space-12: 48px;
  --space-16: 64px;
  --space-20: 80px;
  --space-24: 96px;
}
```

- Section vertical padding: `var(--space-20)` top and bottom (80px)
- Card internal padding: `var(--space-8)` (32px)
- Nav height: 72px fixed
- Max content width: 1200px, centered

---

## Border & Shape

Slightly more refined than Wisconsin — slightly larger radii, softer card edges.

```css
:root {
  --radius-sm:   6px;    /* buttons, inputs, small badges */
  --radius-md:   14px;   /* cards */
  --radius-lg:   20px;   /* image containers, large cards */
  --radius-xl:   28px;   /* hero badges, pill shapes */
  --radius-full: 9999px; /* fully round pills */
  --shadow-sm:   0 2px 8px rgba(13,40,24,0.06);
  --shadow-md:   0 8px 24px rgba(13,40,24,0.10);
  --shadow-lg:   0 20px 48px rgba(13,40,24,0.14);
}
```

---

## Buttons

### Primary Button (dark forest background)
```css
background: var(--color-forest-deep);
color: #fff;
padding: 0.85rem 1.85rem;
border-radius: var(--radius-sm);
font-family: var(--font-sans);
font-weight: 600;
font-size: var(--text-body);
letter-spacing: 0.01em;
/* hover: */ background: var(--color-forest-mid);
```

### Secondary Button (evergreen)
```css
background: var(--color-evergreen);
color: #fff;
padding: 0.85rem 1.85rem;
border-radius: var(--radius-sm);
font-weight: 600;
/* hover: */ background: var(--color-sage-bright);
```

### Ghost Button (outlined, for use on dark/photo backgrounds)
```css
background: transparent;
color: #fff;
border: 1.5px solid rgba(255,255,255,0.50);
padding: 0.85rem 1.85rem;
border-radius: var(--radius-sm);
font-weight: 600;
/* hover: */ border-color: #fff; background: rgba(255,255,255,0.10);
```

### Outline Button (on light backgrounds)
```css
background: transparent;
color: var(--color-evergreen);
border: 2px solid var(--color-evergreen);
padding: 0.8rem 1.85rem;
border-radius: var(--radius-sm);
font-weight: 700;
/* hover: */ background: var(--color-evergreen); color: #fff;
```

---

## Iconography

- Use emoji icons as placeholders during build (📅 🤝 🧾 📦 ✅ 📋)
- Preferred replacement: [Lucide Icons](https://lucide.dev) — same library as Wisconsin for consistency
- Icon container size: 52×52px with `--radius-md` background tint

### Icon Color Pairings
| Icon type | Background | Icon color |
|---|---|---|
| Green (scheduling, QA) | `#D1F0DC` | `--color-evergreen` |
| Forest (compliance, recruiting) | `#C7DDD0` | `--color-forest-mid` |
| Amber (billing, inventory) | `--color-amber-light` | `--color-amber` |
| Sage (secondary actions) | `#E0F3EB` | `--color-sage-bright` |

---

## Photography Style

- **Subject matter:** OR environments, anesthesia professionals, ambulatory surgery centers, provider-patient interaction
- **Tone:** Calm, precise, professional — Pacific Northwest natural light when possible (bright, clear, not dramatic)
- **Source:** Unsplash (free) — search: `anesthesiologist OR`, `ambulatory surgery`, `medical team`, `operating room professional`
- **Avoid:** Dark/dramatic medical imagery, overly staged stock, visible patient faces, generic hospital hallways

### Hero Image Treatment
- Full-bleed background image
- Overlay: `linear-gradient(135deg, rgba(13,40,24,0.90), rgba(23,64,48,0.75))` — deep forest overlay

---

## Section Background Pattern

| Section | Background |
|---|---|
| Hero | Dark forest overlay on photo |
| About | `--color-warm-white` |
| Services | `--color-cream` |
| Blog Preview | `--color-warm-white` |
| Contact | `--color-forest-deep` (dark, full inversion) |
| Footer | `--color-forest-deep` |

*Note: No mid-page dark section like Wisconsin's "Why Work With Us." The Washington site uses its dark color only at the contact/footer end of the page.*

---

## Contact Form Pages

Each contact page has a banner image, a heading, and a targeted form. The 4 form pages are:

### General Inquiries (`/general-inquiries/`)
Fields: Title, Contact Name, Practice or Facility Name, Phone, Email, Message, File upload, Privacy Policy checkbox
Submit label: **Send**

### Clients (`/clients/`)
Fields: Title, Contact Name, Practice or Facility Name, Phone, Email, Message, File upload, Privacy Policy checkbox
Submit label: **Send**

### Billing (`/billing/`)
Fields: Contact Name, Phone, Email, Message, File upload, Privacy Policy checkbox
Submit label: **Send**
*(No Title or Facility Name field)*

### Anesthesia Providers (`/anesthesia-providers/`)
Fields: Contact Name, Degree, Phone, Email, Comments *(not "Message")*, CV upload *(not "File")*, Privacy Policy checkbox
Submit label: **Send**

### Form Visual Style
```css
/* Input fields */
background: var(--color-warm-white);
border: 1.5px solid var(--color-border);
border-radius: var(--radius-sm);
padding: 0.75rem 1rem;
font-family: var(--font-sans);
font-size: var(--text-body);
color: var(--color-text-dark);
/* focus: */ border-color: var(--color-evergreen); outline: none;

/* Labels */
font-weight: 600;
font-size: var(--text-sm);
color: var(--color-text-dark);
margin-bottom: var(--space-2);
```

---

## Tone of Voice

| Context | Tone | Example |
|---|---|---|
| Hero | Precise, confident | "Expert Ambulatory Anesthesia Services" |
| Section body | Professional, warm | "Our team of CRNAs and anesthesiologists..." |
| CTAs | Direct, not pushy | "Contact Us", "Get in Touch", "Read More" |
| Blog | Clinical, peer-level | Academic writing with citations |
| Form labels | Minimal, clear | "Contact Name", not "Please enter your name" |

---

## HOW TO UPDATE THIS DOCUMENT
- If a color is changed during the build, update the hex here and note why.
- If new component patterns are introduced, add a section.
- Font sizes and spacing should not be changed ad-hoc — update the token here first, then apply everywhere.
- Reference this file at the top of every new CSS file or `<style>` block.
