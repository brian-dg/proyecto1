/* Procedimiento Utilizado en Output-header para recuperar datos de la
   cookie, si no leo la cookie seteo VALIDO = FALSE */

   /* */
   
    C-Cookie = GET-COOKIE("perez").
    if C-Cookie <> "" THEN DO:
        SET-USER-FIELD("Usuario", ENTRY(1,C-Cookie)).
        SET-USER-FIELD("Password", ENTRY(2,C-Cookie)).
        SET-USER-FIELD("NombreUsuario", ENTRY(3,C-Cookie)).
        FIND S-USUARIOS WHERE S-USUARIOS.ID-Usuario          = TRIM(ENTRY(1,C-Cookie)) 
                          AND encode(S-USUARIOS.Password) = TRIM(ENTRY(2,C-Cookie)) NO-LOCK NO-ERROR.
        IF AVAILABLE S-USUARIOS THEN DO:
            SET-USER-FIELD("Valido", "TRUE").
            ASSIGN session:NUMERIC-FORMAT = "european".
        END.
        ELSE SET-USER-FIELD("Valido", "FALSE").
    END.
    ELSE SET-USER-FIELD("Valido", "FALSE").










