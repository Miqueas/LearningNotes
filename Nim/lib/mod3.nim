type
  Person* = object
    name: string
    age: int16

  Point* = object of RootObj
    # Note that fields also needs to be accesible if
    # u don't have a constructor for this object
    x*, y*: float

  Rect* = object of Point
    w*, h*: int