show databases;
use kore_data_local_mobile;
show tables;
select * from kore_users; 
select * from pending_registrations;
SELECT 'Active User' AS account_status, login_id, first_name, email, phone, created_at 
FROM kore_users 
WHERE email = 'nikitagoel120@gmial.com';

SELECT * FROM user_activity 
ORDER BY created_at DESC 
LIMIT 20;

SELECT (t1.id + 1) AS missing_id_start
FROM your_table_name t1
LEFT JOIN your_table_name t2 ON t1.id + 1 = t2.id
WHERE t2.id IS NULL AND t1.id < (SELECT MAX(id) FROM your_table_name);

SELECT * FROM your_table_name WHERE id = 2;


SELECT 
    id, 
    login_id, 
    action, 
    device, 
    ip_address, 
    created_at 
FROM user_activity 
WHERE action LIKE '%delete%' 
   OR action LIKE '%remove%' 
   OR action LIKE '%cancel%'
ORDER BY created_at DESC 
LIMIT 20;

-- Check if any business member or location referenced ID 2:
SELECT * FROM business_members WHERE business_id LIKE '%2%' OR member_id LIKE '%2%';

SELECT 
    u.login_id,
    u.first_name,
    u.last_name,
    u.email AS gmail_address,
    u.phone AS phone_number,
    u.is_verified,
    b.business_id AS store_id,
    b.business_name AS store_name,
    b.business_types,
    m.role,
    u.created_at AS registration_time
FROM kore_users u
LEFT JOIN business_members m ON u.login_id = m.user_login_id
LEFT JOIN user_businesses b ON m.business_id = b.business_id
WHERE u.login_id IN ('KD890718', 'owner_master');

SELECT * FROM store_locations WHERE store_id LIKE '%2%';

-- 1. Check if binlog is active
SHOW VARIABLES LIKE 'log_bin';

-- 2. View recent transaction events in the log
SHOW BINLOG EVENTS LIMIT 30;


SELECT 'Pending Verification' AS account_status, login_id, first_name, email, phone, created_at 
FROM pending_registrations 
WHERE email = 'nikitagoel120@gmial.com';

SELECT 
    u.login_id,
    u.first_name,
    u.last_name,
    u.email AS gmail_address,
    u.phone AS phone_number,
    u.is_verified,
    u.created_at AS registration_time
FROM kore_users u
WHERE u.login_id IN ('KD890718', 'owner_master');

SELECT 
    u.login_id,
    u.first_name,
    u.last_name,
    u.email AS gmail_address,
    u.phone AS phone_number,
    u.is_verified,
    b.business_id AS store_id,
    b.business_name AS store_name,
    m.role,
    u.created_at AS registration_time
FROM kore_users u
LEFT JOIN business_members m ON u.login_id = m.user_login_id COLLATE utf8mb4_unicode_ci
LEFT JOIN user_businesses b ON m.business_id = b.business_id COLLATE utf8mb4_unicode_ci
WHERE u.login_id IN ('KD890718', 'owner_master');