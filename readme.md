# Project 4: Bézier Curves, Part I

Create a scene featuring four moveable control points and an object that moves along the Bézier curve determined by those four points.

1. Pressing "o" should cycle between the four control points, which should be translatable with the mouse (right button drag: translate in x/y direction. Middle button drag: translate in z direction).  The control points don't need to be rotatable.  The selected control point should appear a different color.
2. A sphere should move along the Bézier curve determined by the four control points.  You may want to extrapolate a little: run the parameter from -0.5 to 1.5 so the sphere goes beyond the first and last control points.
3. There should be other objects in your scene to make it reasonably complex. Be creative. Use Phong lighting.
4. Later we will add more curves and features, so make your code reusable, using arrays, classes, and/or structs appropriately.
