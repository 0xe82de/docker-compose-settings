-- 테스트용 데이터베이스 생성
CREATE DATABASE test_database
DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- 테스트용 테이블 생성
CREATE TABLE test_database.test_table
(
    `seq` BIGINT(20) UNSIGNED AUTO_INCREMENT,
    `email` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `deleted` TINYINT(1) NOT NULL,
    PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 계정 생성
CREATE USER 'kskim'@'%' IDENTIFIED BY 'kskim';

-- 권한 부여
GRANT ALL PRIVILEGES on test_database.* TO 'kskim'@'%';
FLUSH PRIVILEGES;
