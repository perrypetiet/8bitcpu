library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity eatercpu is

port(input : in std_logic; output : out std_logic);

end entity;

architecture behaviour of eatercpu is
begin

	output <= not(input);


end behaviour;