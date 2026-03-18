       IDENTIFICATION DIVISION.
       PROGRAM-ID. Moyenne.
       AUTHOR. Lélia.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  WS-NOTES.
           05 WS-NOTE PIC 9(2) OCCURS 5 TIMES.
       01  WS-COMPTEUR PIC 9(1).
       01  WS-SOMME PIC 9(3).
       01  WS-MOYENNE PIC 9(4)V99.

       PROCEDURE DIVISION.
           MOVE 12 TO WS-NOTE(1)
           MOVE 15 TO WS-NOTE(2)
           MOVE 9 TO WS-NOTE(3)
           MOVE 17 TO WS-NOTE(4)
           MOVE 11 TO WS-NOTE(5)

       PERFORM VARYING WS-COMPTEUR FROM 1 BY 1 UNTIL WS-COMPTEUR > 5
           ADD WS-NOTE(WS-COMPTEUR) TO WS-SOMME
       END-PERFORM.

           COMPUTE WS-MOYENNE = WS-SOMME /5.

           DISPLAY "Somme : " WS-SOMME.
           DISPLAY "Moyenne : " WS-MOYENNE.

           STOP RUN.
