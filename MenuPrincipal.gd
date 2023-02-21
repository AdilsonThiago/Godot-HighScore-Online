extends Control

@onready var executor_cs = $ExecutorCS
var lista : Array

func _ready():
	executor_cs.Start()
	pass

func _on_registrar_pontos_pressed():
	$Panel.show()
	pass

func _on_confirmar_pressed():
	executor_cs.registrarJogador($Panel/Nome.text, int($Panel/Pontos.text))
	$Panel.hide()
	pass # Replace with function body.

func _on_fechar_pressed():
	$Panel.hide()
	pass # Replace with function body.

func _on_mostrar_pontos_pressed():
	lista.clear()
	executor_cs.retornarJogadores()
	pass

func receberJogador(nome : String, pontos : String):
	lista.append([nome, pontos])
	atualizar_painel_lista()
	pass

func atualizar_painel_lista():
	$ListaPontuacao.clear()
	for i in range(lista.size()):
		$ListaPontuacao.add_item("Nome: " + str(lista[i][0]) + " Pontos: " + str(lista[i][1]))
	pass
