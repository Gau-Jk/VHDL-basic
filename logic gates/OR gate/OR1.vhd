library ieee;
use ieee.std_logic_1164.all;

entity or1 is
  port(a,b:in std_logic;o:out std_logic);
end or1;

architecture dataflow of or1 is
begin
  o<= a or b;
end dataflow;

