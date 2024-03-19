CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    balance DECIMAL(10, 2)
);

INSERT INTO accounts (account_id, balance) VALUES
(1, 5000.00),
(2, 5000.00);

select * from accounts;


update accounts set balance = balance - 500 where account_id = 1;

update accounts set balance = balance + 500 where account_id = 2;




update accounts set balance = balance - 500 where account_id = 1;
signal sqlstate '45000' set message_text = 'some error';
update accounts set balance = balance + 500 where account_id = 2;


start transaction;
update accounts set balance = balance - 500 where account_id = 1;
signal sqlstate '45000' set message_text = 'some error';
update accounts set balance = balance + 500 where account_id = 2;

commit;

rollback;



start transaction;
update accounts set balance = balance - 500 where account_id = 1;
update accounts set balance = balance + 500 where account_id = 2;
commit;