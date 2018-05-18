library IEEE;
use IEEE.std_logic_1164.all;

constant tam : integer := 8;

entity desloc1 is
	port (  
    	A : in std_logic_vector(tam downto 0);
        B : out std_logic_vector(tam downto 0);
    );
end desloc1;

architecture desloc1 of desloc1 is
	signal v1, v2 : sd_logic_vector(tam downto 0);    
begin 
    	v1 <= A;
        v2[0] <= '0';
        v2[1: tam-1] <= v1[0:tam-2];
        B <= v2;
end;
