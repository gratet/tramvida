# Multilingual Jekyll one-page template

This Jekyll template provides a **simple multilingual single-page site** with separate Markdown files for each language (`/ca/`, `/es/`, `/en/`), fully compatible with GitHub Pages and Docker.

---

## 🌍 Features

- Language folders for Catalan, Spanish, and English.
- Clean and readable layout (`_layouts/default.html`).
- No plugins or collections required.
- Ready for GitHub Pages and Docker testing.

---

## 🚀 Usage

### Option 1: GitHub Pages
1. Upload all files to a new GitHub repository.
2. Go to **Settings → Pages** and enable GitHub Pages from the `main` branch, folder `/ (root)`.
3. Visit `https://youruser.github.io/your-repo/`.

### Option 2: Local development with Jekyll
```bash
gem install jekyll bundler
bundle exec jekyll serve
```
Then open [http://localhost:4000](http://localhost:4000).

### Option 3: Using Docker
If you prefer not to install Ruby or Jekyll locally:

```bash
docker build -t jekyll-multilang .
docker run -p 4000:4000 jekyll-multilang
```
Then visit [http://localhost:4000](http://localhost:4000).

---

## ⚙️ Customization

- Edit `_config.yml` to change the title or description.
- Modify `assets/css/style.css` for colors or fonts.
- Update language content in `ca/index.md`, `es/index.md`, `en/index.md`.
- Add more languages by duplicating a folder and adjusting links in `_layouts/default.html`.

---

## 📁 Structure

```
.
├── _config.yml
├── _layouts/
│   └── default.html
├── index.html
├── ca/index.md
├── es/index.md
├── en/index.md
├── assets/css/style.css
├── Dockerfile
└── README.md
```

---

© Project X — free to use and modify.
