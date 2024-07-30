library ieee;
use ieee.std_logic_1164.all;

entity xorD is
port(a,b:in std_logic;c:out std_logic);
end entity;

architecture dataflow of xorD is
begin
c<=  (a and (not b)) or ((not a) and b);
end dataflow;
