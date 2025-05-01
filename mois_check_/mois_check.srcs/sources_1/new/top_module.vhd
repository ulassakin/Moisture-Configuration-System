library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity top_module is
    Port ( sensor : in STD_LOGIC_VECTOR (9 downto 0);
           switch : in STD_LOGIC_VECTOR (6 downto 0);
           CLK : in STD_LOGIC;
           button_e: in STD_LOGIC;
           anodes : out STD_LOGIC_VECTOR (3 downto 0);
           segments : out STD_LOGIC_VECTOR (7 downto 0);
           lcd_rs : out STD_LOGIC;
           lcd_e : out STD_LOGIC;
           data : out STD_LOGIC_VECTOR (7 downto 0));
end top_module;

architecture Behavioral of top_module is

component multi is
port(in1: in std_logic_vector(9 downto 0);
         out1: out std_logic_vector(6 downto 0);--input of comparetor
         bcd_d_1: out std_logic_vector(3 downto 0);--inputs of sseg
         bcd_d_2: out std_logic_vector(3 downto 0));--

end component;





component ssd_top is

generic(c_clkfreq : integer := 100_000_000
    );
    
    port(clk: in std_logic;
         bcd_i_1: in std_logic_vector(3 downto 0);
         bcd_i_2: in std_logic_vector(3 downto 0);
         ssd_o1: out std_logic_vector(7 downto 0);
         anodes_o: out std_logic_vector(3 downto 0)
    );

end component;

component ckt is

Port ( switch : in std_logic_vector(6 downto 0);
         clk : in std_logic;
         e : in std_logic;
         d : out std_logic_vector(6 downto 0));

end component;

component lcd16x2 is 

Port ( clk : in STD_LOGIC;
           m_in : in STD_LOGIC_VECTOR(6 downto 0);
           s_in : in STD_LOGIC_VECTOR(6 downto 0);
           lcd_rs : out STD_LOGIC;
           lcd_e : out STD_LOGIC;
           data : out STD_LOGIC_VECTOR (7 downto 0));

end component;

signal sseg_sig: std_logic_vector ( 7 downto 0);
signal sig1, sig2: std_logic_vector ( 6 downto 0);
signal bcd1, bcd2: std_logic_vector(3 downto 0);
begin

lcd: lcd16x2
Port Map (clk => CLK,
          m_in => sig1,
          s_in => sig2,
          lcd_rs => lcd_rs,
          lcd_e => lcd_e,
          data => data);
          
mult1: multi
Port Map (in1 => sensor,
          out1 => sig1,
          bcd_d_1 => bcd1,
          bcd_d_2 => bcd2);
          


ssd: ssd_top
Port map(clk => clk,
         bcd_i_1 => bcd1,
         bcd_i_2 => bcd2,
         ssd_o1 => segments,
         anodes_o => anodes);
          
FF: ckt
Port map( switch => switch,
          clk => clk,
          e => button_e,
          d => sig2);
          

end Behavioral;
