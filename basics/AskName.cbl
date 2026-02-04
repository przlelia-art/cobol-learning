       IDENTIFICATION DIVISION.
       PROGRAM-ID. AskName.
       AUTHOR. Lélia.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-NOM PIC X(12).


       PROCEDURE DIVISION.

           DISPLAY 'Bienvenue cher COBOListe'.
           DISPLAY 'Quel est ton nom ? '.

           ACCEPT WS-NOM.

           DISPLAY 'Et bien salut à toi '  FUNCTION TRIM(WS-NOM).

           STOP RUN.
