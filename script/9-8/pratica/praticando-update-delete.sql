use exercicioint;

describe cliente;

/*6 - Usando os comandos em SQL UPDATE e WHERE, Altere o valor do campo
 Salário para 1.300,00, do código 04.*/
 
 update cliente
 set salario = '1300'
 where codigo = '4';
 
 /*Esqueci de proteger, vou voltar a como estava */
 update cliente
 set salario = '2300'
 where codigo = '4'
 limit 1;
 
 /*Codigo mais certo */
 update cliente
 set salario = '1300'
 where codigo = '4'
 limit 1;
 
 /*7 - Apague o registro 04, utilizando os comando em SQL DELETE e WHERE. */
 delete from cliente
 where codigo = '4'
 limit 1;
 
 /*Para deletar voce mostra que é para apagar e voce diz qual registro é, no fim 
 limita e pronto*/
 
 

select * from cliente;