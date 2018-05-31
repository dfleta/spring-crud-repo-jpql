drop table t_clients if exists
drop table t_factures if exists
drop table t_liniesfact if exists
create table t_clients (cli_nom varchar(255) not null, cli_email varchar(255) not null, primary key (cli_nom))
create table t_factures (fac_id bigint generated by default as identity, fac_client varchar(255), primary key (fac_id))
create table t_liniesfact (lin_id bigint generated by default as identity, lin_producte varchar(255), lin_total integer, lin_factura bigint, primary key (lin_id))
alter table t_factures add constraint fac_client_fk foreign key (fac_client) references t_clients
alter table t_liniesfact add constraint lin_fac_fk foreign key (lin_factura) references t_factures
