///@description enums
#region Game Enums
enum GAME {
	PLAY,
	PAUSE,
	MENU
}
#endregion
#region entity enums
enum PLAYER {
	IDLE,
	WALK,
	ATTACK,
	HIT
}

enum ENEMY {
	IDLE,
	WANDER,
	ALERT,
	ATTACK
}
#endregion
#region inventory enums
enum SLOT_TYPE {
	INVENTORY,
	EQUIPMENT
}


enum INV_STATE {
	hidden,
	show
}
enum CHEST {
	LOW,
	HIGH
}
#endregion