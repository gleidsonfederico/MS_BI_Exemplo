CREATE TABLE [dbo].[DIM_Produto]
(
	[Cod_Produto] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [Desc_Produto] NVARCHAR(200) NULL, 
    [ATR_Tamanho] NVARCHAR(200) NULL, 
    [ATR_Sabor] NVARCHAR(200) NULL, 
    [Cod_Marca] NVARCHAR(50) NULL, 
    CONSTRAINT [FK_DIM_Produto_DIM_Marca] FOREIGN KEY ([Cod_Marca]) REFERENCES [DIM_Marca]([Cod_Marca])
)
