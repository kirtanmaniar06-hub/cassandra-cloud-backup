---------------------------------------------------------
-- 1. CREATE KEYSPACE
---------------------------------------------------------

CREATE KEYSPACE IF NOT EXISTS cloud_backup
WITH replication = {
    'class': 'SimpleStrategy',
    'replication_factor': 1
};

USE cloud_backup;

---------------------------------------------------------
-- 2. CREATE TABLE
---------------------------------------------------------

CREATE TABLE IF NOT EXISTS backup_snapshot_log (
    snapshot_id UUID PRIMARY KEY,
    backup_size_mb int,
    backup_type text,
    center_id UUID,
    center_name text,
    created_at timestamp,
    status text,
    storage_path text,
    taken_on timestamp
);

---------------------------------------------------------
-- 3. INSERT ALL 20 RECORDS (WITH UUIDs)
---------------------------------------------------------

INSERT INTO backup_snapshot_log (snapshot_id, backup_size_mb, backup_type, center_id, center_name, created_at, status, storage_path, taken_on)
VALUES (ddb11cc0-39c3-4831-9e91-188f1d73831e, 120, 'Incremental', a42ec6d6-960d-42fc-86b6-0ac455e9ce3b, 'Riverdale Youth Center', toTimestamp(now()), 'Failure', '/snapshots/riverdale/inc1', '2025-11-11');

INSERT INTO backup_snapshot_log VALUES (c54a45fe-f2ab-47cc-bc6b-57fc0eb70511, 515, 'Full', ddd9e17e-767f-4601-a7af-52e00e54d7a5, 'Evergreen Community Hub', toTimestamp(now()), 'Success', '/snapshots/evergreen/full3', '2025-09-10');

INSERT INTO backup_snapshot_log VALUES (6be1575c-dc47-4df2-9503-bbcb74ab129f, null, 'FULL', b321c8e9-4a06-4854-a734-d95f231f1448, 'Community Center M', null, 'SUCCESS', null, null);

INSERT INTO backup_snapshot_log VALUES (7c88d4ed-13c3-4101-9b1a-d94859cb72fc, null, 'INCREMENTAL', a4e6d492-9f17-4b96-81c5-42dfcdd98ced, 'Community Center G', null, 'IN_PROGRESS', null, null);

INSERT INTO backup_snapshot_log VALUES (46af6feb-820c-45c8-9a8e-1d0bf0791fea, 950, 'Full', 88908512-76a2-420b-a6be-7780913a5e6b, 'Greenwood Community Center', toTimestamp(now()), 'Success', '/snapshots/greenwood/full1', '2025-11-10');

INSERT INTO backup_snapshot_log VALUES (29ed74d0-2b75-45cd-9a31-dbd975dc8ef5, null, 'INCREMENTAL', 117d83b1-3ae7-4659-ab8d-df80b615728f, 'Community Center D', null, 'SUCCESS', null, null);

INSERT INTO backup_snapshot_log VALUES (45b79edc-1083-4fae-9a24-9eb7f5306e21, null, 'FULL', 6a0db7cd-8b20-4cbc-a1b9-b871df1d289f, 'Community Center E', null, 'FAILED', null, null);

INSERT INTO backup_snapshot_log VALUES (35f2a31a-46c1-4f3f-95bb-283a3e87cf78, null, 'INCREMENTAL', 4829bdf3-98cc-4fd5-82b6-77f5cd8223b1, 'Community Center K', null, 'SUCCESS', null, null);

INSERT INTO backup_snapshot_log VALUES (b0ad11ef-27fa-4b57-928e-2a4c6c8b8c31, null, 'FULL', c98e33b1-21b7-4f88-9bfc-0356dfb97e20, 'Community Center F', null, 'SUCCESS', null, null);

INSERT INTO backup_snapshot_log VALUES (82de5d21-6ce2-4b96-9d86-1d87b72d8fd3, null, 'INCREMENTAL', cb4d7e95-2901-4a9f-9c78-3f8b9c95f87a, 'Community Center N', null, 'IN_PROGRESS', null, null);

