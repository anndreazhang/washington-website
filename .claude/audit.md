# Washington Anesthesia Partners — Full Site Audit
**Live URL:** https://www.anesthesiaserviceswa.com/  
**Platform:** WordPress + Elementor page builder  
**Audit Date:** June 22, 2026  
**Purpose:** Document everything about the live site before rebuilding as static HTML/CSS/JS

---

## 1. Site Identity & Brand

| Field | Value |
|---|---|
| **Company Name** | Washington Anesthesia Partners |
| **Tagline** | Expert Ambulatory Anesthesia Services |
| **Logo** | Website-Logo.png (108×104 px, hosted at `/wp-content/uploads/`) |
| **Twitter Handle** | @WA_Anesthesia |
| **LinkedIn** | Washington Anesthesia Partners P.C. |
| **Social Platforms** | Facebook, Twitter, LinkedIn |
| **Schema Type** | MedicalOrganization (JSON-LD) |
| **Language** | English |
| **Domain Since** | April 7, 2023 |

**No phone number, physical address, or email is publicly displayed anywhere on the site.**  
Contact is exclusively through segmented contact forms.

---

## 2. Site Architecture & Pages

This is primarily a **single-scroll homepage** with anchor navigation. All separate pages are contact form pages and blog posts.

### 2.1 Navigation Menu
The top navigation is minimal. Links found:
- **Contact us** → `#Contact` (anchor on homepage)
- **General Inquiries** → `/general-inquiries/`
- **Clients** → `/clients/`
- **Billing** → `/billing/`
- **Anesthesia Providers** → `/anesthesia-providers/`
- **View All** (blog) → `/blog/`

### 2.2 Complete Page List

| Page | URL | Type |
|---|---|---|
| Homepage | `/` | Single-scroll marketing page |
| General Inquiries | `/general-inquiries/` | Contact form |
| Clients | `/clients/` | Contact form |
| Billing | `/billing/` | Contact form |
| Anesthesia Providers | `/anesthesia-providers/` | Contact form |
| Blog Index | `/blog/` | Blog archive grid |
| Blog Post (×30) | `/[slug]/` | Article pages |

**No standalone About page, Services page, or Team page exists.** That content is all embedded in the homepage scroll.

---

## 3. Homepage — Section by Section

### 3.1 Hero Section
- **Layout:** Full-width banner image with text overlay
- **Image:** `iStock-530685555-1024x683.jpg` — medical/healthcare stock photo
- **Heading (H1):** "Expert Ambulatory Anesthesia Services"
- **Subheading / Company Name:** "Washington Anesthesia Partners"
- **CTA Button:** "Contact us" → links to `#Contact` anchor

### 3.2 About Us Section
**Heading:** "About Us"

**Body copy (verbatim):**
> "At Washington Anesthesia Partners, our top priority is delivering exceptional anesthesia services to our patients with a focus on excellence and a patient-centric approach. Our team comprises CRNAs and anesthesiologists providing services in physician offices and outpatient surgery centers, emphasizing patient comfort and safety."

*[Full verbatim body extends beyond this excerpt — the second fetch was summarized. Key themes: team of CRNAs + anesthesiologists, ambulatory settings, patient-centric, positive patient outcomes.]*

**Image used:** `iStock-479953958-scaled.jpg`

### 3.3 Our Services Section
**Heading:** "Our Services"  
**Layout:** 6 service cards/blocks, each with a heading, body text, and a supporting stock image.

#### Service 1 — Scheduling
> Uses data analysis for case duration trends, staffing needs assessment, and centralized coordination to prevent conflicts and streamline resource allocation.

**Image:** `iStock-1356810087-scaled.jpg`

#### Service 2 — Recruiting
> Emphasizes competitive compensation, professional development, and a work-life balance to attract and retain qualified providers. Focuses on online presence and networking.

**Image:** `iStock-1412518834-scaled.jpg`

#### Service 3 — Billing
> Focuses on precise coding, prompt billing post-procedure, claims management, and staff training on billing updates to avoid fines and audits.

**Image:** `iStock-1331469990-scaled.jpg`

