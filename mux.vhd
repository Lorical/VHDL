library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2 is
	PORT (SEL : in STD_LOGIC;
		  A : in STD_LOGIC_VECTOR (31 downto 0);
		  B : in STD_LOGIC_VECTOR (31 downto 0);
		  X : in STD_LOGIC_VECTOR (31 downto 0)
	);
end mux_2;

architecture Behavioral of mux_2 is
begin
    X <= A when (SEL = '1') else B;
end Behavioral;