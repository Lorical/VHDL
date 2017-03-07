library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control_unit is
	port (
		--input op code
		op_code : in std_logic_vector (5 downto 0);

		reg_dst_o : out std_logic;
		br_o : out std_logic;
		j_o : out std_logic;
		mem_read_o : out std_logic;
		mem_write_o : out std_logic;

		--ALU control
		alu_op_o : out std_logic_vector(4 downto 0);
		alu_src_o : out std_logic;

		reg_write_o : out std_logic;

		clk : std_logic
	);
end control_unit;

architecture behavioral of control_unit is
begin
	op := to_integer(unsigned(op_code));
	case op is
		when '1' => reg_dst_o <= '1';
					br_o <= '0';
					j_o <= '0';
					mem_read_o <= '0';
					mem_write_o <= '0';
					alu_op_o <= op_code;
					alu_src_o <= '0';
					reg_write_o <= '1';

				
		when '2' => reg_dst_o <= '1';
					br_o <= '0';
					j_o <= '0';
					mem_read_o <= '0';
					mem_write_o <= '0';
					alu_op_o <= op_code;
					alu_src_o <= '0';
					reg_write_o <= '1';


	end case;
	end process;
end behavioral;
