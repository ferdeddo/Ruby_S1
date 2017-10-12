def jean_michel_data(corpus, dictionnaire)
	dictionnaire_matches = Hash.new(0)
	corpus_list = corpus.split(" ")
  	for i in 0...dictionnaire
  		for j in 0...corpus_list
		  	if (corpus_list[j] == dictionnaire[i])
		  		dictionnaire_matches[dictionnaire[i]] += 1
		  	end
	  	end
  	end
  	puts dictionnaire_matches

end




dictionnaire = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

jean_michel_data("howdy partner, sit down ! how 's it going ?", dictionnaire)
