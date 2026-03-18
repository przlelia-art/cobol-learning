       IDENTIFICATION DIVISION.
       PROGRAM-ID. Countdown.
       AUTHOR. Lélia.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  WS-COMPTEUR PIC S9(2).

       PROCEDURE DIVISION.

       PERFORM VARYING WS-COMPTEUR FROM 10 BY -1 UNTIL WS-COMPTEUR < 0
           DISPLAY WS-COMPTEUR
       END-PERFORM.
           
           DISPLAY "Décollage !".
           STOP RUN.
