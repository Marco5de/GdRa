  -- bei vhdl ist alles von -- bis zeilenende Kommentar

  -- vorbereitete Signale sind p_in(1) bis p_in(16) und p_out(1) bis p_out(16),
  -- passend zur Beschriftung auf der Platine des Praktikums

  signal m1: std_logic;
  signal m2: std_logic;
  signal m3: std_logic;
  signal r: std_logic;  

  signal pressed: std_logic;
  signal counter: std_logic_vector(2 downto 0);
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
  m3 <= p_in(1);
  m1 <= p_in(2);
  m2 <= p_in(3);
  r <= p_in(4);
  pressed <= m1 or m2 or m3;
  p_out(1) <= pressed;


  process (clock)                        -- immer so lassen
  begin                                  -- immer so lassen
    if rising_edge(clock) then           -- immer so lassen
	  p_out(2) <= '0';
      if r='1' then	-- hier code schreiben
	    counter<="000";
	  elsif m1='1' then
		counter <= counter + 2;
	  elsif m2='1' then
 		counter <= counter + 4;
	  elsif m3='1' then
		counter <= counter + 1;
	  end if;  
	  
 	  if counter(2)='1' then
	  	p_out(2) <= '1';
	  end if;
      -- zustand <= not zustand; -- alternative zum if-konstrukt darueber
    end if;                              -- immer so lassen
  end process;                           -- immer so lassen

