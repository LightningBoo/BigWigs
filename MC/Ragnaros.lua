﻿------------------------------
--      Are you local?      --
------------------------------

local boss = AceLibrary("Babble-Boss-2.2")["Ragnaros"]
local L = AceLibrary("AceLocale-2.2"):new("BigWigs"..boss)
local started = nil

----------------------------
--      Localization      --
----------------------------

L:RegisterTranslations("enUS", function() return {
	knockback_trigger = "^TASTE",
	submerge_trigger = "^COME FORTH,",
	engage_trigger = "^NOW FOR YOU,",

	knockback_message = "Knockback!",
	knockback_soon_message = "5 sec to knockback!",
	submerge_message = "Ragnaros down for 90 sec. Incoming Sons of Flame!",
	emerge_soon_message = "15 sec until Ragnaros emerges!",
	emerge_message = "Ragnaros emerged, 3 minutes until submerge!",
	submerge_60sec_message = "60 sec to submerge!",
	submerge_20sec_message = "20 sec to submerge!",

	knockback_bar = "AoE knockback",
	emerge_bar = "Ragnaros emerge",
	submerge_bar = "Ragnaros submerge",

	sonofflame = "Son of Flame",
	sonsdeadwarn = "%d/8 Sons of Flame dead!",

	cmd = "Ragnaros",

	emerge = "Emerge alert",
	emerge_desc = "Warn for Ragnaros Emerge",

	sondeath = "Son of Flame dies",
	sondeath_desc = "Warn when a son dies",

	submerge = "Submerge alert",
	submerge_desc = "Warn for Ragnaros Submerge & Sons of Flame",

	aoeknock = "Knockback alert",
	aoeknock_desc = "Warn for Wrath of Ragnaros knockback",
} end)

L:RegisterTranslations("zhCN", function() return {
	knockback_trigger = "^尝尝萨弗隆的火焰吧",
	submerge_trigger = "^出现吧，我的奴仆",
	engage_trigger = "^现在轮到你们了",

	knockback_message = "群体击退！",
	knockback_soon_message = "5秒后发动群体击退！",
	submerge_message = "拉格纳罗斯消失90秒。烈焰之子出现！",
	emerge_soon_message = "15秒后拉格纳罗斯重新出现！",
	emerge_message = "拉格纳罗斯已经激活，将在3分钟后暂时消失并召唤烈焰之子！",
	submerge_60sec_message = "60秒后拉格纳罗斯将暂时消失并召唤烈焰之子！",
	submerge_20sec_message = "20秒后拉格纳罗斯将暂时消失并召唤烈焰之子！",

	knockback_bar = "群体击退",
	emerge_bar = "拉格纳罗斯出现",
	submerge_bar = "拉格纳罗斯消失",

	sonofflame = "烈焰之子",
	sonsdeadwarn = "%d/8个烈焰之子死亡了！",

	emerge = "出现警报",
	emerge_desc = "出现警报",

	sondeath = "烈焰之子死亡",
	sondeath_desc = "当一个烈焰之子死亡时发出警报",

	submerge = "消失警报",
	submerge_desc = "消失警报",

	aoeknock = "群体击退警报",
	aoeknock_desc = "群体击退警报",
} end)

L:RegisterTranslations("zhTW", function() return {
	knockback_trigger = "^感受薩弗隆的烈焰吧！",
	submerge_trigger = "^出現吧，我的奴僕",
	engage_trigger = "^現在輪到你們了",

	knockback_message = "群體擊退！",
	knockback_soon_message = "5 秒後群體擊退，近戰後退！",
	submerge_message = "消失 90 秒！ 烈焰之子出現！",
	emerge_soon_message = "15 秒後重新出現！",
	emerge_message = "拉格納羅斯已經進入戰鬥，3 分鐘後暫時消失並召喚烈焰之子",
	submerge_60sec_message = "60 秒後暫時消失並召喚烈焰之子！",
	submerge_20sec_message = "20 秒後暫時消失並召喚烈焰之子！",

	knockback_bar = "群體擊退",
	emerge_bar = "拉格納羅斯出現",
	submerge_bar = "拉格納羅斯消失",

	sonofflame = "烈焰之子",
	sonsdeadwarn = "%d/8 個烈焰之子死亡了！",

	emerge = "出現警報",
	emerge_desc = "當拉格納羅斯出現消失時發出警報",

	sondeath = "烈焰之子死亡",
	sondeath_desc = "當一個烈焰之子死亡時發出警報",

	submerge = "消失警報",
	submerge_desc = "當拉格納羅斯消失時發出警報",

	aoeknock = "群體擊退警報",
	aoeknock_desc = "當拉格納羅斯發動擊退技能時發出警報",
} end)

