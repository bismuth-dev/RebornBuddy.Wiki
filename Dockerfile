FROM squidfunk/mkdocs-material

# Add plugins here AND .github/workflows/Publish.yml
RUN pip install mkdocs-git-revision-date-localized-plugin mkdocs-video
