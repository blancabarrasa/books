//find a book by title

MATCH (b:Book)
where b.title = "Pride and Prejudice"
return b

//top 10 similar books based on shared genres

MATCH (b:Book)-[:has_genre]->(g:Genre)<-[:has_genre]-(s:Book)
where b.title = "Pride and Prejudice"
return s.title, count(g) as ovrlp,collect(g.name) order by ovrlp desc limit 10

