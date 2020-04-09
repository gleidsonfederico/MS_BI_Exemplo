CREATE TABLE [dbo].[FATO_002]
(
	[Cod_Cliente] NVARCHAR(50) NOT NULL , 
    [Cod_Produto] NVARCHAR(50) NOT NULL, 
    [Cod_Fabrica] NVARCHAR(50) NOT NULL, 
    [Cod_Dia] NVARCHAR(50) NOT NULL, 
    [Frete] FLOAT NULL, 
    PRIMARY KEY ([Cod_Dia], [Cod_Cliente], [Cod_Produto], [Cod_Fabrica]), 
    CONSTRAINT [FK_FATO_002_DIM_Cliente] FOREIGN KEY ([Cod_Cliente]) REFERENCES [DIM_Cliente]([Cod_Cliente]), 
    CONSTRAINT [FK_FATO_002_DIM_Produto] FOREIGN KEY ([Cod_Produto]) REFERENCES [DIM_Produto]([Cod_Produto]),
    CONSTRAINT [FK_FATO_002_DIM_Fabrica] FOREIGN KEY ([Cod_Fabrica]) REFERENCES [DIM_Fabrica]([Cod_Fabrica]),
    CONSTRAINT [FK_FATO_002_DIM_Tempo] FOREIGN KEY ([Cod_Dia]) REFERENCES [DIM_Tempo]([Cod_Dia]) 

)
