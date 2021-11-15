CREATE TRIGGER actor_trigger_au AFTER UPDATE ON actor
 BEGIN
  UPDATE actor SET last_update2 = DATETIME('NOW')  WHERE rowid = new.rowid;
 END;

