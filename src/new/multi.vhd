library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL; --math operations

entity multi is
    port(in1: in std_logic_vector(9 downto 0); -- input from the Arduino UNO. 0-1023 binary value which represents the moisture level
         out1: out std_logic_vector(6 downto 0);--input of 16x2 LCD
         bcd_d_1: out std_logic_vector(3 downto 0);--input of sseg1
         bcd_d_2: out std_logic_vector(3 downto 0));--input of sseg2
end multi;


architecture Behavioral of multi is


signal i_num_bin: std_logic_vector(9 downto 0); 
-- signal = wire one end on input and the other end on the output. It is updated when the process is over
signal i_num_dec: integer := 0;

signal out_num_bin: std_logic_vector(6 downto 0) := "0000000";
signal out_num_dec: integer := 0;
signal f_d_int: integer := 0;
signal f_a_int: integer := 0;
signal s_d_int: integer := 0;
signal f_d_bcd: std_logic_vector(3 downto 0);
signal s_d_bcd: std_logic_vector(3 downto 0);

begin


i_num_bin <= in1;

i_num_dec <= to_integer(unsigned(i_num_bin));
out_num_dec <= (i_num_dec * 100)/675;-- finding percentage with proportion

f_d_int <= out_num_dec rem 10;--finding int first digit
s_d_int <= (out_num_dec - f_d_int)/10;--finding int second digit
f_d_bcd <= std_logic_vector(to_unsigned(f_d_int, f_d_bcd'length));--finding bcd of first digit
s_d_bcd <= std_logic_vector(to_unsigned(s_d_int, s_d_bcd'length));--finding bcd of second digit

-- std_logic_vector -> just bit series. No meaning of them
--unsigned -> they are interpreted by vhdl as meaningful numbers.
-- Inside FPGA, std_logic_vector and unsigned are the same.

bcd_d_1 <= f_d_bcd;
bcd_d_2 <= s_d_bcd;


out_num_bin <= std_logic_vector(to_unsigned(out_num_dec, out_num_bin'length));--input of comparetor

out1 <= out_num_bin;




end Behavioral;
