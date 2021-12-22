FROM squidfunk/mkdocs-material

# Add plugins here
RUN pip install mkdocs-git-revision-date-localized-plugin
