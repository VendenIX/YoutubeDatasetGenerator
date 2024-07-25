# YoutubeDatasetGenerator

This repository provides a tool to create a dataset of images from a YouTube video by capturing one image every 10 seconds in 480p resolution. It is designed to work on videos not exceeding 10 minutes in length. Additionally, there is a script that allows you to download a video in the quality of your choice.

## Installation Guide

To install the necessary tools, follow these steps:

1. **Install yt-dlp**:
    ```bash
    brew install yt-dlp
    ```

2. **Install FFmpeg**:
    ```bash
    brew install ffmpeg
    ```

## Usage

To run the script, open your terminal and execute the following commands:

```bash
chmod +x get_stream_and_extract.sh && ./get_stream_and_extract.sh
```

If you want to download a youtube video :
```bash
chmod +x download_video.sh && ./download_video.sh
```

## Disclaimer

**Warning: This tool is intended for educational and personal use only. Downloading videos from YouTube without permission is a violation of YouTube's terms of service and may be illegal. Please respect copyright laws and YouTube's terms of service.**