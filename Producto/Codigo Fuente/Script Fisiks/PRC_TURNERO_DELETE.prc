CREATE OR REPLACE PROCEDURE FISIKS.PRC_TURNERO_DELETE (
    iTURID IN TURNERO.TURID%TYPE )--No puede ser NULL
AS
BEGIN
           
        DELETE  FROM TURNERO WHERE TURID =  iTURID;
        
END;
/