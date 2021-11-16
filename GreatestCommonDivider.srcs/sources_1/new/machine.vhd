----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2021 20:00:44
-- Design Name: 
-- Module Name: machine - Behavioral
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
use IEEE.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY state_machine IS
   PORT(
      clk         : in  std_logic;
      reset       : in  std_logic;
      input       : in  std_logic_vector(1 downto 0);
      a           : in  std_logic_vector(7 downto 0);
      b           : in  std_logic_vector(7 downto 0);
      gcd_output  : out std_logic_vector(7 downto 0);
      output      : out std_logic
   );
END state_machine;

ARCHITECTURE state_machine_arch OF state_machine IS

   COMPONENT gcd1 is
      port(
         x: in std_logic_vector(7 downto 0);
         y: in std_logic_vector(7 downto 0);
         gcd: out std_logic_vector(7 downto 0)
      );
   END COMPONENT; 

   TYPE STATE_TYPE IS (init, cargar, opera, aa, bb, fin);
   SIGNAL state   : STATE_TYPE;

BEGIN
   PROCESS (clk, reset)
   BEGIN
      IF reset = '1' THEN
         state <= init;
      ELSIF (clk'EVENT AND clk = '1') THEN
         CASE state IS
            WHEN init=>
               IF input = "00" OR input = "01" THEN
                  state <= cargar;
               ELSE
                  state <= init;
               END IF;
            WHEN cargar=>
               IF input = "00" OR input = "01" THEN
                  state <= opera;
               ELSE
                  state <= cargar;
               END IF;
            WHEN opera=>
               IF input = "00" THEN
                  state <= aa;
               ELSIF input = "01" THEN
                  state <= bb; 
               ELSIF input = "10" OR input = "11" THEN
                  state <= fin; 
               ELSE
                  state <= opera;
               END IF;
            WHEN aa=>
               IF input = "00" OR input = "01" THEN
                  state <= opera;
               ELSE
                  state <= aa;
               END IF;
            WHEN bb=>
               IF input = "00" OR input = "01" THEN
                  state <= opera;
               ELSE
                  state <= bb;
               END IF;
            WHEN fin=>
               IF input = "00" OR input = "01" THEN
                  state <= init;
               ELSE
                  state <= fin;
               END IF;
         END CASE;
      END IF;
   END PROCESS;
   
   PROCESS (state)
   BEGIN
      CASE state IS
         WHEN init =>
            output <= '0';
         WHEN cargar =>
            output <= '0';
         WHEN opera =>
            output <= '0';
         WHEN aa =>
            output <= '0';
         WHEN bb =>
            output <= '0';
         WHEN fin =>
            output <= '1';
      END CASE;
   END PROCESS;
   
END state_machine_arch;
