-- ******************** SqlDBM: Microsoft SQL Server ********************
-- ************************* Generated by SqlDBM ************************


-- ************************************** [dbo].[Customer]
CREATE TABLE [dbo].[Customer]
(
 [CustomerId]   int IDENTITY (1, 1) NOT NULL ,
 [CustomerName] nvarchar(40) NOT NULL ,
 [Phone]        nvarchar(20) NULL ,


 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([CustomerId] ASC),
 CONSTRAINT [AK1_Customer_CustomerName] UNIQUE NONCLUSTERED ([CustomerName] ASC)
);
GO



EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'Basic information 
about Customer', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'Customer';
GO




-- ************************************** PostScript

dxfgvhbnjkml

GO
-- ************************************** PostScript End [dbo].[Customer]