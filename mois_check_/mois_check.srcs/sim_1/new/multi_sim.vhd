
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity multi_sim is
end multi_sim;

architecture Behavioral of multi_sim is
component lcd16x2
    Port ( clk : in STD_LOGIC;
           m_in : in STD_LOGIC_VECTOR(6 downto 0);
           s_in : in STD_LOGIC_VECTOR(6 downto 0);
           lcd_rs : out STD_LOGIC;
           lcd_e : out STD_LOGIC;
           data : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal a, b: std_logic_vector(6 downto 0);
signal c, d: std_logic;
signal data1: std_logic_vector(7 downto 0);
signal clk: std_logic;
constant clk_period: time := 1 ns;

begin

uut: lcd16x2 port map(clk => clk, m_in => a, s_in => b, lcd_rs => c, lcd_e => d, data => data1);

clk_process: process
begin

clk <= '1';
wait for clk_period/2;
clk <= '0';
wait for clk_period/2;

end process;

stim_proc: process
begin
    
    a <= "1010010";
    b <= "0010000";
    wait for 300 ns;
    
    


end process;

end Behavioral;
