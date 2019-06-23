----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:53:38 06/17/2019 
-- Design Name: 
-- Module Name:    Volladdierer - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Volladdierer2 is
    Port ( AV : in  STD_LOGIC;
           BV : in  STD_LOGIC;
           U_INV : in  STD_LOGIC;
           SV : out  STD_LOGIC;
           UV : out  STD_LOGIC);
end Volladdierer2;

architecture Behavioral of Volladdierer2 is

component Halbaddierer is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : out  STD_LOGIC;
           U : out  STD_LOGIC);
end component Halbaddierer;

Signal U_inter: STD_LOGIC;
Signal A_inter: STD_LOGIC;
Signal B_inter: STD_LOGIC;
Signal U_out: STD_LOGIC;
Signal S_out: STD_LOGIC;

begin

ADD: Halbaddierer
		Port map (
				A => AV,
				B => BV,
				U => U_inter,
				S => A_inter);

UBR: Halbaddierer
		Port map (
				A => A_inter,
				B => U_INV,
				U => U_out,
				S => S_out);
				
SV <= S_out;
UV <= U_out or U_inter;

end Behavioral;

