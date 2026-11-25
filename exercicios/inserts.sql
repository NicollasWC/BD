-- (1)

select c.nmcliente, m.dtmov, m.vrmov, m.tpmov, m.nrconta 
from clientes c
join clicontas c1 on c.cdcliente = c1.cdcliente
join contas ct on ct.nrconta = c1.nrconta
join movimentos m on m.nrconta = ct.nrconta
where c.nmcliente ='JOAO DA SILVA' -- (2) and tpmov = 'D'
order by dtmov;  


-- (3)

INSERT INTO Clientes
	VALUES ( '00069', 'Nicollau Juvenal', 'R gugaral, 67',
		 '3698-9067', 'F', '05/11/2007', '453.821.839-30', '7378210' ) ;
         
select nmcliente from clientes
where nmcliente like 'Nicollau%';


--(4)

select a.nmagencia, sum(m.vrmov) as totaldeppositos
from movimentos m
join contas c on m.nrconta = c.nrconta
join agencias a on c.cdagencia = a.cdagencia
where m.dsmov = 'DEPOSITO'
GROUP by a.nmagencia;
-- (5) having sum(m.vrmov) > 2000


--(6)

delete clientes
where nmcliente = 'ANA JUNQUEIRA';

select * from clientes;
select * from clicontas;
select * from contas;
select * from movimentos;



