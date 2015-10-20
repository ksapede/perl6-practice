use v6;




class Animal {
	has $.species is rw;
	
	method speak() {
		say "The $.species makes a noise";
	}

}

class Pet is Animal {
	has $.name is rw;

	method speak() {
		say "$.name the $.species makes a cute noise";
	}

}

class Dog is Pet {
	has $.breed is rw;

	method speak() {
		say "$.name the $.breed $.species barks";
	}
}


my $wild_animal = Animal.new(species => "Tiger");
$wild_animal.speak();

my $domestic_animal = Pet.new(species => "Rat", name => "Pip");
$domestic_animal.speak();

my $puppy = Dog.new(species => "Dog", breed => "German Sheppard", name => "Spot");
$puppy.speak();