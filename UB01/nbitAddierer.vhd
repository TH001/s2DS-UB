----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:56:12 06/18/2019 
-- Design Name: 
-- Module Name:    nbitAddierer - Behavioral 
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

entity nbitAddierer is
	generic(bits:integer:=3);
    Port ( An : in  STD_LOGIC_VECTOR (bits-1 downto 0);
           Bn : in  STD_LOGIC_VECTOR (bits-1 downto 0);
           U_INn : in  STD_LOGIC;
           Un : out  STD_LOGIC;
			  --Cn : out  STD_LOGIC;
           Sn : out  STD_LOGIC_VECTOR (bits-1 downto 0));
end nbitAddierer;

architecture Behavioral of nbitAddierer is

component Volladdierer2 is
    Port ( AV : in  STD_LOGIC;
           BV : in  STD_LOGIC;
           U_INV : in  STD_LOGIC;
           SV : out  STD_LOGIC;
           UV : out  STD_LOGIC);
end component;

Signal C: STD_LOGIC_VECTOR (bits downto 0);

begin

C(0) <= U_INn;

schleife: for i in 0 to bits-1 generate
	bitspace: Volladdierer2 port map(
			AV => An(i),
			BV => Bn(i),
			U_INV => C(i),
			SV => Sn(i),
			UV => C(i+1)
			);
end generate;

Un <= C(bits);
--Cn <= C(bits-1);

end Behavioral;

