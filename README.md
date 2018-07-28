# README

## API 網址

```
http://localhost:3000/api/v1/{router}
```

## API List
- [Movie Index](https://github.com/spreered/movie_list_api#movie-index)
- [Show Movie](https://github.com/ALPHACamp/movie_list_api#show-movie)



## Movie Index

#### Method & URL
```
GET /movies
```

#### Parameter
None

#### Success Response
``` json
{
  "results": [
    {
      "id": 1,
      "title": "Jurassic World: Fallen Kingdom",
      "genres": [
          1,
          2,
          15
      ],
      "description": "Several years after the demise of Jurassic World, a volcanic eruption threatens the remaining dinosaurs on the island of Isla Nublar. Claire Dearing, the former park manager and founder of the Dinosaur Protection Group, recruits Owen Grady to help prevent the extinction of the dinosaurs once again.",
      "release_date": "2018-06-06",
      "image": "c9XxwwhPHdaImA2f1WEfEsbhaFB.jpg"
  },
  {
      "id": 2,
      "title": "Ant-Man and the Wasp",
      "genres": [
          1,
          2,
          9,
          4,
          15
      ],
      "description": "As Scott Lang awaits expiration of his term of house detention, Hope van Dyne and Dr. Hank Pym involve him in a scheme to rescue Mrs. van Dyne from the micro-universe into which she has fallen, while two groups of schemers converge on them with intentions of stealing Dr. Pym's inventions.",
      "release_date": "2018-07-04",
      "image": "rv1AWImgx386ULjcf62VYaW8zSt.jpg"
    },
  ]
}
```

## Show Movie

#### Method & URL
```
GET /movies/:id
```

#### Parameter
##### Path parameter
`id`
#### Response

##### Success

``` json
{
  "results": {
    "id": 1,
    "title": "Jurassic World: Fallen Kingdom",
    "genres": [
      1,
      2,
      15
    ],
    "description": "Several years after the demise of Jurassic World, a volcanic eruption threatens the remaining dinosaurs on the island of Isla Nublar. Claire Dearing, the former park manager and founder of the Dinosaur Protection Group, recruits Owen Grady to help prevent the extinction of the dinosaurs once again.",
    "release_date": "2018-06-06",
    "image": "c9XxwwhPHdaImA2f1WEfEsbhaFB.jpg",
    "director": "Juan Antonio Bayona",
    "cast": [
      {
        "character": "Owen Grady",
        "name": "Chris Pratt"
      },
      {
        "character": "Claire Dearing",
        "name": "Bryce Dallas Howard"
      },
      {
        "character": "Maisie Lockwood",
        "name": "Isabella Sermon"
      },
      {
        "character": "Eli Mills",
        "name": "Rafe Spall"
      },
      {
        "character": "Sir Benjamin Lockwood",
        "name": "James Cromwell"
      },
      {
        "character": "Franklin Webb",
        "name": "Justice Smith"
      }
    ]
  }
}
```
## Poster path
```
http://localhost:3000/posters/
```

## Genres
You can map the name of genres by following list
```
{
  "1": "Action",
  "2": "Adventure",
  "3": "Animation",
  "4": "Comedy",
  "5": "Crime",
  "6": "Documentary",
  "7": "Drama",
  "8": "Family",
  "9": "Fantasy",
  "10": "History",
  "11": "Horror",
  "12": "Music",
  "13": "Mystery",
  "14": "Romance",
  "15": "Science Fiction",
  "16": "TV Movie",
  "17": "Thriller",
  "18": "War",
  "19": "Western"
}
```