#### Service 4 — Inventory Management
> Implements just-in-time systems, larger supplier orders for better pricing, and protocols for disposing expired supplies to minimize waste.

**Image:** `iStock-1218963384-scaled.jpg`

#### Service 5 — Quality Assurance
> Utilizes strict assessment and monitoring protocols and evidence-based guidelines with emphasis on provider competence and continuing education.

**Image:** `iStock-1248714799-1-scaled.jpg`

#### Service 6 — Compliance
> Employs a multifaceted approach including clear guidelines, regular training, technology implementation, and regular team meetings.

**Image:** `iStock-184312573-scaled.jpg`

### 3.4 Blog Section (Homepage Teaser)
**Heading:** "Blog"  
Shows 2 most recent posts with thumbnail, title, date, excerpt, and "Read More" link.
- CTA: "View All" → `/blog/`

**Footer copy inside this section:**
> "Stay Informed With The Latest News About Anesthesia Services And Perioperative Care"

### 3.5 Contact Section (`#Contact`)
**Heading:** "Contact Us"  
**Layout:** 4 segmented contact options (not one unified form). Each is a link/button to its own page:
- General Inquiries → `/general-inquiries/`
- Clients → `/clients/`
- Billing → `/billing/`
- Anesthesia Providers → `/anesthesia-providers/`

**No phone number or address displayed.**

### 3.6 Footer
- Social media icons: Facebook, Twitter, LinkedIn
- Privacy Policy link (URL not captured)
- Standard WordPress footer structure
- **No copyright line captured** (needs verification)

---

## 4. Contact Form Pages — Field-by-Field

### General Inquiries (`/general-inquiries/`)
| Field | Type | Notes |
|---|---|---|
| Title | Text | |
| Contact Name | Text | |
| Practice or Facility Name | Text | |
| Phone | Text | |
| Email | Text | |
| Message | Textarea | |
| File | File upload | |
| Privacy Policy | Checkbox | Required: "I agree to the Privacy Policy" |
| Submit | Button | Label: "Send" |

**Header image:** 2560×1707 px medical stock photo

### Clients (`/clients/`)
| Field | Type | Notes |
|---|---|---|
| Title | Text | |
| Contact Name | Text | |
| Practice or Facility Name | Text | |
| Phone | Text | |
| Email | Text | |
| Message | Textarea | |
| File | File upload | |
| Privacy Policy | Checkbox | Required |
| Submit | Button | Label: "Send" |

### Billing (`/billing/`)
| Field | Type | Notes |
|---|---|---|
| Contact Name | Text | No "Title" field |
| Phone | Text | |
| Email | Text | |
| Message | Textarea | |
| File | File upload | |
| Privacy Policy | Checkbox | Required |
| Submit | Button | Label: "Send" |

*(Simpler form — no Title or Facility Name)*

### Anesthesia Providers (`/anesthesia-providers/`)
| Field | Type | Notes |
|---|---|---|
| Contact Name | Text | |
| Degree | Text | Provider-specific |
| Phone | Text | |
| Email | Text | |
| Comments | Textarea | Note: "Comments" not "Message" |
| CV | File upload | Note: "CV" not "File" |
| Privacy Policy | Checkbox | Required |
| Submit | Button | Label: "Send" |

*(Provider-specific variant: Degree field, CV upload, Comments label)*

---

## 5. Blog

### Blog Index (`/blog/`)
- **Page Heading:** "Our Blog"
- **Layout:** Grid with featured image, title, date, excerpt, "Read More" link
- **Author attribution:** All posts internally attributed to `user643068d619833` (not displayed publicly)
- **Public author name shown on posts:** "Sally"

### Complete Blog Post List (30 posts, newest first)

