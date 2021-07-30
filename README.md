# Suplex
This is an automation script to organize movie subtitles in a format that is readable by Plex.

## Usage
The script is distributed as a docker image for Raspberry Pi. Start the service by running `docker run fluffycat/suplex`.

## Parameters
`-v <path/to/movies>:/movies`
Root movie directory. Each movie must be a subfolder within the root directory.

`-e TZ=<your local time zone>`
Set this environment variable to configure your time zone.

`-e ORGANISE_DELAY_S=<delay duration in seconds>`
How long to wait after a file change before processing the movie. Defaults to 30s
