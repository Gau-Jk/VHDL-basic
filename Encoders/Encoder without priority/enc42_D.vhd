library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity enc42_D is
 port(
 a : in STD_LOGIC_VECTOR(0 to 3);
 b : out STD_LOGIC_VECTOR(0 to 1)
 );
end enc42_D;
 
architecture dataflow of enc42_D is
begin
 
b(0) <= a(2) or a(3);
b(1) <= a(1) or a(3);
 
end dataflow;

