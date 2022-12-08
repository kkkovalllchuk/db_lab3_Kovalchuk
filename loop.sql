DO $$
 DECLARE
     main_id   main.m_id%TYPE;
     main_title main.title%TYPE;
	 main_author main.author%TYPE;

 BEGIN
     main_id := 'ID';
     main_title := 'Title';
	 main_author := 'Author';
     FOR counter IN 1..6
         LOOP
            INSERT INTO Main (main_id, main_title,main_author)
             VALUES (main_id || counter, main_title || counter,main_author || counter);
         END LOOP;
 END;
 $$