CREATE TRIGGER actor_trigger_ai AFTER INSERT ON actor
 BEGIN
  UPDATE actor SET last_update2 = DATETIME('NOW')  WHERE rowid = new.rowid;
 END;

