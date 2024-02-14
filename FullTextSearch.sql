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
    
select * from articles_full;

select * from articles_full where content = 'performance by enabling';
    
select * from articles_full where content = 'performance enabling';


select * from articles_full where content like '%performance by enabling%';

select * from articles_full where content like '%performance enabling%';

select * from articles_full where content like '%enabling%' or content like '%performance%';


select * from articles_full where content like '%enabling performance%';

create fulltext index articles_full_index_content on articles_full(content);

select * from articles_full where match(content) against('enabling performance');

select * from articles_full where match(content) against('performance');

select * from articles_full where match(content) against('performance data');