L:RegisterTranslations("koKR", function() return {
	knockback_trigger = "설퍼론의 유황",
	submerge_trigger = "나의 종들아",
	engage_trigger = "이제 너희",

	knockback_message = "광역 튕겨냄!",
	knockback_soon_message = "5초후 튕겨냄!",
	submerge_message = "90초간 라그나로스 사라짐. 피조물 등장!",
	emerge_soon_message = "15초후 라그나로스 재등장!",
	emerge_message = "라그나로스가 등장했습니다. 3분후 피조물 소환!",
	submerge_60sec_message = "60초후 피조물 등장!",
	submerge_20sec_message = "20초후 피조물 등장!",

	knockback_bar = "광역 튕겨냄",
	emerge_bar = "라그나로스 등장",
	submerge_bar = "피조물 등장",

	sonofflame = "화염의 수호물",
	sonsdeadwarn = "%d/8 화염의 수호물 사망!",

	emerge = "등장 경고",
	emerge_desc = "라그나로스 등장에 대한 경고",

	sondeath = "화염의 수호물 죽음",
	sondeath_desc = "화염의 수호물 죽음 알림",

	submerge = "사라짐 경고",
	submerge_desc = "라그나로스 사라짐 & 피조물에 대한 경고",

	aoeknock = "튕겨냄 경고",
	aoeknock_desc = "라그나로스의 튕겨냄 경고",
} end)

L:RegisterTranslations("deDE", function() return {
	knockback_trigger = "^SP\195\156RT DIE FLAMMEN",
	submerge_trigger = "^KOMMT HERBEI, MEINE DIENER",
	engage_trigger = "^NUN ZU EUCH, INSEKTEN",

	knockback_message = "AoE Rundumschlag!",
	knockback_soon_message = "AoE Rundumschlag in 5 Sekunden!",
	submerge_message = "Ragnaros untergetaucht f\195\188r 90 Sekunden! S\195\182hne der Flamme kommen!",
	emerge_soon_message = "Ragnaros taucht auf in 15 Sekunden!",
	emerge_message = "Ragnaros aufgetaucht! Untertauchen in 3 Minuten!",
	submerge_60sec_message = "Ragnaros taucht unter in 60 Sekunden!",
	submerge_20sec_message = "Ragnaros taucht unter in 20 Sekunden!",

	knockback_bar = "AoE Rundumschlag",
	emerge_bar = "Auftauchen Ragnaros",
	submerge_bar = "Untertauchen Ragnaros",

	sonofflame = "Sohn der Flamme",
	sonsdeadwarn = "%d/8 S\195\182hne der Flamme tot!",

	emerge = "Auftauchen",
	emerge_desc = "Warnung, wenn Ragnaros auftaucht.",

	sondeath = "S\195\182hne der Flamme",
	sondeath_desc = "Counter f\195\188r die get\195\182teten S\195\182ohne der Flamme.",

	submerge = "Untertauchen",
	submerge_desc = "Warnung, wenn Ragnaros untertaucht und die S\195\182hne der Flamme erscheinen.",

	aoeknock = "AoE Rundumschlag",
	aoeknock_desc = "Warnung, wenn Ragnaros AoE Rundumschlag wirkt.",
} end)

L:RegisterTranslations("frFR", function() return {
	knockback_trigger = "^GO\195\155TEZ ",
	submerge_trigger = "^VENEZ, MES SERVITEURS",
	engage_trigger = "^ET MAINTENANT",

	knockback_message = "Projection de zone !",
	knockback_soon_message = "5 secondes avant Projection de zone !",
	submerge_message = "Ragnaros dispara\195\174t pour 90 secondes. Arriv\195\169e des Fils des flammes !",
	emerge_soon_message = "15 secondes avant que Ragnaros n'\195\169merge !",
	emerge_message = "Ragnaros a \195\169merg\195\169. 3 minutes avant l'arriv\195\169e des Fils des flammes !",
	submerge_60sec_message = "60 secondes avant l'arriv\195\169e des Fils des flammes !",
	submerge_20sec_message = "20 secondes avant l'arriv\195\169e des Fils des flammes !",

	knockback_bar = "Projection de zone",
	emerge_bar = "Ragnaros \195\169merge",
	submerge_bar = "Fils des flammes",

	sonofflame = "Fils des flammes",
	sonsdeadwarn = "%d/8 Fils des flammes mort !",

	emerge = "Alerte Emerge",
	emerge_desc = "Pr\195\169viens quand Ragnaros \195\169merge.",

	sondeath = "Alerte mort des Fils",
	sondeath_desc = "Pr\195\169viens de la mort d'un Fils des flammes.",

	submerge = "Alerte Immersion",
	submerge_desc = "Pr\195\169viens de l'immersion de Ragnaros et l'arriv\195\169e des Fils des flammes.",

	aoeknock = "Alerte Projection de zone",
	aoeknock_desc = "Pr\195\169viens des projections de zone.",
} end)

