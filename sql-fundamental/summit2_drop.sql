DROP TABLE C_EMP          CASCADE CONSTRAINTS;  
DROP TABLE EMP            CASCADE CONSTRAINTS; 
DROP TABLE PROFESSOR      CASCADE CONSTRAINTS;
DROP TABLE SAMPLE         CASCADE CONSTRAINTS;  
DROP TABLE STUDENT        CASCADE CONSTRAINTS;
DROP TABLE S_CUSTOMER     CASCADE CONSTRAINTS;  
DROP TABLE S_DEPT         CASCADE CONSTRAINTS; 
DROP TABLE S_EMP          CASCADE CONSTRAINTS;
DROP TABLE S_ITEM         CASCADE CONSTRAINTS;  
DROP TABLE S_ORD          CASCADE CONSTRAINTS;
DROP TABLE S_PRODUCT      CASCADE CONSTRAINTS;
DROP TABLE S_REGION       CASCADE CONSTRAINTS;
DROP TABLE SALGRADE;
DROP SYNONYM DEPT;
DROP VIEW EMPV;
DROP VIEW EMPVU113;
DROP VIEW SAM_VU;
DROP VIEW SA_VU;
DROP SEQUENCE C_EMP_ID ;

DROP SEQUENCE s_customer_id;
DROP SEQUENCE s_dept_id;
DROP SEQUENCE s_region_id;
DROP SEQUENCE s_product_id;
DROP SEQUENCE s_emp_id;
DROP SEQUENCE s_ord_id;







set feedback off
set echo off
prompt Creating and populating tables and sequences.  Please wait.

Rem Create sequences.
Rem    Starting values for sequences begin at the existing maxima for
Rem    existing primary key values, plus increments.

rem
rem alter session 
rem set nls_date_format = 'dd-mon-yy'
rem ;

alter session 
set nls_date_format = 'dd-MON-rr'
;



CREATE SEQUENCE s_ord_id
   MINVALUE 1
   MAXVALUE 9999999
   INCREMENT BY 1
   START WITH 113
   NOCACHE
   NOORDER
   NOCYCLE;

CREATE SEQUENCE s_product_id
   MINVALUE 1
   MAXVALUE 9999999
   INCREMENT BY 1
   START WITH 50537
   NOCACHE
   NOORDER
   NOCYCLE;


CREATE SEQUENCE s_region_id
   MINVALUE 1
   MAXVALUE 9999999
   INCREMENT BY 1
   START WITH 6
   NOCACHE
   NOORDER
   NOCYCLE;
   
CREATE SEQUENCE s_dept_id
   MINVALUE 1
   MAXVALUE 9999999
   INCREMENT BY 1
   START WITH 51
   NOCACHE
   NOORDER
   NOCYCLE;
   
CREATE SEQUENCE s_customer_id
   MINVALUE 1
   MAXVALUE 9999999
   INCREMENT BY 1
   START WITH 216
   NOCACHE
   NOORDER
   NOCYCLE;
  
CREATE SEQUENCE s_emp_id
   MINVALUE 1
   MAXVALUE 9999999
   INCREMENT BY 1
   START WITH 26
   NOCACHE
   NOORDER
   NOCYCLE;

CREATE TABLE s_customer
(id                         NUMBER(7)
   CONSTRAINT s_customer_id_nn NOT NULL,
 name                       VARCHAR2(50)
   CONSTRAINT s_customer_name_nn NOT NULL,
 phone                      VARCHAR2(25),
 address                    VARCHAR2(50),
 zip_code                   VARCHAR2(10),
 credit_rating              VARCHAR2(9),
 sales_rep_id               NUMBER(7),
 region_id                  NUMBER(7),
 comments                   VARCHAR2(100),
     CONSTRAINT s_customer_id_pk PRIMARY KEY (id),
     CONSTRAINT s_customer_credit_rating_ck
        CHECK (credit_rating IN ('���', '��ȣ', '�ҷ�')));

INSERT INTO s_customer VALUES (
   201, '�Ű�ȭ', '669-3147',
   '��⵵ ȭ���� �ۻ�� ����1�� 540-2','445-870',
   '���', 12, 2, '��ü�� ���� ���� �ֹ��� �ϴ� ������ �ſ뵵�� ���� ��.');
