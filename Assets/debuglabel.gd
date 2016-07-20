extends Label

var bgZ
var masksZ
var mask_steeltrapZ
var lightsZ
var canvasModZ
var mask_steeltrapZmin
var mask_steeltrapZmax

func _ready():
	set_process(true)

func _process(delta):
	bgZ = str( get_parent().get_z() )
	masksZ = str( get_parent().get_node("Masks").get_z() )
	mask_steeltrapZ = str( get_parent().get_node("Masks/mask_steeltrap").get_z() )
	lightsZ = str( get_parent().get_node("Lights").get_z() )
	mask_steeltrapZmin = str( get_parent().get_node("Masks/mask_steeltrap").get_z_range_min() )
	mask_steeltrapZmax = str( get_parent().get_node("Masks/mask_steeltrap").get_z_range_max() )
	set_text("bgZ "+bgZ+"\nmasksZ "+masksZ+"\nmask_steeltrapZ "+mask_steeltrapZ+" "+mask_steeltrapZmin+ " "+ mask_steeltrapZmax + "\nlightsZ "+lightsZ)