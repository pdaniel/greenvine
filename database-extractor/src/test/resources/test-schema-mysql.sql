CREATE TABLE `USERS` (
	`PASSWORD` VARCHAR (255) NOT NULL,
	`USERNAME` VARCHAR (255) NOT NULL,
	`USER_ID` INTEGER NOT NULL
);

CREATE TABLE `FOLLOWERS` (
	`USER_ID` INTEGER NOT NULL,
	`BLOG_ID` INTEGER NOT NULL
);

CREATE TABLE `BLOGS` (
	`NAME` VARCHAR (255) NOT NULL,
    `URL` VARCHAR (255) NOT NULL,
	`IMAGE` VARCHAR (255) NOT NULL,
	`USER_ID` INTEGER NOT NULL,
	`BLOG_ID` INTEGER NOT NULL
);

CREATE TABLE `POSTS` (
	`URL` VARCHAR (255) NOT NULL,
	`CREATION_DATE` TIMESTAMP NOT NULL,
    `BLOG_ID` INTEGER NOT NULL,
	`POST_ID` INTEGER NOT NULL
);

CREATE TABLE `REVISIONS` (
	`TITLE` VARCHAR (255) NOT NULL,
	`BODY` TEXT NOT NULL,
    `REVISION_DATE` TIMESTAMP NOT NULL,
	`POST_ID` INTEGER NOT NULL,
	`REVISION_ID` INTEGER NOT NULL
);

CREATE TABLE `PUBLICATIONS` (
    `PUBLICATION_DATE` TIMESTAMP NOT NULL,
	`REVISION_ID` INTEGER NOT NULL,
	`POST_ID` INTEGER NOT NULL,
	`PUBLICATION_ID` INTEGER NOT NULL
);

CREATE TABLE `COMMENTS` (
	`COMMENT` VARCHAR (255) NOT NULL,
	`DATE` TIMESTAMP NOT NULL,
	`POST_ID` INTEGER NOT NULL,
	`USER_ID` INTEGER NOT NULL,
	`COMMENT_ID` INTEGER NOT NULL
);

-- PRIMARY KEYS

ALTER TABLE `USERS`
    ADD CONSTRAINT `PK_USERS` PRIMARY KEY (`USER_ID`);

ALTER TABLE `FOLLOWERS`
    ADD CONSTRAINT `PK_FOLLOWERS` PRIMARY KEY (`USER_ID`,`BLOG_ID`);

ALTER TABLE `BLOGS`
    ADD CONSTRAINT `PK_BLOGS` PRIMARY KEY (`BLOG_ID`);

ALTER TABLE `POSTS`
    ADD CONSTRAINT `PK_POSTS` PRIMARY KEY (`POST_ID`);

ALTER TABLE `REVISIONS`
    ADD CONSTRAINT `PK_REVISIONS` PRIMARY KEY (`REVISION_ID`);

ALTER TABLE `PUBLICATIONS`
    ADD CONSTRAINT `PK_PUBLICATIONS` PRIMARY KEY (`PUBLICATION_ID`);

ALTER TABLE `COMMENTS`
    ADD CONSTRAINT `PK_COMMENTS` PRIMARY KEY (`COMMENT_ID`);


-- UNIQUE KEYS

-- Usernames must be unique
ALTER TABLE `USERS`
    ADD CONSTRAINT `UK_USERS_USERNAME_UNIQUE` UNIQUE (`USERNAME`);  

-- A blog must have a unique URL
ALTER TABLE `BLOGS`
    ADD CONSTRAINT `UK_BLOGS_URL_UNIQUE` UNIQUE (`URL`); 

-- Each post must have a unique URL within a blog
ALTER TABLE `POSTS`
    ADD CONSTRAINT `UK_POSTS_URL_UNIQUE` UNIQUE (`BLOG_ID`, `URL`);

-- Each post can be published once
ALTER TABLE `PUBLICATIONS`
    ADD CONSTRAINT `UK_PUBLICATIONS_POST_UNIQUE` UNIQUE (`POST_ID`);

-- FOREIGN KEYS

ALTER TABLE `FOLLOWERS`
    ADD CONSTRAINT `FOLLOWERS_USERS_FOLLOWING` FOREIGN KEY (`USER_ID`) references `USERS`(`USER_ID`);

ALTER TABLE `FOLLOWERS`
    ADD CONSTRAINT `FOLLOWERS_BLOGS_FOLLOWED` FOREIGN KEY (`BLOG_ID`) references `BLOGS`(`BLOG_ID`);

ALTER TABLE `BLOGS`
    ADD CONSTRAINT `BLOGS_USERS` FOREIGN KEY (`USER_ID`) references `USERS`(`USER_ID`);

ALTER TABLE `POSTS`
    ADD CONSTRAINT `POSTS_BLOGS` FOREIGN KEY (`BLOG_ID`) references `BLOGS`(`BLOG_ID`);

ALTER TABLE `REVISIONS`
    ADD CONSTRAINT `REVISIONS_POSTS` FOREIGN KEY (`POST_ID`) references `POSTS`(`POST_ID`);

ALTER TABLE `PUBLICATIONS`
    ADD CONSTRAINT `PUBLICATIONS_POSTS` FOREIGN KEY (`POST_ID`) references `POSTS`(`POST_ID`);

ALTER TABLE `PUBLICATIONS`
    ADD CONSTRAINT `PUBLICATIONS_REVISIONS` FOREIGN KEY (`REVISION_ID`) references `REVISIONS`(`REVISION_ID`);

ALTER TABLE `COMMENTS`
    ADD CONSTRAINT `COMMENTS_POSTS` FOREIGN KEY (`POST_ID`) references `POSTS`(`POST_ID`);

ALTER TABLE `COMMENTS`
    ADD CONSTRAINT `COMMENTS_USERS` FOREIGN KEY (`USER_ID`) references `USERS`(`USER_ID`);