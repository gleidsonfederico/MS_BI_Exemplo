CREATE TABLE [dbo].[DIM_Marca]
(
	[Cod_Marca] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [Desc_Marca] NVARCHAR(200) NULL, 
    [Cod_Categoria] NVARCHAR(50) NULL, 
    CONSTRAINT [FK_DIM_Marca_DIM_Categoria] FOREIGN KEY ([Cod_Categoria]) REFERENCES [DIM_Categoria]([Cod_Categoria])
)
