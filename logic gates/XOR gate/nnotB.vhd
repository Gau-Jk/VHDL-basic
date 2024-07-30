library ieee;
use ieee.std_logic_1164.all;

entity inverterB is
port(a:in std_logic; f:out std_logic);
end entity;

architecture behavioral of inverterB is
begin
process(a)
begin
if a ='1' then f<='0';
else f<='1';
end if;
end process;
end behavioral;
