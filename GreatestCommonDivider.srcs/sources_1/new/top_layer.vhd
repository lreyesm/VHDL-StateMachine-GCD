----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.11.2021 23:54:41
-- Design Name: 
-- Module Name: top_layer - Behavioral
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

entity top_layer is
    Port ( 
        clk_top         : in  std_logic;
        reset_top       : in  std_logic;
        input_top       : in  std_logic_vector(1 downto 0);
        a_top           : in  std_logic_vector(3 downto 0);
        b_top           : in  std_logic_vector(3 downto 0);
        gcd_output_top  : out std_logic_vector(6 downto 0);
        output_top      : out std_logic
    );
end top_layer;

architecture Behavioral of top_layer is

    COMPONENT state_machine is
        Port ( 
            clk         : in  std_logic;
            reset       : in  std_logic;
            input       : in  std_logic_vector(1 downto 0);
            a           : in  std_logic_vector(7 downto 0);
            b           : in  std_logic_vector(7 downto 0);
            gcd_output  : out std_logic_vector(7 downto 0);
            output      : out std_logic
        );
    END COMPONENT; 

    SIGNAL signal_a           : std_logic_vector(7 downto 0);
    SIGNAL signal_b           : std_logic_vector(7 downto 0);
    SIGNAL signal_gcd_output  : std_logic_vector(7 downto 0);
    SIGNAL signal_output      : std_logic;

begin
    xai: FOR i IN 0 TO 3 GENERATE   -- Inicializaci�n a 0 de los m pin de la fila superior
        signal_a(i) <= a_top(i);
    END GENERATE;
    xai2: FOR i IN 4 TO 7 GENERATE   -- Inicializaci�n a 0 de los m pin de la fila superior
        signal_a(i) <= '0';
    END GENERATE;

    xbi: FOR i IN 0 TO 3 GENERATE   -- Inicializaci�n a 0 de los m pin de la fila superior
        signal_b(i) <= b_top(i);
    END GENERATE;
    xbi2: FOR i IN 4 TO 7 GENERATE   -- Inicializaci�n a 0 de los m pin de la fila superior
        signal_b(i) <= '0';
    END GENERATE;

    U0: state_machine PORT MAP
        (
            clk_top,
            reset_top,
            input_top,
            signal_a,
            signal_b,
            signal_gcd_output,
            signal_output
        );

    
    xoi: FOR i IN 0 TO 6 GENERATE   -- Inicializaci�n a 0 de los m pin de la fila superior
        gcd_output_top(i) <= signal_gcd_output(i);
    END GENERATE;

    output_top <= signal_output;

end Behavioral;