INSERT INTO s_customer VALUES (
   202, '���븸', '0331-280-7243',
   '��⵵ ���ν� ������ �󼭸� ��24', '449-900',
   '�ҷ�', 14, 2, '�ſ뵵 ��󶧱��� ���ݰ����� �ʿ��� ����.');
INSERT INTO s_customer VALUES (
   203, '���ֿ�', '0342-718-8881',
   '��⵵ ������ �д籸 ���̵� 79���� ��ġ����', '463-500',
   '��ȣ', 14, 2, '������ ���� ������ �������� ���� ū �ҸŻ��� ��ϴ� ����.');
INSERT INTO s_customer VALUES (
   204, '����ȣ', '0571-821-5699',
   '��� �ȵ��� ��� 1234-5����','305-770',
   '���', 11, 5, NULL);
INSERT INTO s_customer VALUES (
   205, '�ѽŵ�', '739-6242',
   '���� ���α� ���۵� 81', '110-140',
   '���', 15, 1, NULL);
INSERT INTO s_customer VALUES (
   206, '������', '594-1973',
   '���� ���۱� ���3�� 183-2', '156-093',
   '���', 15, 1, '����� Ư�� ���� �����ϴ� ����.');
INSERT INTO s_customer VALUES (
   207, '����ȯ', '0331-200-8990',
   '��⵵ ������ �ȴޱ� ��ź3�� 416����', '442-742',
   '��ȣ', NULL, 2, NULL);
INSERT INTO s_customer VALUES (
   208, '�迵ö', '966-4789',
   '���� ���빮�� ȸ�⵿ 101-6', '130-050',
   '��ȣ', 15, 1, '������ �� ǰ���� �������� ��� ǰ���� �ſ�ī��� �����ϴ� ����.');
INSERT INTO s_customer VALUES (
   209, '���¿�', '0336-30-5981',
   '��⵵ ��õ�� �ι��� �ƹ̸� �� 139-1', '467-860',
   '���', 11, 2, NULL);
INSERT INTO s_customer VALUES (
   210, '������', '3400-3409',
   '���� ���ı� ������ 80-3', '138-460',
   '���', 12, 1, '��ȭ��ȭ�� �����Ƿ� �������� �����ϱ� �ٶ�.');
INSERT INTO s_customer VALUES (
   211, '�ְ���', '032-511-8635',
   '��õ�� ���� ����2�� 400-5', '403-082',
   '���', 15, 2, NULL);
INSERT INTO s_customer VALUES (
   212, '���ؽ�', '833-4572',
   '���� �������� �븲�� 988-22', '150-071',
   '���', 13, 1, NULL);
INSERT INTO s_customer VALUES (
   213, '��ȣ��', '0331-280-2332',
   '��⵵ ���ν� ������ ��õ��', '449-701',
   '���', 11, 2, '�ſ뵵�� ���� ����');
INSERT INTO s_customer VALUES (
   214, '����', '051-621-4306',
   '�λ�� ���� ��õ 4�� 1124', '614-021',
   '�ҷ�', 11, 5, NULL);
INSERT INTO s_customer VALUES (
   215, '��â��', '660-3277',
   '���� ������ ���׵� 291', '157-240',
   '�ҷ�', 15, 1, '���簡 ��ٷο� ���̹Ƿ� ���ݰ��� ���.');
COMMIT;


CREATE TABLE s_dept
(id                         NUMBER(7)
   CONSTRAINT s_dept_id_nn NOT NULL,
 name                       VARCHAR2(25)
   CONSTRAINT s_dept_name_nn NOT NULL,
 region_id                  NUMBER(7),
     CONSTRAINT s_dept_id_pk PRIMARY KEY (id),
     CONSTRAINT s_dept_name_region_id_uk UNIQUE (name, region_id));

INSERT INTO s_dept VALUES (
   101, '�ѹ���', 1);
INSERT INTO s_dept VALUES (
   102, '������', 1);
INSERT INTO s_dept VALUES (
   103, '������', 2);
INSERT INTO s_dept VALUES (
   104, '������', 3);
INSERT INTO s_dept VALUES (
   105, '������', 4);
INSERT INTO s_dept VALUES (
   106, '������', 5);
INSERT INTO s_dept VALUES (
   110, '��ȹ��', 1);
INSERT INTO s_dept VALUES (
   111, '��ȹ��', 2);
