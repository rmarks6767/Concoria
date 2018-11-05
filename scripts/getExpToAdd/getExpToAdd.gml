var playerGetXp = argument0
var Exp = playerGetXp.Exp

var Xp = (log10(playerGetXp.Lvl/self.level) * 50) + 10;
print(Xp, "This is the added XP")

if Xp <= 0{
	
	Xp = 15 - (playerGetXp.Lvl - self.level) 	
}

if Xp + playerGetXp.Exp > 100 {

	playerGetXp.Lvl++;
	playerGetXp.Exp = ((Xp + playerGetXp) % 100)
}
else{
	
	playerGetXp.Exp += Xp;
	
}
