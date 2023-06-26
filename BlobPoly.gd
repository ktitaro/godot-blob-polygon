extends Node2D

func _ready():
	var points = $Path2D.curve.get_baked_points()
	points.append(points[0])
	$Polygon2D.polygon = points
	$CollisionPolygon2D.polygon = points
