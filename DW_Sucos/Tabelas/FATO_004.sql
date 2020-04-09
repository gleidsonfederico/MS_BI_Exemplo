CREATE TABLE [dbo].[FATO_004]
(
	[Cod_Cliente] NVARCHAR(50) NOT NULL , 
    [Cod_Produto] NVARCHAR(50) NOT NULL, 
    [Cod_Organizacional] NVARCHAR(50) NOT NULL, 
    [Cod_Dia] NVARCHAR(50) NOT NULL, 
    [Meta_Faturamento] FLOAT NULL, 
    PRIMARY KEY ([Cod_Dia], [Cod_Cliente], [Cod_Produto], [Cod_Organizacional]), 
    CONSTRAINT [FK_FATO_004_DIM_Cliente] FOREIGN KEY ([Cod_Cliente]) REFERENCES [DIM_Cliente]([Cod_Cliente]), 
    CONSTRAINT [FK_FATO_004_DIM_Produto] FOREIGN KEY ([Cod_Produto]) REFERENCES [DIM_Produto]([Cod_Produto]),
    CONSTRAINT [FK_FATO_004_DIM_Organizacional] FOREIGN KEY ([Cod_Organizacional]) REFERENCES [DIM_Organizacional]([Cod_Filho]),
    CONSTRAINT [FK_FATO_004_DIM_Tempo] FOREIGN KEY ([Cod_Dia]) REFERENCES [DIM_Tempo]([Cod_Dia]) 

)
