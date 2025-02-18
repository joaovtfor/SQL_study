CREATE NEW TABLE IF NOT EXISTS Equipe (
	nome varchar(32) NOT NULL,
	codigo INT NOT NULL,
	data_fundacao timestamp default now(),
	codModalidade INT,
	
	PRIMARY KEY(codigo)
	
	FOREIGN KEY(codModalidade)
		REFERENCES Modalidade(codigo)
);

CREATE NEW TABLE IF NOT EXISTS Modalidade (
	descricao varchar(18),
	codigo INT NOT NULL,
	
	PRIMARY KEY (codigo)
);

CREATE NEW TABLE IF NOT EXISTS Competicao (
	name VARCHAR(40),
	codigo INT NOT NULL,
	cod_equipe INT,
	premiacao_total NUMERIC(12,2) CHECK (premiacao_total >= 0),
	
	PRIMARY KEY (codigo)
	
	FOREIGN KEY (cod_equipe)
		REFERENCES equipe(codigo)
);

CREATE NEW TABLE IF NOT EXISTS EquipeComp (
	id uuid not null DEFAULT gen_random_uuid() UNIQUE,
    ano INT default 2023,
	cod_comp INT,

    PRIMARY KEY (id)
	
	FOREIGN KEY (cod_comp)
		REFERENCES competicao(codigo)
);

ALTER TABLE Competicao ADD COLUMN modelo VARCHAR(50);