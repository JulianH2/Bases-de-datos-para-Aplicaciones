/*
create or alter proc usp_GetSubbCategoryProducts
    @SubCategoriyID int
as
begin
    declare @nombreCategoria varchar(50), @nombreProducto varchar(50)
    select pc.ProductCategoryID,pc.Name , sum(pi.Quantity) as 'InventarioDisponible'
    from AdventureWorks2019.Production.ProductCategory as pc
        join AdventureWorks2019.Production.ProductSubcategory  ps on ps.ProductCategoryID=pc.ProductCategoryID
        join AdventureWorks2019.Production.Product as p on p.ProductSubcategoryID=ps.ProductSubcategoryID
        join AdventureWorks2019.Production.ProductInventory as pi on p.ProductID=pi.Quantity
    where pc.ProductCategoryID=@SubCategoriyID
    group by pc.Name, pc.ProductCategoryID
end
*/



create or alter proc usp_TransferInventory
    @productID int,
    @SourceLocationID smallint,
    @DestinoLocationId smallint,
    @Quantitly int
as
begin
    insert into Production.InverotyTransferHistory
        (productID,SourceLocationID,DestinoLocationId,Quantitly )
    values
        (@productID, @SourceLocationID, @DestinoLocationId, @Quantitly)

    update  Production.ProductInventory set Quantity=@Quantitly where productID = @productID and LocationID = @DestinoLocationId;
    
end

select * from Production.ProductInventory

create table Production.InverotyTransferHistory
(
    productID int,
    SourceLocationID smallint,
    DestinoLocationId smallint,
    Quantitly int,
    transferDate datetime default getdate()
);
declare @productID2 int=1,@SourceLocationID2 smallint=1 ,@DestinoLocationId2 smallint =1,@Quantitly2 int=1;

exec usp_TransferInventory @productID = @productID2, @SourceLocationID= @SourceLocationID2,@DestinoLocationId=@DestinoLocationId2,@Quantitly= @Quantitly2

exec usp_GetSubbCategoryProducts 3