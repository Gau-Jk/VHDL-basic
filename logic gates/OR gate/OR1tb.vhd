LIBRARY ieee;  
 USE ieee.std_logic_1164.ALL;  
 ENTITY test_or1 IS  
 END test_or1;  
 ARCHITECTURE tb OF test_or1 IS   
    
   COMPONENT or1 is
   PORT(  
      a,b : IN std_logic;  
      o : OUT std_logic  
     );  
   END COMPONENT;  
     
   signal a,b : std_logic;  
       
   signal o: std_logic;  
 BEGIN  
       
   uut: or1 PORT MAP ( a,b,o);  
    
   stim_proc: process  
   begin            
    
            
            a <= '0';    
            b <='0';
       

            wait for 10 ns;   
            a <= '0';
	    b <='1';
           
            wait for 10 ns;   
            a <= '0';
	    b <='1';
          
            wait for 10 ns;   
            a <= '1';
	    b <='0';
           
            wait for 10 ns;   
            a <= '1';
	    b <='1';
            
            wait for 10 ns;   
         
   end process;  
 end tb;
