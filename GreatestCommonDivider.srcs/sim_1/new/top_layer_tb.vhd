----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.11.2021 02:26:27
-- Design Name: 
-- Module Name: top_layer_tb - Behavioral
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

entity top_layer_tb is
--  Port ( );
end top_layer_tb;

architecture Behavioral of top_layer_tb is


    COMPONENT top_layer is
        port(
            clk_top         : in  std_logic;
            reset_top       : in  std_logic;
            input_top       : in  std_logic_vector(1 downto 0);
            a_top           : in  std_logic_vector(3 downto 0);
            b_top           : in  std_logic_vector(3 downto 0);
            gcd_output_top  : out std_logic_vector(6 downto 0);
            output_top      : out std_logic
        );
    END COMPONENT; 

    SIGNAL signal_clk_net         : std_logic;
    SIGNAL signal_reset_net       : std_logic;
    SIGNAL signal_input_net       : std_logic_vector(1 downto 0);
    SIGNAL signal_a_net           : std_logic_vector(3 downto 0);
    SIGNAL signal_b_net           : std_logic_vector(3 downto 0);
    SIGNAL signal_gcd_output_net  : std_logic_vector(6 downto 0);
    SIGNAL signal_output_net      : std_logic;

BEGIN 

UUT: top_layer
-- ****************************** MAPPING *******************************
PORT MAP(   
            clk_top         => signal_clk_net,
            reset_top       => signal_reset_net,
            input_top       => signal_input_net,
            a_top           => signal_a_net,
            b_top           => signal_b_net,
            gcd_output_top  => signal_gcd_output_net,
            output_top      => signal_output_net
        ); 
-- ********************************************************************** 

-- ****************************** PROCESS *******************************
Testbench_Desc_Name: PROCESS 
    BEGIN       

        signal_clk_net      <= '0';
        signal_reset_net    <= '0';
        signal_input_net    <= "00";
        signal_a_net        <= "1100"; 
        signal_b_net        <= "0110";
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
        signal_a_net        <= "1010"; 
        signal_b_net        <= "0101";
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