INSERT INTO s_dept VALUES (
   112, '��ȹ��', 3);
INSERT INTO s_dept VALUES (
   113, '��ȹ��', 4);
INSERT INTO s_dept VALUES (
   118, '�λ��', 1);
COMMIT;


CREATE TABLE s_emp
(id                         NUMBER(7)
   CONSTRAINT s_emp_id_nn NOT NULL,
 name                  VARCHAR2(25)
   CONSTRAINT s_emp_name_nn NOT NULL,
 mailid                     VARCHAR2(8),
 start_date                 DATE,
 manager_id                 NUMBER(7),
 title                      VARCHAR2(25),
 dept_id                    NUMBER(7),
 salary                     NUMBER(11, 2),
 commission_pct             NUMBER(4, 2),
     CONSTRAINT s_emp_id_pk PRIMARY KEY (id),
     CONSTRAINT s_emp_userid_uk UNIQUE (mailid),
     CONSTRAINT s_emp_commission_pct_ck
        CHECK (commission_pct IN (10, 12.5, 15, 17.5, 20)));
COMMENT ON COLUMN s_emp.salary IS 'S_EMP ���̺��� �޿��� ������ õ����';
INSERT INTO s_emp VALUES (
  1, '�ڱ���', 'sky98',
   '03-MAR-90', NULL, '����',
   118, 5000, NULL);
INSERT INTO s_emp VALUES (
   2, '�ո�', '2xxsig',
   '08-MAR-90', 1, '��ȹ����',
   110, 3000, NULL);
INSERT INTO s_emp VALUES (
   3, '������', 'ch21175',
   '17-JUN-91', 1, '��������',
   102, 3500, NULL);
INSERT INTO s_emp VALUES (
   4, '����ȫ', 'mquickto',
   '07-APR-90', 1, '�ѹ�����',
   101, 3000, NULL);
INSERT INTO s_emp VALUES (
   5, '��ɼ�', 'aropebur',
   '04-MAR-90', 1, '�λ����',
   118, 3200, NULL);
INSERT INTO s_emp VALUES (
   6, '������', 'murguhar',
   '18-JAN-91', 2, '����',
   110, 2400, NULL);
INSERT INTO s_emp VALUES (
   7, '������', 'enchu',
   '14-MAY-90', 2, '����',
   111, 2400, NULL);
INSERT INTO s_emp VALUES (
   8, '�ű��', 'bbiri',
   '07-APR-90', 2, '����',
   112, 2100, NULL);
INSERT INTO s_emp VALUES (
   9, '�̻���', 'acatchpo',
   '09-FEB-92', 2, '����',
   113, 2300, NULL);
INSERT INTO s_emp VALUES (
   10, '�ּ�ö', 'mhavel',
   '27-FEB-91', 2, '����',
   113, 2300, NULL);
INSERT INTO s_emp VALUES (
   11, '������', 'cmagee',
   '14-MAY-90', 3, '������ǥ�̻�',
   102, 2450, 10);
INSERT INTO s_emp VALUES (
   12, '������', 'hgiljum',
   '18-JAN-92', 3, '������ǥ�̻�',
   103, 2500, 12.5);
INSERT INTO s_emp VALUES (
   13, '�輮��', 'ysedeghi',
   '18-FEB-91', 3, '������ǥ�̻�',
   104, 2650, 10);
INSERT INTO s_emp VALUES (
   14, '�ڼ���', 'mnguyen',
   '22-JAN-92', 3, '������ǥ�̻�',
   105, 2650, 15);
INSERT INTO s_emp VALUES (
   15, '������', 'adumas',
   '09-OCT-91', 3, '������ǥ�̻�',
   106, 2400, 17.5);
INSERT INTO s_emp VALUES (
   16, '�̱�ö', 'emaduro',
   '07-FEB-92', 6, '���',
   110, 2400, NULL);
INSERT INTO s_emp VALUES (
   17, '������', 'gsmith',
   '08-MAR-90', 6, '���',
   110, 940, NULL);
INSERT INTO s_emp VALUES (
   18, '������', 'anozaki',
   '09-FEB-91', 7, '���',
   111, 1200, NULL);
INSERT INTO s_emp VALUES (
   19, '��âȯ', 'vpatel',
   '06-AUG-91', 7, '���',
   111, 795, NULL);
