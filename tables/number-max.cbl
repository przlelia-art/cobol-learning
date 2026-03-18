       IDENTIFICATION DIVISION.
       PROGRAM-ID. Numbers.
       AUTHOR. Lélia.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  WS-NUMBERS.
           05 WS-NUMBER PIC 9(2) OCCURS 5 TIMES.
       01  WS-COMPTEUR PIC 9(1).
       01  WS-MAX PIC 9(2).

       PROCEDURE DIVISION.
           MOVE 42 TO WS-NUMBER(1)
           MOVE 17 TO WS-NUMBER(2)
           MOVE 85 TO WS-NUMBER(3)
           MOVE 33 TO WS-NUMBER(4)
           MOVE 61 TO WS-NUMBER(5)

       PERFORM VARYING WS-COMPTEUR FROM 1 BY 1 UNTIL WS-COMPTEUR > 5
           IF WS-NUMBER(WS-COMPTEUR) > WS-MAX
               MOVE WS-NUMBER(WS-COMPTEUR) TO WS-MAX
           END-IF 
       END-PERFORM.

           DISPLAY "Le plus grand nombre est : " WS-MAX.

           STOP RUN.
