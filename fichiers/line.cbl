       IDENTIFICATION DIVISION.
       PROGRAM-ID. CompterLignes.
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
       01  WS-FIN PIC X.
       01  WS-COMPTEUR PIC 9(3).

       PROCEDURE DIVISION.
           OPEN INPUT MON-FICHIER
           MOVE "N" TO WS-FIN

           PERFORM UNTIL WS-FIN = "Y"
               READ MON-FICHIER INTO WS-LIGNE
                   AT END MOVE "Y" TO WS-FIN
               END-READ 
               IF WS-FIN = "N"
                   ADD 1 TO WS-COMPTEUR
               END-IF 
           END-PERFORM.

           CLOSE MON-FICHIER

           DISPLAY "Nombre d'élèves : " WS-COMPTEUR.

           STOP RUN.
              
           