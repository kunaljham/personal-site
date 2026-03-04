# kajham.com

Hugo personal site using the Bear Cub theme, deployed on Railway.

## Commands

- `hugo server --buildDrafts` — local dev server with drafts
- `hugo` — production build (outputs to `public/`)
- `hugo new content blog/<slug>.md` — create a new blog post

## Structure

- `content/` — markdown content (blog posts, pages)
- `go.mod` / `go.sum` — Hugo Module dependencies (Bear Cub theme)
- `static/` — static assets (images, favicon, etc.)
- `hugo.toml` — site configuration
- `nixpacks.toml` — Railway deployment config

## Deployment

Pushes to `main` auto-deploy on Railway. The build uses nixpacks to install Hugo and serve with Caddy. Custom domain: kajham.com.
