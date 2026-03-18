       IDENTIFICATION DIVISION.
       PROGRAM-ID. EcrireFichier.
       AUTHOR. Lélia.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

           SELECT MON-FICHIER ASSIGN TO "eleves.txt"
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD MON-FICHIER.
       01  WS-LIGNE PIC X(50).

       WORKING-STORAGE SECTION.
       01  WS-NOM PIC X(20).

       PROCEDURE DIVISION.

           OPEN OUTPUT MON-FICHIER
           MOVE "Alexandre" TO WS-LIGNE 
           WRITE WS-LIGNE
           MOVE "Léa" TO WS-LIGNE
           WRITE WS-LIGNE
           MOVE "David" TO WS-LIGNE
           WRITE WS-LIGNE
           CLOSE MON-FICHIER 
           DISPLAY "Fichier créé avec succès !"

           STOP RUN.
