 library IEEE;  
 use IEEE.STD_LOGIC_1164.ALL;  
 use IEEE.STD_LOGIC_ARITH.ALL;  
 use IEEE.STD_LOGIC_UNSIGNED.ALL;  

entity async_up is
port(clock:in std_logic;count: out std_logic_vector(3 downto 0));
end async_up;

architecture arc of async_up is
component JK_FF is
port( J,K,CLOCK: in std_logic;
Q, QB: out std_logic);
end component;

signal temp : std_logic_vector(3 downto 0):="0000";
signal qb:std_logic;

begin 

f1:JK_FF port map('1','1',clock,temp(3),qb);
f2:JK_FF port map('1','1',temp(3),temp(2),qb);
f3:JK_FF port map('1','1',temp(2),temp(1),qb);
f4:JK_FF port map('1','1',temp(1),temp(0),qb);

count<=temp;

end arc;
