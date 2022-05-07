using {my.Giftshop as my} from '../db/schema';                //vergleicht Variablen aus dem CDS-Datenmodell und verknüpft Service mit Entity

service CustomerService {
    entity Products as projection on my.Products;             // berechtigt welche ODATA Services auf dem Webservice angezeigt werden
    entity Materials as projection on my.Materials;
    entity Customers as projection on my.Customers;
    entity Orders as projection on my.Orders;
}; 



// @readonly entity Customers as SELECT from my.Customers {*,
 //   Customers.lname as customer
 // } excluding { createdBy, modifiedBy };
