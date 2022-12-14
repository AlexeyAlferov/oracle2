-- ******************** SqlDBM: Microsoft SQL Server ********************
-- ************************* Generated by SqlDBM ************************


-- ************************************** [dbo].[Product]
CREATE TABLE [dbo].[Product]
(
 [ProductId]      int IDENTITY (1, 1) NOT NULL ,
 [ProductName]    nvarchar(50) NOT NULL ,
 [SupplierId]     int NOT NULL ,
 [UnitPrice]      decimal(12,2) NULL ,
 [IsDiscontinued] bit NOT NULL CONSTRAINT [DF_Product_IsDiscontinued] DEFAULT ((0)) ,


 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([ProductId] ASC),
 CONSTRAINT [AK1_Product_SupplierId_ProductName] UNIQUE NONCLUSTERED ([SupplierId] ASC, [ProductName] ASC),
 CONSTRAINT [FK_Product_SupplierId_Supplier] FOREIGN KEY ([SupplierId])  REFERENCES [dbo].[Supplier]([SupplierId])
);
GO


CREATE NONCLUSTERED INDEX [FK_Product_SupplierId_Supplier] ON [dbo].[Product] 
 (
  [SupplierId] ASC
 )

GO


EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Basic information 
about Product', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Product';
GO