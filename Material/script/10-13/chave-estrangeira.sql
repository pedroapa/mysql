use cadastro;

describe gafanhotos;

alter table gafanhotos
add column cursopreferido int;

alter table gafanhotos
add foreign key(cursopreferido)
references cursos(idcurso);

select * from gafanhotos;
select * from cursos;

update gafanhotos
set cursopreferido = '6'
where id = '1';

delete from cursos 
where idcurso = '28'
limit 1;

/*Parte do JOIN ou INNER JOIN*/
select * from gafanhotos;
select nome, cursopreferido from gafanhotos;

/*Inicialmente*/
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano from gafanhotos join cursos;

/*Completando*/
select gafanhotos.nome, cursos.nome, cursos.ano from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido;