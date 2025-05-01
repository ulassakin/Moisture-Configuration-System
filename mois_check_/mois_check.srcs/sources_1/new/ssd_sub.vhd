library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ssd_sub is
    Port ( bcd_i : in STD_LOGIC_VECTOR(3 downto 0);
           ssd_o : out STD_LOGIC_VECTOR(7 downto 0));
end ssd_sub;

architecture Behavioral of ssd_sub is

begin

process (bcd_i) 
begin
    
       
    case bcd_i is 
        
        when "0000" => ssd_o <= "00000011";--deciding which cathodes will ligth up
        when "0001" => ssd_o <= "10011111";--according to bcd we got from multiplier
        when "0010" => ssd_o <= "00100101";
        when "0011" => ssd_o <= "00001101";
        when "0100" => ssd_o <= "10011001";
        when "0101" => ssd_o <= "01001001";
        when "0110" => ssd_o <= "01000001";
        when "0111" => ssd_o <= "00011111";
        when "1000" => ssd_o <= "00000001";
        when "1001" => ssd_o <= "00001001";
        when others => ssd_o <= "11111111";
    end case;
end process;
end Behavioral;
