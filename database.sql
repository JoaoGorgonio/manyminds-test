CREATE DATABASE bd_sistema_cadastro;

CREATE TABLE tb_usuario (
  cd_usuario INT(11) AUTO_INCREMENT NOT NULL,
  nm_usuario VARCHAR(120) NOT NULL,
  cd_email VARCHAR(320) UNIQUE NOT NULL,
  cd_senha VARCHAR(255) NOT NULL,
  ic_admin TINYINT(1) NOT NULL DEFAULT 0,
  ic_ativo TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (cd_usuario)
);

INSERT INTO tb_usuario (nm_usuario, cd_email, cd_senha, ic_admin, ic_ativo)
VALUES ('João Gorgonio', 'teste@gmail.com', '$2y$10$v1A03mh0fL6q9X8YIx4wNOi1UHTdvqfDo0LGyAKtFrlE8XDLNfpuG', 1, 1);


CREATE TABLE tb_endereco (
  cd_endereco INT(11) AUTO_INCREMENT NOT NULL, 
  cd_cep VARCHAR(9) NOT NULL,
  nm_estado VARCHAR(255) NOT NULL,
  nm_cidade VARCHAR(255) NOT NULL,
  nm_bairro VARCHAR(255) NOT NULL,
  nm_rua VARCHAR(255) NOT NULL,
  cd_rua VARCHAR(120) NOT NULL,
  ds_complemento LONGTEXT NULL,
  cd_usuario INT(11) NOT NULL,
  FOREIGN KEY (cd_usuario) REFERENCES tb_usuario(cd_usuario),
  PRIMARY KEY (cd_endereco)
);

INSERT INTO tb_endereco (cd_cep, nm_estado, nm_cidade, nm_bairro, nm_rua, cd_rua, ds_complemento, cd_usuario)
VALUES ('11075-651', 'São Paulo', 'Santos', 'Campo Grande', 'Rua João Carvalhal Filho', '1217', 'Apartamento 309', 1);


CREATE TABLE tb_log (
  cd_log INT(11) AUTO_INCREMENT NOT NULL
);