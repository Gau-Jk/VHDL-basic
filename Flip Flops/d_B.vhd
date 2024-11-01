library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity D_FF is
Port ( D, CLK, RST : in  STD_LOGIC;
Q, Qb : out  STD_LOGIC);
end D_FF;

architecture Behavioral of D_FF is

begin
process (D, CLK, RST)
begin

if (RST = '1') then
Q <= '0';
elsif (rising_edge(CLK)) then 
Q <= D;
Qb <= not D;

end if;
end process;
end Behavioral;