INSERT INTO s_emp VALUES (
   20, '������', 'cnewman',
   '21-JUL-91', 8, '���',
   112, 750, NULL);
INSERT INTO s_emp VALUES (
   21, '����ö','amarkari',
   '26-MAY-91', 8, '���',
   112, 850, NULL);
INSERT INTO s_emp VALUES (
   22, '������', 'echang',
   '30-NOV-90', 9, '���',
   113, 800, NULL);
INSERT INTO s_emp VALUES (
   23, '������', 'rpatel',
   '17-OCT-90', 9, '���',
   106, 795, NULL);
INSERT INTO s_emp VALUES (
   24, '������', 'bdancs',
   '17-MAR-91', 10, '���',
   113, 860, NULL);
INSERT INTO s_emp VALUES (
   25, '�̿�ȣ', 'sschwart',
   '09-MAY-91', 10, '���',
   113, 1100, NULL);
COMMIT;


CREATE TABLE s_item
(ord_id                     NUMBER(7)
   CONSTRAINT s_item_ord_id_nn NOT NULL,
 item_id                    NUMBER(7)
   CONSTRAINT s_item_item_id_nn NOT NULL,
 product_id                 NUMBER(7)
   CONSTRAINT s_item_product_id_nn NOT NULL,
 price                      NUMBER(11, 2),
 quantity                   NUMBER(9),
     CONSTRAINT s_item_ordid_itemid_pk PRIMARY KEY (ord_id, item_id),
     CONSTRAINT s_item_ordid_prodid_uk UNIQUE (ord_id, product_id));

INSERT INTO s_item VALUES (
   100, 1, 10011, 135, 500);
INSERT INTO s_item VALUES (
   100, 2, 10013, 380, 400);
INSERT INTO s_item VALUES (
   100, 3, 10021, 14, 500);
INSERT INTO s_item VALUES (
   100, 5, 30326, 582, 600);
INSERT INTO s_item VALUES (
   100, 7, 41010, 8, 250);
INSERT INTO s_item VALUES (
   100, 6, 30433, 20, 450);
INSERT INTO s_item VALUES (
   100, 4, 10023, 36, 400);
INSERT INTO s_item VALUES (
   101, 1, 30421, 16, 15);
INSERT INTO s_item VALUES (
   101, 3, 41010, 8, 20);
INSERT INTO s_item VALUES (
   101, 5, 50169, 4.29, 40);
INSERT INTO s_item VALUES (
   101, 6, 50417, 80, 27);
INSERT INTO s_item VALUES (
   101, 7, 50530, 45, 50);
INSERT INTO s_item VALUES (
   101, 4, 41100, 45, 35);
INSERT INTO s_item VALUES (
   101, 2, 40422, 50, 30);
INSERT INTO s_item VALUES (
   102, 1, 20108, 28, 100);
INSERT INTO s_item VALUES (
   102, 2, 20201, 123, 45);
INSERT INTO s_item VALUES (
   103, 1, 30433, 20, 15);
INSERT INTO s_item VALUES (
   103, 2, 32779, 7, 11);
INSERT INTO s_item VALUES (
   104, 1, 20510, 9, 7);
INSERT INTO s_item VALUES (
   104, 4, 30421, 16, 35);
INSERT INTO s_item VALUES (
   104, 2, 20512, 8, 12);
INSERT INTO s_item VALUES (
   104, 3, 30321, 1669, 19);
INSERT INTO s_item VALUES (
   105, 1, 50273, 22.89, 16);
INSERT INTO s_item VALUES (
   105, 3, 50532, 47, 28);
INSERT INTO s_item VALUES (
   105, 2, 50419, 80, 13);
INSERT INTO s_item VALUES (
   106, 1, 20108, 28, 46);
INSERT INTO s_item VALUES (
   106, 4, 50273, 22.89, 75);
INSERT INTO s_item VALUES (
   106, 5, 50418, 75, 98);
INSERT INTO s_item VALUES (
   106, 6, 50419, 80, 27);
INSERT INTO s_item VALUES (
   106, 2, 20201, 123, 21);
INSERT INTO s_item VALUES (
   106, 3, 50169, 4.29, 125);
INSERT INTO s_item VALUES (
   107, 1, 20106, 11, 50);
