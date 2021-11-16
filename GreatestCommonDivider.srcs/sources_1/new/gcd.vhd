----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2021 19:09:33
-- Design Name: 
-- Module Name: gcd - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity gcd1 is
    port(
        x       : in std_logic_vector(7 downto 0);
        y       : in std_logic_vector(7 downto 0);
        gcd     : out std_logic_vector(7 downto 0)
    );

end gcd1;

architecture gcd1 of gcd1 is
begin
    process(x, y)
    variable xv, yv: STD_LOGIC_VECTOR(7 downto 0);
    begin
            xv := x;
            yv := y;
            while(xv /= yv) loop
                if xv < yv then
                    yv := yv -xv;
                else
                    xv := xv - yv;
                end if;
            end loop;
            gcd <= xv;
    end process;
end gcd1;
