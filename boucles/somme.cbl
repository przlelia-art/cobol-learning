       IDENTIFICATION DIVISION.
       PROGRAM-ID. Somme.
       AUTHOR. Lélia.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  WS-COMPTEUR PIC 9(2).
       01  WS-SOMME PIC 9(4) VALUE 0.

       PROCEDURE DIVISION.

       PERFORM VARYING WS-COMPTEUR FROM 1 BY 1 UNTIL WS-COMPTEUR > 20
           IF FUNCTION MOD(WS-COMPTEUR, 2)  = 0
               ADD WS-COMPTEUR TO WS-SOMME
           END-IF
       END-PERFORM.

           DISPLAY "Somme des nombres pairs : " WS-SOMME.

           STOP RUN.

