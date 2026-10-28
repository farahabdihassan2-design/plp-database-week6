# Step 2: Enable WAL Archiving

# 1. Create a dedicated WAL backup directory
mkdir "$HOME\backups\wal"

# 2. Configuration needed in postgresql.conf:
# wal_level = replica
# archive_mode = on
# archive_command = 'copy "%p" "C:\\Users\\hassa\\backups\\wal\\%f"'

# 3. Restart PostgreSQL service (run in PowerShell as Admin if needed):
# Restart-Service postgresql-x64-16

# 4. Take a base backup
pg_basebackup -U postgres -D "$HOME\backups\base" -Ft -z -Xs -P
