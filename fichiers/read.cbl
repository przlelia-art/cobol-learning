       IDENTIFICATION DIVISION.
       PROGRAM-ID. LireFichier.
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
       01  WS-FIN PIC X.

       PROCEDURE DIVISION.

           OPEN INPUT MON-FICHIER
           MOVE "N" TO WS-FIN

           PERFORM UNTIL WS-FIN = "Y"
               READ MON-FICHIER INTO WS-LIGNE
                   AT END MOVE "Y" TO WS-FIN
               END-READ
               IF WS-FIN = "N"
                   DISPLAY WS-LIGNE
               END-IF
           END-PERFORM.

           CLOSE MON-FICHIER

           STOP RUN.

