drop procedure if exists linear_reg;

delimiter //
create procedure linear_reg(out m float, out b float)
begin

select (sum(y)*sum(x*x)-sum(x)*sum(x*y))/(count(x)*sum(x*x) -sum(x)*sum(x)) from (
select weight as x , height as y from linear_r) b into b ;

select (count(x)*sum(x*y)-sum(x)* sum(y))/(count(x)* sum(x*x)-sum(x)*sum(x)) from (
select weight as x , height as y from linear_r)a into m;

end //
delimiter ;


call linear_reg(@a, @b);
SELECT @a , @b 