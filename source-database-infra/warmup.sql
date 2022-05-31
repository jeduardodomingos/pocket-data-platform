/*SCRIPT PARA CRIAR A ESTRUTURA INICIAL DE NOSSO BANCO DE DADOS ORIGEM*/

CREATE TABLE IF NOT EXISTS TB_SALES_HEADERS(SALE_ID       NUMBER   NOT NULL PRIMARY KEY,
 											CUSTOMER_ID   NUMBER   NOT NULL,
 											VENDOR_ID     NUMBER   NOT NULL,
                                            DELIVERY_DATE DATETIME NOT NULL,
										    BILLING_DATE  DATETIME NOT NULL,
                                            PAYMENT_MODE  NUMBER   NOT NULL,
                                            CREATED_AT    DATETIME NOT NULL,
                                            CREATED_BY    NUMBER   NOT NULL,
                                            UPDATED_AT    DATETIME,
                                            UPDATED_BY    NUMBER
                                            );
                                            
CREATE TABLE IF NOT EXISTS TB_SALES_LINES(SALE_LINE_ID   NUMBER   	  NOT NULL PRIMARY KEY,
                                          SALE_HEADER_ID NUMBER  	  NOT NULL
										  ITEM_ID        NUMBER   	  NOT NULL,
										  QUANTITY_PACK  NUMBER   	  NOT NULL,
                                          QUANTITY_UNIT  NUMBER   	  NOT NULL,
									      UNIT_VALUE     DOUBLE   	  NOT NULL,
                                          OBSERVATIONS   VARCHAR(500) NOT NULL,
                                          CREATED_AT     DATETIME 	  NOT NULL,
                                          CREATED_BY     NUMBER   	  NOT NULL,
                                          UPDATED_AT     DATETIME,
                                          UPDATED_BY     NUMBER
                                          );
                                          
CREATE TABLE IF NOT EXISTS TB_SALES_ITEMS(ITEM_ID          NUMBER   NOT NULL PRIMARY KEY,
                                          ITEM_DESCRIPTION NUMBER  	NOT NULL
                                          UNIT_BY_PACK     NUMBER   NOT NULL,
									      UNIT_VALUE       DOUBLE   NOT NULL,
                                          CREATED_AT       DATETIME NOT NULL,
                                          CREATED_BY       NUMBER   NOT NULL,
                                          UPDATED_AT       DATETIME,
                                          UPDATED_BY       NUMBER
                                          );
                                          
 CREATE TABLE IF NOT EXISTS TB_SALES_CUSTOMERS(CUSTOMER_ID   NUMBER   NOT NULL PRIMARY KEY,
		                                       CUSTOMER_NAME NUMBER  	NOT NULL
		                                       CREATED_AT    DATETIME NOT NULL,
		                                       CREATED_BY    NUMBER   NOT NULL,
		                                       UPDATED_AT    DATETIME,
		                                       UPDATED_BY    NUMBER
		                                       );                               

 CREATE TABLE IF NOT EXISTS TB_SALES_VENDORS(VENDOR_ID   NUMBER   NOT NULL PRIMARY KEY,
		                                     VENDOR_NAME NUMBER   NOT NULL
		                                     CREATED_AT  DATETIME NOT NULL,
		                                     CREATED_BY  NUMBER   NOT NULL,
		                                     UPDATED_AT  DATETIME,
		                                     UPDATED_BY  NUMBER
		                                     );       
		                                     
/*SCRIPT PARA INCIAR OS INSERTS NO NOSSO BANCO DE DADOS DE ORIGEM*/
		                                    
INSERT INTO TB_SALES_VENDORS(VENDOR_ID, VENDOR_NAME, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY) VALUES (1, "FORNECEDOR 01", SYSDATE(), -1, SYSDATE(), -1);
INSERT INTO TB_SALES_VENDORS(VENDOR_ID, VENDOR_NAME, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY) VALUES (2, "FORNECEDOR 02", SYSDATE(), -1, SYSDATE(), -1);
INSERT INTO TB_SALES_VENDORS(VENDOR_ID, VENDOR_NAME, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY) VALUES (3, "FORNECEDOR 03", SYSDATE(), -1, SYSDATE(), -1);
INSERT INTO TB_SALES_VENDORS(VENDOR_ID, VENDOR_NAME, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY) VALUES (4, "FORNECEDOR 04", SYSDATE(), -1, SYSDATE(), -1);

INSERT INTO TB_SALES_CUSTOMERS(CUSTOMER_ID, CUSTOMER_NAME, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY) VALUES (1, "CLIENTE 01", SYSDATE(), -1, SYSDATE(), -1);
INSERT INTO TB_SALES_CUSTOMERS(CUSTOMER_ID, CUSTOMER_NAME, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY) VALUES (2, "CLIENTE 02", SYSDATE(), -1, SYSDATE(), -1);
INSERT INTO TB_SALES_CUSTOMERS(CUSTOMER_ID, CUSTOMER_NAME, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY) VALUES (3, "CLIENTE 03", SYSDATE(), -1, SYSDATE(), -1);
INSERT INTO TB_SALES_CUSTOMERS(CUSTOMER_ID, CUSTOMER_NAME, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY) VALUES (4, "CLIENTE 04", SYSDATE(), -1, SYSDATE(), -1);

INSERT INTO TB_SALES_ITEMS(ITEM_ID, ITEM_DESCRIPTION, UNIT_BY_PACK, UNIT_VALUE, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_B) VALUES (1, "ESCOVA DE DENTES", 10, 12.50, SYSDATE(), -1, SYSDATE(), -1);
INSERT INTO TB_SALES_ITEMS(ITEM_ID, ITEM_DESCRIPTION, UNIT_BY_PACK, UNIT_VALUE, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_B) VALUES (2, "SABONETE", 20, 2.50, SYSDATE(), -1, SYSDATE(), -1);
INSERT INTO TB_SALES_ITEMS(ITEM_ID, ITEM_DESCRIPTION, UNIT_BY_PACK, UNIT_VALUE, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_B) VALUES (3, "PASTA DE DENTE", 20, 9.89, SYSDATE(), -1, SYSDATE(), -1);
INSERT INTO TB_SALES_ITEMS(ITEM_ID, ITEM_DESCRIPTION, UNIT_BY_PACK, UNIT_VALUE, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_B) VALUES (4, "SHAMPOO", 15, 16.50, SYSDATE(), -1, SYSDATE(), -1);
INSERT INTO TB_SALES_ITEMS(ITEM_ID, ITEM_DESCRIPTION, UNIT_BY_PACK, UNIT_VALUE, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_B) VALUES (5, "CAFÉ", 30, 22.90, SYSDATE(), -1, SYSDATE(), -1);
INSERT INTO TB_SALES_ITEMS(ITEM_ID, ITEM_DESCRIPTION, UNIT_BY_PACK, UNIT_VALUE, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_B) VALUES (6, "ARROZ", 5, 29.85, SYSDATE(), -1, SYSDATE(), -1);