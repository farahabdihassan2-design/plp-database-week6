# 1. Create a dedicated backups directory
mkdir $HOME\backups

# 2. Take a logical backup of the bootcamp database in custom compressed format (-Fc)
pg_dump -U postgres -Fc -f "$HOME\backups\bootcamp.dump" bootcamp

# 3. Inspect the table of contents of the backup file to verify it's valid
pg_restore --list "$HOME\backups\bootcamp.dump" | Select-Object -First 10

# 4. Test restoration by creating a new database and restoring the backup into it
createdb -U postgres bootcamp_check
pg_restore -U postgres -d bootcamp_check "$HOME\backups\bootcamp.dump"
