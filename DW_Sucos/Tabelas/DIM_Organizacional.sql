CREATE TABLE [dbo].[DIM_Organizacional]
(
	[Cod_Filho] NVARCHAR(50) NOT NULL PRIMARY KEY, 
    [Desc_Filho] NVARCHAR(200) NULL, 
    [Cod_Pai] NVARCHAR(50) NULL, 
    [Esquerda] INT NULL, 
    [Direita] INT NULL, 
    [Nivel] INT NULL, 
    CONSTRAINT [FK_DIM_Organizacional_DIM_Organizacional] FOREIGN KEY ([Cod_Pai]) REFERENCES [DIM_Organizacional]([Cod_Filho])
)
