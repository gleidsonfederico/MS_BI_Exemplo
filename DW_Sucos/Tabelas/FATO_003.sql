CREATE TABLE [dbo].[FATO_003]
(
	[Cod_Fabrica] NVARCHAR(50) NOT NULL, 
    [Cod_Dia] NVARCHAR(50) NOT NULL, 
    [Custo_Fixo] FLOAT NULL, 
    PRIMARY KEY ([Cod_Dia],[Cod_Fabrica]), 
    CONSTRAINT [FK_FATO_003_DIM_Fabrica] FOREIGN KEY ([Cod_Fabrica]) REFERENCES [DIM_Fabrica]([Cod_Fabrica]),
    CONSTRAINT [FK_FATO_003_DIM_Tempo] FOREIGN KEY ([Cod_Dia]) REFERENCES [DIM_Tempo]([Cod_Dia]) 

)
