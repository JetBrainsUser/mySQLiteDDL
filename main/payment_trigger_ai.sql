CREATE TRIGGER payment_trigger_ai AFTER INSERT ON payment
 BEGIN
  UPDATE payment SET last_update = DATETIME('NOW')  WHERE rowid = new.rowid;
 END;

