       IDENTIFICATION DIVISION.
       PROGRAM-ID. CopierFichier.
       AUTHOR. Lélia.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

           SELECT FICHIER-ENTREE ASSIGN TO "eleves.txt"
           ORGANIZATION IS LINE SEQUENTIAL.
           SELECT FICHIER-SORTIE ASSIGN TO "eleves-copie.txt"
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.

       FD FICHIER-ENTREE.
       01  WS-LIGNE-ENTREE PIC X(50).
       FD FICHIER-SORTIE.
       01  WS-LIGNE-SORTIE PIC X(50).

       WORKING-STORAGE SECTION.
       01  WS-FIN PIC X.

       PROCEDURE DIVISION.

           OPEN INPUT FICHIER-ENTREE
           OPEN OUTPUT FICHIER-SORTIE
           MOVE "N" TO WS-FIN

           PERFORM UNTIL WS-FIN = "Y"
               READ FICHIER-ENTREE INTO WS-LIGNE-ENTREE
                   AT END MOVE "Y" TO WS-FIN
               END-READ 
               IF WS-FIN = "N"
                   MOVE WS-LIGNE-ENTREE TO WS-LIGNE-SORTIE
                   WRITE WS-LIGNE-SORTIE
               END-IF 
           END-PERFORM.

           CLOSE FICHIER-ENTREE
           CLOSE FICHIER-SORTIE

           DISPLAY "Fichier copié avec succés !"
           STOP RUN.
           