| # | Title | Date | URL Slug |
|---|---|---|---|
| 1 | Preoperative Oral Medication for Analgesia | May 18, 2026 | `/preoperative-oral-medication/` |
| 2 | Safety Profile of NSAIDs for Postoperative Analgesia | Apr 15, 2026 | `/nsaids-for-postoperative-analgesia/` |
| 3 | Rethinking the Use of Acceleromyography (AMG) for Neuromuscular Monitoring | Mar 2, 2026 | `/neuromuscular-monitoring/` |
| 4 | Common Steps in a Surgical Time-out | Feb 2, 2026 | `/common-steps-in-a-surgical-time-out/` |
| 5 | Six Years After COVID-19 Emerged: Where Are We Now? | Dec 31, 2025 | `/six-years-after-covid-19/` |
| 6 | The Fight for Veterans' Anesthesia Care | Nov 20, 2025 | `/fight-for-veterans-anesthesia-care/` |
| 7 | Mechanism of Injection Pain Through IV | Oct 6, 2025 | `/mechanism-of-injection-pain-through-iv/` |
| 8 | Phase 2 Neuromuscular Block | Aug 25, 2025 | `/phase-2-neuromuscular-block/` |
| 9 | Inhalational Anesthetics: An Overview | Jul 21, 2025 | `/inhalational-anesthetics-an-overview/` |
| 10 | Comparison of Anesthesia Strategies for Cataract Surgery | Jun 2, 2025 | `/comparison-of-anesthesia-strategies-for-cataract-surgery/` |
| 11 | Can Postoperative Inflammation Predict Respiratory Complications After Cardiac Surgery? | May 25, 2025 | `/can-postoperative-inflammation-predict-respiratory-complications-after-cardiac-surgery/` |
| 12 | Preoperative vs. Postoperative Anti-Emetics | Apr 30, 2025 | `/preoperative-vs-postoperative-anti-emetics/` |
| 13 | AI in Health Administration | Mar 25, 2025 | `/ai-in-health-administration/` |
| 14 | Propofol's History in Medicine | Feb 10, 2025 | `/propofols-history-in-medicine/` |
| 15 | Uncommon Side Effects of Anesthesia | Dec 23, 2024 | `/uncommon-side-effects-of-anesthesia/` |
| 16 | Defasciculation in Anesthesia | Nov 20, 2024 | `/defasciculation-in-anesthesia/` |
| 17 | Uses of Topical Anesthesia in Surgery | Oct 8, 2024 | `/uses-of-topical-anesthesia-in-surgery/` |
| 18 | Respiratory Support After Extubation | Aug 19, 2024 | `/respiratory-support-after-extubation/` |
| 19 | Does Adding Propofol to Volatile Anesthetics Decrease the Incidence of PONV? | Aug 5, 2024 | `/does-adding-propofol-to-volatile-anesthetics-decrease-the-incidence-of-ponv/` |
| 20 | Indications for Intravenous Albumin | Jul 15, 2024 | `/indications-for-intravenous-albumin/` |
| 21 | Uses of Dexamethasone | Jul 3, 2024 | `/uses-of-dexamethasone/` |
| 22 | Labor Analgesia | Jul 1, 2024 | `/labor-analgesia/` |
| 23 | Effects of the Prone Position on Intraoperative Respiratory Mechanics in Patients with ARDS | Jun 17, 2024 | `/effects-of-the-prone-position-on-intraoperative-respiratory-mechanics-in-patients-with-ards/` |
| 24 | Reducing Maternal Mortality from Peri-partum Hemorrhage | Jun 4, 2024 | `/reducing-maternal-mortality-from-peri-partum-hemorrhage/` |
| 25 | Navigating Anesthesia for Obstetrics | Feb 26, 2024 | `/navigating-anesthesia-for-obstetrics/` |
| 26 | Acute Respiratory Distress Syndrome | Nov 28, 2023 | `/acute-respiratory-distress-syndrome/` |
| 27 | Gender Differences in Overdose-Related Deaths | Oct 24, 2023 | `/gender-overdose-related-death/` |
| 28 | Acid-Base Physiology | Aug 29, 2023 | `/acid-base-physiology/` |
| 29 | Liposomal Bupivacaine | May 24, 2023 | `/liposomal-bupivacaine/` |
| 30 | The Scope of Anesthesia Practice | Apr 28, 2023 | `/scope-of-anesthesia-practice/` |

---

## 6. Visual Design (Known + Inferred)

The Elementor builder renders client-side, so exact CSS values weren't extractable via HTML fetch. What is known:

