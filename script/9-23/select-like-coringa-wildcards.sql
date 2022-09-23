use cadastro;

select * from cursos
where nome like 'PH%P_';

SELECT * FROM CURSOS
where nome like 'P__T%';

select * from gafanhotos
where nome like '%silva';


update cursos
set nome = 'PáOO'
where idcurso = '9'
limit 1;