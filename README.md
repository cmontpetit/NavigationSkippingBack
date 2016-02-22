

# NavigationSkippingBack

This project shows one way to create navigation controllers that allow to skip views when going back to the root view controller. It loads views as follow:

```
Root → Creator → Viewer
  ↖________________↙
```

It also extends this to allow re-using the Creator controller as an editor:

```
Root → Creator' → Viewer → Creator''
  ↖_________________↙↖_______↙
```

It uses Storyboards to establish the controllers, and defines 2 controller classes with minimal code.

Project is iOS 9 and swift.

