# [RebornBuddy.Wiki][github-repo] [![Build Status][build-badge]][build-status] [![Discord][discord-badge]][discord-invite]

Curated static wiki at [**rebornbuddy.wiki**][rebornbuddy-wiki] using [Material for MkDocs][mkdocs-material].

[github-repo]: https://github.com/bismuth-dev/RebornBuddy.Wiki "RebornBuddy.Wiki on GitHub"
[build-badge]: https://img.shields.io/github/workflow/status/bismuth-dev/RebornBuddy.Wiki/Publish?style=plastic&logo=github&label=Publish&color=success
[build-status]: https://github.com/bismuth-dev/RebornBuddy.Wiki/actions "Build Server"
[discord-badge]: https://img.shields.io/badge/Discord-7389D8?logo=discord&logoColor=ffffff&labelColor=6A7EC2
[discord-invite]: https://discord.gg/bmgCq39 "Discord"
[rebornbuddy-wiki]: https://rebornbuddy.wiki
[mkdocs-material]: https://squidfunk.github.io/mkdocs-material/ "Material for MkDocs"

## Editing

ℹ️ Most editors only need this section!

To submit changes to the wiki,

1. [Fork this repository][forking-repos] to make your own copy.
2. Edit content in `.md` text files and `git commit` + `git push`.
3. [Submit a pull request][pull-requests] to get your work published on the real site!

This wiki is written in [Markdown][md-syntax], the same formatting used on GitHub, Reddit, Discord, etc. You can easily edit directly on GitHub or with a text editor such as [Visual Studio Code][vs-code]. Some [advanced MkDocs features][mkdocs-features] may not preview correctly on GitHub or in VS Code -- see the [Development](#development) section for fully-rendered local previews.

Pull requests of all sizes are welcome! ❤️

It's okay to add good-faith links or content about your own projects. Issues with submissions will be discussed in the relevant pull requests and site moderators may reject suspicious or poor quality work at their discretion.

[forking-repos]: https://docs.github.com/en/get-started/quickstart/fork-a-repo "Fork a Repo"
[pull-requests]: https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request-from-a-fork "Pull Request from Fork"
[md-syntax]: https://www.markdownguide.org/basic-syntax/ "Markdown Syntax"
[vs-code]: https://code.visualstudio.com/download "Visual Studio Code"
[mkdocs-features]: https://squidfunk.github.io/mkdocs-material/reference/ "MkDocs Features"

### Tips

- [Reference-style links][reference-links] are recommended to move URLs elsewhere in the file, which makes it easier to read + edit raw content, reuse links in multiple locations, and update links in one spot.
- [`src/snippets/common-links.md`][common-links] defines a list of common links included in all pages. If something should be linked across many pages, or if a definition seems "missing" from a file, check `common-links.md`. You may need to restart Docker to pick up links added here.

[reference-links]: https://www.markdownguide.org/basic-syntax/#reference-style-links
[common-links]: ./src/snippets/common-links.md

## Development

### Setup

_Main article: [Getting Started with MkDocs][mkdocs-getting-started]_

For easy local development, the customized Material for MkDocs container includes all dependencies and plugins used by the site.

1.  Install [Docker][docker-install].
2.  `git clone git@github.com:bismuth-dev/RebornBuddy.Wiki.git`
3.  `cd ./RebornBuddy.Wiki`
4.  `pwsh ./run.ps1`
5.  Visit http://127.0.0.1:8000/ for a fully-rendered preview that auto-reloads on save.

[mkdocs-getting-started]: https://squidfunk.github.io/mkdocs-material/getting-started/ "Getting Started with MkDocs"
[docker-install]: https://docs.docker.com/get-docker/ "Install Docker"

## Deployment

ℹ️ Only site administrators need this section.

This site is deployed to [GitHub Pages][github-pages] as a "project site" (versus user or organization site).

### Configuring GitHub Pages

_Main article: [Getting Started with GitHub Pages][gh-pages-start]_

1.  On the GitHub repo page, go to `Settings > Pages`.
2.  Under Source, set `Branch: gh-pages` and `Folder: / (root)`, then click `Save`.
3.  Wait for site to fully publish to the URL at the top of the page.

### Customizing the Domain Name

_Main article: [Configuring Custom Domains][gh-pages-domain]_

1.  On the GitHub repo page, go to `Settings > Pages`.
2.  Set `Custom Domain: rebornbuddy.wiki`, then click `Save`.
3.  `git pull` the `CNAME` file created by GitHub into `src/docs/`.
4.  At your domain name provider, configure DNS records:
    - Create `CNAME` record for `www` as `bismuth-dev.github.io`
    - Create `A` and `AAAA` records for `@` as GitHub Pages' [IPv4 and IPv6 addresses][gh-pages-addresses].

### Publishing Changes

_Main article: [Publishing Your Site][gh-pages-publish]_

Automatic builds + publishing are triggered by pushing commits to `master` branch.

Changes should appear on the site after a few minutes. Check the [Actions tab][build-status] for build status and error logs.

⚠️ All MkDocs plugins added to the [`Dockerfile`][dockerfile] must also be added to [`Publish.yml`][publish-yml] or the automated build will fail.

[github-pages]: https://pages.github.com/ "Getting Started with GitHub Pages"
[gh-pages-start]: https://docs.github.com/en/pages/getting-started-with-github-pages "GitHub Pages documentation"
[gh-pages-domain]: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site "Configuring Custom Domains"
[gh-pages-addresses]: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain "Configuring an apex domain"
[gh-pages-publish]: https://squidfunk.github.io/mkdocs-material/publishing-your-site/#with-github-actions "Publishing Your Site"
[dockerfile]: ./Dockerfile "Dockerfile"
[publish-yml]: ./.github/workflows/Publish.yml "Publish.yml"
