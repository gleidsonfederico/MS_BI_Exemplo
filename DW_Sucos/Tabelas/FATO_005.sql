CREATE TABLE [dbo].[FATO_005]
(
    [Cod_Produto] NVARCHAR(50) NOT NULL, 
    [Cod_Fabrica] NVARCHAR(50) NOT NULL, 
    [Cod_Dia] NVARCHAR(50) NOT NULL, 
    [Meta_Custo] FLOAT NULL, 
    PRIMARY KEY ([Cod_Dia], [Cod_Produto], [Cod_Fabrica]), 
    CONSTRAINT [FK_FATO_005_DIM_Produto] FOREIGN KEY ([Cod_Produto]) REFERENCES [DIM_Produto]([Cod_Produto]),
    CONSTRAINT [FK_FATO_005_DIM_Fabrica] FOREIGN KEY ([Cod_Fabrica]) REFERENCES [DIM_Fabrica]([Cod_Fabrica]),
    CONSTRAINT [FK_FATO_005_DIM_Tempo] FOREIGN KEY ([Cod_Dia]) REFERENCES [DIM_Tempo]([Cod_Dia]) 

)
