CREATE TABLE words (
    id INT AUTO_INCREMENT PRIMARY KEY,
    word VARCHAR(255)
);

INSERT INTO words (word) VALUES
    ('apple'),
    ('banana'),
    ('pear'),
    ('peach'),
    ('apricot'),
    ('pineapple');
    
select *from words

explain
select * from words where word like 'app%';

create index words_index_word on words(word(3));

explain
select * from words where word = 'apple';