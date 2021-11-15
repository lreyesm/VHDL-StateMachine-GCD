----------------------------------------------------------------------------------
-- Company: UPV / EHU
-- Engineers: Luis Alejandro Reyes Morales 
-- Adrian Nieves de la Cruz
-- 
-- Create Date: 19.10.2021 19:31:26
-- Design Name: 
-- Module Name: ALU_tb - Behavioral
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

-- MASTER SIEAV. Curso 2019-2020 
-- Modelo de fichero de simulaci�n 


-- *************************** Entity name ********************************* 
ENTITY Nombre_Entidad_testbench IS 
END Nombre_Entidad_testbench; 
-- ************************************************************************* 

ARCHITECTURE behavioral OF Nombre_Entidad_testbench IS  
    
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

-- UUT: ALU  
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
        signal_x_net <= "10101010"; 
        signal_y_net <= "01010101"; 
        WAIT FOR 250 NS; 

        signal_x_net <= "11001100"; 
        signal_y_net <= "01100110"; 
        WAIT FOR 250 NS; 

        
        signal_x_net <= "11101110"; 
        signal_y_net <= "10001000"; 
        WAIT FOR 250 NS; 
        
        signal_x_net <= "00010001"; 
        signal_y_net <= "10011001"; 
        WAIT FOR 250 NS;

        WAIT;  
    END PROCESS; 
END; 
-- Testbench_Desc_Name: PROCESS 
--     BEGIN  
--         signal_ai_net <= '1'; 
--         signal_bi_net <= '0'; 
--         signal_cin_net <= '0'; 
--         signal_signo_net <= '0';
--         signal_opera_net <= "01"; 
--         WAIT FOR 250 NS; 

--         signal_ai_net <= '1'; 
--         signal_bi_net <= '1'; 
--         signal_cin_net <= '0';
--         signal_signo_net <= '0';
--         signal_opera_net <= "01";
--         WAIT FOR 250 NS; 

        
--         signal_ai_net <= '0'; 
--         signal_bi_net <= '1'; 
--         signal_cin_net <= '0';
--         signal_signo_net <= '0';
--         signal_opera_net <= "11";
--         WAIT FOR 250 NS; 
        
--         signal_ai_net <= '0'; 
--         signal_bi_net <= '0'; 
--         signal_cin_net <= '0';
--         signal_signo_net <= '0';
--         signal_opera_net <= "00";
--         WAIT FOR 250 NS;

--         WAIT;  
--     END PROCESS; 
-- END; 
-- ******************************************************************