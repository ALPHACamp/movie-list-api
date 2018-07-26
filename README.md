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
    "image": "c9XxwwhPHdaImA2f1WEfEsbhaFB.jpg"
  }
}
```
## Poster path
```
http://localhost:3000/posters/
```