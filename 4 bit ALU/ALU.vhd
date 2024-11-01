library ieee;
use ieee.std_logic_1164.all;

entity ALU is
port(a,b:in std_logic_vector(3 downto 0);
s:in std_logic_vector(2 downto 0);
oy,y:out std_logic_vector(3 downto 0))
;
end entity;

architecture arc of ALU is
component FULL_ADDER IS
    PORT (
			VA, VB : IN  std_logic_VECTOR (3 DOWNTO 0);
			VS     : OUT std_logic_VECTOR (3 DOWNTO 0);
			FC_OUT : OUT std_logic
		);
END component;

component B4_sub is
port(a,b:in std_logic_vector(3 downto 0);d:out std_logic_vector(3 downto 0));
end component;

component B4_X is
port (a,b:std_logic_vector(3 downto 0);p:out std_logic_vector(7 downto 0));
end component;


component divider is
  generic (size: natural := 4);
  port ( 
    A: in std_logic_vector(size-1 downto 0);
    B: in std_logic_vector(size-1 downto 0);
    Q: out std_logic_vector(size-1 downto 0);
    R: out std_logic_vector(size-1 downto 0));
end component;


signal vs,d,q,r:std_logic_vector(3 downto 0);
signal c:std_logic;
signal p:std_logic_vector(7 downto 0);

begin

fa: FULL_ADDER port map(a,b,vs,c);

fs: B4_sub port map(a,b,d);

fm: B4_X port map(a,b,p);

fd: divider port map(a,b,q,r);


process(a,b,s,vs,d,q,p)


begin
y<="0000";
oy<="0000";
        if (s = "000") then
            y(3 downto 0)<=  vs;
            oy(0)<= c;

        elsif (s = "001") then
            y(3 downto 0) <=  d;
        elsif (s = "010") then

            y <=p(3  downto 0);
             oy<= p(7 downto 4);
        elsif (s = "011") then

            y(3 downto 0) <=  q;
            oy<= r;
        elsif (s = "100") then

            y(3 downto 0)<=  a and b;
        elsif(s = "101") then

            y(3 downto 0)<=  a or b;
        elsif (s = "110") then

            y(3 downto 0) <=  a nand b;
        else
           y(3 downto 0)<=  a nor b;
        end if;
    end process;


end arc;
