CREATE EXTENSION IF NOT EXISTS pg_stat_statements;

CREATE TABLE IF NOT EXISTS "users" (
    -- "login" VARCHAR(50) PRIMARY KEY,
    "login" VARCHAR(50) UNIQUE NOT NULL,
    "password" VARCHAR(255) NOT NULL,
    "date" TIMESTAMP DEFAULT Now()
);

CREATE TABLE IF NOT EXISTS "emails" (
    -- "login" VARCHAR(50) PRIMARY KEY,
    -- "login" VARCHAR(50) UNIQUE NOT NULL,
    -- "email" VARCHAR(255) UNIQUE NOT NULL,
    "login" VARCHAR(50) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    FOREIGN KEY ("login") REFERENCES "users" ("login")
);

-- UNIQUE
CREATE INDEX IF NOT EXISTS users_login_idx_btree ON "users" ("login");
CREATE INDEX IF NOT EXISTS emails_email_idx_btree ON "emails" ("email");

-- INSERT INTO "users" ("login", "password")
-- VALUES ('Test 1', 'Test 1'),
--        ('Test 2', 'Test 2'),
--        ('Test 3', 'Test 3'),
--        ('Test 4', 'Test 4'),
--        ('Test 5', 'Test 5');


-- INSERT INTO "emails" ("login", "email")
-- VALUES ('Test 1', 'Test1@mail.ru'),
--        ('Test 2', 'Test2@mail.ru'),
--        ('Test 3', 'Test3@mail.ru'),
--        ('Test 4', 'Test4@mail.ru'),
--        ('Test 5', 'Test5@mail.ru');


-- SELECT calls, total_exec_time, query FROM pg_stat_statements ORDER BY calls DESC LIMIT 10;

-- EXPLAIN SELECT * FROM users WHERE login LIKE 'Test 1000';
-- SELECT * FROM "users" WHERE "login" LIKE 'Test 1000';

-- SELECT * FROM "users" JOIN "emails" ON "users"."login" = "emails"."login" WHERE "users"."login" LIKE '%9%';