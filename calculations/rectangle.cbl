       IDENTIFICATION DIVISION.
       PROGRAM-ID. Rectangle.
       AUTHOR. Lélia.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  WS-LONGUEUR PIC 9(2) VALUE 15.
       01  WS-LARGEUR PIC 9(1) VALUE 8. 
       01  WS-PERIMETRE PIC 9(2).
       01  WS-AIRE PIC 9(3).  

       PROCEDURE DIVISION.
           COMPUTE WS-PERIMETRE = (WS-LONGUEUR + WS-LARGEUR) * 2.
           DISPLAY "Perimetre : " WS-PERIMETRE.

           COMPUTE WS-AIRE = WS-LONGUEUR * WS-LARGEUR.
           DISPLAY "Aire : " WS-AIRE

           STOP RUN.