INSERT INTO s_item VALUES (
   107, 3, 20201, 115, 130);
INSERT INTO s_item VALUES (
   107, 5, 30421, 16, 55);
INSERT INTO s_item VALUES (
   107, 4, 30321, 1669, 75);
INSERT INTO s_item VALUES (
   107, 2, 20108, 28, 22);
INSERT INTO s_item VALUES (
   108, 1, 20510, 9, 9);
INSERT INTO s_item VALUES (
   108, 6, 41080, 35, 50);
INSERT INTO s_item VALUES (
   108, 7, 41100, 45, 42);
INSERT INTO s_item VALUES (
   108, 5, 32861, 60, 57);
INSERT INTO s_item VALUES (
   108, 2, 20512, 8, 18);
INSERT INTO s_item VALUES (
   108, 4, 32779, 7, 60);
INSERT INTO s_item VALUES (
   108, 3, 30321, 1669, 85);
INSERT INTO s_item VALUES (
   109, 1, 10011, 140, 150);
INSERT INTO s_item VALUES (
   109, 5, 30426, 18, 500);
INSERT INTO s_item VALUES (
   109, 7, 50418, 75, 43);
INSERT INTO s_item VALUES (
   109, 6, 32861, 60, 50);
INSERT INTO s_item VALUES (
   109, 4, 30326, 582, 1500);
INSERT INTO s_item VALUES (
   109, 2, 10012, 175, 600);
INSERT INTO s_item VALUES (
   109, 3, 10022, 21, 300);
INSERT INTO s_item VALUES (
   110, 1, 50273, 22, 17);
INSERT INTO s_item VALUES (
   110, 2, 50536, 50, 23);
INSERT INTO s_item VALUES (
   111, 1, 40421, 65, 27);
INSERT INTO s_item VALUES (
   111, 2, 41080, 35, 29);
INSERT INTO s_item VALUES (
   97, 1, 20106, 9, 1000);
INSERT INTO s_item VALUES (
   97, 2, 30321, 1500, 50);
INSERT INTO s_item VALUES (
   98, 1, 40421, 85, 7);
INSERT INTO s_item VALUES (
   99, 1, 20510, 9, 18);
INSERT INTO s_item VALUES (
   99, 2, 20512, 8, 25);
INSERT INTO s_item VALUES (
   99, 3, 50417, 80, 53);
INSERT INTO s_item VALUES (
   99, 4, 50530, 45, 69);
INSERT INTO s_item VALUES (
   112, 1, 20106, 11, 50);
COMMIT;


CREATE TABLE s_ord
(id                         NUMBER(7)
   CONSTRAINT s_ord_id_nn NOT NULL,
 customer_id                NUMBER(7)
   CONSTRAINT s_ord_customer_id_nn NOT NULL,
 date_ordered               DATE,
 sales_rep_id               NUMBER(7),
 total                      NUMBER(11, 2),
 payment_type               VARCHAR2(6),
     CONSTRAINT s_ord_id_pk PRIMARY KEY (id),
     CONSTRAINT s_ord_payment_type_ck
        CHECK (payment_type in ('����', 'ī��')));

INSERT INTO s_ord VALUES (
   100, 204, '31-AUG-92', 
   11, 60110000, 'ī��');
INSERT INTO s_ord VALUES (
   101, 205, '31-AUG-92', 
   14, 805600, 'ī��');
INSERT INTO s_ord VALUES (
   102, 206, '01-SEP-92', 
   15, 833500, 'ī��');
INSERT INTO s_ord VALUES (
   103, 208, '02-SEP-92', 
   15, 377000, '����');
INSERT INTO s_ord VALUES (
   104, 208, '03-SEP-92', 
   15, 3243000, 'ī��');
INSERT INTO s_ord VALUES (
   105, 209, '04-SEP-92', 
   11, 2722000, 'ī��');
INSERT INTO s_ord VALUES (
   106, 210, '07-SEP-92', 
   12, 15634000, 'ī��');
INSERT INTO s_ord VALUES (
   107, 211, '07-SEP-92', 
   15, 14217100, 'ī��');
INSERT INTO s_ord VALUES (
   108, 212, '07-SEP-92', 
   13, 14957000, 'ī��');
INSERT INTO s_ord VALUES (
   109, 213, '08-SEP-92', 
   11, 102093500, 'ī��');
