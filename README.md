# point_operations_elanmirtan.aleo

## Coding

```bash
program point_operations_elanmirtan.aleo;

struct Point:
    x as field;
    y as field;


function main:
    input r0 as Point.private;
    add r0.x 5field into r1;
    add r0.y 5field into r2;
    cast r1 r2 into r3 as Point;
    cast r3.y r3.x into r4 as Point;
    output r3.x as field.private;
    output r4.y as field.private;

```

## RUN
```bash
leo run main "{ x: 2field, y: 3field }"
```
