#!/bin/bash

# Verifica si se pasó un argumento
if [ -z "$1" ]; then
    echo "Uso: $0 /var/log"
    exit 1
fi

LOG_DIR="$1"

# Verifica si existe la carpeta
if [ ! -d "$LOG_DIR" ]; then
    echo "Error: el directorio $LOG_DIR no existe."
    exit 1
fi

# Crea la carpeta de destino si no existe
ARCHIVE_DIR="$(pwd)/archived_logs"
mkdir -p "$ARCHIVE_DIR" || {
    echo "Error: no se pudo crear el directorio $ARCHIVE_DIR"
    exit 1
}

# Timestamp y nombre al archivo
TIMESTAMP=$(date '+%Y%m%d_%H%M%S')
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="$ARCHIVE_DIR/$ARCHIVE_NAME"

# Comprime logs
tar -czf "$ARCHIVE_PATH" -C "$LOG_DIR" . || {
    echo "Error: falló la compresión"
    exit 1
}

# Logea la acción
LOG_FILE="$(pwd)/archive.log"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Archivado: $ARCHIVE_NAME desde $LOG_DIR" >> "$LOG_FILE"

echo "Logs archivados en $ARCHIVE_PATH"

