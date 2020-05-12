library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_bit.all; 


entity LCD is 
port(RESET: in bit;
    CLK : in bit;
    
    RS: in bit;
    RWDATA: in bit;
	 DATA_INSTRUCTIONS: in bit_vector(7 downto 0);
	
    Se�al_RS: out bit;
    Se�al_RW: out bit;
    Se�al_EN: out bit; 
    DATA: out bit_Vector(7 downto 0));
end entity LCD;

architecture Behavioral of LCD is
type state is(IDLE,RUN);
signal estado: state;

begin 

process(CLK)
 variable clk_count: integer := 0;
 begin
    if CLK='1' and CLK'event then
        case estado is
            when IDLE=>
				
					 if RESET = '1' then
						Se�al_RS <= '0';
						Se�al_RW <= '0';
						Se�al_EN <= '0';
						DATA<="00000000"; 
						estado <= IDLE;
                elsif RWDATA = '1'  then
						Se�al_RS <= RESET;
						Se�al_RW <= RWDATA;
						DATA <= DATA_INSTRUCTIONS;
						estado <= RUN;
                else
                
                end if;
            
            when RUN =>
                if(clk_count <= 30) then 
                clk_count := clk_count + 1;
                Se�al_EN <= '1';
                estado <= RUN;
                else
                    Se�al_EN <= '0';
                    clk_count := 0;
                    estado <= IDLE;
                end if;
            when others => null;
        end case;
    end if;
end process;
end Behavioral;