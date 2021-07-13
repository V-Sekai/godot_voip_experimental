extends Speech

var voice_controller: Node = null
const voice_controller_const = preload("voice_controller.gd")


func on_received_external_audio_packet(p_peer_id: int, p_sequence_id: int, p_buffer: PackedByteArray) -> void:
	voice_controller.on_received_audio_packet(p_peer_id, p_sequence_id, p_buffer)
	
func _ready() -> void:
	if true:
		voice_controller = voice_controller_const.new()
		voice_controller.set_name("VoiceController")
		add_child(voice_controller)
		assign_voice_controller(voice_controller)
