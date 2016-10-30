var listColor = ["red", "pink", "purple", "orange", "blue", "white"];

var listName = ["Ted", "Sam", "Sarah", "Megan", "Tom", "Amy"];

var horTap = { };

//listColor.push("green");
//listName.push("ray")
//console.log(listColor);
//console.log(listName);

function horse() {
  for(i=0; i < listName.length; i++){
  	horTap[listName[i]] = listColor[i];
  }
   return horTap;
}
       
console.log(horse());

function Car(brand, type, model, year) {
	this.brand = brand;
	this.type = type;
	this.model = model;
	this.year = year;
	
	this.speed = function(spd) {
		console.log("This car goes up to" + ' ' + spd + ' ' + "miles per hour!"); }
}

car = new Car("benz", "sedan", "luxury", "2017");
console.log(car);
car.speed(200);