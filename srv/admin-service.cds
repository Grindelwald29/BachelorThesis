using { my.Giftshop as my} from '../db/schema.cds';

service AdminService  {                                               //  @(requires:'authenticated-user')
    entity Products as projection on my.Products;
    entity Materials as projection on my.Materials;
    entity Customers as projection on my.Customers;
    entity Orders as projection on my.Orders;
}