﻿------------------------------
--      Are you local?      --
------------------------------

local boss = AceLibrary("Babble-Boss-2.2")["High Priestess Arlokk"]
local L = AceLibrary("AceLocale-2.2"):new("BigWigs"..boss)

local playerName = nil

----------------------------
--      Localization      --
----------------------------

L:RegisterTranslations("enUS", function() return {
	cmd = "Arlokk",

	youmark = "You're marked alert",
	youmark_desc = "Warn when you are marked",

	othermark = "Others are marked alert",
	othermark_desc = "Warn when others are marked",

	icon = "Place Icon",
	icon_desc = "Place a skull icon on the marked person (requires promoted or higher)",

	mark_trigger = "Feast on ([^%s]+), my pretties!$",

	mark_warning_self = "You are marked!",
	mark_warning_other = "%s is marked!",
} end )

L:RegisterTranslations("frFR", function() return {
	youmark = "Alerte quand vous \195\170tes marqu\195\169",
	youmark_desc = "Pr\195\169viens quand vous \195\170tes marqu\195\169.",

	othermark = "Alerte quand d'autres sont marqu\195\169s",
	othermark_desc = "Pr\195\169viens quand d'autres joueurs sont marqu\195\169s.",

	icon = "Ic\195\180ne de raid",
	icon_desc = "Place une ic\195\180ne de raid sur la derni\195\168re personne marqu\195\169e (requiert d'\195\170tre promus ou plus)",

	mark_trigger ="D\195\169vorez ([^%s]+), mes jolies !",

	mark_warning_self = "Tu es marqu\195\169 !",
	mark_warning_other = "%s est marqu\195\169 !",
} end )

L:RegisterTranslations("deDE", function() return {
	youmark = "Du bist markiert",
	youmark_desc = "Warnung, wenn Du markiert bist.",

	othermark = "X ist markiert",
	othermark_desc = "Warnung, wenn andere Spieler markiert sind.",

	icon = "Symbol",
	icon_desc = "Platziert ein Symbol \195\188ber dem Spieler, der markiert ist. (Ben\195\182tigt Anf\195\188hrer oder Bef\195\182rdert Status.)",

	mark_trigger = "Labt euch an ([^%s]+), meine S\195\188\195\159en!$",

	mark_warning_self = "Du bist markiert!",
	mark_warning_other = "%s ist markiert!",
} end )

L:RegisterTranslations("koKR", function() return {
	youmark = "자신의 표적 경고",
	youmark_desc = "자신이 표적이 됐을 때 경고",

	othermark = "타인의 표적 경고",
	othermark_desc = "타인이 표적이 됐을 때 경고",

	icon = "아이콘 지정",
	icon_desc = "표적이된 사람에게 해골 아이콘 지정 (승급자 이상 필요)",

	mark_trigger = "내 귀여운 것들아, (.+)%|1을;를; 잡아먹어라!$",

	mark_warning_self = "당신은 표적입니다!",
	mark_warning_other = "%s님은 표적입니다!",
} end )

L:RegisterTranslations("zhCN", function() return {
	youmark = "玩家标记警报",
	youmark_desc = "当你被标记时发出警报",

	othermark = "队友标记警报",
	othermark_desc = "当队友被标记时发出警报",

	icon = "标记被标记者",
	icon_desc = "团队标记被标记者 (需要助理或更高权限)",

	mark_trigger = "吞噬(.+)的躯体吧！$",

	mark_warning_self = "你被标记了！",
	mark_warning_other = "%s被标记了！",
} end )

L:RegisterTranslations("zhTW", function() return {
	youmark = "玩家標記警報",
	youmark_desc = "當高階祭司婭爾羅標記你給她的黑豹時發出警報。",

	othermark = "隊友標記警報",
	othermark_desc = "當高階祭司婭爾羅標記一個隊友給她的黑豹時發出警報。",

	icon = "標記被標記者",
	icon_desc = "團隊標記被標記者 (需要助理或更高權限)",

	mark_trigger = "吞噬(.+)的軀體吧，我的小可愛們！$",

	mark_warning_self = "你被標記了！",
	mark_warning_other = "%s 被標記了！ 牧師照顧一下他！",
} end )

----------------------------------
--      Module Declaration      --
----------------------------------

local mod = BigWigs:NewModule(boss)
mod.zonename = AceLibrary("Babble-Zone-2.2")["Zul'Gurub"]
mod.enabletrigger = boss
mod.toggleoptions = {"youmark", "othermark", "icon", "bosskill"}
mod.revision = tonumber(string.sub("$Revision$", 12, -3))

------------------------------
--      Initialization      --
------------------------------

function mod:OnEnable()
	self:RegisterEvent("CHAT_MSG_MONSTER_YELL")
	self:RegisterEvent("CHAT_MSG_COMBAT_HOSTILE_DEATH", "GenericBossDeath")
end

------------------------------
--      Events              --
------------------------------

function mod:CHAT_MSG_MONSTER_YELL( msg )
	local n = select(3, msg:find(L["mark_trigger"]))
	if n then
		if n == playerName and self.db.profile.youmark then
			self:Message(L["mark_warning_self"], "Important", true, "Alarm")
			self:Message(string.format(L["mark_warning_other"], UnitName("player")), "Attention", nil, nil, true)
		elseif self.db.profile.othermark then
			self:Message(string.format(L["mark_warning_other"], n), "Attention")
			self:Whisper(n, L["mark_warning_self"])
		end

		if self.db.profile.icon then
			self:Icon(n)
		end

	end
end
