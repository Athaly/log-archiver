# log-archiver

Herramienta de línea de comandos en Bash para comprimir y archivar archivos de log en sistemas basados en Unix.  
Proyecto original: https://roadmap.sh/projects/log-archive-tool

## Descripción

Este script permite comprimir archivos de log desde un directorio especificado y guardarlos en un archivo `.tar.gz` con marca de tiempo. Los archivos comprimidos se almacenan en una carpeta `archived_logs/`, y cada ejecución queda registrada en `archive.log`.

## Uso

```bash
./log-archive.sh /ruta/al/directorio
```

Ejemplo:

```bash
./log-archive.sh /var/log
```

## Qué hace el script

- Comprime los archivos de log en un archivo `.tar.gz` con marca de tiempo.
- Crea el archivo comprimido en el directorio `archived_logs/`.
- Registra la operación en el archivo `archive.log`.

## Resultado esperado

Al ejecutar:

```bash
./log-archive.sh /var/log
```

Se generan:

- `archived_logs/logs_archive_YYYYMMDD_HHMMSS.tar.gz`
- Entrada de registro en `archive.log`
