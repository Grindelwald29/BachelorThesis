using { Currency,temporal,managed,cuid} from '@sap/cds/common';
namespace my.Giftshop;

entity Customers : cuid {
    fname: String;
    lname: String;
    gender: String;
    email: String;
    birthdate: String;
    order: Association to Orders;           // Ein Kunde hat immer eine Bestellung


}
entity Orders : temporal {
    key ID: Integer;
    sum: Integer;
    product: Association to Products;
    customer: Association to Customers;


}
entity Products : managed {
    key ID: Integer;
    title: String(100);
    descr: String(1000);
    stock: Integer;
    price: Decimal(8,2);                        // XXXXXX.XX
    currency: Currency;
    material: Association to Materials;




}
entity Materials : managed {
    key ID: Integer;
    stock: Integer;

}
