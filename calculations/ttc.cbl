       IDENTIFICATION DIVISION.
       PROGRAM-ID. Ttc.
       AUTHOR. Lélia.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  WS-PRIX PIC 9(3) VALUE 200.
       01  WS-TVA PIC 9(2) VALUE 20.
       01  WS-TTC PIC 9(4)V99.

       PROCEDURE DIVISION.
      
           COMPUTE WS-TTC = WS-PRIX + (WS-PRIX * WS-TVA / 100).
           DISPLAY "Prix TTC : " WS-TTC.

           STOP RUN.
