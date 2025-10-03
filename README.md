# Multilingual Jekyll one-page template

This Jekyll template provides a **minimal multilingual one-page website**.
Each language version is stored inside the `contents/` directory and rendered independently using a single layout.
The design is simple, self-contained, and fully compatible with **GitHub Pages** or **Docker** environments.

This template is part of the **GRATETemplates** project.

---

## Features

* Independent one-page content for each language (`/ca/`, `/es/`, `/en/`)
* Clean single-page layout (`_layouts/default.html`) with no navigation bar
* Fully static, no plugins or collections required
* Works with GitHub Pages or Docker
* Optional minimal mode (`minimal: true`) to hide the hero and footer
* Optional multilingual selector (`multilingual: true/false`)
* Optional footer project information with logos

---

## Project structure

```bash
.
├── _config.yml              # Main configuration
├── _includes/               # Header, footer, and reusable HTML fragments
├── _layouts/                # Layout templates
├── assets/                  # CSS, JS, and images
├── contents/                # One folder per language
│   ├── ca/
│   ├── es/
│   └── en/
└── README.md
```

Each language folder contains a single `index.md` file that represents the one-page version of the site.

---

## Configuration

Language versions are declared in `_config.yml` using `defaults:`.
Each folder under `contents/` defines one localized version of the site:

```yaml
include:
  - contents

defaults:
  - scope:
      path: "contents/ca"
    values:
      permalink: "/ca/"
      lang: ca
      layout: default
  - scope:
      path: "contents/es"
    values:
      permalink: "/es/"
      lang: es
      layout: default
  - scope:
      path: "contents/en"
    values:
      permalink: "/en/"
      lang: en
      layout: default
```

The generated URLs are:

```bash
/ca/ → contents/ca/index.md
/es/ → contents/es/index.md
/en/ → contents/en/index.md
```

Since this is a one-page design, there are no subpages or navigation menus.
Each `index.md` file contains all the content for its corresponding language.

---

## Optional settings

Additional site-wide options can be configured in `_config.yml`:

```yaml
minimal: false         # hides hero and footer when true
multilingual: true     # enables or disables the language selector
project_info:
  name: "TRAMVIDA project"
  contact_email: "tramvida@urv.cat"
  website: "https://tramvida.urv.cat"
  logos:
    - path: "/assets/images/logos/dgeo.png"
      alt: "Department of Geography"
    - path: "/assets/images/logos/logo-gratet.jpg"
      alt: "GRATET"
```

If `project_info` or `logos` are omitted, these sections will not appear in the footer.

---

## Editing content on GitHub

You can make small text or configuration changes directly from GitHub:

1. Open the repository on GitHub.
2. Click on the file to edit (for example, `contents/ca/index.md` or `_config.yml`).
3. Press the **Edit** icon (pencil) in the upper-right corner.
4. Make your changes and add a short commit message.
5. Click **Commit changes**.

GitHub Pages will automatically rebuild and deploy the updated version.

---

## Working locally

### Option 1 – Run Jekyll directly

Install Jekyll and Bundler:

```bash
gem install jekyll bundler
bundle install
bundle exec jekyll serve
```

Open [http://localhost:4000](http://localhost:4000) in your browser.

### Option 2 – Run with Docker

If you prefer not to install Ruby locally:

```bash
docker build -t gratetemplate-jekyll .
docker run -p 4000:4000 gratetemplate-jekyll
```

Then open [http://localhost:4000](http://localhost:4000).

---

## Customization

* Edit `_config.yml` to change titles, layout options, or footer information.
* Modify `_layouts/default.html` or `_includes/` to adapt the page structure.
* Update `assets/css/style.css` for design and typography.
* Replace each `contents/<lang>/index.md` file with your own text and images.

---

## License

This template is distributed under the **GNU General Public License v3.0 (GPL-3.0)**.
See the [LICENSE](LICENSE) file for details.

Developed as part of the **GRATETemplates** project by the GRATET research group (Universitat Rovira i Virgili).
