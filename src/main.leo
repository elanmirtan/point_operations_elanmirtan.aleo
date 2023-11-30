// Program to perform operations on a point in 2D space

program point_operations_elanmirtan.aleo {
    // The "Point" struct representing a point in 2D space.
    struct Point {
        // X-coordinate of the point.
        x: field,
        // Y-coordinate of the point.
        y: field,
    }

    // The "main" function to perform operations on a 2D point.
    transition main(p: Point) -> (field, field) {
        // Perform operations on the given point.

        // 1. Translate the point by adding offsets.
        let translated_point: Point = Point {
            x: p.x + 5field,
            y: p.y + 5field,
        };

        // 2. Rotate the point by swapping coordinates.
        let rotated_point: Point = Point {
            x: translated_point.y,
            y: translated_point.x,
        };

        // Return the results of operations.
        return (translated_point.x, rotated_point.y);
    }
}
