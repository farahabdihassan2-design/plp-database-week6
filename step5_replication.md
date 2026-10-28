# Step 5: Watch Replication Health

# Run from the primary server to observe replication status and lag:
SELECT application_name, state, 
       pg_wal_lsn_diff(sent_lsn, replay_lsn) AS lag_bytes
FROM pg_stat_replication;
