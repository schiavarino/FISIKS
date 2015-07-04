CREATE OR REPLACE PROCEDURE FISIKS.PRC_TURNERO_INSERT (
    iTURTITULO              IN TURNERO.TURTITULO%TYPE := NULL,
    iTURDESCRIPCION     IN TURNERO.TURDESCRIPCION%TYPE := NULL,
    iTURFECHAINI            IN TURNERO.TURFECHAINI%TYPE := NULL,
    iTURFECHAFIN           IN TURNERO.TURFECHAFIN%TYPE := NULL,
    iTURTODODIA           IN TURNERO.TURTODODIA%TYPE := NULL,
    iTUR_PAEID              IN TURNERO.TUR_PAEID%TYPE := NULL,
    iTUR_PROID              IN TURNERO.TUR_PROID%TYPE := NULL,
    oTURID                     OUT NUMBER)
AS
BEGIN
           
        INSERT INTO TURNERO
            (TURTITULO,
            TURDESCRIPCION,
            TURFECHAINI,
            TURFECHAFIN,
            TURTODODIA,
            TUR_PAEID,
            TUR_PROID)
        VALUES
            (iTURTITULO,
            iTURDESCRIPCION,
            iTURFECHAINI,
            iTURFECHAFIN,
            iTURTODODIA,
            iTUR_PAEID,
            iTUR_PROID)            
            RETURNING TURID INTO oTURID;

END;
/