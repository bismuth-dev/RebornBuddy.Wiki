FROM squidfunk/mkdocs-material

# Install git inside container
RUN apk add --no-cache git tzdata

# Add plugins here AND .github/workflows/Publish.yml
RUN pip install mkdocs-git-revision-date-localized-plugin mkdocs-video

WORKDIR src
