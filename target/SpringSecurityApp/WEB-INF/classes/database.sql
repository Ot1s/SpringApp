-- Table: users
CREATE TABLE public.users
(
  id serial NOT NULL PRIMARY KEY ,
  username character varying(255) NOT NULL,
  password character varying(255) NOT NULL
)
WITH (
  OIDS = FALSE
)
;

-- Table: roles

CREATE TABLE public.roles
(
  id serial NOT NULL PRIMARY KEY,
  name character varying(100) NOT NULL

)
WITH (
OIDS = FALSE
)
;

-- Table for mapping user and roles: user_roles
CREATE TABLE public.user_roles
(
  user_id integer NOT NULL REFERENCES users(id),
  role_id integer NOT NULL REFERENCES roles(id),
  UNIQUE (user_id, role_id)
)
WITH (
OIDS = FALSE
)
;

-- Insert data
INSERT  INTO users VALUES (1, 'vlad','aser2014');
INSERT  INTO  roles VALUES (1,'ROLE_USER');
INSERT  INTO  roles VALUES (2,'ROLE_ADMIN');

INSERT  INTO  user_roles VALUES (1,2);
