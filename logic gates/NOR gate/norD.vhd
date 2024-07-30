library ieee;
use ieee.std_logic_1164.all;

entity norD is
port(a,b:in std_LOgiC;c:out std_logic);
end entity;

architecture dataflow of norD is
begin

c<=a nor b;
end dataflow;
