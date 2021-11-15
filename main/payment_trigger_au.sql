CREATE TRIGGER payment_trigger_au AFTER UPDATE ON payment
 BEGIN
  UPDATE payment SET last_update = DATETIME('NOW')  WHERE rowid = new.rowid;
 END;

