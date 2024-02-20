CREATE TABLE articles_full_1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    content TEXT
);

-- Insert sample data into the articles table
INSERT INTO articles_full_1 (title, content) VALUES
    ('Introduction to MySQL', 'MySQL is an open-source relational database management system.'),
    ('Full-Text Search in MySQL', 'MySQL provides full-text search capabilities for efficient text searching.'),
    ('Database Management Tips', 'Effective database management involves proper optimization and maintenance.'),
    ('Performance Tuning Techniques', 'Optimizing database performance requires tuning various parameters.'),
    ('Data Security Best Practices', 'Implementing robust security measures is essential for safeguarding data.'),
    ('Advanced SQL Queries', 'Mastering advanced SQL queries enables complex data retrieval operations.');
    
select * from articles_full_1;
    
CREATE FULLTEXT INDEX articles_full_1_index_title_content ON articles_full_1(title, content);

select * from articles_full_1 where match(content, title) against("database management" in natural language mode)

select * from articles_full_1 where match(content, title) against("database management" in natural language mode with query expansion)

select * from articles_full_1 where match(content, title) against("performance enabling" in natural language mode)

select * from articles_full_1 where match(content, title) against("performance enabling" in natural language mode with query expansion)
