----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:11:42 03/22/2020 
-- Design Name: 
-- Module Name:    FullAdder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FullAdder is
    Port ( A : in  bit;
           B : in  bit;
           Ci : in  bit;
           Z : out  bit;
           Cout : out  bit);
end FullAdder;

architecture Behavioral of FullAdder is
component Multiplexer 
	port ( A : in  bit;
           B : in  bit;
           C : in  bit;
           D : in  bit;
           S0 : in  bit;
           S1 : in  bit;
           Z : out  bit);

end component; 
begin
	MUX0: Multiplexer port map (Ci, not Ci, not Ci, Ci, A, B, Z); 
	MUX1: Multiplexer port map ('0',Ci,Ci,'1', A, B,Cout); 

end Behavioral;