| Element | Observed / Inferred |
|---|---|
| **Overall feel** | Clean, professional, medical/clinical |
| **Layout** | Full-width sections, single-column scroll on homepage |
| **Imagery** | All iStock stock photos — healthcare/OR/medical settings |
| **Hero image** | Full-width, large format, text overlay |
| **Services layout** | 6-block grid (likely 3×2 or 2×3), image + heading + text per card |
| **Blog grid** | Card grid with thumbnail, title, date, excerpt, Read More |
| **Contact section** | 4 segmented link buttons (not a form) |
| **Typography** | Unknown — needs visual inspection |
| **Primary colors** | Unknown — needs visual inspection |
| **Accent/CTA color** | Unknown — needs visual inspection |

**Action required before build:** Open the live site in a browser and use DevTools to capture: primary color hex codes, font families, font sizes (H1/H2/H3/body), button border-radius, section padding values.

---

## 7. Stock Images Inventory

All images are iStock and hosted on the WordPress server. For the rebuild, these must either be re-licensed, replaced with similar licensed images, or new photos used.

| Location | Filename |
|---|---|
| Hero | iStock-530685555-1024x683.jpg |
| About | iStock-479953958-scaled.jpg |
| Service 1 (Scheduling) | iStock-1356810087-scaled.jpg |
| Service 2 (Recruiting) | iStock-1412518834-scaled.jpg |
| Service 3 (Billing) | iStock-1331469990-scaled.jpg |
| Service 4 (Inventory) | iStock-1218963384-scaled.jpg |
| Service 5 (QA) | iStock-1248714799-1-scaled.jpg |
| Service 6 (Compliance) | iStock-184312573-scaled.jpg |
| Blog post (recent) | preoperativeoralmedicationanalgesia-1.jpg |
| Blog post (recent) | safetyNSAIDspostoperativeanalgesia.jpg |

---

## 8. SEO & Technical Notes

- **Schema markup:** `MedicalOrganization` JSON-LD on every page
- **Section anchors:** `#content`, `#Contact`
- **Social metadata:** Facebook, Twitter, LinkedIn linked in schema
- **No sitemap URL found** (likely at `/sitemap.xml` — WordPress default)
- **No phone/address in schema** — contact is form-only
- **Blog categories:** All posts are "Uncategorized" (no taxonomy structure)
- **Pagination:** Blog has 30 posts — likely paginated at 10/page

---

## 9. What's Missing / Gaps to Address in Rebuild

| Gap | Notes |
|---|---|
| No phone number anywhere | Consider adding if client wants calls |
| No physical address | Consider adding for local SEO |
| No email displayed | All contact is form-gated |
| No testimonials | Strong addition opportunity |
| No team bios / headshots | No named providers visible |
| No certifications/affiliations shown | AANA, ASA, state license — none displayed |
| Blog has no categories | All "Uncategorized" |
| No sitemap link in footer | Basic SEO gap |
| No copyright year in footer | Should be added |
| Contact section has no intro text | Just 4 raw buttons |
| No FAQ section | Common for medical services |
| Privacy Policy exists but URL unknown | Needs to be recreated or linked |

---

## 10. Rebuild Scope Summary

### Pages to Build
1. `index.html` — Full homepage (hero → about → services → blog teaser → contact)
2. `general-inquiries.html` — Contact form for general inquiries
3. `clients.html` — Contact form for clients
4. `billing.html` — Contact form for billing
5. `anesthesia-providers.html` — Contact form for providers
6. `blog/index.html` — Blog archive grid (30 posts)
7. `blog/[slug].html` — Individual blog post template (×30, or dynamic via JS)

### Tech Stack (Recommended for Static Rebuild)
- Pure HTML5 / CSS3 / vanilla JS
- No framework dependencies
- Form handling: Netlify Forms, Formspree, or similar static form service
- Blog: Either pre-built HTML pages or a simple JSON-driven template

### Design Decisions Needed Before Build
1. Exact color palette (fetch from DevTools on live site)
2. Font choice (Google Fonts vs system fonts)
3. Whether to keep iStock images or source new ones
4. Whether to add phone/address
5. Whether to add testimonials section
6. Whether to restructure blog with categories
