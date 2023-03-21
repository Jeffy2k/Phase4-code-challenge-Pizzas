# Phase4-code-challenge-Pizzas

## Getting started
To clone the the repository on your own machine run:

        git clone git@github.com:Jeffy2k/Phase4-code-challenge-Pizzas.git

## setting up 
- Download the required dependencies by running:

        bundle install
- Set up the tables by running the following commands:

        rails db:migrate db:seed

- To start the server run

        rails s

## Endpoints

LIVE LINK <https://phase4-code-challenge-pizzas.onrender.com/>

**GET   /restaurants**

Returns an array of all restaurants in the format below

```
[
  {
    "id": 1,
    "name": "Sottocasa NYC",
    "address": "298 Atlantic Ave, Brooklyn, NY 11201"
  },
  {
    "id": 2,
    "name": "PizzArte",
    "address": "69 W 55th St, New York, NY 10019"
  }
]

 ```   

**GET /restaurants/:id**
Returns a single restaurant in the format below:

```
{
  "id": 1,
  "name": "Sottocasa NYC",
  "address": "298 Atlantic Ave, Brooklyn, NY 11201",
  "pizzas": [
    {
      "id": 1,
      "name": "Cheese",
      "ingredients": "Dough, Tomato Sauce, Cheese"
    },
    {
      "id": 2,
      "name": "Pepperoni",
      "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
    }
  ]
}
```
If the `Restaurant` does not exist, it returns the following JSON data, along with
the appropriate HTTP status code:

```
{
  "error": "Restaurant not found"
}
```

**GET /pizzas**

Returns an array of all pizzas in the format below

```
[
  {
    "id": 1,
    "name": "Cheese",
    "ingredients": "Dough, Tomato Sauce, Cheese"
  },
  {
    "id": 2,
    "name": "Pepperoni",
    "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
  }
]
```

**POST /restaurant_pizzas**

This route creates a new `RestaurantPizza` that is associated with an
existing `Pizza` and `Restaurant`. It accepts an object with the following
properties in the body of the request:

```
{
  "price": 5,
  "pizza_id": 1,
  "restaurant_id": 3
}
```

If the `RestaurantPizza` is created successfully,it sends back a response with the data
related to the `Pizza`:

```
{
  "id": 1,
  "name": "Cheese",
  "ingredients": "Dough, Tomato Sauce, Cheese"
}
```
If the `RestaurantPizza` is **not** created successfully, it returnd the following
JSON data, along with the appropriate HTTP status code:

```
{
  "errors": ["validation errors"]
}

```
