library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_bit.all; 


entity BCD7seg is
    Port ( bcd : in  bit_vector (3 downto 0);
           CLK : in  bit;
           Display0 : out  bit_vector(6 downto 0);
			  Display1 : out  bit_vector(6 downto 0);
			  Display2 : out  bit_vector(6 downto 0);
			  Display3 : out  bit_vector(6 downto 0);
			  anodo0 : out bit; 
			  anodo1 : out bit;
			  anodo2 : out bit;
			  anodo3 : out bit;
			  anodo : out string (1 to 5));
end BCD7seg;

architecture Behavioral of BCD7seg is

signal state : integer range 0 to 3; 

begin
	process (clk) 
	begin 
		if CLK='1' and CLK'event then 
			state<=state+1; 
		end if; 
	end process; 
	
	process (state)
	begin 
		
	
		case State is
			when 0 => 
				Anodo<= "Disp0"; 
				case bcd is 
					when "0000" => Display0 <= "0000001"; 
					when "0001" => Display0 <= "1001111"; 
					when "0010" => Display0 <= "0010010"; 
					when "0011" => Display0 <= "0000110"; 
					when "0100" => Display0 <= "1001100"; 
					when "0101" => Display0 <= "0100100"; 
					when "0110" => Display0 <= "0100000"; 
					when "0111" => Display0 <= "0001111"; 
					when "1000" => Display0 <= "0000000"; 
					when "1001" => Display0 <= "0000100"; 
					when "1010" => Display0 <= "0001000"; 
					when "1011" => Display0 <= "1100000"; 
					when "1100" => Display0 <= "0110001"; 
					when "1101" => Display0 <= "1000010";
					when "1110" => Display0 <= "0110000"; 
					when "1111" => Display0 <= "0111000"; 
				end case; 
				Anodo0<='1'; 
				Anodo1<='0'; 
				Anodo2<='0'; 
				Anodo3<='0'; 
			when 1 => 
				Anodo<= "Disp1";  
				case bcd is 
					when "0000" => Display1 <= "0000001"; 
					when "0001" => Display1 <= "1001111"; 
					when "0010" => Display1 <= "0010010"; 
					when "0011" => Display1 <= "0000110"; 
					when "0100" => Display1 <= "1001100"; 
					when "0101" => Display1 <= "0100100"; 
					when "0110" => Display1 <= "0100000"; 
					when "0111" => Display1 <= "0001111"; 
					when "1000" => Display1 <= "0000000"; 
					when "1001" => Display1 <= "0000100"; 
					when "1010" => Display1 <= "0001000"; 
					when "1011" => Display1 <= "1100000"; 
					when "1100" => Display1 <= "0110001"; 
					when "1101" => Display1 <= "1000010";
					when "1110" => Display1 <= "0110000"; 
					when "1111" => Display1 <= "0111000"; 
				end case; 
				Anodo0<='0'; 
				Anodo1<='1'; 
				Anodo2<='0'; 
				Anodo3<='0'; 
			when 2 => 
				Anodo<= "Disp2"; 
				case bcd is 
					when "0000" => Display2 <= "0000001"; 
					when "0001" => Display2 <= "1001111"; 
					when "0010" => Display2 <= "0010010"; 
					when "0011" => Display2 <= "0000110"; 
					when "0100" => Display2 <= "1001100"; 
					when "0101" => Display2 <= "0100100"; 
					when "0110" => Display2 <= "0100000"; 
					when "0111" => Display2 <= "0001111"; 
					when "1000" => Display2 <= "0000000"; 
					when "1001" => Display2 <= "0000100"; 
					when "1010" => Display2 <= "0001000"; 
					when "1011" => Display2 <= "1100000"; 
					when "1100" => Display2 <= "0110001"; 
					when "1101" => Display2 <= "1000010";
					when "1110" => Display2 <= "0110000"; 
					when "1111" => Display2 <= "0111000"; 
				end case; 
				Anodo0<='0'; 
				Anodo1<='0'; 
				Anodo2<='1'; 
				Anodo3<='0'; 
			when 3 =>
				Anodo<= "Disp3"; 
				case bcd is 
					when "0000" => Display3 <= "0000001"; 
					when "0001" => Display3 <= "1001111"; 
					when "0010" => Display3 <= "0010010"; 
					when "0011" => Display3 <= "0000110"; 
					when "0100" => Display3 <= "1001100"; 
					when "0101" => Display3 <= "0100100"; 
					when "0110" => Display3 <= "0100000"; 
					when "0111" => Display3 <= "0001111"; 
					when "1000" => Display3 <= "0000000"; 
					when "1001" => Display3 <= "0000100"; 
					when "1010" => Display3 <= "0001000"; 
					when "1011" => Display3 <= "1100000"; 
					when "1100" => Display3 <= "0110001"; 
					when "1101" => Display3 <= "1000010";
					when "1110" => Display3 <= "0110000"; 
					when "1111" => Display3 <= "0111000"; 
				end case; 
				Anodo0<='0'; 
				Anodo1<='0'; 
				Anodo2<='0'; 
				Anodo3<='1'; 
			end case; 
	end process; 
		
end Behavioral;

