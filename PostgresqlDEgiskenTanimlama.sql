DECLARE my_variable INT;

DECLARE ad INT ;
SET ad=5;
select ad;

do $$

DECLARE vSite varchar;
Begin 
vSite := 'TechOnTheNet.com';
select vSite;

end $$


DO $$
DECLARE
    my_variable INTEGER := 10;
    another_variable TEXT := 'Hello, PostgreSQL!';
BEGIN
    -- Değişkenleri kullanarak işlemler yapılabilir
    -- RAISE NOTICE 'Değer: %', my_variable;
    -- RAISE NOTICE 'Mesaj: %', another_variable;
 RAISE NOTICE 'Mesaj: %', another_variable;
 select my_variable = count(*) from Shippers;
 RAISE NOTICE 'Değer: %', my_variable;
END $$;

 CREATE OR REPLACE FUNCTION get_my_variable() RETURNS TEXT AS $$
DECLARE
    my_variable TEXT := 'some_value';
BEGIN
    RETURN my_variable;
END $$ LANGUAGE plpgsql;
 
-- Fonksiyonu çalıştırarak değeri alabilirsiniz
SELECT get_my_variable();

select gen_random_uuid()
 




