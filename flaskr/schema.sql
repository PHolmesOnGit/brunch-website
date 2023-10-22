DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE post (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  author_id INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  ingredients TEXT NOT NULL,
  instructions TEXT NOT NULL,
  meal_type TEXT NOT NULL,
  time_in_minutes INTEGER NOT NULL,
  type TEXT NOT NULL,
  FOREIGN KEY (author_id) REFERENCES user (id)
);