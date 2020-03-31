library ieee;
Use ieee.std_logic_1164.all;

Entity Adder is
Generic ( N : natural := 64);
Port( A, B : in std_logic_vector(N-1 downto 0);
	Y : out std_logic_vector(N-1 downto 0);
--Control signals
	Cin : in std_logic;
--Status signals
	Cout, Ovfl : out std_logic);
End Entity Adder;
Architecture rtl of Adder is
	signal ix, iy, iz : std_logic_vector(N-1 downto 0);
	signal ic : std_logic_vector(N downto 0);
Begin
	ic(0) <= Cin;
	Cout <= ic(N);
	Ovfl <= ic(N-1) XOR ic(N);
gen:	for i in 0 to N-1 generate
	ix(i) <= A(i) XOR B(i);
	iy(i) <= A(i) AND B(i);
	iz(i) <= ix(i) AND ic(i);
	Y(i) <= ix(i) XOR ic(i);
	ic(i+1) <= iz(i) OR iy(i);
	end generate gen;

End Architecture rtl;