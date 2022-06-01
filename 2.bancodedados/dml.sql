use catalogoFilmesDB;

insert into tb_usuario (nm_usuario, ds_email, ds_senha)
	values('Admin','admin@admin.com.br', '1234');

select  id_usuario		id,
		nm_usuario 		nome,
        ds_email		email
	from tb_usuario
    where ds_email		= 'admin@admin.com.br'
    and  ds_senha		= '1234';
    
insert into tb_filme (id_usuario, nm_filme, ds_sinopse, vl_avaliacao, dt_lancamento, bt_disponivel)
values(1, 'Harry Potter e a Camara Secreta', 'Filme bom', 8.2, '2012-02-11', true);

update tb_filme
set img_filme           = '/storage/filme/asdf.jp'
where id_filme =1;


update tb_filme
	set nm_filme 		='Harry Potter e a Pedra Filosofal',
    ds_sinopse			='Filme bom',
    vl_avaliacao		= 9.5,
    dt_lancamento		= '2010-05-03',
    bt_disponivel		= true,
where id_filme = 1;

--Alterar Imagem--
update tb_filme
set img_filme = '/storage/filme/asdfasdf.jp',
where id_filme  = ?;


delete from tb_filme
where id_filme 	= 1;
	
select  id_filme 		id, 
		nm_filme		nome,
        vl_avaliacao	avaliacao,
        dt_lancamento	lancamento,
        bt_disponivel	disponivel
from tb_filme;

select  id_filme		id,
		nm_filme		nome,
        vl_avaliacao	avaliacao,
        dt_lancamento	lancamento,
        bt_disponivel	disponivel
from  tb_filme
where nm_filme 			like'%a%'; 

select  id_filme			id,
		nm_filme		    nome,
        vl_avaliacao		avaliacao,
        ds_sinopse			sinopse,
        dt_lancamento		lancamento,
        bt_disponivel		disponivel,
        img_filme			capa
from  tb_filme
where id_filme 				=4;