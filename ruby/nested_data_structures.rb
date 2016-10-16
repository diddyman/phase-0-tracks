#Code showing how to use nested data strcutures
#Below is a nested data structure of an array within a hash

Record_label = {
	"Rocafella" => ["Jay Z", "Beanie Siegel"],
	"Cash Money" => [ "Lil Wayne", "Birdman"],
	"Bad Boys" => ["Mase", "Biggie"],
	"So So Def" => ["Jd", "Dabrat"],
	"Ruff Ryders" => ["DMX", "Lox"]
      }

p Record_label["Ruff Ryders"][1]
p Record_label["Cash Money"].push("Drake")