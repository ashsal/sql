CREATE TABLE articles_full (
    article_id INT PRIMARY KEY,
    content TEXT
);

INSERT INTO articles_full (article_id, content) VALUES
    (1, 'MySQL is a popular open-source relational database management system (RDBMS).'),
    (2, 'Full-text search in MySQL enables efficient searching of text data in tables.'),
    (3, 'Natural language search allows users to express search queries in everyday language.'),
    (4, 'Indexing improves query performance by enabling faster data retrieval from tables.'),
    (5, 'performance by enabling');
    
CREATE FULLTEXT INDEX articles_full_index_content ON articles_full(content);

select * from articles_full;


select * from articles_full where match(content) against('enables');

select * from articles_full where match(content) against('enables' with query expansion);

select * from articles_full where match(content) against('database');

select * from articles_full where match(content) against('database' with query expansion);
