# DATABASE DESIGN EXERCISES
USE codeup_test_db;

CREATE TABLE user_signup
(
    id            INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_email    VARCHAR(50),
    user_password VARCHAR(100),
    PRIMARY KEY (id)
);

INSERT INTO user_signup(user_email, user_password)
VALUES ('user1', 'password1'),
       ('user2', 'password2'),
       ('user3', 'password2');

CREATE TABLE user_createdAds
(
    Ad_id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    userIDAd       INT UNSIGNED NOT NULL,
    categoryID     INT UNSIGNED NOT NULL,
    ad_category    VARCHAR(35),
    ad_title       VARCHAR(100),
    ad_description VARCHAR(1000),
    PRIMARY KEY (Ad_id),
    FOREIGN KEY (userIDAd) REFERENCES user_signup (id)
);

INSERT INTO user_createdAds(userIDAd, categoryID, ad_category, ad_title, ad_description)
VALUES ((SELECT id FROM user_signup WHERE user_email = 'user1'), 1, 'Kitchen', 'title1', 'description1'),
       ((SELECT id FROM user_signup WHERE user_email = 'user2'), 2, 'Outdoor', 'title2', 'description2'),
       ((SELECT id FROM user_signup WHERE user_email = 'user3'), 3, 'Vehicle', 'title3', 'description3'),
       ((SELECT id FROM user_signup WHERE user_email = 'user1'), 2, 'Outdoor', 'title4', 'description4'),
       ((SELECT id FROM user_signup WHERE user_email = 'user2'), 12, 'KitchenANDOutdoor', 'title5', 'description5');

CREATE TABLE categories
(
    category_ID   INT UNSIGNED NOT NULL,
    category_name VARCHAR(50),
    PRIMARY KEY (category_ID)
);

INSERT INTO categories(category_ID, category_name)
VALUES (1, 'Kitchen'),
       (2, 'Outdoor'),
       (3, 'Vehicle'),
       (4, 'Help Wanted'),
       (5, 'Electronics');


CREATE TABLE ad_category
(
    AdID           INT UNSIGNED NOT NULL,
    category_ad_Id INT UNSIGNED NOT NULL,
    FOREIGN KEY (AdID) REFERENCES user_createdAds (Ad_id),
    FOREIGN KEY (category_ad_Id) REFERENCES categories (category_ID)
);

INSERT INTO ad_category (AdID, category_ad_Id)
VALUES (1, 1),
       (2, 2),
       (3, 3),
       (4, 2),
       (5, 12);

SELECT user_email
FROM user_signup
WHERE id IN (
    SELECT userIDAd
    FROM user_createdAds
    WHERE Ad_id = 4
);

SELECT *
FROM user_createdAds
WHERE Ad_id = 2;

SELECT *
FROM user_createdAds
WHERE ad_category = 'Kitchen';

SELECT *
FROM user_createdAds
WHERE userIDAd IN (
    SELECT id
    FROM user_signup
    WHERE userIDAd = 1
);

