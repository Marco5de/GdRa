  -- bei vhdl ist alles von -- bis zeilenende Kommentar

  -- vorbereitete Signale sind p_in(1) bis p_in(16) und p_out(1) bis p_out(16),
  -- passend zur Beschriftung auf der Platine des Praktikums

  signal zustand: std_logic; -- so deklariert man ein eigenes signal
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

  p_out(3) <= p_in(3);     -- pin out3 folgt pin in3
  p_out(5) <= not p_in(6); -- pin out5 ist invertiert der eingangswert von in6
  p_out(6) <= not p_in(3) or p_in(6); -- out6 := /in3 or in6

  -- ein Beispiel, wie ein process aussehen kann:
  --   das Beispiel schaltet bei jedem "clock" den Ausgang p_out(7) um
  process (clock)                        -- immer so lassen
  begin                                  -- immer so lassen
    if rising_edge(clock) then           -- immer so lassen
      zustand<='0';
      if zustand='0' then	-- hier code schreiben
	zustand<='1';
      end if;
      -- zustand <= not zustand; -- alternative zum if-konstrukt darueber
    end if;                              -- immer so lassen
  end process;                           -- immer so lassen

  p_out(7) <= zustand;                   -- hier Ausgaben zuweisen
