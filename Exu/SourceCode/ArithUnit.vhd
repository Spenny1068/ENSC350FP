library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity ArithUnit is
Generic ( N : natural := 64);
Port( A, B : in std_logic_vector(N-1 downto 0);
	Y : out std_logic_vector(N-1 downto 0);
--Control signals
	NotA, AddnSub, ExtWord : in std_logic := '0';
--Status signals
	Cout, Ovfl, Zero, AltB, AltBu : out std_logic);
End Entity ArithUnit;

Architecture rtl of ArithUnit is
	signal ia, ib, S, se : std_logic_vector(N-1 downto 0);
	signal c64, overflow : std_logic;
Begin

--Add'Sub
	ib <= B when AddnSub = '0' else NOT(B);
--NotA
	ia <= A when NotA = '0' else NOT(A);

--Adder
add:	entity work.adder port map (ia, ib, S, AddnSub, c64, overflow);

--Cout and OverFlow
	Cout <= c64;
	Ovfl <= overflow;

--Zero
	Zero <= '1' when S = x"0000000000000000"
	else '0';
--SgnExt
	se <= std_logic_vector(resize(signed(S(31 downto 0)), se'length));

--ExtWord
	Y <= S when ExtWord = '0' else se;

--AltBu and AltB
	AltBu <= S(N-1) XOR overflow;
	AltB <= NOT(c64);

End Architecture rtl;