----------------------------------
--      Module Declaration      --
----------------------------------

local mod = BigWigs:NewModule(boss)
mod.zonename = AceLibrary("Babble-Zone-2.2")["Molten Core"]
mod.enabletrigger = boss
mod.wipemobs = { L["sonofflame"] }
mod.toggleoptions = { "sondeath", "submerge", "emerge", "aoeknock", "bosskill" }
mod.revision = tonumber(string.sub("$Revision$", 12, -3))

------------------------------
--      Initialization      --
------------------------------

function mod:OnEnable()
	started = nil
	self.sonsdead = 0

	self:RegisterEvent("PLAYER_REGEN_ENABLED", "CheckForWipe")
	self:RegisterEvent("PLAYER_REGEN_DISABLED", "CheckForEngage")
	self:RegisterEvent("CHAT_MSG_MONSTER_YELL")
	self:RegisterEvent("CHAT_MSG_COMBAT_HOSTILE_DEATH")

	self:RegisterEvent("BigWigs_RecvSync")
	self:TriggerEvent("BigWigs_ThrottleSync", "RagnarosSonDead", .1)
end

------------------------------
--      Event Handlers      --
------------------------------

function mod:CHAT_MSG_COMBAT_HOSTILE_DEATH(msg)
	if msg == string.format(UNITDIESOTHER, L["sonofflame"]) then
		self:Sync("RagnarosSonDead "..tostring(self.sonsdead + 1) )
	else
		self:GenericBossDeath(msg)
	end
end

function mod:BigWigs_RecvSync(sync, rest, nick)
	if self:ValidateEngageSync(sync, rest) and not started then
		started = true
		if self:IsEventRegistered("PLAYER_REGEN_ENABLED") then
			self:UnregisterEvent("PLAYER_REGEN_ENABLED")
		end
		self:Emerge()
	elseif sync == "RagnarosSonDead" and rest then
		rest = tonumber(rest)
		if not rest then return end
		if rest == (self.sonsdead + 1) then
			self.sonsdead = self.sonsdead + 1
			if self.db.profile.sondeath then
				self:Message(string.format(L["sonsdeadwarn"], self.sonsdead), "Urgent")
			end
			if self.sonsdead == 8 then
				self:CancelScheduledEvent("bwragnarosemerge")
				self:TriggerEvent("BigWigs_StopBar", L["emerge_bar"])
				self.sonsdead = 0 -- reset counter
				self:Emerge()
			end
		end
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg:find(L["knockback_trigger"]) and self.db.profile.aoeknock then
		self:Message(L["knockback_message"], "Important")
		self:ScheduleEvent("bwragnarosaekbwarn", "BigWigs_Message", 23, L["knockback_soon_message"], "Urgent")
		self:Bar(L["knockback_bar"], 28, "Spell_Fire_SoulBurn")
	elseif msg:find(L["submerge_trigger"]) then
		self:Submerge()
	end
end

function mod:Submerge()
	self:CancelScheduledEvent("bwragnarosaekbwarn")
	self:TriggerEvent("BigWigs_StopBar", self, L["knockback_bar"])

	if self.db.profile.submerge then
		self:Message(L["submerge_message"], "Important")
	end
	if self.db.profile.emerge then
		self:ScheduleEvent("bwragnarosemergewarn", "BigWigs_Message", 75, L["emerge_soon_message"], "Urgent")
		self:Bar(L["emerge_bar"], 90, "Spell_Fire_Volcano")
	end
	self:ScheduleRepeatingEvent("bwragnarosemergecheck", self.EmergeCheck, 2, self)
	self:ScheduleEvent("bwragnarosemerge", self.Emerge, 90, self)
end

function mod:EmergeCheck()
	if UnitExists("target") and UnitName("target") == boss and UnitExists("targettarget") then
		self:Emerge()
		return
	end
	local num = GetNumRaidMembers()
	for i = 1, num do
		local raidUnit = string.format("raid%starget", i)
		if UnitExists(raidUnit) and UnitName(raidUnit) == boss and UnitExists(raidUnit.."target") then
			self:Emerge()
			return
		end
	end
end

function mod:Emerge()
	self:CancelScheduledEvent("bwragnarosemergecheck")
	self:CancelScheduledEvent("bwragnarosemergewarn")
	self:TriggerEvent("BigWigs_StopBar", self, L["emerge_bar"])

	if self.db.profile.emerge then
		self:Message(L["emerge_message"], "Attention")
	end
	if self.db.profile.submerge then
		self:ScheduleEvent("BigWigs_Message", 120, L["submerge_60sec_message"], "Urgent")
		self:ScheduleEvent("BigWigs_Message", 160, L["submerge_20sec_message"], "Important")
		self:Bar(L["submerge_bar"], 180, "Spell_Fire_SelfDestruct")
	end
end
