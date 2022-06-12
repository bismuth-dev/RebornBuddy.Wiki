docker run --rm -it -p 8000:8000 -v ${PWD}/src:/docs squidfunk/mkdocs-material:rebornbuddy.wiki
# Set up Docker container for fully-rendered preview site
docker build -t squidfunk/mkdocs-material:rebornbuddy.wiki .
docker run --rm -it -v ${PWD}/src:/docs squidfunk/mkdocs-material:rebornbuddy.wiki new .

# Run container in background
docker run --name "rebornbuddy.wiki" --rm -it -d -p 8000:8000 -v ${PWD}/src:/docs squidfunk/mkdocs-material:rebornbuddy.wiki

# Open in browser once it's available
Write-Output "Waiting for web server to load...";

$url = "http://localhost:8000";
$isServerUp = $false;

do
{
    try {
        Invoke-WebRequest $url -Method Head -UseBasicParsing | Out-Null;
        $isServerUp = $true;
    }
    catch [System.Net.WebException]
    {
        Start-Sleep -Milliseconds 500;
        continue;
    }
}
while (!$isServerUp)

Write-Output "Opening $url in default browser.";
Start-Process $url;
