ALTER TABLE POST
  ALTER COLUMN create_date SET DEFAULT CURRENT_TIMESTAMP;

-- Users
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES
  (1, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', 'user@mail.com', 'user', 'Name', 'Surname',
   1);
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES
  (2, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', '22pd21@psgtech.ac.in', 'Luqmaan', 'K', '', 1);
-- password in plaintext: "password"
INSERT INTO USER (user_id, password, email, username, name, last_name, active)
VALUES (3, '$2a$06$OAPObzhRdRXBCbk7Hj/ot.jY3zPwR8n7/mfLtKIgTzdJa4.6TwsIm', '22pd40@psgtech.ac.in', 'Varun', 'Sithaarth', '', 1);

-- Roles
INSERT INTO ROLE (role_id, role)
VALUES (1, 'ROLE_ADMIN');
INSERT INTO ROLE (role_id, role)
VALUES (2, 'ROLE_USER');

-- User Roles
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (1, 1);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (1, 2);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (2, 2);
INSERT INTO USER_ROLE (user_id, role_id)
VALUES (3, 2);

-- Posts
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (1, 1, 'Title 1',
        '"It does not matter how slowly you go as long as you do not stop."',
        --         CURRENT_TIMESTAMP());
        {ts '2023-10-19 11:10:13.247'});
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (2, 1, 'Title 2',
        '"When you''re in your darkest place, you give yourself hope and that''s inner strength."',
        --         CURRENT_TIMESTAMP());
        {ts '2023-09-10 11:10:13.247'});
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (3, 1, 'Title 3',
        '"Sometimes life is like this dark tunnel. You can''t always see the light at the end of the tunnel, but if you just keep moving... you will come to a better place."',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (4, 1, 'Title 4',
        '"Sometimes the best way to solve your own problems is to help someone else"',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (5, 1, 'Title 5',
        '"Life happens wherever you are, whether you make it or not."',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (6, 1, 'Title 6',
        '"Protection and power are overrated. I think you are very wise to choose happiness and love."',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (7, 2, 'Title 7',
        '"Failure is only the opportunity to begin again. Only this time, more wisely."',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (8, 2, 'Title 8',
        '"Good times become good memories, but bad times become good lessons."',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (9, 2, 'Title 9',
        '"Its time for you to look inward, and start asking yourself the big questions. Who are you? And what do you want?."',
        CURRENT_TIMESTAMP());
INSERT INTO POST (post_id, user_id, title, body, create_date)
VALUES (10, 2, 'Title 10',
        '"Sometimes, the best way to solve your own problems is to help someone else."',
        CURRENT_TIMESTAMP());

-- Comments
