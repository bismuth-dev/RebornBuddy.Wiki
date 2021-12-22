# [RebornBuddy.Wiki][0] [![Build Status][1]][2] [![Discord][3]][4]

Curated static wiki at [rebornbuddy.wiki][5] using [Material for MkDocs][6].

[0]: https://github.com/TheManta/RebornBuddy.Wiki "RebornBuddy.Wiki on GitHub"
[1]: https://img.shields.io/github/workflow/status/TheManta/RebornBuddy.Wiki/Publish?style=plastic&logo=github&label=Publish&color=success
[2]: https://github.com/TheManta/RebornBuddy.Wiki/actions "Build Server"
[3]: https://img.shields.io/badge/Discord-7389D8?logo=discord&logoColor=ffffff&labelColor=6A7EC2
[4]: https://discord.gg/bmgCq39 "Discord"
[5]: https://rebornbuddy.wiki
[6]: https://squidfunk.github.io/mkdocs-material/ "Material for MkDocs"

## Editing

ℹ️ Most editors only need this section!

To submit changes to the wiki,

1. [Fork this repository][100] to make your own copy.
2. Edit content in `.md` text files and `git commit` + `git push`.
3. [Submit a pull request][101] to get your work published on the real site!

This wiki is written in [Markdown][102], the same formatting used on GitHub, Reddit, Discord, etc. You can easily edit directly on GitHub or with a text editor such as [Visual Studio Code][103]. Some advanced MkDocs features may not preview correctly on GitHub or in VS Code -- see the [Development](#development) section for fully-rendered local previews.

Pull requests of all sizes are welcome! ❤️

It's okay to add good-faith links or content about your own projects. Issues with submissions will be discussed in the relevant pull requests and site moderators may reject suspicious or poor quality work at their discretion.

[100]: https://docs.github.com/en/get-started/quickstart/fork-a-repo "Fork a Repo"
[101]: https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request-from-a-fork "Pull Request from Fork"
[102]: https://www.markdownguide.org/basic-syntax/
[103]: https://code.visualstudio.com/download "Visual Studio Code"

## Development

### Setup

*Main article: [Getting Started with MkDocs][200]*

For easy local development, the customized Material for MkDocs container includes all dependencies and plugins used by the site.

 1. Install [Docker][201].
 2. `git clone git@github.com:TheManta/RebornBuddy.Wiki.git`
 3. `cd ./RebornBuddy.Wiki`
 4. `pwsh ./run.ps1`
 5. Visit http://127.0.0.1:8000/ for a fully-rendered preview that auto-reloads on save.

[200]: https://squidfunk.github.io/mkdocs-material/getting-started/ "Getting Started with MkDocs"
[201]: https://docs.docker.com/get-docker/ "Install Docker"

## Deployment

ℹ️ Only site administrators need this section.

This site is deployed to [GitHub Pages][300] as a "project site" (versus user or organization site).

### Configuring GitHub Pages

*Main article: [Getting Started with GitHub Pages][301]*

 1. On the GitHub repo page, go to `Settings > Pages`.
 2. Under Source, set `Branch: gh-pages` and `Folder: / (root)`, then click `Save`.
 3. Wait for site to fully publish to the URL at the top of the page.

### Customizing the Domain Name

*Main article: [Configuring Custom Domains][302]*

 1. On the GitHub repo page, go to `Settings > Pages`.
 2. Set `Custom Domain: rebornbuddy.wiki`, then click `Save`.
 3. `git pull` the `CNAME` file created by GitHub into `src/docs/`.
 4. At your domain name provider, configure DNS records:
    - Create `CNAME` record for `www` as `themanta.github.io`
    - Create `A` and `AAAA` records for `@` as GitHub Pages' [IPv4 and IPv6 addresses][303].

### Publishing Changes

*Main article: [Publishing Your Site][304]*

Automatic builds + publishing are triggered by pushing commits to `master` branch.

Changes should appear on the site after a few minutes.  Check the [Actions tab][2] for build status and error logs.

⚠️ All MkDocs plugins added to the `Dockerfile` must also be added to [`Publish.yml`][305] or the automated build will fail.

[300]: https://pages.github.com/ "Getting Started with GitHub Pages"
[301]: https://docs.github.com/en/pages/getting-started-with-github-pages "GitHub Pages documentation"
[302]: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site "Configuring Custom Domains"
[303]: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site#configuring-an-apex-domain "Configuring an apex domain"
[304]: https://squidfunk.github.io/mkdocs-material/publishing-your-site/#with-github-actions "Publishing Y3ur Site"
[305]: ./.github/workflows/Publish.yml "Publish.yml"