INSERT INTO s_ord VALUES (
   110, 214, '09-SEP-92', 
   11, 1539000, '����');
INSERT INTO s_ord VALUES (
   111, 204, '09-SEP-92', 
   11, 2770000, '����');
INSERT INTO s_ord VALUES (
   97, 201, '28-AUG-92', 
   12, 8400000, 'ī��');
INSERT INTO s_ord VALUES (
   98, 202, '31-AUG-92', 
   14, 5950000, '����');
INSERT INTO s_ord VALUES (
   99, 203, '31-AUG-92', 
   14, 7707000, 'ī��');
INSERT INTO s_ord VALUES (
   112, 210, '31-AUG-92', 
   12, 550000, 'ī��');
COMMIT;


CREATE TABLE s_product
(id                         NUMBER(7)
   CONSTRAINT s_product_id_nn NOT NULL,
 name                       VARCHAR2(50)
   CONSTRAINT s_product_name_nn NOT NULL,
 short_desc                 VARCHAR2(255),
     CONSTRAINT s_product_id_pk PRIMARY KEY (id),
     CONSTRAINT s_product_name_uk UNIQUE (name));

INSERT INTO s_product VALUES (
   10011, '��ǰ�÷�����',
   '�ѱ��ڸ� �ȳ����/���ո�����/��ȭ�� ������/TV');
INSERT INTO s_product VALUES (
   10012, '���������',
   '���� ����� ������ 3��/TV');
INSERT INTO s_product VALUES (
   10013, '������',
   '��������ư/�ڱ����ܱ��/TV');
INSERT INTO s_product VALUES (
   10021, '�������̵���������',
   '��ȭ���ó׸�����/�ʽ���������/TV');
INSERT INTO s_product VALUES (
   10022, '�ó׸�����',
   '÷�� �ڸ� �������� ���/�ʽ���������/TV');
INSERT INTO s_product VALUES (
   10023, 'Ŀ��',
   'S-VHS�������/TV');
INSERT INTO s_product VALUES (
   20106, '�������',
   '���� ���̾Ƹ�� ��� ä��/VTR');
INSERT INTO s_product VALUES (
   20108, '�̴Ϲ̴�',
   '3���� ��������/3��� ������Ʈ����������/�����');
INSERT INTO s_product VALUES (
   20201, '���׻󽺿����',
   '����� �������� ����/����� Ǯ������ �ý���/�����');
INSERT INTO s_product VALUES (
   20510, '2�ܺи�',
   '�����ο� ��ġ/�����');
INSERT INTO s_product VALUES (
   20512, '�մ���',
   'CD�ݺ����/���帶��ũ/ī��Ʈ');
INSERT INTO s_product VALUES (
   30321, '���̸���',
   '��������/�˶�/��ħ����/ī��Ʈ');
INSERT INTO s_product VALUES (
   30326, '���߰�Ÿ',
   '����ռ�Ź���/��Ź��');
INSERT INTO s_product VALUES (
   30421, '�巳����',
   '���ڽĵ巳/��Ź.�������/��Ź��');
INSERT INTO s_product VALUES (
   30426, '�ջ���',
   '5�ܰ� ���� ����ȭ/������������/��Ź��');
INSERT INTO s_product VALUES (
   30433, '������',
   '�������Һ�ȿ�� 1���/�ͺ��ù�/������');
INSERT INTO s_product VALUES (
   32779, '�������',
   '�����¿� �ٶ������� �޶����� ��üȸ�� ���/��ǳ��');
INSERT INTO s_product VALUES (
   32861, '����',
   '�������� ��������/ȯ�渶ũȹ��/�����');
INSERT INTO s_product VALUES (
   40421, '���ܼӵ��ε���',
   '������ ����ǰ ������/2�� �����������/�����');
INSERT INTO s_product VALUES (
   40422, '�����ڵ�',
   '�����ڵ������/������������/�����');
INSERT INTO s_product VALUES (
   41010, '����',
   '�ױ����� ������/�����ð�������/���ڷ�����');
INSERT INTO s_product VALUES (
   41020, '������',
   '�ױռ��������������/����ġ���� �����/���ڷ�����');
INSERT INTO s_product VALUES (
   41050, 'Ŭ��',
   '2�� ������������ ����� ������/����������');
