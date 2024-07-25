#!/bin/bash

# Fonction pour afficher le menu et obtenir la sélection de l'utilisateur
function select_quality {
    echo "Sélectionnez la qualité de la vidéo :"
    echo "1) 480p"
    echo "2) 720p"
    echo "3) 1080p"
    echo "4) 2k"
    echo "5) 4k"
    read -p "Entrez le numéro de votre choix : " quality_choice
}

# Demander à l'utilisateur d'entrer l'URL de la vidéo
read -p "Entrez l'URL de la vidéo YouTube : " VIDEO_URL

# Appeler la fonction pour afficher le menu
select_quality

# Définir les variables de sortie
OUTPUT_PATH="video.mp4"
OUTPUT_DIR="frames"

# Définir le format en fonction de la sélection de l'utilisateur
case $quality_choice in
    1)
        FORMAT="135+140"  # 480p
        ;;
    2)
        FORMAT="22"  # 720p
        ;;
    3)
        FORMAT="137+140"  # 1080p
        ;;
    4)
        FORMAT="313+140"  # 2k
        ;;
    5)
        FORMAT="315+140"  # 4k
        ;;
    *)
        echo "Choix invalide. Utilisation du format par défaut (720p)."
        FORMAT="22"  # 720p par défaut
        ;;
esac

# Télécharger la vidéo YouTube avec yt-dlp
yt-dlp -f "$FORMAT" -o "$OUTPUT_PATH" "$VIDEO_URL"
echo "Téléchargement terminé."