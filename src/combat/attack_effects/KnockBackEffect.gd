extends AttackEffect
class_name KnockBackEffect

var push = 300

func apply_effect(body: PhysicsBody2D):
	if push < 0:
		return false
		
	var direction = (attack_info.attacked_position - attack_info.attacker_position).normalized()
	body.velocity = direction * push
	push -= 30
	return true
