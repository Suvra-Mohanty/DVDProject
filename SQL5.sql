select distinct amount from payment 
where amount in (select max(amount) from payment)
