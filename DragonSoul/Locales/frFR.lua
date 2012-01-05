local L = BigWigs:NewBossLocale("Morchok", "frFR")
if not L then return end
if L then
	L.engage_trigger = "Vous cherchez à arrêter l'avalanche. Je vais vous ensevelir."

	L.crush = "Ecraser armure"
	L.crush_desc = "Alerte pour tanks uniquement. Compte les cumuls d'écraser armure et affiche une barre de durée."
	L.crush_message = "%2$dx Ecraser sur %1$s"

	L.blood = "Sang"

	L.explosion = "Explosion"
	L.crystal = "Crystal"
end

L = BigWigs:NewBossLocale("Warlord Zon'ozz", "frFR")
if L then
	L.engage_trigger = "Zzof Shuul'wah. Thoq fssh N'Zoth!"

	L.ball = "Boule de Vide"
	L.ball_desc = "Boule de Vide qui rebondit contre les joueurs et le boss."

	L.bounce = "Rebond de la boule de Vide"
	L.bounce_desc = "Compteur des rebonds de la boule de Vide."

	L.darkness = "La boum des tentacules !"
	L.darkness_desc = "Cette phase commence quand la boule de Vide touche le boss."

	L.shadows = "Ombres"
end

L = BigWigs:NewBossLocale("Yor'sahj the Unsleeping", "frFR")
if L then
	L.engage_trigger = "Iilth qi'uothk shn'ma yeh'glu Shath'Yar! H'IWN IILTH!"

	L.bolt_desc = "Alerte pour tanks uniquement. Compte les cumuls d'éclairs de Vide et affiche une barre de durée."
	L.bolt_message = "%2$dx Éclairs sur %1$s"

	L.blue = "|cFF0080FFBleu|r"
	L.green = "|cFF088A08Vert|r"
	L.purple = "|cFF9932CDViolet|r"
	L.yellow = "|cFFFFA901Jaune|r"
	L.black = "|cFF424242Noir|r"
	L.red = "|cFFFF0404Rouge|r"

	L.blobs = "Globules"
	L.blobs_bar = "Proch. globules"
	L.blobs_desc = "Globules se déplacant en direction du boss."
end

L = BigWigs:NewBossLocale("Hagara the Stormbinder", "frFR")
if L then
	L.engage_trigger = "Vous êtes face à la Lieuse des tempêtes ! Je vais tous vous massacrer."

	L.lightning_or_frost = "Foudre ou Glace"
	L.ice_next = "Phase de glace"
	L.lightning_next = "Phase de foudre"

	L.assault_desc = "Alerte pour tank uniquement. "..select(2, EJ_GetSectionInfo(4159))

	L.nextphase = "Prochaine phase"
	L.nextphase_desc = "Prévient quand arrive la phase suivante."
end

L = BigWigs:NewBossLocale("Ultraxion", "frFR")
if L then
	L.engage_trigger = "L'heure du Crépuscule a sonné !"

	L.warmup = "Échauffement"
	L.warmup_desc = "Délai avant le début de la rencontre."
	L.warmup_trigger = "Je suis le début de la fin, l'ombre qui cache le soleil, le beffroi qui sonne votre glas."

	L.crystal = "Cristaux d'amélioration"
	L.crystal_desc = "Délais pour les divers cristaux d'amélioration que les PNJs invoquent."
	L.crystal_red = "Cristal rouge"
	L.crystal_green = "Cristal vert"
	L.crystal_blue = "Cristal bleu"

	L.twilight = "Crépuscule"
	L.cast = "Barre d'incantation d'Heure du Crépuscule"
	L.cast_desc = "Affiche une barre de 5 secondes pour l'incantation d'Heure du Crépuscule."

	L.lightself = "Lumière faiblissante sur vous"
	L.lightself_desc = "Affiche une barre indiquant le temps restant avant que Lumière faiblissante ne vous fasse exploser."
	L.lightself_bar = "<Vous explosez>"

	L.lighttank = "Lumière faiblissante sur tanks"
	L.lighttank_desc = "Alerte pour tank uniquement. Si un tank a Lumière faiblissante, affiche une barre d'explosion et Flash/Shake."
	L.lighttank_bar = "<%s explose>"
	L.lighttank_message = "Tank explosif"
end

L = BigWigs:NewBossLocale("Warmaster Blackhorn", "frFR")
if L then
	L.warmup = "Échauffement"
	L.warmup_desc = "Délai avant que le combat ne commence."
	L.warmup_trigger = "En avant toute ! Tout dépend de notre vitesse ! Nous ne devons pas laisser le Destructeur s'échapper." -- à vérifier

	L.sunder = "Fracasser armure"
	L.sunder_desc = "Alerte pour tanks uniquement. Compte les cumuls de fracasser armure et affiche une barre de durée."
	L.sunder_message = "%2$dx Fracasser sur %1$s"

	L.sapper_trigger = "Un drake plonge et dépose un sapeur du Crépuscule sur le pont !"
	L.sapper = "Sapeur"
	L.sapper_desc = "Sapeur infligeant des dégâts au vaisseau."

	L.stage2_trigger = "Donc je dois le faire moi-même. Bien !" -- pas d'espace insécable ici
end

L = BigWigs:NewBossLocale("Spine of Deathwing", "frFR")
if L then
	L.left_start = "va faire un tonneau à gauche"
	L.right_start = "va faire un tonneau à droite"
	L.left = "fait un tonneau à gauche"
	L.right = "fait un tonneau à droite"
	L.not_hooked = "Vous n'êtes >PAS< accroché !"
	L.roll_message = "Et il tourne, tourne, tourne !"
	L.level_trigger = "se redresse"
	L.level_message = "Pas grave, il s'est redressé !"

	L.exposed = "Armure exposée"
end

L = BigWigs:NewBossLocale("Madness of Deathwing", "frFR")
if L then
	L.engage_trigger = "Vous n'avez RIEN fait. Je vais mettre votre monde en PIÈCES."
	L.impale_desc = "Alerte pour tank uniquement. "..select(2,EJ_GetSectionInfo(4114))
	L.bolt_explode = "<Explosion de l'éclair>"
	L.parasite = "Parasite"
	L.blobs_soon = "%d%% - Sang coagulant imminent !"
end

