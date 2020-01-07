  -- bei vhdl ist alles von -- bis zeilenende Kommentar

  -- vorbereitete Signale sind p_in(1) bis p_in(16) und p_out(1) bis p_out(16),
  -- passend zur Beschriftung auf der Platine des Praktikums

 	 signal z4: std_logic; -- so deklariert man ein eigenes signal
 	 signal z3: std_logic; -- so deklariert man ein eigenes signal
 	 signal z2: std_logic; -- so deklariert man ein eigenes signal
 	 signal z1: std_logic; -- so deklariert man ein eigenes signal

	signal r: std_logic;
	signal n1: std_logic;
	signal n2:std_logic;
	signal c: std_logic;
  -- vorbereitetes Signal "clock":
  -- auch dann drin lassen, wenn man keinen clock braucht!
  constant speed : integer := 23; -- geschwindigkeit von "clock" hier waehlen
  -- (maximum:) 25 ==> 0.75 Hz, 24 ==> 1.5 Hz, 23 ==> 3 Hz, ..., 1 ==> 25 MHz
  -- Sinnvoll: 25 == 0.75 Hz == langsam zum mitschauen
  --           23 == 3 Hz == alles blinkt flott
  --           15 == 768 Hz == nicht schneller als das im Praktikum !

  -- die folgende Zeile, obwohl es kommentar ist, unbedingt drin lassen:
-- end declarations
	r <= p_in(4);
	c <= p_in(3);
	n2 <= p_in(2);
	n1 <= p_in(1);

	p_out(1) <= z4;
	p_out(2) <= z3;
	p_out(3) <= z2;	
	p_out(4) <= r or n1 or n2 or c;
	
	z1 <= '0';	

	z2 <= ( (not z1 and z2 and z3 and z4 and r)
		or (not z1 and z2 and z3 and z4 and n1 and not r)
		or (not z1 and z2 and z3 and z4 and n2 and not r and not n1)
		or (not z1 and z2 and z3 and z4 and c and not r and not n1 and not n2)
		or (not z1 and z2 and z3 and not z4 and r) 
		or (not z1 and z2 and z3 and not z4 and n1 and not r) 
		or (not z1 and z2 and z3 and not z4 and n2 and not r and not n1) 
		or (not z1 and z2 and z3 and not z4 and c and not r and not n1 and not n2) 
		or (not z1 and z2 and not z3 and z4 and r)
		or (not z1 and z2 and not z3 and z4 and n1 and not r)
		or (not z1 and z2 and not z3 and not z4 and r)
		or (not z1 and not z2 and z3 and z4 and r)
		or (not z1 and not z2 and z3 and not z4 and r)
		or (not z1 and not z2 and not z3 and z4 and r)
		or (not z1 and not z2 and not z3 and not z4 and r)
		or (z1 and not z2 and not z3 and not z4)
		or (not z1 and z2 and z3 and z4 and not r and not n1 and not n2 and not c)
		or (not z1 and z2 and z3 and not z4 and not r and not n1 and not n2 and not c)
		or (not z1 and z2 and not z3 and z4 and not r and not n1 and not n2 and not c)
		or (not z1 and z2 and not z3 and not z4 and not r and not n1 and not n2 and not c)
	);


	z3 <= ( (not z1 and z2 and z3 and z4 and r)
		or (not z1 and z2 and z3 and z4 and n1 and not r)	
		or (not z1 and z2 and z3 and not z4 and r)
		or (not z1 and z2 and not z3 and z4 and r)
		or (not z1 and z2 and not z3 and z4 and n2 and not r and not n1)
		or (not z1 and z2 and not z3 and z4 and c and not r and not n1 and not n2)
		or (not z1 and z2 and not z3 and not z4 and r)
		or (not z1 and z2 and not z3 and not z4 and c and not r and not n1 and not n2)
		or (not z1 and z2 and not z3 and not z4 and n2 and not r and not n1)
		or (not z1 and z2 and not z3 and not z4 and n1 and not r)
		or (not z1 and not z2 and z3 and z4 and r)
		or (not z1 and not z2 and z3 and z4 and n1 and not r)
		or (not z1 and not z2 and z3 and z4 and c and not r and not n1 and not n2)
		or (not z1 and not z2 and z3 and not z4 and r)
		or (not z1 and not z2 and not z3 and z4 and r)
		or (not z1 and not z2 and not z3 and not z4 and r)
		or (z1 and not z2 and not z3 and not z4)
		or (not z1 and z2 and z3 and z4 and not r and not n1 and not n2 and not c)
		or (not z1 and z2 and z3 and not z4 and not r and not n1 and not n2 and not c)
		or (not z1 and not z2 and z3 and z4 and not r and not n1 and not n2 and not c)
		or (not z1 and not z2 and z3 and not z4 and not r and not n1 and not n2 and not c)
	);

	z4 <= ( (not z1 and z2 and z3 and z4 and r)
		or (not z1 and z2 and z3 and z4 and c and not r and not n1 and not n2)
		or (not z1 and z2 and z3 and not z4 and r)
		or (not z1 and z2 and z3 and not z4 and n1 and not r)
		or (not z1 and z2 and z3 and not z4 and c and not r and not n1 and not n2)
		or (not z1 and z2 and not z3 and z4 and r)
		or (not z1 and z2 and not z3 and z4 and n2 and not r and not n1)
		or (not z1 and z2 and not z3 and z4 and c and not r and not n1 and not n2)
		or (not z1 and z2 and not z3 and not z4 and r)
		or (not z1 and z2 and not z3 and not z4 and n1 and not r)
		or (not z1 and z2 and not z3 and not z4 and c and not r and not n1 and not n2)
		or (not z1 and not z2 and z3 and z4 and r)
		or (not z1 and not z2 and z3 and z4 and n2 and not r and not n1)
		or (not z1 and not z2 and z3 and not z4 and r)
		or (not z1 and not z2 and z3 and not z4 and n1 and not r)
		or (not z1 and not z2 and not z3 and z4 and r)
		or (not z1 and not z2 and not z3 and z4 and n2 and not r and not n1)
		or (not z1 and not z2 and not z3 and not z4 and r)
		or (z1 and not z2 and not z3 and not z4)
		or (not z1 and z2 and z3 and z4 and not r and not n1 and not n2 and not c)
		or (not z1 and z2 and not z3 and z4 and not r and not n1 and not n2 and not c)
		or (not z1 and not z2 and z3 and z4 and not r and not n1 and not n2 and not c)
		or (not z1 and not z2 and not z3 and z4 and not r and not n1 and not n2 and not c)	
	);