INSERT INTO s_product VALUES (
   41080, '���',
   '��ȭ�ǹ����� ����/���� �ڵ�û�� ���/����������');
INSERT INTO s_product VALUES (
   41100, '�����׸�',
   '��ȭ�ǹ����� ����/�ʴ����׸�ä��/����������');
INSERT INTO s_product VALUES (
   50169, '�ѱ����޴�',
   '����ü���� ���� ���� IH�����/6���� �ѱ����޴�/������');
INSERT INTO s_product VALUES (
   50273, '��뷮',
   '23�ο�/��� �� ���°��/������');
INSERT INTO s_product VALUES (
   50417, '����',
   '������ �����/����/������');
INSERT INTO s_product VALUES (
   50418, '����ġ',
   '������ ����ġ �Ѳ�����/12�ð� ���������/������');
INSERT INTO s_product VALUES (
   50419, '�ܿ���',
   '��ǳ���� ������ ����������/����');
INSERT INTO s_product VALUES (
   50530, '����ķ',
   '�÷������δ�/��������/ķ�ڴ�');
INSERT INTO s_product VALUES (
   50532, '�ɳ콺',
   '�ǻ�ü�� �߾ӿ� ���� �ʾƵ� ������ �����ִ� ��Ƽ��/ī�޶�');
INSERT INTO s_product VALUES (
   50536, '3����',
   '�ΰ������Կ�/�ι��߽��Կ�/ī�޶�');
COMMIT;


CREATE TABLE s_region
(id                         NUMBER(7)
   CONSTRAINT s_region_id_nn NOT NULL,
 name                       VARCHAR2(50)
   CONSTRAINT s_region_name_nn NOT NULL,
     CONSTRAINT s_region_id_pk PRIMARY KEY (id),
     CONSTRAINT s_region_name_uk UNIQUE (name));

INSERT INTO s_region VALUES (
   1, '����Ư����');
INSERT INTO s_region VALUES (
   2, '��⵵');
INSERT INTO s_region VALUES (
   3, '��û/����');
INSERT INTO s_region VALUES (
   4, '����/����');
INSERT INTO s_region VALUES (
   5, '�λ�/���');
COMMIT;

CREATE TABLE  salgrade
(grade           char(1),
losal           number(11,2),
hisal           number(11,2));
INSERT INTO  salgrade
VALUES('A',4000,5999);
INSERT INTO  salgrade
VALUES('B',3000,3999);
INSERT INTO  salgrade
VALUES('C',2000,2999);
INSERT INTO  salgrade
VALUES('D',1000,1999);
INSERT INTO  salgrade
VALUES('E',500,999);
COMMIT;

Rem Add foreign key constraints.
ALTER TABLE s_dept
   ADD CONSTRAINT s_dept_region_id_fk
   FOREIGN KEY (region_id) REFERENCES s_region (id);
ALTER TABLE s_emp
   ADD CONSTRAINT s_emp_manager_id_fk
   FOREIGN KEY (manager_id) REFERENCES s_emp (id);
ALTER TABLE s_emp
   ADD CONSTRAINT s_emp_dept_id_fk
   FOREIGN KEY (dept_id) REFERENCES s_dept (id);
ALTER TABLE s_customer
   ADD CONSTRAINT s_sales_rep_id_fk
   FOREIGN KEY (sales_rep_id) REFERENCES s_emp (id);
ALTER TABLE s_customer
   ADD CONSTRAINT s_customer_region_id_fk
   FOREIGN KEY (region_id) REFERENCES s_region (id);
ALTER TABLE s_ord
   ADD CONSTRAINT s_ord_customer_id_fk
   FOREIGN KEY (customer_id) REFERENCES s_customer (id);
ALTER TABLE s_ord
   ADD CONSTRAINT s_ord_sales_rep_id_fk
   FOREIGN KEY (sales_rep_id) REFERENCES s_emp (id);
ALTER TABLE s_item
   ADD CONSTRAINT s_item_ord_id_fk
   FOREIGN KEY (ord_id) REFERENCES s_ord (id);
ALTER TABLE s_item
   ADD CONSTRAINT s_item_product_id_fk
   FOREIGN KEY (product_id) REFERENCES s_product (id);

prompt Tables and sequences created and populated.
prompt 'S_EMP ���̺��� �޿��� ������ õ����'
set feedback on
