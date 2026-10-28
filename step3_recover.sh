# Step 3: Simulate Disaster and Recover (PITR)

# 1. Record time and delete data (Simulate disaster)
# SELECT now();
# DELETE FROM students;

# 2. Stop PostgreSQL service (Run in Admin PowerShell)
Stop-Service postgresql-x64-16

# 3. Replace data directory with base backup
# Rename old data, create new data, and extract tar.gz backups

# 4. Configure recovery settings in postgresql.conf:
# restore_command = 'cp C:/Users/hassa/backups/wal/%f "%p"'
# recovery_target_time = '2026-10-28 12:19:15'

# 5. Create recovery.signal file and restart service
# Start-Service postgresql-x64-16