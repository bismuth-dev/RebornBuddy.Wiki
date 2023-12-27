$name = "rebornbuddy.wiki"
$port = 8757

Write-Output "Stopping any currently running $name containers"
docker ps -aq --filter "name=$name" | ForEach-Object { docker stop $_ }

Write-Output "Building Docker image to locally host fully-rendered preview site"
docker build -t "squidfunk/mkdocs-material:$name" "."

Write-Output "Creating new mkdocs project, if none present"
docker run --rm -it -v "${PWD}/src:/docs" "squidfunk/mkdocs-material:$name" new .

Write-Output "Starting Docker container in background"
docker run --name "$name" --rm -d -p "$($port):8000" -v "${PWD}/src:/docs" "squidfunk/mkdocs-material:$name"

# Open in browser once it's available
Write-Output "Waiting for web server to load";

$url = "http://localhost:$port";
$isServerUp = $false;

do
{
    try {
        Invoke-WebRequest $url -Method Head -UseBasicParsing | Out-Null;
        $isServerUp = $true;
    }
    catch
    {
        Start-Sleep -Milliseconds 500;
        continue;
    }
}
while (!$isServerUp)

Write-Output "Opening $url in default browser";
Start-Process $url;
