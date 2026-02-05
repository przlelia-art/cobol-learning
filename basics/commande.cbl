       IDENTIFICATION DIVISION.
       PROGRAM-ID. Commande.
       AUTHOR. Lélia.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  WS-COMMANDE.
           05 WS-NUM-CMD PIC 9(8).
           05 WS-CODE-PROD PIC X(4).

       PROCEDURE DIVISION.
           DISPLAY "strcuture de la commande créée avec succès".
           STOP RUN.