INSERT INTO backup_snapshot_log VALUES (1345a610-7826-4550-a3f5-56e72071e265, 210, 'Delta', a1fe11f3-2017-4847-9bca-d880b5ba8daa, 'Harmony Cultural Center', toTimestamp(now()), 'Success', '/snapshots/harmony/delta3', '2025-09-14');

INSERT INTO backup_snapshot_log VALUES (69426436-26c8-48bc-bbc4-eda3e6f517dd, 330, 'Incremental', 97c6c733-457a-4e54-93c6-dbe59173627b, 'Maple Grove Community Space', toTimestamp(now()), 'Success', '/snapshots/maple/inc4', '2025-11-04');

INSERT INTO backup_snapshot_log VALUES (ab69d985-c0d4-441a-9ac5-08c15a33135c, 800, 'Full', 5e74f077-7b09-4c54-b303-4ab7f82cb6ea, 'North Meadows Center', toTimestamp(now()), 'Success', '/snapshots/north/full9', '2025-11-02');

INSERT INTO backup_snapshot_log VALUES (912df0c9-1f34-4789-a0bf-61427fd90388, null, 'INCREMENTAL', 52cf979e-889f-4c99-80ed-527b823677be, 'Community Center B', null, 'FAILED', null, null);

INSERT INTO backup_snapshot_log VALUES (24f2ecca-099d-46e4-b49c-8edca2b9fa98, 450, 'Full', 07700952-414e-41d9-b467-011bc3a4bd6f, 'Sunrise Community Hall', toTimestamp(now()), 'Success', '/snapshots/sunrise/full5', '2025-10-28');

INSERT INTO backup_snapshot_log VALUES (0adbe0f3-d053-4f97-bb52-773c2ed84110, null, 'FULL', 8b19cc62-249f-4a0b-943b-8367c2d6a4b2, 'Community Center C', null, 'IN_PROGRESS', null, null);

INSERT INTO backup_snapshot_log VALUES (0ae45d22-2f91-4b43-a5c2-a3f18522dfb1, null, 'FULL', a93c710c-3d0e-4983-825f-d90dd64e1924, 'Community Center L', null, 'FAILED', null, null);

INSERT INTO backup_snapshot_log VALUES (1f52c8d4-3c8a-42c7-b79f-7058bf3919e1, null, 'INCREMENTAL', 94a0e81e-a3a5-4811-9c2f-92e07fb01cde, 'Community Center I', null, 'FAILED', null, null);

INSERT INTO backup_snapshot_log VALUES (e11b0a22-9d55-4f0d-b3fe-a3f92b224c98, null, 'FULL', d1a4c3be-7b44-4c2e-8c91-4dfb223e12aa, 'Community Center A', null, 'SUCCESS', null, null);

INSERT INTO backup_snapshot_log VALUES (3e53244c-da32-4796-b4cd-80158086a2e9, 410, 'Full', b20d0fed-884b-45e4-b006-a7238782bafb, 'Oakwood Activity Center', toTimestamp(now()), 'Failure', '/snapshots/oakwood/full10', '2025-08-21');

---------------------------------------------------------
-- 4. SELECT QUERIES
---------------------------------------------------------

-- View entire table  
SELECT * FROM backup_snapshot_log;

-- Only successful backups  
SELECT * FROM backup_snapshot_log WHERE status = 'Success' ALLOW FILTERING;

-- Only full backups  
SELECT * FROM backup_snapshot_log WHERE backup_type = 'Full' ALLOW FILTERING;

---------------------------------------------------------
-- 5. UPDATE QUERY
---------------------------------------------------------

UPDATE backup_snapshot_log
SET status = 'SUCCESS'
WHERE snapshot_id = ddb11cc0-39c3-4831-9e91-188f1d73831e;

---------------------------------------------------------
-- 6. DELETE QUERY
---------------------------------------------------------

DELETE FROM backup_snapshot_log
WHERE snapshot_id = 912df0c9-1f34-4789-a0bf-61427fd90388;

---------------------------------------------------------
-- END OF FILE
---------------------------------------------------------
