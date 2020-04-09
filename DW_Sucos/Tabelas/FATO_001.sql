CREATE TABLE [dbo].[FATO_001]
(
	[Cod_Cliente] NVARCHAR(50) NOT NULL , 
    [Cod_Produto] NVARCHAR(50) NOT NULL, 
    [Cod_Organizacional] NVARCHAR(50) NOT NULL, 
    [Cod_Fabrica] NVARCHAR(50) NOT NULL, 
    [Cod_Dia] NVARCHAR(50) NOT NULL, 
    [Faturamento] FLOAT NULL, 
    [Imposto] FLOAT NULL, 
    [Custo_Variavel] FLOAT NULL, 
    [Quantidade] FLOAT NULL, 
    [Unidades_Vendidas] FLOAT NULL, 
    PRIMARY KEY ([Cod_Dia], [Cod_Cliente], [Cod_Produto], [Cod_Organizacional], [Cod_Fabrica]), 
    CONSTRAINT [FK_FATO_001_DIM_Cliente] FOREIGN KEY ([Cod_Cliente]) REFERENCES [DIM_Cliente]([Cod_Cliente]), 
    CONSTRAINT [FK_FATO_001_DIM_Produto] FOREIGN KEY ([Cod_Produto]) REFERENCES [DIM_Produto]([Cod_Produto]),
    CONSTRAINT [FK_FATO_001_DIM_Organizacional] FOREIGN KEY ([Cod_Organizacional]) REFERENCES [DIM_Organizacional]([Cod_Filho]),
    CONSTRAINT [FK_FATO_001_DIM_Fabrica] FOREIGN KEY ([Cod_Fabrica]) REFERENCES [DIM_Fabrica]([Cod_Fabrica]),
    CONSTRAINT [FK_FATO_001_DIM_Tempo] FOREIGN KEY ([Cod_Dia]) REFERENCES [DIM_Tempo]([Cod_Dia]) 

)
