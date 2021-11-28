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
ENTITY state_machine_testbench IS 
END state_machine_testbench; 
-- ************************************************************************* 

ARCHITECTURE behavioral OF state_machine_testbench IS   

    COMPONENT state_machine is
        port(
            clk         : in  std_logic;
            reset       : in  std_logic;
            input       : in  std_logic_vector(1 downto 0);
            a           : in  std_logic_vector(7 downto 0);
            b           : in  std_logic_vector(7 downto 0);
            gcd_output  : out std_logic_vector(7 downto 0);
            output      : out std_logic
        );
    END COMPONENT; 
 
    SIGNAL signal_clk_net         : std_logic;
    SIGNAL signal_reset_net       : std_logic;
    SIGNAL signal_input_net       : std_logic_vector(1 downto 0);
    SIGNAL signal_a_net           : std_logic_vector(7 downto 0);
    SIGNAL signal_b_net           : std_logic_vector(7 downto 0);
    SIGNAL signal_gcd_output_net  : std_logic_vector(7 downto 0);
    SIGNAL signal_output_net      : std_logic;

BEGIN 

UUT: state_machine
-- ****************************** MAPPING *******************************
PORT MAP(   
            clk         => signal_clk_net,
            reset       => signal_reset_net,
            input       => signal_input_net,
            a           => signal_a_net,
            b           => signal_b_net,
            gcd_output  => signal_gcd_output_net,
            output      => signal_output_net
        ); 
-- ********************************************************************** 

-- ****************************** PROCESS *******************************
Testbench_Desc_Name: PROCESS 
    BEGIN       

        signal_clk_net      <= '0';
        signal_reset_net    <= '0';
        signal_input_net    <= "00";
        signal_a_net        <= "11001100"; 
        signal_b_net        <= "01100110";
        WAIT FOR 50 NS; 

        signal_clk_net <= '1';        
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '1'; 
        WAIT FOR 50 NS; 

        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 

        signal_clk_net <= '1'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_input_net    <= "01";
        signal_clk_net      <= '1'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '1'; 
        WAIT FOR 50 NS; 
        
        signal_input_net    <= "00";
        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '1'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_input_net    <= "11";
        signal_clk_net      <= '1'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '1'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '1'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '1'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '1'; 
        WAIT FOR 50 NS;

        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '1'; 
        WAIT FOR 50 NS; 

        signal_clk_net      <= '0';
        signal_reset_net    <= '0';
        signal_input_net    <= "00";
        signal_a_net        <= "11001100"; 
        signal_b_net        <= "00000110";
        WAIT FOR 50 NS; 

        signal_clk_net <= '1';        
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '1'; 
        WAIT FOR 50 NS; 

        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 

        signal_clk_net <= '1'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_input_net    <= "01";
        signal_clk_net      <= '1'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '1'; 
        WAIT FOR 50 NS; 
        
        signal_input_net    <= "00";
        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '1'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_input_net    <= "11";
        signal_clk_net      <= '1'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '1'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '1'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '1'; 
        WAIT FOR 50 NS; 
        
        signal_reset_net <= '1';
        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '1'; 
        WAIT FOR 50 NS;
        
        signal_reset_net <= '0';
        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '1'; 
        WAIT FOR 50 NS; 

        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '1'; 
        WAIT FOR 50 NS; 

        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '1'; 
        WAIT FOR 50 NS; 

        signal_clk_net <= '0'; 
        WAIT FOR 50 NS; 
        
        signal_clk_net <= '1'; 
        WAIT FOR 50 NS; 

        WAIT;  
    END PROCESS; 
END; 
-- ******************************************************************