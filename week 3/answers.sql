-- Create Table **students** with the following columns:
-- **id** INTEGER PRIMARY KEY
-- **fullName** text field with a maximum length of 100 characters
-- **age** INTEGER

CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    fullName TEXT NOT NULL CHECK (LENGTH(fullName) <= 100),
    age INTEGER
);

-- ID: 0 name: John Henry age:19; id: 1 name: Mary Jane age: 18; id: 2 name: Peter Parker age: 20; id: 3 name: Bruce Wayne age: 21; id: 4 name: Clark Kent age: 22; id: 5 name: Tony Stark age: 23; id: 6 name: Natasha Romanoff age: 24; id: 7 name: Steve Rogers age: 25; id: 8 name: Diana Prince age: 26; id: 9 name: Barry Allen age: 27; id: 10 name: Wade Wilson age: 28

INSERT INTO students (id, fullName, age) VALUES
(0, 'John Henry', 19),
(1, 'Mary Jane', 18),
(2, 'Peter Parker', 21),
(3, 'Bruce Wayne', 22),
(4, 'Clark Kent', 17),
(5, 'Tony Stark', 18),
(6, 'Natasha Romanoff', 19),
(7, 'Steve Rogers', 21),
(8, 'Diana Prince', 22),
(9, 'Barry Allen', 24),
(10, 'Wade Wilson', 21);

-- Update age of ID = 2 to 20
UPDATE students
SET age = 20
WHERE id = 2;
