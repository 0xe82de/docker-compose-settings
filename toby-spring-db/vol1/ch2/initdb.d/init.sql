-- 테스트용 데이터베이스 생성
CREATE DATABASE springbook
DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE DATABASE testdb
DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 테스트용 테이블 생성
CREATE TABLE springbook.users (
  id VARCHAR(10) PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  password VARCHAR(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE testdb.users (
  id VARCHAR(10) PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  password VARCHAR(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 계정 생성
CREATE USER 'spring'@'%' identified by 'book';

-- 권한 부여
GRANT ALL PRIVILEGES on springbook.* TO 'spring'@'%';
GRANT ALL PRIVILEGES on testdb.* TO 'spring'@'%';
FLUSH PRIVILEGES;