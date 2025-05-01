library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity ssd_top is
    generic(c_clkfreq : integer := 100_000_000
    );
    
    port(clk: in std_logic;
         bcd_i_1: in std_logic_vector(3 downto 0);
         bcd_i_2: in std_logic_vector(3 downto 0);
         ssd_o1: out std_logic_vector(7 downto 0);
         anodes_o: out std_logic_vector(3 downto 0)
    );
end ssd_top;

architecture Behavioral of ssd_top is

component ssd_sub is
port (bcd_i : in std_logic_vector (3 downto 0);
      ssd_o : out std_logic_vector (7 downto 0)
);
end component;



constant timer_lim : integer := c_clkfreq/1000;
signal timer : integer range 0 to timer_lim := 0;


signal f_d_signal, s_d_signal: std_logic_vector(3 downto 0) := (others => '0');


signal ssd_signal_0, ssd_signal_1: std_logic_vector(7 downto 0) := (others => '0');
signal anodes: std_logic_vector(3 downto 0) := "1110";

signal bcd_i_1s, bcd_i_2s: std_logic_vector(3 downto 0);
begin



ssd_0 : ssd_sub
    port map(bcd_i => bcd_i_1, ssd_o => ssd_signal_0);
ssd_1 : ssd_sub
    port map(bcd_i => bcd_i_2, ssd_o => ssd_signal_1);


a_process : process(clk) begin
    if(rising_edge(clk)) then
        anodes(3 downto 2) <= "11";
        if(timer = timer_lim - 1) then
            timer <= 0;
            anodes(1) <= not anodes(1);
            anodes(0) <= not anodes(0);
        else
            timer <= timer +1;
    
        end if;
    end if;
end process;


c_process : process(clk) begin
if(rising_edge(clk)) then
        if(anodes(0) = '0') then
            ssd_o1 <= ssd_signal_0;
        elsif(anodes(1) = '0') then           
            ssd_o1 <= ssd_signal_1;
        else
            ssd_o1 <= (others => '1');
        end if;
    end if;




end process;
anodes_o <= anodes;
end Behavioral;
