extends Node

var time_elapsed = 0

func _ready():
	# Conecta o sinal do timer ao método que atualiza o tempo
	$Timer.connect("timeout", Callable(self, "_on_Timer_timeout"))



func _on_timer_timeout():
	# Incrementa o tempo decorrido
	time_elapsed += 1
	# Atualiza o texto do label para exibir o tempo decorrido
	$Label.text = "Tempo: " + str(time_elapsed) + "s"
