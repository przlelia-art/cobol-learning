       IDENTIFICATION DIVISION.
       PROGRAM-ID. Ville.
       AUTHOR. Lélia.

       DATA DIVISION.
       WORKING-STORAGE SECTION. 

       01  WS-VILLE PIC X(20).

       PROCEDURE DIVISION.
           
           DISPLAY 'Quelle est le  nom de la ville ? '.

           ACCEPT WS-VILLE.

           DISPLAY 'La ville choisie est : '  FUNCTION TRIM(WS-VILLE).

           STOP RUN.
