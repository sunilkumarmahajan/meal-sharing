use heroku_271975124725387;
CREATE Table meal(
  id INT(10) UNSIGNED AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  description TEXT (255),
  location VARCHAR(255),
  when_date DATETIME NOT NULL,
  max_reservations INT(10),
  price DECIMAL(10, 2),
  created_date DATE,
  CONSTRAINT pk_id PRIMARY KEY (id)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
CREATE Table reservation(
  id INT(10) UNSIGNED AUTO_INCREMENT,
  number_of_guests INT(10) UNSIGNED NOT NULL,
  meal_id INT(10) UNSIGNED,
  created_date DATE,
  contact_phonenumber VARCHAR(255),
  contact_name VARCHAR(255),
  contact_email VARCHAR(255),
  CONSTRAINT pk_res PRIMARY KEY(id),
  CONSTRAINT fk_res FOREIGN KEY (meal_id) REFERENCES meal(id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
--review table
CREATE Table review (
  id INT(10) UNSIGNED AUTO_INCREMENT,
  title VARCHAR(255),
  description TEXT NOT NULL,
  meal_id int(10) UNSIGNED,
  stars INT(10) UNSIGNED,
  created_date DATE,
  CONSTRAINT pk_rev PRIMARY KEY(id),
  CONSTRAINT fk_rev FOREIGN KEY (meal_id) REFERENCES meal(id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci --insert data into meal table
INSERT INTO
  meal (
    title,
    description,
    location,
    when_date,
    max_reservations,
    price,
    created_date
  )
VALUES
  (
    "veg-menu",
    "veg biryani, gravy, raitha",
    "vaerebro",
    "2021-10-10",
    25,
    150,
    "2021-10-04"
  );
INSERT INTO
  meal (
    title,
    description,
    location,
    when_date,
    max_reservations,
    price,
    created_date
  )
VALUES
  (
    "chicken-menu",
    "chicken biryani, gravy, raitha",
    "vaerebro",
    "2021-10-15",
    50,
    175,
    "2021-10-04"
  );
INSERT INTO
  meal (
    title,
    description,
    location,
    when_date,
    max_reservations,
    price,
    created_date
  )
VALUES
  (
    "lamb-menu",
    "lamb biryani, gravy, raitha",
    "vaerebro",
    "2021-10-15",
    50,
    200,
    "2021-10-04"
  );
INSERT INTO
  meal (
    title,
    description,
    location,
    when_date,
    max_reservations,
    price,
    created_date
  )
VALUES
  (
    "veg-thali",
    "veg biryani, veg kurma, naan, papad, raitha, mango lassi",
    "vaerebro",
    "2021-10-10",
    20,
    100,
    "2021-10-04"
  );
INSERT INTO
  meal (
    title,
    description,
    location,
    when_date,
    max_reservations,
    price,
    created_date
  )
VALUES
  (
    "kids-veg-menu",
    "veg biryani, gravy, raitha",
    "vaerebro",
    "2021-10-10",
    15,
    60,
    "2021-10-04"
  );
INSERT INTO
  meal (
    title,
    description,
    location,
    when_date,
    max_reservations,
    price,
    created_date
  )
VALUES
  (
    "kids-chicken-menu",
    "chicken biryani, gravy, raitha",
    "vaerebro",
    "2021-10-15",
    10,
    100,
    "2021-10-05"
  );
INSERT INTO
  meal (
    title,
    description,
    location,
    when_date,
    max_reservations,
    price,
    created_date
  )
VALUES
  (
    "kids-lamb-menu",
    "lamb biryani, gravy, raitha",
    "vaerebro",
    "2021-10-15",
    10,
    100,
    "2021-10-04"
  );
INSERT INTO
  meal (
    title,
    description,
    location,
    when_date,
    max_reservations,
    price,
    created_date
  )
VALUES
  (
    "durum menu",
    "chicken durum, french fries, coke",
    "vaerebro",
    "2021-10-15",
    25,
    75,
    "2021-10-07"
  );
INSERT INTO
  meal (
    title,
    description,
    location,
    when_date,
    max_reservations,
    price,
    created_date
  )
VALUES
  (
    "pitabrød menu",
    "chicken pitabrød, french fries, coke",
    "vaerebro",
    "2021-10-15",
    15,
    55,
    "2021-10-08"
  );
--insert data into reservation table
select
  *
from
  meal;
INSERT INTO
  reservation (
    number_of_guests,
    meal_id,
    created_date,
    contact_phonenumber,
    contact_name,
    contact_email
  )
VALUES
  (
    15,
    5,
    "2021-10-05",
    "45-3499999",
    "harsha",
    "harsha@mymail.com"
  );
INSERT INTO
  reservation (
    number_of_guests,
    meal_id,
    created_date,
    contact_phonenumber,
    contact_name,
    contact_email
  )
VALUES
  (
    10,
    15,
    "2021-10-04",
    "45-12345612",
    "sunil mahajan",
    "sunilmahajan@gmail.com"
  );
INSERT INTO
  reservation (
    number_of_guests,
    meal_id,
    created_date,
    contact_phonenumber,
    contact_name,
    contact_email
  )
VALUES
  (
    25,
    25,
    "2021-10-04",
    "45-34561232",
    "mahajan",
    "mahajan@gmail.com"
  );
INSERT INTO
  reservation (
    number_of_guests,
    meal_id,
    created_date,
    contact_phonenumber,
    contact_name,
    contact_email
  )
VALUES
  (
    30,
    35,
    "2021-10-05",
    "45-12222122",
    "kumar",
    "kumar@gmail.com"
  );
INSERT INTO
  reservation (
    number_of_guests,
    meal_id,
    created_date,
    contact_phonenumber,
    contact_name,
    contact_email
  )
VALUES
  (
    15,
    45,
    "2021-10-04",
    "45-87678888",
    "madhav",
    "madhav@mymail.com"
  );
INSERT INTO
  reservation (
    number_of_guests,
    meal_id,
    created_date,
    contact_phonenumber,
    contact_name,
    contact_email
  )
VALUES
  (
    3,
    55,
    "2021-10-04",
    "45-876788888",
    "madhav",
    "madhav@mymail.com"
  );
INSERT INTO
  reservation (
    number_of_guests,
    meal_id,
    created_date,
    contact_phonenumber,
    contact_name,
    contact_email
  )
VALUES
  (
    10,
    65,
    "2021-10-08",
    "45-22332233",
    "santosh",
    "santosh@mymail.com"
  );
INSERT INTO
  reservation (
    number_of_guests,
    meal_id,
    created_date,
    contact_phonenumber,
    contact_name,
    contact_email
  )
VALUES
  (
    4,
    75,
    "2021-10-11",
    "45-5555555",
    "swapna mahajan",
    "smahajan@mymail.com"
  );
--insert data into review table
INSERT INTO
  review (title, description, meal_id, stars, created_date)
VALUES
  ("excellent", "amazing taste", 5, 5, "2021-10-05");
INSERT INTO
  review (title, description, meal_id, stars, created_date)
VALUES
  (
    "super good",
    "super good taste",
    5,
    3,
    "2021-10-04"
  );
INSERT INTO
  review (title, description, meal_id, stars, created_date)
VALUES
  (
    "ok",
    "its ok, need to improve the tatse",
    15,
    1,
    "2021-10-05"
  );
INSERT INTO
  review (title, description, meal_id, stars, created_date)
VALUES
  (
    "excellent",
    "amazing taste",
    25,
    5,
    "2021-10-05"
  );
INSERT INTO
  review (title, description, meal_id, stars, created_date)
VALUES
  (
    "excellent",
    "excellent quality",
    25,
    7,
    "2021-10-04"
  );
INSERT INTO
  review (title, description, meal_id, stars, created_date)
VALUES
  ("excellent", "good quality", 35, 8, "2021-10-06");