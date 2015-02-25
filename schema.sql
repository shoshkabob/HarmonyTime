CREATE TABLE notes (
	ID INTEGER PRIMARY KEY, 
	note TEXT, 
	frequency FLOAT, 
	wavelengthcm FLOAT, 
	wavelengthin FLOAT
	);

CREATE TRIGGER addin AFTER INSERT ON notes BEGIN
	UPDATE notes SET wavelengthin = (wavelengthcm / 2.54) WHERE id = new.id;
	UPDATE notes SET wavelengthin = round(wavelengthin, 2);
END;