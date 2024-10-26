library ieee;
use ieee.std_logic_1164.all;

entity F_A is
port(a,b,cin:in std_logic;sum,carry:out std_logic);
end F_A;

architecture dataflow of F_A is
signal s1, s2: std_logic;
begin
sum<= (a xor b) xor cin;
carry<= (a and b) or (cin and (a xor b));
end dataflow;

