       IDENTIFICATION DIVISION.
       PROGRAM-ID. Name.
       AUTHOR. Lélia.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  WS-NAMES.
           05 WS-NAME PIC X(20) OCCURS 5 TIMES.
       01  WS-COMPTEUR PIC 9(1).

       PROCEDURE DIVISION.
           MOVE "Alexandre" TO WS-NAME(1)
           MOVE "Luka" TO WS-NAME(2)
           MOVE "Léa" TO WS-NAME(3)
           MOVE "Thomas" TO WS-NAME(4)
           MOVE "Maxime" TO WS-NAME(5)

       PERFORM VARYING WS-COMPTEUR FROM 1 BY 1 UNTIL WS-COMPTEUR > 5
           DISPLAY "Prénom : " WS-COMPTEUR " : " WS-NAME(WS-COMPTEUR)
       END-PERFORM.

       STOP RUN.
