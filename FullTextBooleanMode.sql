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

select * from articles_full where match(content) against('+data' in boolean mode);


select * from articles_full where match(content) against('+data faster' in boolean mode);

select * from articles_full where match(content) against('+data -improves' in boolean mode);


select * from articles_full where match(content) against('data*' in boolean mode);

select * from articles_full where match(content) against('performance enabling' in boolean mode);


select * from articles_full where match(content) against('"performance by enabling"' in boolean mode);

select * from articles_full where match(content) against('+data +(>enabling <search)' in boolean mode);

select * from articles_full where match(content) against('+data +(>search <enabling)' in boolean mode);
