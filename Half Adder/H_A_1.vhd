library ieee;
use ieee.std_logic_1164.all;

entity H_A is
port(a,b:in std_logic;sum,carry:out std_logic);
end H_A;

architecture dataflow of H_A is
begin
sum<= a xor b;
carry<= a and b;
end dataflow;

