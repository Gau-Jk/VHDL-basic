library ieee;
use ieee.STD_logic_1164.all;

entity shift_R is
port(input,clock,reset:in std_logic;output:out std_logic_vector(3 downto 0));
end entity;

architecture arc of shift_R is
component D_FF is
Port ( D, CLK, RST : in  STD_LOGIC;
Q, Qb : out  STD_LOGIC);
end component;

signal Q:std_logic_vector(3 downto 0):="0000";
signal qb:std_logic;
begin

f1:D_FF port map(input,clock,reset,Q(3),qb);
f2:D_FF port map(Q(3),clock,reset,Q(2),qb);
f3:D_FF port map(Q(2),clock,reset,Q(1),qb);
f4:D_FF port map(Q(1),clock,reset,Q(0),qb);


output(3)<=Q(3);
output(2)<=Q(2);
output(1)<=Q(1);
output(0)<=Q(0);
end arc;