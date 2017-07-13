import os

prefix = input("Enter desired name of cadence for scheme: ")

for filename in os.listdir("."):
	if filename == "bassdrum.ly":
		os.rename(filename, prefix + " - Bass drum.ly") 
	elif filename == "cymbals.ly":
		os.rename(filename, prefix + " - Cymbals.ly") 
	elif filename == "score.ly":
		os.rename(filename, prefix + " - Score.ly") 
	elif filename == "snare.ly":
                os.rename(filename, prefix + " - Snare.ly") 
	elif filename == "tenors.ly":
		os.rename(filename, prefix + " - Tenors.ly") 
