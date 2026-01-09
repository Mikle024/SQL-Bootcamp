CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop INTEGER DEFAULT 10)
RETURNS TABLE(fib_num INTEGER) AS $$
DECLARE
    a INTEGER := 0;
    b INTEGER := 1;
    temp INTEGER;
BEGIN
    WHILE a < pstop LOOP
        fib_num := a;
        RETURN NEXT;
        temp := a;
        a := b;
        b := temp + b;
    END LOOP;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM fnc_fibonacci(100);
SELECT * FROM fnc_fibonacci();
