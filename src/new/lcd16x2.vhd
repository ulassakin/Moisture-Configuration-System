
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity lcd16x2 is
    Port ( clk : in STD_LOGIC;
           m_in : in STD_LOGIC_VECTOR(6 downto 0);
           s_in : in STD_LOGIC_VECTOR(6 downto 0);
           lcd_rs : out STD_LOGIC;
           lcd_e : out STD_LOGIC;
           data : out STD_LOGIC_VECTOR (7 downto 0));
end lcd16x2;

architecture Behavioral of lcd16x2 is

type arr1 is array (1 to 34) of std_logic_vector(7 downto 0);
signal data_a1: arr1 := (x"38", x"0C", x"06", x"01", x"80", x"53", x"77", x"69", x"74", x"63", x"68", x"20", x"4D", x"6F", x"69", x"73", x"3A", x"20", x"20", x"C0", x"57", x"61", x"74", x"65", x"72", x"20", x"6E", x"65", x"65", x"64", x"3A", x"20", x"20", x"20");



signal en_timer: integer range 0 to 100000;
signal data_pos: integer range 1 to 34;




signal i_out_s: integer;

signal f_d_int, s_d_int: integer;
signal a: integer;
signal b: integer;


signal d1, e1: std_logic_vector(7 downto 0) := "00000000";
signal f, g: std_logic_vector(3 downto 0) := "0000";
begin



i_out_s <= to_integer(unsigned(s_in));
f_d_int <= i_out_s rem 10;--first digit of int
s_d_int <= (i_out_s - f_d_int)/10;--second digit of int

f <= std_logic_vector(to_unsigned(f_d_int, f'length));
g <= std_logic_vector(to_unsigned(s_d_int, g'length));

d1 <= "0011" & g;
e1 <= "0011" & f;

process(clk)
begin

if rising_edge(clk) then
        data_a1(18) <= d1;
        data_a1(19) <= e1;
        if (m_in < s_in) then
            data_a1(32) <= x"59";
            data_a1(33) <= x"65";
            data_a1(34) <= x"73";
        else
            data_a1(32) <= x"4E";
            data_a1(33) <= x"6F";
            data_a1(34) <= x"20";
        
        end if;
     
        en_timer <= en_timer + 1;
        if en_timer <= 50000 then
            lcd_e <= '1';
            data <= data_a1(data_pos)(7 downto 0);
        elsif en_timer > 50000 and en_timer < 100000 then
            lcd_e <= '0';
        
    
    
        elsif en_timer = 100000 then
            en_timer <= 0;
            data_pos <= data_pos + 1;
        end if;
    
    
        if data_pos <= 5 then
            lcd_rs <= '0';
        elsif data_pos > 5 then
            lcd_rs <= '1';
        end if;


        if data_pos = 35 then
            data_pos <= 5;
        end if;
    
    end if;

    



end process;
end Behavioral;
