       IDENTIFICATION DIVISION.
       PROGRAM-ID. Moyenne.
       AUTHOR. Lélia.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  WS-NOTE1 PIC 9(2) VALUE 14.
       01  WS-NOTE2 PIC 9(2) VALUE 17.
       01  WS-NOTE3 PIC 9(1) VALUE 9.
       01 WS-MOYENNE PIC 9(2)V99.

       PROCEDURE DIVISION.
           COMPUTE WS-MOYENNE = (WS-NOTE1 + WS-NOTE2 + WS-NOTE3) /3.
           DISPLAY "Moyenne : " WS-MOYENNE.

           IF WS-MOYENNE >= 10
               DISPLAY "Admis"
           ELSE
               DISPLAY "Refusé"
           END-IF.

           STOP RUN.


