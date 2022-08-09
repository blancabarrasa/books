//this sperates genres and then creates genre nodes//

MATCH (b:Book) 
unwind [x in split(b.genres,';')| substring(x, 8)] as genre 
merge (g:Genre {name:genre})
merge (b)-[:has_genre]->(g)
