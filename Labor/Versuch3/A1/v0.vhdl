  -- bei vhdl ist alles von -- bis zeilenende Kommentar

  -- vorbereitete Signale sind p_in(1) bis p_in(16) und p_out(1) bis p_out(16),
  -- passend zur Beschriftung auf der Platine des Praktikums

  -- signal zustand: std_logic; -- so deklariert man ein eigenes signal
  -- signal my_signal_array: std_logic_vector (5 downto 3); -- oder gleich mehrere

  -- vorbereitetes Signal "clock":
  -- auch dann drin lassen, wenn man keinen clock braucht!
  constant speed : integer := 23; -- geschwindigkeit von "clock" hier waehlen
  -- (maximum:) 25 ==> 0.75 Hz, 24 ==> 1.5 Hz, 23 ==> 3 Hz, ..., 1 ==> 25 MHz
  -- Sinnvoll: 25 == 0.75 Hz == langsam zum mitschauen
  --           23 == 3 Hz == alles blinkt flott
  --           15 == 768 Hz == nicht schneller als das im Praktikum !

  -- die folgende Zeile, obwohl es kommentar ist, unbedingt drin lassen:
-- end declarations

	p_out(1) <= p_in(4) or (p_in(2) and not p_in(3)) or not ((p_in(2) xor p_in(3)) xor p_in(1));
