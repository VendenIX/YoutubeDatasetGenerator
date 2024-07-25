#!/bin/bash

# Demander à l'utilisateur d'entrer l'URL de la vidéo
read -p "Enter youtube video URL : " VIDEO_URL

# Définir les variables de sortie
OUTPUT_DIR="frames"

# Obtenir l'URL de streaming direct avec yt-dlp (format 135 = 480p)
STREAM_URL=$(yt-dlp -f 135 -g "$VIDEO_URL")

# Créer le répertoire de sortie s'il n'existe pas
mkdir -p "$OUTPUT_DIR"

# Extraire des images toutes les 10 secondes avec FFmpeg sans télécharger la vidéo
ffmpeg -i "$STREAM_URL" -vf "fps=1/10" "$OUTPUT_DIR/frame_%04d.jpg"

echo "Extraction complete. Images are saved in the folder $OUTPUT_DIR."