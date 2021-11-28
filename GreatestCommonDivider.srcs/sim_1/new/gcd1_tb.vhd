----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.11.2021 01:49:41
-- Design Name: 
-- Module Name: gcd1_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


-- *************************** Entity name ********************************* 
ENTITY gcd1_tb IS 
END gcd1_tb; 
-- ************************************************************************* 

ARCHITECTURE behavioral OF gcd1_tb IS   
    COMPONENT gcd1 is
        port(
            x: in std_logic_vector(7 downto 0);
            y: in std_logic_vector(7 downto 0);
            gcd: out std_logic_vector(7 downto 0)
        );
    END COMPONENT;   
    
    SIGNAL signal_x_net: std_logic_vector(7 downto 0); 
    SIGNAL signal_y_net: std_logic_vector(7 downto 0); 
    SIGNAL signal_gcd_net: std_logic_vector(7 downto 0);

BEGIN 

UUT: gcd1
-- ****************************** MAPPING *******************************
PORT MAP(   x   => signal_x_net, 
            y   => signal_y_net, 
            gcd   => signal_gcd_net
        );
-- ********************************************************************** 

-- ****************************** PROCESS *******************************
Testbench_Desc_Name: PROCESS 
    BEGIN  

        signal_x_net        <= "11001100"; 
        signal_y_net        <= "01100110";
        WAIT FOR 50 NS; 

        signal_x_net        <= "11001100"; 
        signal_y_net        <= "01000110";
        WAIT FOR 50 NS; 

        signal_x_net        <= "11001100"; 
        signal_y_net        <= "01100100";
        WAIT FOR 50 NS; 

        signal_x_net        <= "01001100"; 
        signal_y_net        <= "00100110";
        WAIT FOR 50 NS; 

        signal_x_net        <= "00001100"; 
        signal_y_net        <= "00000110";
        WAIT FOR 50 NS; 

        signal_x_net        <= "11001000"; 
        signal_y_net        <= "01100010";
        WAIT FOR 50 NS; 
    END PROCESS; 
END; 
-- ******************************************************************