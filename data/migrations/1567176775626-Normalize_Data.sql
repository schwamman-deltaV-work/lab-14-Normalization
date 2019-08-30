-- TIMESTAMP: 1567176775626 

-- Query 1: CREATE TABLE BOOKSHELVES (id SERIAL PRIMARY KEY, name VARCHAR(255));
--    Created a second table named bookshelves

-- Query 2: INSERT INTO bookshelves(name) SELECT DISTINCT bookshelf FROM books;
--    Grabbed the unique bookshelf names from table books and inserted them into the new table bookshelves

-- Query 3: ALTER TABLE books ADD COLUMN bookshelf_id INT;
--    Added new column bookshelf_id to the books table

-- Query 4: UPDATE books SET bookshelf_id=shelf.id FROM (SELECT * FROM bookshelves) AS shelf WHERE books.bookshelf = shelf.name;
--    Sets the bookshelf_id in the books table to the matching id in the bookshelves table for that books name

-- Query 5: ALTER TABLE books DROP COLUMN bookshelf;
--    Removes the bookshelf column from table books

-- Query 6: ALTER TABLE books ADD CONSTRAINT fk_bookshelves FOREIGN KEY (bookshelf_id) REFERENCES bookshelves(id);
--    Sets the bookshelf_id in the books table as a foreign key that references the id in the bookshelves table. 