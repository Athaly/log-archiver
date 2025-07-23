# log-archiver

Simple Bash CLI tool to compress and archive log files on Unix-based systems: https://roadmap.sh/projects/log-archive-tool

## Usage

```bash
./log-archive.sh /var/log
```

The script will:

- Compress the log files into a timestamped .tar.gz archive
- Store the archive in `archived_logs/`
- Log the operation in `archive.log`

## Example

```bash
./log-archive.sh /var/log
```

Creates:

- `archived_logs/logs_archive_20250722_205150.tar.gz`
- Logs to `archive.log`
