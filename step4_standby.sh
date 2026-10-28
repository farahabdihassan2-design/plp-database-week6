# Step 4: Set Up a Streaming Standby

# 1. On the primary server, create replication role:
# CREATE ROLE replicator WITH REPLICATION LOGIN PASSWORD 'reppass';

# 2. Add to pg_hba.conf:
# host replication replicator 127.0.0.1/32 md5

# 3. Build the standby server (separate data directory):
pg_basebackup -h 127.0.0.1 -U replicator -D ~/standby -R -P