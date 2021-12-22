docker build -t squidfunk/mkdocs-material:rebornbuddy.wiki .
docker run --rm -it -v ${PWD}/src:/docs squidfunk/mkdocs-material:rebornbuddy.wiki new .
docker run --rm -it -p 8000:8000 -v ${PWD}/src:/docs squidfunk/mkdocs-material:rebornbuddy.wiki
