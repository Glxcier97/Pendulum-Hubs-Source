_G.loop = true
local player = game.Players.LocalPlayer
local char = player.Character
local Align = function(Part0, Part1,Mesh)
    local Aligns = {
        AlignOrientation = Instance.new("AlignOrientation", Part0),
        AlignPosition = Instance.new("AlignPosition", Part0)
    }
    
    local Attachments = {
        Attach0 = Instance.new("Attachment", Part0),
        Attach1 = Instance.new("Attachment", Part1)
    }
    local m = Part0:FindFirstChildOfClass('SpecialMesh')--This will get the first "SpecialMesh" it finds if it does not find any, then it will return nil
    if Mesh and m then --If Mesh is set to true and it finds a mesh it will destroy it
        m:Destroy()
    end
    Part0:BreakJoints()
    Aligns.AlignOrientation.Attachment0 = Attachments.Attach0
    Aligns.AlignOrientation.Attachment1 = Attachments.Attach1
    Aligns.AlignOrientation.Responsiveness = math.huge
    Aligns.AlignOrientation.RigidityEnabled = true
    
    Aligns.AlignPosition.Attachment0 = Attachments.Attach0
    Aligns.AlignPosition.Attachment1 = Attachments.Attach1
    Aligns.AlignPosition.Responsiveness = math.huge
    Aligns.AlignPosition.RigidityEnabled = true
        Aligns.AlignPosition.MaxForce = 999999999
        spawn(function()
            while _G.loop do 
                local mag = (Part0.Position - (Part1.CFrame*Attachments.Attach0.CFrame:Inverse()).p).magnitude--magnitude can get the distance between two cframe or position
                if mag >= 5 then 
                Part0.CFrame = Part1.CFrame*Attachments.Attach0.CFrame:Inverse()
                end
                Part0.Velocity = Vector3.new(0,35,0)
                game['Run Service'].Heartbeat:wait()
                end
        end)
 return {Attachments.Attach0, Attachments, Aligns}
        
end 
local hat = Align(char['MeshPartAccessory'].Handle,char['Right Arm'],false)
local cf = char['Right Arm'].CFrame*CFrame.new(0,-0.75,-2.5)*CFrame.Angles(math.rad(45),math.rad(-90),0)
hat[1].CFrame = cf:Inverse() * char['Right Arm'].CFrame
spawn(function()
    char.AncestryChanged:wait()--if you respawn, it will stop the  loop to avoid lag of using it over and over
    _G.loop = false 
end)

jump = false
local Effects2 = {}
basicmusic = "rbxassetid://699991043"
abyssmusic = "rbxassetid://700037500"
Player = game:GetService("Players").LocalPlayer
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = game.Workspace.non
Humanoid = Character.Humanoid
Mouse = Player:GetMouse()
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local sick = Instance.new("Sound",Character)
sick.SoundId = basicmusic
sick.Looped = true
sick.Pitch = 1
sick.Volume = 1
sick:Play()
Humanoid.MaxHealth = 5000
Humanoid.Health = 5000
local wingholder = Instance.new("Model")
wingholder.Parent = Character
ABYSSFORM = false
Face = Head.face
FaceID = Face.Texture
AFaceID = "http://www.roblox.com/asset/?id=1015774318"
char = Character
root = RootPart
HeadColor = Head.BrickColor
TorsoColor = Torso.BrickColor
RLColor = RightLeg.BrickColor
RAColor = RightArm.BrickColor
LLColor = LeftLeg.BrickColor
LAColor = LeftArm.BrickColor
Character:FindFirstChild("Body Colors"):remove()
Taunts = {907332997,907332856,907330011,907332525,907333406}
local attacksound1 = Instance.new("Sound",Head)
attacksound1.SoundId = "rbxassetid://159972643"
attacksound1.Pitch = 1
attacksound1.Volume = 3
local attacksound2 = Instance.new("Sound",Head)
attacksound2.SoundId = "rbxassetid://159972627"
attacksound2.Pitch = 1
attacksound2.Volume = 3
local attacksound3 = Instance.new("Sound",Head)
attacksound3.SoundId = "rbxassetid://159882477"
attacksound3.Pitch = 1
attacksound3.Volume = 3
local attacksound4 = Instance.new("Sound",Head)
attacksound4.SoundId = "rbxassetid://159882584"
attacksound4.Pitch = 1
attacksound4.Volume = 3
local shriek = Instance.new("Sound",Head)
shriek.SoundId = "rbxassetid://199978176"
shriek.Pitch = 1.5
shriek.Volume = 3
local laugh = Instance.new("Sound",Character)
laugh.SoundId = "rbxassetid://861942173"
laugh.Pitch = 1
laugh.Volume = 10
local fade = Instance.new("Sound",Character)
fade.SoundId = "rbxassetid://3264923"
fade.Pitch = 1
fade.Volume = 3
Abysstimer = 700
wait(0.01)
    Humanoid.MaxHealth = 5000
    Humanoid.Health = 5000


	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=Instance.new("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		fp.Material=material
		fp:BreakJoints()
		return fp
	end

function particles(art,enabled)
local EyeSizes={
	NumberSequenceKeypoint.new(0,.8,0),
	NumberSequenceKeypoint.new(1,0,0)
}
local EyeTrans={
	NumberSequenceKeypoint.new(0,0,0),
	NumberSequenceKeypoint.new(1,1,0)
}
local PE=Instance.new("ParticleEmitter",art)
PE.LightEmission=.4
PE.Size=NumberSequence.new(EyeSizes)
PE.Transparency=NumberSequence.new(EyeTrans)
PE.Lifetime=NumberRange.new(0.5,0.5,0.5)
PE.Rate=360
PE.Speed = NumberRange.new(0,0,0)
PE.Texture="rbxassetid://24419398"
PE.ZOffset = 0
PE.Name = "PE"
PE.Enabled = enabled
end

particles(RightArm,false)
particles(LeftArm,false)
particles(RightLeg,false)
particles(LeftLeg,false)
particles(Torso,false)
particles(Head,false)


IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor




--//=================================\\
--||		  CUSTOMIZATION
--\\=================================//

Class_Name = "ABYSS"
Weapon_Name = "Abyssal sword"

Custom_Colors = {
	Custom_Color_1 = BRICKC("Institutional white"); --1st color for the weapon.
	Custom_Color_2 = BRICKC("Institutional white"); --2nd color for the weapon.

	Custom_Color_3 = BRICKC("Institutional white"); --Color for the abilities.
	Custom_Color_4 = BRICKC("Institutional white"); --Color for the secondary bar.
	Custom_Color_5 = BRICKC("Institutional white"); --Color for the mana bar.
	Custom_Color_6 = BRICKC("Institutional white"); --Color for the health bar.
	Custom_Color_7 = BRICKC("Institutional white"); --Color for the stun bar.

	Custom_Color_8 = BRICKC("Institutional white"); --Background for the mana bar.
	Custom_Color_9 = BRICKC("Institutional white"); --Background for the secondary mana bar.
	Custom_Color_10 = BRICKC("Institutional white"); --Background for the stun bar.
	Custom_Color_11 = BRICKC("Institutional white"); --Background for the health bar.
	Custom_Color_12 = BRICKC("Institutional white"); --Background for the abilities.
}

Mana_Bar_Background_Transparency = 0 --Transparency for the background of the mana bar.
Secondary_Mana_Bar_Background_Transparency = 0 --Transparency for the background of the secondary mana bar.
Health_Bar_Background_Transparency = 0 --Transparency for the background of the health bar.
Stun_Bar_Background_Transparency = 0 --Transparency for the background of the stun bar.
Ability_Background_Transparency = 0  --Transparency for the background of the abilities.
Stat_Background_Transparency = 0 --Transparency for the background of the stats.

Player_Size = 1 --Size of the player.
Animation_Speed = 2
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)

Enable_Gui = false --Enables or disables the Weapon Gui. Also functions as hiding or showing the Gui.
Enable_Stats = false --Enables or disables stats.
Put_Stats_In_Character = false --Places stats in Character.
Enable_Stagger_Hit = false --Enables or disables staggering when hitting a hitbox of some sort.
Play_Hitbox_Hit_Sound = true --Plays a hit sound when hitting a hitbox of some sort.
Enable_Stagger = false --Enables or disables staggering.
Enable_Stun = false --Enables or disables the stun mechanic.
Enable_Abilities = false --Enables abilites with cooldowns and mana costs.
Enable_Secondary_Bar = false --Enables the secondary mana bar, if true.

Start_Equipped = false --Starts the player equipped with their weapon.
Start_Equipped_With_Equipped_Animation = false --Used in conjunction with the above option. Starts your equip animation.
Can_Equip_Or_Unequip = true --Enables or disables the ability to unequip or equip your weapon.
Disable_Animator = true --Disables the Animator in the humanoid.
Disable_Animate = true --Disables the Animate script in the character.
Disable_Moving_Arms = false --Keeps the arms from moving around.
Use_Motors_Instead_Of_Welds = false --Uses motors instead of welds to disable moving arms.
Walkspeed_Depends_On_Movement_Value = false --Walkspeed depends on movement value. Self-explanatory.
Disable_Jump = false --Disables jumping.
Use_HopperBin = true --Uses a hopperbin to do things.

Cooldown_1 = 0 --Cooldowns for abilites.
Cooldown_2 = 0
Cooldown_3 = 0
Cooldown_4 = 0
HOLDCHARGE = false
Skill_1_Mana_Cost = 0 --How much mana is required to use the skill.
Skill_2_Mana_Cost = 0
Skill_3_Mana_Cost = 0
Skill_4_Mana_Cost = 0
Max_Mana = 0 --Maximum amount of mana you can have.
Max_Secondary_Mana = 0 --Maximum amount of secondary mana you can have.
Mana_Name = "Mana" --Name for the mana bar.
Secondary_Mana_Name = "Block" --Name for the secondary mana bar.
Max_Stun = 1 --Maximum amount of stun you can have.
Recover_Mana = 0 --How much mana you gain.
Mana_Regen_Mode = "1" --Basically switches from one mana regen system to another.
Secondary_Mana_Regen_Mode = "1" --Basically switches from one secondary mana regen system to another.
Stun_Lose_Mode = "1" --Basically switches from one secondary stun loss system to another.
Recover_Secondary_Mana = 0 --How much secondary mana you gain.
Lose_Stun = 0 --How much stun you lose.
Stun_Wait = 0 --Delay between losing stun.
Mana_Wait = 0 --Delay between gaining mana.
Secondary_Mana_Wait = 0 --Delay between gaining secondary mana.
Menu_Update_Speed = 0 --How fast the Weapon Gui will update.
Constant_Update = false --Removes the delay between updating the Weapon GUI.
Show_Stats = false --Hides or shows stats.
Stat_Offset = 0.74 --For cosmetic purposes. {0.74, 0.78}

--//=================================\\
--|| 	  END OF CUSTOMIZATION
--\\=================================//





--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local CO1 = 0
local CO2 = 0
local CO3 = 0
local CO4 = 0
local CHANGEDEFENSE = 0
local CHANGEDAMAGE = 0
local CHANGEMOVEMENT = 0
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local LASTPOINT = nil
local BLCF = nil
local SCFR = nil
local STAGGERHITANIM = false
local STAGGERANIM = false
local STUNANIM = false
local CRITCHANCENUMBER = 0
local IDLENUMBER = 0
local DONUMBER = 0
local HANDIDLE = false
local SINE = 0
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local WALK = 0
local DISABLEJUMPING = false
local HASBEENBLOCKED = false
local STUNDELAYNUMBER = 0
local MANADELAYNUMBER = 0
local SECONDARYMANADELAYNUMBER = 0
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", nil)
WEAPONGUI.Name = "Weapon GUI"
local WEAPONTOOL = IT("HopperBin", nil)
WEAPONTOOL.Name = Weapon_Name
local Weapon = IT("Model")
Weapon.Name = Weapon_Name
local Effects = IT("Folder", Weapon)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local HITPLAYERSOUNDS = {--[["199149137", "199149186", "199149221", "199149235", "199149269", "199149297"--]]"263032172", "263032182", "263032200", "263032221", "263032252", "263033191"}
local HITARMORSOUNDS = {"199149321", "199149338", "199149367", "199149409", "199149452"}
local HITWEAPONSOUNDS = {"199148971", "199149025", "199149072", "199149109", "199149119"}
local HITBLOCKSOUNDS = {"199148933", "199148947"}

--//=================================\\
--\\=================================//





--//=================================\\
--||			  STATS
--\\=================================//

if Character:FindFirstChild("Stats") ~= nil then
Character:FindFirstChild("Stats").Parent = nil
end

local Stats = IT("Folder", nil)
Stats.Name = "Stats"
local ChangeStat = IT("Folder", Stats)
ChangeStat.Name = "ChangeStat"
local Defense = IT("NumberValue", Stats)
Defense.Name = "Defense"
Defense.Value = 1
local Movement = IT("NumberValue", Stats)
Movement.Name = "Movement"
Movement.Value = 1
local Damage = IT("NumberValue", Stats)
Damage.Name = "Damage"
Damage.Value = 0
local Mana = IT("NumberValue", Stats)
Mana.Name = "Mana"
Mana.Value = 0
local SecondaryMana = IT("NumberValue", Stats)
SecondaryMana.Name = "SecondaryMana"
SecondaryMana.Value = 0
local CanCrit = IT("BoolValue", Stats)
CanCrit.Name = "CanCrit"
CanCrit.Value = false
local CritChance = IT("NumberValue", Stats)
CritChance.Name = "CritChance"
CritChance.Value = 20
local CanPenetrateArmor = IT("BoolValue", Stats)
CanPenetrateArmor.Name = "CanPenetrateArmor"
CanPenetrateArmor.Value = false
local AntiTeamKill = IT("BoolValue", Stats)
AntiTeamKill.Name = "AntiTeamKill"
AntiTeamKill.Value = false
local Rooted = IT("BoolValue", Stats)
Rooted.Name = "Rooted"
Rooted.Value = false
local Block = IT("BoolValue", Stats)
Block.Name = "Block"
Block.Value = false
local RecentEnemy = IT("ObjectValue", Stats)
RecentEnemy.Name = "RecentEnemy"
RecentEnemy.Value = nil
local StaggerHit = IT("BoolValue", Stats)
StaggerHit.Name = "StaggerHit"
StaggerHit.Value = false
local Stagger = IT("BoolValue", Stats)
Stagger.Name = "Stagger"
Stagger.Value = false
local Stun = IT("BoolValue", Stats)
Stun.Name = "Stun"
Stun.Value = false
local StunValue = IT("NumberValue", Stats)
StunValue.Name = "StunValue"
StunValue.Value = 0

if Enable_Stats == true and Put_Stats_In_Character == true then
	Stats.Parent = Character
end

--//=================================\\
--\\=================================//





--//=================================\\
--|| 	     DEBUFFS / BUFFS
--\\=================================//

local DEFENSECHANGE1 = IT("NumberValue", ChangeStat)
DEFENSECHANGE1.Name = "ChangeDefense"
DEFENSECHANGE1.Value = 0

local MOVEMENTCHANGE1 = IT("NumberValue", nil)
MOVEMENTCHANGE1.Name = "ChangeMovement"
MOVEMENTCHANGE1.Value = 0

--//=================================\\
--\\=================================//





--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
			end
		lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

--//=================================\\
--\\=================================//





--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end

function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
 
function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end

function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = C3(255, 255, 255)
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = true
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end

function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NoOutlines(NEWPART)
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end

function CreateSound(ID, PARENT, VOLUME, PITCH)
	coroutine.resume(coroutine.create(function()
		local NEWSOUND = IT("Sound", PARENT)
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		Swait()
		NEWSOUND:play()
		game:GetService("Debris"):AddItem(NEWSOUND, 10)
	end))
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

function Lightning(POSITION1, POSITION2, MULTIPLIERTIME, LIGHTNINGDELAY, OFFSET, BRICKCOLOR, MATERIAL, SIZE, TRANSPARENCY, LASTINGTIME)
	local MAGNITUDE = (POSITION1 - POSITION2).magnitude 
	local CURRENTPOSITION = POSITION1
	local LIGHTNINGOFFSET = {-OFFSET, OFFSET}
	coroutine.resume(coroutine.create(function()
		for i = 1, MULTIPLIERTIME do 
			local LIGHTNINGPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR,"Effect", VT(SIZE * Player_Size, SIZE * Player_Size, MAGNITUDE / MULTIPLIERTIME))
			LIGHTNINGPART.Anchored = true
			local LIGHTNINGOFFSET2 = VT(LIGHTNINGOFFSET[MRANDOM(1, 2)], LIGHTNINGOFFSET[MRANDOM(1, 2)], LIGHTNINGOFFSET[MRANDOM(1, 2)]) 
			local LIGHTNINGPOSITION1 = CF(CURRENTPOSITION, POSITION2) * CF(0, 0, MAGNITUDE / MULTIPLIERTIME).p + LIGHTNINGOFFSET2
			if MULTIPLIERTIME == i then 
				local LIGHTNINGMAGNITUDE1 = (CURRENTPOSITION - POSITION2).magnitude
				LIGHTNINGPART.Size = VT(SIZE * Player_Size, SIZE * Player_Size, LIGHTNINGMAGNITUDE1)
				LIGHTNINGPART.CFrame = CF(CURRENTPOSITION, POSITION2) * CF(0, 0, -LIGHTNINGMAGNITUDE1 / 2)
			else
				LIGHTNINGPART.CFrame = CF(CURRENTPOSITION, LIGHTNINGPOSITION1) * CF(0, 0, MAGNITUDE / MULTIPLIERTIME / 2)
			end
			CURRENTPOSITION=LIGHTNINGPART.CFrame * CF(0, 0, MAGNITUDE / MULTIPLIERTIME / 2).p
			game.Debris:AddItem(LIGHTNINGPART, LASTINGTIME)
			coroutine.resume(coroutine.create(function()
				while LIGHTNINGPART.Transparency ~= 1 do
					--local StartTransparency = tra
					for i=0, 1, LASTINGTIME do
						Swait()
						LIGHTNINGPART.Transparency = LIGHTNINGPART.Transparency + (0.1 / LASTINGTIME)
					end
				end
			end))
		Swait(LIGHTNINGDELAY / Animation_Speed)
		end
	end))
end

function MagicBlock(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("BlockMesh", EFFECTPART, "", "", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicSphere(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "Sphere", "", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicCylinder(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("CylinderMesh", EFFECTPART, "", "", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicHead(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "Head", "", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicRing(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "3270017", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicWave(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "20329976", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), VT(0, 0, (-0.1 * Z1)) + (OFFSET * Player_Size))
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Offset = VT(0, 0, (-0.1 * MESH.Scale.Z))
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicCrystal(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "9756362", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicSwirl(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "1051557", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicSharpCone(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "1778999", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicFlatCone(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "1033714", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicSpikedCrown(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "1323306", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicFlatCrown(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "1078075", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function MagicSkull(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X1, Y1, Z1, X2, Y2, Z2, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "4770583", "", VT(X1 * Player_Size, Y1 * Player_Size, Z1 * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	coroutine.resume(coroutine.create(function(PART, MESH)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			MESH.Scale = MESH.Scale + VT(X2 * Player_Size, Y2 * Player_Size, Z2 * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH)
end

function ElectricEffect(BRICKCOLOR, MATERIAL, CFRAME, ROTATION, OFFSET, X, Y, Z, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("SpecialMesh", EFFECTPART, "FileMesh", "4770583", "", VT(X * Player_Size, Y * Player_Size, Z * Player_Size), OFFSET * Player_Size)
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	local XVALUE = MRANDOM()
	local YVALUE = MRANDOM()
	local ZVALUE = MRANDOM()
	coroutine.resume(coroutine.create(function(PART, MESH, THEXVALUE, THEYVALUE, THEZVALUE)
		for i = 0, 1, delay do
			Swait()
			PART.CFrame = PART.CFrame * ROTATION
			PART.Transparency = i
			THEXVALUE = THEXVALUE - 0.1 * (delay * 10)
			THEYVALUE = THEYVALUE - 0.1 * (delay * 10)
			THEZVALUE = THEZVALUE - 0.1 * (delay * 10)
			MESH.Scale = MESH.Scale + VT(THEXVALUE * Player_Size, THEYVALUE * Player_Size, THEZVALUE * Player_Size)
		end
		PART.Parent = nil
	end), EFFECTPART, EFFECTMESH, XVALUE, YVALUE, ZVALUE)
end

function TrailEffect(BRICKCOLOR, MATERIAL, CURRENTCFRAME, OLDCFRAME, MESHTYPE, REFLECTANCE, SIZE, ROTATION, X, Y, Z, delay)
	local MAGNITUDECFRAME = (CURRENTCFRAME.p - OLDCFRAME.p).magnitude
	if MAGNITUDECFRAME > (1 / 100) then
		local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 0, BRICKCOLOR, "Effect", VT(1, MAGNITUDECFRAME, 1))
		EFFECTPART.Anchored = true
		EFFECTPART.CFrame = CF((CURRENTCFRAME.p + OLDCFRAME.p) / 2, OLDCFRAME.p) * ANGLES(RAD(90), 0, 0)
		local THEMESHTYPE = "BlockMesh"
		if MESHTYPE == "Cylinder" then
			THEMESHTYPE = "CylinderMesh"
		end
		local EFFECTMESH = CreateMesh(THEMESHTYPE, EFFECTPART, "", "", "", VT(0 + SIZE * Player_Size, 1, 0 + SIZE * Player_Size), VT(0, 0, 0))
		game:GetService("Debris"):AddItem(EFFECTPART, 10)
		coroutine.resume(coroutine.create(function(PART, MESH)
			for i = 0, 1, delay do
				Swait()
				PART.CFrame = PART.CFrame * ROTATION
				PART.Transparency = i
				MESH.Scale = MESH.Scale + VT(X * Player_Size, Y * Player_Size, Z * Player_Size)
			end
			PART.Parent = nil
		end), EFFECTPART, EFFECTMESH)
	end
end

function ClangEffect(BRICKCOLOR, MATERIAL, CFRAME, ANGLE, DURATION, SIZE, POWER, REFLECTANCE, X, Y, Z, delay)
	local EFFECTPART = CreatePart(3, Effects, MATERIAL, 0, 1, BRICKCOLOR, "Effect", VT())
	EFFECTPART.Anchored = true
	EFFECTPART.CFrame = CFRAME
	local EFFECTMESH = CreateMesh("BlockMesh", EFFECTPART, "", "", "", VT(0, 0, 0), VT(0, 0, 0))
	game:GetService("Debris"):AddItem(EFFECTPART, 10)
	local THELASTPOINT = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, DURATION do
			Swait()
			PART.CFrame = PART.CFrame * ANGLES(RAD(ANGLE), 0, 0) * CF(0, POWER * Player_Size, 0)
			TrailEffect(BRICKCOLOR, MATERIAL, PART.CFrame, THELASTPOINT, "Cylinder", REFLECTANCE, SIZE * Player_Size, ANGLES(0, 0, 0), X * Player_Size, Y * Player_Size, Z * Player_Size, delay)
			THELASTPOINT = PART.CFrame
		end
		PART.Parent = nil
	end), EFFECTPART)
end

--local list={}
function Triangle(Color, Material, a, b, c, delay)
	local edge1 = (c - a):Dot((b - a).unit)
	local edge2 = (a - b):Dot((c - b).unit)
	local edge3 = (b - c):Dot((a - c).unit)
	if edge1 <= (b - a).magnitude and edge1 >= 0 then
		a, b, c=a, b, c
	elseif edge2 <= (c - b).magnitude and edge2 >= 0 then
		a, b, c=b, c, a
	elseif edge3 <= (a - c).magnitude and edge3 >= 0 then
		a, b, c=c, a, b
	else
		assert(false, "unreachable")
	end
	local len1 = (c - a):Dot((b - a).unit)
	local len2 = (b - a).magnitude - len1
	local width = (a + (b - a).unit * len1 - c).magnitude
	local maincf = CFrameFromTopBack(a, (b - a):Cross(c - b).unit, - (b - a).unit)
	if len1 > 1 / 100 then
		local sz = VT(0.2, width, len1)
		local w1 = CreatePart(3, Effects, Material, 0, 0.5, Color, "Trail", sz)
		local sp = CreateMesh("SpecialMesh", w1, "Wedge", "", "", VT(0, 1, 1) * sz / w1.Size, VT(0, 0, 0))
		w1.Anchored = true
		w1.CFrame = maincf * ANGLES(math.pi, 0, math.pi / 2) * CF(0, width / 2, len1 / 2)
		coroutine.resume(coroutine.create(function()
			for i = 0.5, 1, delay * (2 / Animation_Speed) do
				Swait()
				w1.Transparency = i
			end
			w1.Parent = nil
		end))
		game:GetService("Debris"):AddItem(w1, 10)
		--table.insert(list, w1)
	end
	if len2 > 1 / 100 then
		local sz = VT(0.2, width, len2)
		local w2 = CreatePart(3, Effects, Material, 0, 0.5, Color, "Trail", sz)
		local sp = CreateMesh("SpecialMesh", w2, "Wedge", "", "", VT(0, 1, 1) * sz / w2.Size, VT(0, 0, 0))
		w2.Anchored = true
		w2.CFrame = maincf * ANGLES(math.pi, math.pi, -math.pi / 2) * CF(0, width / 2, -len1 - len2 / 2)
		coroutine.resume(coroutine.create(function()
			for i = 0.5, 1, delay * (2 / Animation_Speed) do
				Swait()
				w2.Transparency = i
			end
			w2.Parent = nil
		end))
		game:GetService("Debris"):AddItem(w2, 10)
		--table.insert(list, w2)
	end
	--return unpack(list)
end

--[[Usage:
	local Pos = Part
	local Offset = Part.CFrame * CF(0, 0, 0)
	local Color = "Institutional white"
	local Material = "Neon"
	local TheDelay = 0.01
	local Height = 4
	BLCF = Offset
	if SCFR and (Pos.Position - SCFR.p).magnitude > 0.1 then
		local a, b = Triangle(Color, Material, (SCFR * CF(0, Height / 2,0)).p, (SCFR * CF(0, -Height / 2, 0)).p, (BLCF * CF(0, Height / 2,0)).p, TheDelay)
		if a then game:GetService("Debris"):AddItem(a, 1) end
		if b then game:GetService("Debris"):AddItem(b, 1) end
		local a, b = Triangle(Color, Material, (BLCF * CF(0, Height / 2, 0)).p, (BLCF * CF(0, -Height / 2, 0)).p, (SCFR * CF(0, -Height / 2, 0)).p, TheDelay)
		if a then game:GetService("Debris"):AddItem(a, 1) end
		if b then game:GetService("Debris"):AddItem(b, 1) end
		SCFR = BLCF
	elseif not SCFR then
		SCFR = BLCF
	end
--
BLCF = nil
SCFR = nil
--]]

--//=================================\\
--\\=================================//





--//=================================\\
--||	      RESIZE PLAYER
--\\=================================//

if Player_Size ~= 1 then
RootPart.Size = RootPart.Size * Player_Size
Torso.Size = Torso.Size * Player_Size
Head.Size = Head.Size * Player_Size
RightArm.Size = RightArm.Size * Player_Size
LeftArm.Size = LeftArm.Size * Player_Size
RightLeg.Size = RightLeg.Size * Player_Size
LeftLeg.Size = LeftLeg.Size * Player_Size
RootJoint.Parent = RootPart
Neck.Parent = Torso
RightShoulder.Parent = Torso
LeftShoulder.Parent = Torso
RightHip.Parent = Torso
LeftHip.Parent = Torso
	
RootJoint.C0 = ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0))
	RootJoint.C1 = ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0))
	Neck.C0 = NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0))
	Neck.C1 = CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180))
	RightShoulder.C0 = CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0
	LeftShoulder.C0 = CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0
	if Disable_Moving_Arms == false then
		RightShoulder.C1 = ANGLES(0, RAD(90), 0) * CF(0 * Player_Size, 0.5 * Player_Size, -0.5)
		LeftShoulder.C1 = ANGLES(0, RAD(-90), 0) * CF(0 * Player_Size, 0.5 * Player_Size, -0.5)
	else
		RightShoulder.C1 = CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
		LeftShoulder.C1 = CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
	end
	RightHip.C0 = CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
	LeftHip.C0 = CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
	RightHip.C1 = CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
	LeftHip.C1 = CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
end


--//=================================\\
--\\=================================//





--//=================================\\
--||	     WEAPON CREATION
--\\=================================//

local HandlePart = CreatePart(3, Weapon, "SmoothPlastic", 0, 0, "Really black", "Handle", VT(0, 0, 0))
local HandleMesh = CreateMesh("SpecialMesh", HandlePart, "FileMesh", "93117521", "1015990846", VT(0.7,0.8,0.7), VT(0, 3.1 * Player_Size, 0))
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, Torso, HandlePart, CF(2 * Player_Size, 2 * Player_Size, 0.6 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(135)), CF(0, 0, 0))

local HitboxPart = CreatePart(3, Weapon, "SmoothPlastic", 0, 1, "Really black", "Hitbox", VT(0, 0, 0))
local HitboxWeld = CreateWeldOrSnapOrMotor("Weld", HitboxPart, HandlePart, HitboxPart, CF(0 * Player_Size, 4 * Player_Size, 0 * Player_Size), CF(0, 0, 0))

local EffectPart = CreatePart(3, Weapon, "SmoothPlastic", 0, 1, "Really black", "Effect Part", VT(0, 0, 0))
local EffectWeld = CreateWeldOrSnapOrMotor("Weld", EffectPart, HandlePart, EffectPart, CF(0 * Player_Size, 7 * Player_Size, 0 * Player_Size), CF(0, 0, 0))

if Player_Size ~= 1 then
	for _, v in pairs (Weapon:GetChildren()) do
		if v.ClassName == "Motor" or v.ClassName == "Weld" or v.ClassName == "Snap" then
			local p1 = v.Part1
			v.Part1 = nil
			local cf1, cf2, cf3, cf4, cf5, cf6, cf7, cf8, cf9, cf10, cf11, cf12 = v.C1:components()
			v.C1 = CF(cf1 * Player_Size, cf2 * Player_Size, cf3 * Player_Size, cf4, cf5, cf6, cf7, cf8, cf9, cf10, cf11, cf12)
			v.Part1 = p1
		elseif v.ClassName == "Part" then
			for _, b in pairs (v:GetChildren()) do
				if b.ClassName == "SpecialMesh" or b.ClassName == "BlockMesh" then
					b.Scale = VT(b.Scale.x * Player_Size, b.Scale.y * Player_Size, b.Scale.z * Player_Size)
				end
			end
		end
	end
end

for _, c in pairs(Weapon:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

if Start_Equipped == true and Start_Equipped_With_Equipped_Animation == false then
	HandleWeld.Part0 = RightArm
	HandleWeld.C0 = CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0))
end

Weapon.Parent = Character

Humanoid.Died:connect(function()
	ATTACK = true
end)

print(Class_Name.." loaded.")

--//=================================\\
--\\=================================//





--//=================================\\
--||	     DAMAGE FUNCTIONS
--\\=================================//

function StatLabel(LABELTYPE, CFRAME, TEXT, COLOR)
	local STATPART = CreatePart(3, Effects, "SmoothPlastic", 0, 1, "Really black", "Effect", VT())
	STATPART.CFrame = CF(CFRAME.p + VT(0, 1.5, 0))
	local BODYGYRO = IT("BodyGyro", STATPART)
	local BODYPOSITION = IT("BodyPosition", STATPART)
	BODYPOSITION.P = 2000
	BODYPOSITION.D = 100
	BODYPOSITION.maxForce = VT(math.huge, math.huge, math.huge)
	if LABELTYPE == "Normal" then
		BODYPOSITION.position = STATPART.Position + VT(MRANDOM(-2, 2), 6, MRANDOM(-2, 2))
	elseif LABELTYPE == "Debuff" then
		BODYPOSITION.position = STATPART.Position + VT(MRANDOM(-2, 2), 8, MRANDOM(-2, 2))
	elseif LABELTYPE == "Interruption" then
		BODYPOSITION.position = STATPART.Position + VT(MRANDOM(-2,2), 8, MRANDOM(-2, 2))
	end
	game:GetService("Debris"):AddItem(STATPART ,5)
	local BILLBOARDGUI = Instance.new("BillboardGui", STATPART)
	BILLBOARDGUI.Adornee = STATPART
	BILLBOARDGUI.Size = UD2(2.5, 0, 2.5 ,0)
	BILLBOARDGUI.StudsOffset = VT(-2, 2, 0)
	BILLBOARDGUI.AlwaysOnTop = false
	local TEXTLABEL = Instance.new("TextLabel", BILLBOARDGUI)
	TEXTLABEL.BackgroundTransparency = 1
	TEXTLABEL.Size = UD2(2.5, 0, 2.5, 0)
	TEXTLABEL.Text = TEXT
	TEXTLABEL.Font = "SourceSans"
	TEXTLABEL.FontSize="Size42"
	TEXTLABEL.TextColor3 = COLOR
	TEXTLABEL.TextStrokeTransparency = 0
	TEXTLABEL.TextScaled = true
	TEXTLABEL.TextWrapped = true
	coroutine.resume(coroutine.create(function(THEPART, THEBODYPOSITION, THETEXTLABEL)
		wait(0.2)
		for i=1, 5 do
			wait()
			THEBODYPOSITION.Position = THEPART.Position - VT(0, 0.5 ,0)
		end
		wait(1.2)
		for i=1, 5 do
			wait()
			THETEXTLABEL.TextTransparency = THETEXTLABEL.TextTransparency + 0.2
			THETEXTLABEL.TextStrokeTransparency = THETEXTLABEL.TextStrokeTransparency + 0.2
			THEBODYPOSITION.position = THEPART.Position + VT(0, 0.5, 0)
		end
		THEPART.Parent = nil
	end),STATPART, BODYPOSITION, TEXTLABEL)
end

function IncreaseOrDecreaseStat(LOCATION, STAT, AMOUNT, DURATION, SHOWTHESTAT)
	if LOCATION:FindFirstChild("Stats") ~= nil then
		if LOCATION.Stats:FindFirstChild("Block") ~= nil then
			if LOCATION.Stats:FindFirstChild("Block").Value == true then
				return
			end
		end
		if LOCATION.Stats:FindFirstChild("ChangeStat") ~= nil and LOCATION.Stats:FindFirstChild("Block").Value == false then
			local NewStatChange = IT("NumberValue")
			NewStatChange.Value = AMOUNT
			if STAT == "Defense" then
				NewStatChange.Name = "ChangeDefense"
			elseif STAT == "Damage" then
				NewStatChange.Name = "ChangeDamage"
			elseif STAT == "Movement" then
				NewStatChange.Name = "ChangeMovement"
			end
			if SHOWTHESTAT == true then
				if AMOUNT < 0 then
					StatLabel("Debuff", LOCATION.Head.CFrame * CF(0, 0 + (LOCATION.Head.Size.z - 1), 0), "-"..STAT, C3(1, 1, 1))
				elseif AMOUNT > 0 then
					StatLabel("Debuff", LOCATION.Head.CFrame * CF(0, 0 + (LOCATION.Head.Size.z - 1), 0), "+"..STAT, C3(1, 1, 1))
				end
			end
			if DURATION ~= nil and DURATION ~= 0 then
				local StatDuration = IT("NumberValue")
				StatDuration.Name = "Duration"
				StatDuration.Value = DURATION
				StatDuration.Parent = NewStatChange
			end
			NewStatChange.Parent = LOCATION.Stats:FindFirstChild("ChangeStat")
		end
	end
end

--Usage: DamageFunction(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, hit, false, 5, 10, MRANDOM(5, 10), "Normal", Part, 0.5, false, true, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
function DamageFunction(HITWEAPONSOUND, HITARMORSOUND, HITBLOCKSOUND, HITPLAYERSOUND, HITWEAPONSOUNDPITCH, HITARMORSOUNDPITCH, HITBLOCKSOUNDPITCH, HITPLAYERSOUNDPITCH, HIT, HITEVENWHENDEAD, MINIMUMDAMAGE, MAXIMUMDAMAGE, KNOCKBACK, TYPE, PROPERTY, DELAY, KNOCKBACKTYPE, INCREASESTUN, STAGGER, STAGGERHIT, RANGED, DECREASETHESTAT, DECREASEAMOUNT, DECREASEDURATION, SHOWDECREASEDSTAT)
	if HIT.Parent == nil then
		return
	end
	local HITHUMANOID = HIT.Parent:FindFirstChild("Humanoid")
	for _, v in pairs(HIT.Parent:GetChildren()) do
		if v:IsA("Humanoid") then
			HITHUMANOID = v
            HITHUMANOID.MaxHealth = 100
            if HITHUMANOID.Health > 100 then
            HITHUMANOID.Health = 100
            end
		end
	end
	if HIT.Name == "Hitbox" and RANGED ~= true and HIT.Parent ~= Weapon and Enable_Stagger_Hit == true then
		StaggerHit.Value = true
		if Play_Hitbox_Hit_Sound == true then
			if HITWEAPONSOUND ~= "" and HITWEAPONSOUND ~= "nil" then
				CreateSound(HITWEAPONSOUND, HIT, 1, HITWEAPONSOUNDPITCH)
			end
		end
		return
	end
	if HIT.Parent.Parent:FindFirstChild("Torso") ~= nil or HIT.Parent.Parent:FindFirstChild("UpperTorso") ~= nil then
		HITHUMANOID = HIT.Parent.Parent:FindFirstChild("Humanoid")
	end
	if HIT.Parent.ClassName == "Hat" or HIT.ClassName == "Accessory" then
		HIT = HIT.Parent.Parent:FindFirstChild("Head")
	end
	if HITHUMANOID ~= nil and HIT.Parent.Name ~= Character.Name and (HIT.Parent:FindFirstChild("Torso") ~= nil or HIT.Parent:FindFirstChild("UpperTorso") ~= nil) then
		if HIT.Parent:FindFirstChild("DebounceHit") ~= nil then
			if HIT.Parent.DebounceHit.Value == true then
				return
			end
		end
		if AntiTeamKill.Value == true then
			if Player.Neutral == false and game.Players:GetPlayerFromCharacter(HIT.Parent) ~= nil then
				if game.Players:GetPlayerFromCharacter(HIT.Parent).TeamColor == Player.TeamColor then
					return
				end
			end
		end
		if HITEVENWHENDEAD == false then
			if HIT.Parent:FindFirstChild("Humanoid") ~= nil then
				if HIT.Parent:FindFirstChild("Humanoid").Health <= 0 then
					return
				end
			end
		end
		if HIT.Parent:FindFirstChild("Stats") ~= nil then
			if HIT.Parent.Stats:FindFirstChild("StunValue") ~= nil then
				HIT.Parent.Stats:FindFirstChild("StunValue").Value = HIT.Parent.Stats:FindFirstChild("StunValue").Value + INCREASESTUN
			end
		end
		if HIT.Parent:FindFirstChild("Stats") ~= nil then
			if HIT.Parent.Stats:FindFirstChild("Stagger") ~= nil then
				if STAGGER == true and Enable_Stagger == true then
					HIT.Parent.Stats:FindFirstChild("Stagger").Value = true
				end
			end
		end
		if HIT.Parent:FindFirstChild("Stats") ~= nil then
			if HIT.Parent.Stats:FindFirstChild("Block") ~= nil then
				if HIT.Parent.Stats:FindFirstChild("Block").Value == true then
					HASBEENBLOCKED = true
					if HIT.Parent.Stats:FindFirstChild("Block"):FindFirstChild("BlockDebounce") == nil then
						StatLabel("Interruption", HIT.Parent.Head.CFrame * CF(0, 0 + (HIT.Parent.Head.Size.z - 1), 0), "Blocked!", C3(0, 100 / 255, 255 / 255))
						if RANGED ~= true then
							if HITBLOCKSOUND ~= "" and HITBLOCKSOUND ~= "nil" then
								CreateSound(HITBLOCKSOUND, HIT, 1, HITBLOCKSOUNDPITCH)
							end
						end
						local BlockDebounce = IT("BoolValue", HIT.Parent.Stats:FindFirstChild("Block"))
						BlockDebounce.Name = "BlockDebounce"
						BlockDebounce.Value = true
						if RANGED ~= true then
							game:GetService("Debris"):AddItem(BlockDebounce, 0.5)
						else
							game:GetService("Debris"):AddItem(BlockDebounce, 0.1)
						end
					end
					if RANGED ~= true and Enable_Stagger == true then
						HIT.Parent.Stats:FindFirstChild("Block").Value = false
						Stagger.Value = true
					end
					return
				end
			end
		end
		if DECREASETHESTAT ~= nil then
			if HIT.Parent:FindFirstChild("Stats") ~= nil then
				IncreaseOrDecreaseStat(HIT.Parent, DECREASETHESTAT, DECREASEAMOUNT, DECREASEDURATION, SHOWDECREASEDSTAT)
			end
		end
		local DAMAGE = MRANDOM(MINIMUMDAMAGE,MAXIMUMDAMAGE) * Damage.Value
		if HIT.Parent:FindFirstChild("Stats") ~= nil then
			if HIT.Parent.Stats:FindFirstChild("Defense") ~= nil then
				if CanPenetrateArmor.Value == true then
					DAMAGE = DAMAGE
				else
					DAMAGE = DAMAGE / HIT.Parent.Stats:FindFirstChild("Defense").Value
				end
			elseif HIT.Parent.Stats:FindFirstChild("Defense") == nil then
				DAMAGE = DAMAGE
			end
		end
		if CanCrit.Value == true then
			CRITCHANCENUMBER = MRANDOM(1, CritChance.Value)
			if CRITCHANCENUMBER == 1 then
				DAMAGE = DAMAGE * 2
			end
		end
		DAMAGE = math.floor(DAMAGE)
		if HASBEENBLOCKED == false then
		end
		if DAMAGE <= 3 and HASBEENBLOCKED == false then
			if STAGGERHIT == true and Enable_Stagger_Hit == true and RANGED ~= true then
				StaggerHit.Value = true
			end
			if HITARMORSOUND ~= "" and HITARMORSOUND ~= "nil" then
				CreateSound(HITARMORSOUND, HIT, 1, HITARMORSOUNDPITCH)
			end
		elseif DAMAGE == 100 then
               HITHUMANOID.Health = 0
               HIT.Parent.Torso.Anchored = false
		elseif DAMAGE == 101 then
               HIT.Parent.Torso.Anchored = true
		elseif DAMAGE > 3 then
			HITHUMANOID.Health = HITHUMANOID.Health - DAMAGE
			if HITPLAYERSOUND ~= "" and HITPLAYERSOUND ~= "nil" then
				CreateSound(HITPLAYERSOUND, HIT, 1, HITPLAYERSOUNDPITCH)
			end
		end
		if DAMAGE > 3 and DAMAGE < 20 and HASBEENBLOCKED == false then
			if CanCrit.Value == true and CRITCHANCENUMBER == 1 then
				StatLabel("Normal", HIT.Parent.Head.CFrame * CF(0, 0 + (HIT.Parent.Head.Size.z - 1), 0), "Crit! \n"..DAMAGE, C3(200/255, 0, 0))
				CreateSound("296102734", HIT, 1, 1)
			else
				StatLabel("Normal", HIT.Parent.Head.CFrame * CF(0, 0 + (HIT.Parent.Head.Size.z - 1), 0), DAMAGE, C3(255/255, 220/255, 0))
			end
		elseif DAMAGE >= 20 and HASBEENBLOCKED == false and DAMAGE < 100 then
			HITHUMANOID.Health = HITHUMANOID.Health - DAMAGE
			if CanCrit.Value == true and CRITCHANCENUMBER == 1 then
				StatLabel("Normal", HIT.Parent.Head.CFrame * CF(0, 0 + (HIT.Parent.Head.Size.z - 1), 0), "Crit! \n"..DAMAGE, C3(200/255, 0, 0))
				CreateSound("296102734", HIT, 1, 1)
			else
				StatLabel("Normal", HIT.Parent.Head.CFrame * CF(0, 0 + (HIT.Parent.Head.Size.z - 1), 0), DAMAGE, C3(255/255, 0, 0))
			end
		elseif DAMAGE <= 3 and HASBEENBLOCKED == false then
			HITHUMANOID.Health = HITHUMANOID.Health - DAMAGE
			if CanCrit.Value == true and CRITCHANCENUMBER == 1 then
				StatLabel("Normal", HIT.Parent.Head.CFrame * CF(0, 0 + (HIT.Parent.Head.Size.z - 1), 0), "Crit! \n"..DAMAGE, C3(200/255, 0, 0))
				CreateSound("296102734", HIT, 1, 1)
			else
				StatLabel("Normal", HIT.Parent.Head.CFrame * CF(0, 0 + (HIT.Parent.Head.Size.z - 1), 0), DAMAGE, C3(225/255, 225/255, 225/255))
			end
		end
		if TYPE == "Normal" then
			local vp = IT("BodyVelocity")
			vp.P=500
			vp.maxForce = VT(math.huge, 0, math.huge)
			if KNOCKBACKTYPE == 1 then
				vp.Velocity = PROPERTY.CFrame.lookVector * KNOCKBACK + PROPERTY.Velocity / 1.05
			elseif KNOCKBACKTYPE == 2 then
				vp.Velocity = PROPERTY.CFrame.lookVector * KNOCKBACK
			end
			if KNOCKBACK > 0 and HASBEENBLOCKED == false then
				vp.Parent = HIT--.Parent.Torso
			end
			game:GetService("Debris"):AddItem(vp, 0.5)
		end
		HASBEENBLOCKED = false
		RecentEnemy.Value = HIT.Parent
		local DebounceHit = IT("BoolValue", HIT.Parent)
		DebounceHit.Name = "DebounceHit"
		DebounceHit.Value = true
		game:GetService("Debris"):AddItem(DebounceHit, DELAY)
	end
end

--Usage: MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, Part, 5, true, 5, 10, MRANDOM(5, 10), "Normal", Part, 0.5, false, true, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
function MagnitudeDamage(HITWEAPONSOUND, HITARMORSOUND, HITBLOCKSOUND, HITPLAYERSOUND, HITWEAPONSOUNDPITCH, HITARMORSOUNDPITCH, HITBLOCKSOUNDPITCH, HITPLAYERSOUNDPITCH, PART, MAGNITUDE, HITEVENWHENDEAD, MINIMUMDAMAGE, MAXIMUMDAMAGE, KNOCKBACK, TYPE, PROPERTY, DELAY, KNOCKBACKTYPE, INCREASESTUN, STAGGER, STAGGERHIT, RANGED, MAGNITUDEDECREASETHESTAT, MAGNITUDEDECREASEAMOUNT, MAGNITUDEDECREASEDURATION, MAGNITUDESHOWDECREASEDSTAT)
	for _, c in pairs(workspace:GetChildren()) do
		local HUMANOID = c:FindFirstChild("Humanoid")
		local HEAD = nil
		if HUMANOID ~= nil then
			for _, d in pairs(c:GetChildren()) do
				if d.ClassName == "Model" and RANGED ~= true then
					HEAD = d:FindFirstChild("Hitbox")
					if HEAD ~= nil then
						local THEMAGNITUDE = (HEAD.Position - PART.Position).magnitude
						if THEMAGNITUDE <= (MAGNITUDE * Player_Size) and c.Name ~= Player.Name then
							if Play_Hitbox_Hit_Sound == true then
								local HitRefpart = CreatePart(3, Effects, "SmoothPlastic", 0, 1, "Really black", "Effect", VT())
								HitRefpart.Anchored = true
								HitRefpart.CFrame = CF(HEAD.Position)
								CreateSound(HITWEAPONSOUND, HitRefpart, 1, HITWEAPONSOUNDPITCH)
							end
							if Enable_Stagger_Hit == true then
								StaggerHit.Value = true
							end
						end
					end
				elseif d:IsA"BasePart" then
					HEAD = d
					if HEAD ~= nil then
						local THEMAGNITUDE = (HEAD.Position - PART.Position).magnitude
						if THEMAGNITUDE <= (MAGNITUDE * Player_Size) and c.Name ~= Player.Name then
							DamageFunction(HITWEAPONSOUND, HITARMORSOUND, HITBLOCKSOUND, HITPLAYERSOUND, HITWEAPONSOUNDPITCH, HITARMORSOUNDPITCH, HITBLOCKSOUNDPITCH, HITPLAYERSOUNDPITCH, HEAD, HITEVENWHENDEAD, MINIMUMDAMAGE, MAXIMUMDAMAGE, KNOCKBACK, TYPE, PROPERTY, DELAY, KNOCKBACKTYPE, INCREASESTUN, STAGGER, STAGGERHIT, RANGED, MAGNITUDEDECREASETHESTAT, MAGNITUDEDECREASEAMOUNT, MAGNITUDEDECREASEDURATION, MAGNITUDESHOWDECREASEDSTAT)
						end
					end
				end
			end
		end
	end
end

--Usage: MagnitudeBuffOrDebuff(Part, 5, "Defense", -0.1, 3, true, true)
function MagnitudeBuffOrDebuff(PART, MAGNITUDE, STAT, AMOUNT, DURATION, SHOWBUFFORDEBUFF, APPLYTOOTHERSINSTEAD)
	if Player.Neutral == true then
		IncreaseOrDecreaseStat(Character, STAT, AMOUNT, DURATION, SHOWBUFFORDEBUFF)
	end
	for _, c in pairs(workspace:GetChildren()) do
		local HUMANOID = c:FindFirstChild("Humanoid")
		local THEHEAD = nil
		if HUMANOID ~= nil then
			if c:FindFirstChild("Torso") ~= nil then
				THEHEAD = c:FindFirstChild("Torso")
			elseif c:FindFirstChild("UpperTorso") ~= nil then
				THEHEAD = c:FindFirstChild("UpperTorso")
			end
			if THEHEAD ~= nil then
				local THEMAGNITUDE = (THEHEAD.Position - PART.Position).magnitude
				print("yes 1")
				if APPLYTOOTHERSINSTEAD == true then
					if THEMAGNITUDE <= (MAGNITUDE * Player_Size) and c.Name ~= Player.Name then
						if Player.Neutral == false and game.Players:GetPlayerFromCharacter(THEHEAD.Parent) ~= nil then
							if game.Players:GetPlayerFromCharacter(THEHEAD.Parent).TeamColor == Player.TeamColor then
								IncreaseOrDecreaseStat(THEHEAD.Parent, STAT, AMOUNT, DURATION, SHOWBUFFORDEBUFF)
							end
						end
					end
				elseif APPLYTOOTHERSINSTEAD == false then
					if THEMAGNITUDE <= (MAGNITUDE * Player_Size) then
						if Player.Neutral == false and game.Players:GetPlayerFromCharacter(THEHEAD.Parent) ~= nil then
							if game.Players:GetPlayerFromCharacter(THEHEAD.Parent).TeamColor == Player.TeamColor then
								IncreaseOrDecreaseStat(THEHEAD.Parent, STAT, AMOUNT, DURATION, SHOWBUFFORDEBUFF)
							end
						end
					end
				end
			end
		end
	end
end

--//=================================\\
--\\=================================//





--//=================================\\
--||			WEAPON GUI
--\\=================================//

local MANABAR = CreateFrame(WEAPONGUI, Mana_Bar_Background_Transparency, 2, UD2(0.23, 0, 0.82, 0), UD2(0.26, 0, 0, 0), C3(Custom_Colors.Custom_Color_8.r, Custom_Colors.Custom_Color_8.g, Custom_Colors.Custom_Color_8.b), C3(0, 0, 0),"Mana Bar") 
local MANACOVER = CreateFrame(MANABAR, 0, 2, UD2(0, 0, 0, 0), UD2(0, 0, 1, 0), C3(Custom_Colors.Custom_Color_5.r, Custom_Colors.Custom_Color_5.g, Custom_Colors.Custom_Color_5.b), C3(0, 0, 0),"Mana Cover")
local MANATEXT = CreateLabel(MANABAR, Mana_Name.." ["..FLOOR(Mana.Value).."]", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Mana Text")

local HEALTHBAR = CreateFrame(WEAPONGUI, Health_Bar_Background_Transparency, 2, UD2(0.5, 0, 0.82, 0), UD2(0.26, 0, 0, 0), C3(Custom_Colors.Custom_Color_11.r, Custom_Colors.Custom_Color_11.g, Custom_Colors.Custom_Color_11.b), C3(0, 0, 0), "Health Bar")
local HEALTHCOVER = CreateFrame(HEALTHBAR, 0, 2,UD2(0, 0, 0, 0), UD2(0, 0, 1, 0), C3(Custom_Colors.Custom_Color_6.r, Custom_Colors.Custom_Color_6.g, Custom_Colors.Custom_Color_6.b), C3(0, 0, 0), "Health Cover")
local HEALTHTEXT = CreateLabel(HEALTHBAR, "Health ["..FLOOR(Humanoid.Health).."]", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Health Text")

local STUNFRAME = CreateFrame(nil, Stun_Bar_Background_Transparency, 2, UD2(0.5, 0, 0.78, 0),UD2(0.26, 0, 0, 0),C3(Custom_Colors.Custom_Color_10.r, Custom_Colors.Custom_Color_10.g, Custom_Colors.Custom_Color_10.b), C3(0, 0, 0), "Stun Frame")
local STUNBAR = CreateFrame(STUNFRAME, 0, 2, UD2(0, 0, 0, 0),UD2(0, 0, 1, 0),C3(Custom_Colors.Custom_Color_7.r, Custom_Colors.Custom_Color_7.g, Custom_Colors.Custom_Color_7.b), C3(0, 0, 0), "Stun Bar")
local STUNTEXT = CreateLabel(STUNFRAME, "Stun ["..FLOOR(StunValue.Value).."]", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Stun Text")

local SECONDARYMANABAR = CreateFrame(nil, Secondary_Mana_Bar_Background_Transparency, 2, UD2(0.23, 0, 0.78, 0), UD2(0.26, 0, 0, 0), C3(Custom_Colors.Custom_Color_9.r, Custom_Colors.Custom_Color_9.g, Custom_Colors.Custom_Color_9.b), C3(0, 0, 0),"Secondary Mana Bar") 
local SECONDARYMANACOVER = CreateFrame(SECONDARYMANABAR, 0, 2, UD2(0, 0, 0, 0), UD2(0, 0, 1, 0), C3(Custom_Colors.Custom_Color_4.r, Custom_Colors.Custom_Color_4.g, Custom_Colors.Custom_Color_4.b), C3(0, 0, 0),"Secondary Mana Cover")
local SECONDARYMANATEXT = CreateLabel(SECONDARYMANABAR, Secondary_Mana_Name.." ["..FLOOR(SecondaryMana.Value).."]", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Secondary Mana Text")

local DEFENSEFRAME = CreateFrame(nil, Stat_Background_Transparency, 2, UD2(0.23, 0, Stat_Offset, 0), UD2(0.075, 0, 0, 0), C3(100 / 255, 100 / 255, 255 / 255), C3(0, 0, 0),"Defense Frame")
local DEFENSETEXT = CreateLabel(DEFENSEFRAME, "Defense ["..(Defense.Value * 100).."%]", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Defense Text")

local DAMAGEFRAME = CreateFrame(nil, Stat_Background_Transparency, 2, UD2(0.456, 0, Stat_Offset, 0), UD2(0.075, 0, 0, 0), C3(255 / 255, 100 / 255, 100 / 255), C3(0, 0, 0),"Damage Frame")
local DAMAGETEXT = CreateLabel(DAMAGEFRAME, "Damage ["..(Damage.Value * 100).."%]", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Damage Text")

local MOVEMENTFRAME = CreateFrame(nil, Stat_Background_Transparency, 2, UD2(0.685, 0, Stat_Offset, 0), UD2(0.075, 0, 0, 0), C3(100 / 255, 255 / 255, 100 / 255), C3(0, 0, 0),"Movement Frame")
local MOVEMENTTEXT = CreateLabel(MOVEMENTFRAME, "Movement ["..(Movement.Value * 100).."%]", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Movement Text")

local SKILL1FRAME = CreateFrame(nil, Ability_Background_Transparency, 2, UD2(0.23, 0, 0.86, 0), UD2(0.26, 0, 0, 0), C3(Custom_Colors.Custom_Color_12.r, Custom_Colors.Custom_Color_12.g, Custom_Colors.Custom_Color_12.b), C3(0, 0, 0), "Skill 1 Frame")
local SKILL2FRAME = CreateFrame(nil, Ability_Background_Transparency, 2, UD2(0.50, 0, 0.86, 0), UD2(0.26, 0, 0, 0), C3(Custom_Colors.Custom_Color_12.r, Custom_Colors.Custom_Color_12.g, Custom_Colors.Custom_Color_12.b), C3(0, 0, 0), "Skill 2 Frame")
local SKILL3FRAME = CreateFrame(nil, Ability_Background_Transparency, 2, UD2(0.23, 0, 0.93, 0), UD2(0.26, 0, 0, 0), C3(Custom_Colors.Custom_Color_12.r, Custom_Colors.Custom_Color_12.g, Custom_Colors.Custom_Color_12.b), C3(0, 0, 0), "Skill 3 Frame")
local SKILL4FRAME = CreateFrame(nil, Ability_Background_Transparency, 2, UD2(0.50, 0, 0.93, 0), UD2(0.26, 0, 0, 0), C3(Custom_Colors.Custom_Color_12.r, Custom_Colors.Custom_Color_12.g, Custom_Colors.Custom_Color_12.b), C3(0, 0, 0), "Skill 4 Frame")

local SKILL1BAR = CreateFrame(SKILL1FRAME, 0, 2, UD2(0, 0, 0, 0), UD2(0, 0, 1, 0), C3(Custom_Colors.Custom_Color_3.r, Custom_Colors.Custom_Color_3.g, Custom_Colors.Custom_Color_3.b), C3(0, 0, 0), "Skill 1 Bar")
local SKILL2BAR = CreateFrame(SKILL2FRAME, 0, 2, UD2(0, 0, 0, 0), UD2(0, 0, 1, 0), C3(Custom_Colors.Custom_Color_3.r, Custom_Colors.Custom_Color_3.g, Custom_Colors.Custom_Color_3.b), C3(0, 0, 0), "Skill 2 Bar")
local SKILL3BAR = CreateFrame(SKILL3FRAME, 0, 2, UD2(0, 0, 0, 0), UD2(0, 0, 1, 0), C3(Custom_Colors.Custom_Color_3.r, Custom_Colors.Custom_Color_3.g, Custom_Colors.Custom_Color_3.b), C3(0, 0, 0), "Skill 3 Bar")
local SKILL4BAR = CreateFrame(SKILL4FRAME, 0, 2, UD2(0, 0, 0, 0), UD2(0, 0, 1, 0), C3(Custom_Colors.Custom_Color_3.r, Custom_Colors.Custom_Color_3.g, Custom_Colors.Custom_Color_3.b), C3(0, 0, 0), "Skill 4 Bar")

local SKILL1TEXT = CreateLabel(SKILL1FRAME, "[Z] Ability 1", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Text 1")
local SKILL2TEXT = CreateLabel(SKILL2FRAME, "[X] Ability 2", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Text 2")
local SKILL3TEXT = CreateLabel(SKILL3FRAME, "[C] Ability 3", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Text 3")
local SKILL4TEXT = CreateLabel(SKILL4FRAME, "[V] Ability 4", C3(1, 1, 1), "Size32", "Legacy", 1, 2, 1, "Text 4")

if Enable_Gui == true then
	WEAPONGUI.Parent = PlayerGui
end

if Enable_Stats == true and Show_Stats == true then
	DEFENSEFRAME.Parent = WEAPONGUI
	DAMAGEFRAME.Parent = WEAPONGUI
	MOVEMENTFRAME.Parent = WEAPONGUI
end

if Enable_Secondary_Bar == true then
	SECONDARYMANABAR.Parent = WEAPONGUI
end

if Enable_Abilities == true then
	SKILL1FRAME.Parent = WEAPONGUI
	SKILL2FRAME.Parent = WEAPONGUI
	SKILL3FRAME.Parent = WEAPONGUI
	SKILL4FRAME.Parent = WEAPONGUI
end

if Enable_Stun == true then
	STUNFRAME.Parent = WEAPONGUI
end

function UpdateGUI()
	MANABAR:TweenSize(UD2(0.26, 0, 0.03, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
	MANACOVER:TweenSize(UD2(1 * (Mana.Value / Max_Mana), 0, 1, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
	MANATEXT.Text = Mana_Name.." ["..FLOOR(Mana.Value).."]"
	HEALTHBAR:TweenSize(UD2(0.26, 0, 0.03, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
	HEALTHCOVER:TweenSize(UD2(1 * (Humanoid.Health / Humanoid.MaxHealth), 0, 1, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
	HEALTHTEXT.Text = "Health ["..FLOOR(Humanoid.Health).."]"
	if Enable_Abilities == true then
		SKILL1FRAME:TweenSize(UD2(0.26, 0, 0.06, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		SKILL2FRAME:TweenSize(UD2(0.26, 0, 0.06, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		SKILL3FRAME:TweenSize(UD2(0.26, 0, 0.06, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		SKILL4FRAME:TweenSize(UD2(0.26, 0, 0.06, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		SKILL1BAR:TweenSize(UD2(1 * (CO1 / Cooldown_1), 0, 1, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		SKILL2BAR:TweenSize(UD2(1 * (CO2 / Cooldown_2), 0, 1, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		SKILL3BAR:TweenSize(UD2(1 * (CO3 / Cooldown_3), 0, 1, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		SKILL4BAR:TweenSize(UD2(1 * (CO4 / Cooldown_4), 0, 1, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
	end
	if Enable_Stats == true and Show_Stats == true then
		DEFENSEFRAME:TweenSize(UD2(0.075, 0, 0.03), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		DEFENSETEXT.Text = "Defense ["..(Defense.Value * 100).."%]"
		DAMAGEFRAME:TweenSize(UD2(0.075, 0, 0.03), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		DAMAGETEXT.Text = "Damage ["..(Damage.Value * 100).."%]"
		MOVEMENTFRAME:TweenSize(UD2(0.075, 0, 0.03), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		MOVEMENTTEXT.Text = "Movement ["..(Movement.Value * 100).."%]"
	end
	if Enable_Stun == true then
		STUNFRAME:TweenSize(UD2(0.26, 0, 0.03, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		STUNBAR:TweenSize(UD2(1 * (StunValue.Value / Max_Stun), 0, 1, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		STUNTEXT.Text = "Stun ["..FLOOR(StunValue.Value).."]"
	end
	if Enable_Secondary_Bar == true then
		SECONDARYMANABAR:TweenSize(UD2(0.26, 0, 0.03, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		SECONDARYMANACOVER:TweenSize(UD2(1 * (SecondaryMana.Value / Max_Secondary_Mana), 0, 1, 0), "Out", "Quad", Menu_Update_Speed, Constant_Update)
		SECONDARYMANATEXT.Text = Secondary_Mana_Name.." ["..FLOOR(SecondaryMana.Value).."]"
	end
end

if Enable_Gui == true then
	UpdateGUI()
	for _, v in pairs (WEAPONGUI:GetChildren()) do
		if v.ClassName == "Frame" then
			for _, b in pairs (v:GetChildren()) do
				if b.ClassName == "TextLabel" then
					coroutine.resume(coroutine.create(function(THETEXTLABEL)
						wait(Menu_Update_Speed)
						for i = 1, 0, -0.1 do
							Swait()
							THETEXTLABEL.TextTransparency = i
							THETEXTLABEL.TextStrokeTransparency = i
							end
						THETEXTLABEL.TextTransparency = 0
						THETEXTLABEL.TextStrokeTransparency = 0
					end), b)
				end
			end
		end
	end
end

--//=================================\\
--||        ABYSSAL FUNCTIONS
--\\=================================//

function accessblack()
m = Character:GetChildren()
for i = 1, #m do
if m[i].ClassName == "Accessory" then
m[i].Handle.Transparency = 1
end
end
end

function accessnormal()
m = Character:GetChildren()
for i = 1, #m do
if m[i].ClassName == "Accessory" then
m[i].Handle.Transparency = 0
end
end
end

function cloak()
Face.Texture = AFaceID
accessblack()
m = Character:GetChildren()
for i = 1, #m do
if m[i].ClassName == "Part" then
if m[i]:FindFirstChildOfClass("ParticleEmitter") then
m[i].PE.Enabled = true
m[i].Transparency = 1
end
end
end
end

function decloak()
Face.Texture = FaceID
accessnormal()
m = Character:GetChildren()
for i = 1, #m do
if m[i].ClassName == "Part" then
if m[i]:FindFirstChildOfClass("ParticleEmitter") then
m[i].PE.Enabled = false
m[i].Transparency = 0
end
end
end
end

function warpdecloak()
Face.Texture = ""
HandlePart.Transparency = 1
HitboxPart.Transparency = 1
m = Character:GetChildren()
for i = 1, #m do
if m[i].ClassName == "Part" then
if m[i]:FindFirstChildOfClass("ParticleEmitter") then
m[i].PE.Enabled = false
end
end
end
end

--//=================================\\
--||	     SKILL FUNCTIONS
--\\=================================//

function UpdateSkillsAndStuff()
	if Mana_Regen_Mode == "1" then
		if Mana.Value >= Max_Mana then
			Mana.Value = Max_Mana
		elseif Mana.Value < 0 then
			Mana.Value = 0
		else
			if MANADELAYNUMBER <= Mana_Wait then
				MANADELAYNUMBER = MANADELAYNUMBER + 1
			else
				MANADELAYNUMBER = 0
				Mana.Value = Mana.Value + Recover_Mana
			end
		end
	elseif Mana_Regen_Mode == "2" then
		if Mana.Value <= Max_Mana then
			Mana.Value = Mana.Value + (Recover_Mana / 30) / Animation_Speed
		elseif Mana.Value >= Max_Mana then
			Mana.Value = Max_Mana
		elseif Mana.Value < 0 then
			Mana.Value = 0
		end
	end
	if Enable_Secondary_Bar == true then
		if Secondary_Mana_Regen_Mode == "1" then
			if SecondaryMana.Value >= Max_Secondary_Mana then
				SecondaryMana.Value = Max_Secondary_Mana
			elseif SecondaryMana.Value < 0 then
				SecondaryMana.Value = 0
			else
				if SECONDARYMANADELAYNUMBER <= Secondary_Mana_Wait then
					SECONDARYMANADELAYNUMBER = SECONDARYMANADELAYNUMBER + 1
				else
					SECONDARYMANADELAYNUMBER = 0
					SecondaryMana.Value = SecondaryMana.Value + Recover_Secondary_Mana
				end
			end
		elseif Secondary_Mana_Regen_Mode == "2" then
			if SecondaryMana.Value <= Max_Secondary_Mana then
				SecondaryMana.Value = SecondaryMana.Value + (Recover_Secondary_Mana / 30) / Animation_Speed
			elseif SecondaryMana.Value >= Max_Secondary_Mana then
				SecondaryMana.Value = Max_Secondary_Mana
			elseif SecondaryMana.Value < 0 then
				SecondaryMana.Value = 0
			end
		end
	else
		SecondaryMana.Value = 0
	end
	if Enable_Stun == true then
		if Stun_Lose_Mode == "1" then
			if StunValue.Value > Max_Stun then
				StunValue.Value = Max_Stun
			elseif StunValue.Value <= 0 then
				StunValue.Value = 0
			else
				if STUNDELAYNUMBER <= Stun_Wait then
					STUNDELAYNUMBER = STUNDELAYNUMBER + 1
				else
					STUNDELAYNUMBER = 0
					StunValue.Value = StunValue.Value - Lose_Stun
				end
			end
		elseif Stun_Lose_Mode == "2" then
			if StunValue.Value <= Max_Stun and StunValue.Value > 0 then
				StunValue.Value = StunValue.Value - (Lose_Stun / 30) / Animation_Speed
			elseif StunValue.Value > Max_Stun then
				StunValue.Value = Max_Stun
			elseif StunValue.Value <= 0 then
				StunValue.Value = 0
			end
		end
	else
		StunValue.Value = 0
	end
	if Enable_Abilities == true then
		if CO1 <= Cooldown_1 then
			CO1 = CO1 + (1 / 30) / Animation_Speed
		elseif CO1 >= Cooldown_1 then
			CO1 = Cooldown_1
		end
		if CO2 <= Cooldown_2 then
			CO2 = CO2 + (1 / 30) / Animation_Speed
		elseif CO2 >= Cooldown_2 then
			CO2 = Cooldown_2
		end
		if CO3 <= Cooldown_3 then
			CO3 = CO3 + (1 / 30) / Animation_Speed
		elseif CO3 >= Cooldown_3 then
			CO3 = Cooldown_3
		end
		if CO4 <= Cooldown_4 then
			CO4 = CO4 + (1 / 30) / Animation_Speed
		elseif CO4 >= Cooldown_4 then
			CO4 = Cooldown_4
		end
	end
end

--//=================================\\
--\\=================================//





--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//

function EquipWeapon()
	--ATTACK = true
	DEFENSECHANGE1.Parent = nil
	MOVEMENTCHANGE1.Parent = ChangeStat
	for i=0, 1, 0.5 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-30)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(-20)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.75 * Player_Size, 0 * Player_Size) * ANGLES(RAD(140), RAD(0), RAD(20)) * ANGLES(RAD(0), RAD(45), RAD(0)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-7.5)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.3 / Animation_Speed)
	end
	for i=0, 1, 0.08 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-30)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(-20)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.75 * Player_Size, 0 * Player_Size) * ANGLES(RAD(210), RAD(0), RAD(20)) * ANGLES(RAD(0), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-7.5)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.3 / Animation_Speed)
	end
	HandleWeld.Part0 = RightArm
	HandleWeld.C0 = CF(-0.05 * Player_Size, -1 * Player_Size, -0.05 * Player_Size) * ANGLES(RAD(-27), RAD(0), RAD(-19)) * ANGLES(RAD(0), RAD(110), RAD(0))
	CreateSound("174884033", HitboxPart, 1, 1.5)
	for i=0, 1, 0.5 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-30)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-2.5), RAD(0), RAD(30)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(80)) * ANGLES(RAD(20), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-7.5)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.3 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-70), RAD(90), RAD(0)), 0.3 / Animation_Speed)
	end
	LASTPOINT = EffectPart.CFrame
	for i=0, 1, 0.08 / Animation_Speed do
		Swait()
		TrailEffect("Institutional white", "Neon", EffectPart.CFrame, LASTPOINT, "Block", 0, 0.2, ANGLES(0, 0, 0), -0.01, 0, -0.01, 0.1)
		LASTPOINT = EffectPart.CFrame
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-30)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-2.5), RAD(0), RAD(30)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(80)) * ANGLES(RAD(-60), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-7.5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-140), RAD(90), RAD(0)), 0.3 / Animation_Speed)
	end
	LASTPOINT = nil
	--ATTACK = false
end

function UnequipWeapon()
	--ATTACK = true
	for i=0, 1, 0.5 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-30)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(-20)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.75 * Player_Size, 0 * Player_Size) * ANGLES(RAD(140), RAD(0), RAD(20)) * ANGLES(RAD(0), RAD(45), RAD(0)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-7.5)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.3 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(-0.05 * Player_Size, -1 * Player_Size, -0.05 * Player_Size) * ANGLES(RAD(-27), RAD(0), RAD(-19)) * ANGLES(RAD(0), RAD(110), RAD(0)), 0.3 / Animation_Speed)
	end
	CreateSound("245542809", HitboxPart, 1, 1.2)
	for i=0, 1, 0.08 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-30)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(-20)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.75 * Player_Size, 0 * Player_Size) * ANGLES(RAD(210), RAD(0), RAD(20)) * ANGLES(RAD(0), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-25)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-7.5)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.3 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(-0.05 * Player_Size, -1 * Player_Size, -0.05 * Player_Size) * ANGLES(RAD(-27), RAD(0), RAD(-19)) * ANGLES(RAD(0), RAD(110), RAD(0)), 0.3 / Animation_Speed)
	end
	HandleWeld.Part0 = Torso
	HandleWeld.C0 = CF(2 * Player_Size, 2 * Player_Size, 0.6 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(135))
	for i=0, 1, 0.5 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-30)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-2.5), RAD(0), RAD(30)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.75 * Player_Size, 0 * Player_Size) * ANGLES(RAD(140), RAD(0), RAD(20)) * ANGLES(RAD(0), RAD(45), RAD(0)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-15)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(95), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-7.5)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-55), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.3 / Animation_Speed)
	end
	for i=0, 1, 0.08 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		if Disable_Moving_Arms == false then
			RightShoulder.C1 = Clerp(RightShoulder.C1, ANGLES(0, RAD(90), 0) * CF(0 * Player_Size, 0.5 * Player_Size, -0.5), 0.3 / Animation_Speed)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1, ANGLES(0, RAD(-90), 0) * CF(0 * Player_Size, 0.5 * Player_Size, -0.5), 0.3 / Animation_Speed)
		else
			RightShoulder.C1 = Clerp(RightShoulder.C1, CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size), 0.3 / Animation_Speed)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1, CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size), 0.3 / Animation_Speed)
		end
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.3 / Animation_Speed)
	end
	RootJoint.C0 = ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0))
	RootJoint.C1 = ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0))
	Neck.C0 = NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0))
	Neck.C1 = CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180))
	RightShoulder.C0 = CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)) * RIGHTSHOULDERC0
	LeftShoulder.C0 = CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)) * LEFTSHOULDERC0
	if Disable_Moving_Arms == false then
		RightShoulder.C1 = ANGLES(0, RAD(90), 0) * CF(0 * Player_Size, 0.5 * Player_Size, -0.5)
		LeftShoulder.C1 = ANGLES(0, RAD(-90), 0) * CF(0 * Player_Size, 0.5 * Player_Size, -0.5)
	else
		RightShoulder.C1 = CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
		LeftShoulder.C1 = CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
	end
	RightHip.C0 = CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
	LeftHip.C0 = CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
	RightHip.C1 = CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
	LeftHip.C1 = CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0))
	--ATTACK = false
	DEFENSECHANGE1.Parent = ChangeStat
	MOVEMENTCHANGE1.Parent = nil
end

function StaggerHitAnimation()
	ATTACK = true
	if Weapon:FindFirstChild("Hitbox") ~= nil then
		for i = 1, MRANDOM(2, 4) do
			ClangEffect("Bright yellow", "Neon", CF(Weapon:FindFirstChild("Hitbox").Position) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), 20, 5, 0.2, MRANDOM(5, 15) / 10, 0, -0.02, 0, -0.02, 0.1)
		end
	end
	for i = 0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-10), RAD(0), RAD(-30)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(30)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-30), RAD(0), RAD(60)) * ANGLES(RAD(0), RAD(-30), RAD(0)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-20), RAD(0), RAD(-20)) * ANGLES(RAD(0), RAD(20), RAD(0)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.9 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-20)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1.1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(10)), 0.3 / Animation_Speed)
		if Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	ATTACK = false
end

function StaggerAnimation()
	ATTACK = true
	if Weapon:FindFirstChild("Hitbox") ~= nil then
		for i = 1, MRANDOM(2, 4) do
			ClangEffect("Bright yellow", "Neon", CF(Weapon:FindFirstChild("Hitbox").Position) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), 20, 5, 0.2, MRANDOM(5, 15) / 10, 0, -0.02, 0, -0.02, 0.1)
		end
	end
	DISABLEJUMPING = true
	COMBO = 1
	StatLabel("Interruption", Head.CFrame * CF(0, 0 + (Head.Size.z - 1), 0), "Staggered!", C3(255 / 255, 255 / 255, 0))
	local STAGGERVELOCITY = Instance.new("BodyVelocity",Torso)
	STAGGERVELOCITY.P = 500
	STAGGERVELOCITY.maxForce = VT(math.huge, 0, math.huge)
	if Rooted.Value == false then
		STAGGERVELOCITY.Velocity = RootPart.CFrame.lookVector * -40
	end
	for i = 0, 1, 0.35 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(2.5), RAD(0), RAD(20)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size,0 * Player_Size) * ANGLES(RAD(-15), RAD(0), RAD(30)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size,0 * Player_Size) * ANGLES(RAD(-7.5), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size,0 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(30)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size,0 * Player_Size) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(5)), 0.3 / Animation_Speed)
	end
	for i = 0, 1, 0.2 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.25 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(-20)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-15), RAD(0), RAD(30)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-7.5), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(50)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(25)), 0.4 / Animation_Speed)
	end
	STAGGERVELOCITY.Parent = nil
	for i = 1, 50 * Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -1.8 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-20)) * ANGLES(RAD(-5), RAD(-5), RAD(0)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(20), RAD(0), RAD(20)) * ANGLES(RAD(0), RAD(5), RAD(0)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(20)) * ANGLES(RAD(0), RAD(-20), RAD(0)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-15), RAD(0), RAD(-10)) * ANGLES(RAD(0), RAD(15), RAD(0)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.4 * Player_Size, -0.3 * Player_Size) * ANGLES(RAD(0), RAD(75), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(70)) * ANGLES(RAD(0), RAD(30), RAD(0)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, 0.5 * Player_Size, -0.5 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(-10)), 0.3 / Animation_Speed)
	end
	DISABLEJUMPING = false
	ATTACK = false
end

function StunAnimation()
	ATTACK = true
	DISABLEJUMPING = true
	COMBO = 1
	StatLabel("Interruption", Head.CFrame * CF(0, 0 + (Head.Size.z - 1), 0), "Stunned!", C3(255 / 255, 255 / 255, 0))
	for i = 0, 1, 0.3 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.05 * Player_Size) * ANGLES(RAD(15), RAD(0), RAD(-150)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-10), RAD(0), RAD(-20)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(30), RAD(0), RAD(40)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-20), RAD(0), RAD(-50)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(30)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(20)), 0.3 / Animation_Speed)
	end
	for i = 0, 1, 0.3 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.05 * Player_Size) * ANGLES(RAD(45), RAD(0), RAD(-180)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-15), RAD(0), RAD(-30)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(30), RAD(0), RAD(40)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-20), RAD(0), RAD(-50)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(15)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(50)), 0.4 / Animation_Speed)
	end
	for i = 0, 1, 0.3 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.3 * Player_Size) * ANGLES(RAD(75), RAD(0), RAD(-180)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-15), RAD(0), RAD(-60)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(20), RAD(0), RAD(70)) * ANGLES(RAD(0), RAD(30), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-10), RAD(0), RAD(-80)) * ANGLES(RAD(0), RAD(-40), RAD(0)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-15), RAD(0), RAD(10)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(80)), 0.4 / Animation_Speed)
	end
	for i = 1, 70 * Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -2.5 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-180)), 0.3 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.3 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(-10), RAD(90)) * RIGHTSHOULDERC0, 0.3 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(-90)) * LEFTSHOULDERC0, 0.3 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, 0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 0.3 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(0)), 0.3 / Animation_Speed)
	end
	for i = 0, 1, 0.2 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -1.5 * Player_Size) * ANGLES(RAD(20), RAD(0), RAD(100)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-30)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-20), RAD(-10), RAD(30)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(80), RAD(0), RAD(20)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(60), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(70)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.25 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(20)), 0.4 / Animation_Speed)
	end
	DISABLEJUMPING = false
	ATTACK = false
end

function EAbility()
	ATTACK = true
	ATTACK = false
end

function AbyssAttack1()
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(20)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.25 * Player_Size, 0.5 * Player_Size, -0.5 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-70)) * ANGLES(RAD(20), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(-35)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(15)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-110), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	CreateSound("553461718", HitboxPart, 1.2, MRANDOM(7, 9) / 10)
    attacksound1.Volume = 3
	attacksound1:Play()
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		local Pos = HitboxPart
		local Offset = HitboxPart.CFrame * CF(0, 0.1 * Player_Size, 0)
		local Color = "Really black"
		local Material = "Neon"
		local TheDelay = 0.01
		local Height = 6.2 * Player_Size
		BLCF = Offset
		if SCFR and (Pos.Position - SCFR.p).magnitude > 0.1 then
			local a, b = Triangle(Color, Material, (SCFR * CF(0, Height / 2,0)).p, (SCFR * CF(0, -Height / 2, 0)).p, (BLCF * CF(0, Height / 2,0)).p, TheDelay)
			if a then game:GetService("Debris"):AddItem(a, 1) end
			if b then game:GetService("Debris"):AddItem(b, 1) end
			local a, b = Triangle(Color, Material, (BLCF * CF(0, Height / 2, 0)).p, (BLCF * CF(0, -Height / 2, 0)).p, (SCFR * CF(0, -Height / 2, 0)).p, TheDelay)
			if a then game:GetService("Debris"):AddItem(a, 1) end
			if b then game:GetService("Debris"):AddItem(b, 1) end
			SCFR = BLCF
		elseif not SCFR then
			SCFR = BLCF
		end
		MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, HitboxPart, 4, false, 10, 20, MRANDOM(5, 10), "Normal", RootPart, 0.5, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-30)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(2.5), RAD(0), RAD(30)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(100)) * ANGLES(RAD(-30), RAD(80), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-15), RAD(0), RAD(-55)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-130), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	BLCF = nil
	SCFR = nil
	ATTACK = false
end

function AbyssAttack2()
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-40)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(35)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(150), RAD(0), RAD(-20)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.075 * Player_Size) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-80), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	CreateSound("553461842", HitboxPart, 1.2, MRANDOM(8, 9) / 10)
    attacksound2.Volume = 3
	attacksound2:Play()
	local HASHITFLOOR = false
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		local Pos = HitboxPart
		local Offset = HitboxPart.CFrame * CF(0, 0.1 * Player_Size, 0)
		local Color = "Really black"
		local Material = "Neon"
		local TheDelay = 0.01
		local Height = 6.2 * Player_Size
		BLCF = Offset
		if SCFR and (Pos.Position - SCFR.p).magnitude > 0.1 then
			local a, b = Triangle(Color, Material, (SCFR * CF(0, Height / 2,0)).p, (SCFR * CF(0, -Height / 2, 0)).p, (BLCF * CF(0, Height / 2,0)).p, TheDelay)
			if a then game:GetService("Debris"):AddItem(a, 1) end
			if b then game:GetService("Debris"):AddItem(b, 1) end
			local a, b = Triangle(Color, Material, (BLCF * CF(0, Height / 2, 0)).p, (BLCF * CF(0, -Height / 2, 0)).p, (SCFR * CF(0, -Height / 2, 0)).p, TheDelay)
			if a then game:GetService("Debris"):AddItem(a, 1) end
			if b then game:GetService("Debris"):AddItem(b, 1) end
			SCFR = BLCF
		elseif not SCFR then
			SCFR = BLCF
		end
		local SWORDHIT, SWORDPOS = Raycast(EffectPart.Position, (CF(EffectPart.Position, EffectPart.Position + VT(0, -1, 0))).lookVector, 1 * Player_Size, Character)
		if SWORDHIT ~= nil and HASHITFLOOR == false and SWORDHIT.Parent:FindFirstChild("Humanoid") == nil then
			HASHITFLOOR = true
			--print(SWORDHIT.Material)
			if SWORDHIT.Material == Enum.Material.Grass or SWORDHIT.Material == Enum.Material.Ice or SWORDHIT.Material == Enum.Material.Fabric or SWORDHIT.Material == Enum.Material.SmoothPlastic or SWORDHIT.Material == Enum.Material.Sand or SWORDHIT.Material == Enum.Material.Plastic or SWORDHIT.Material == Enum.Material.Neon or SWORDHIT.Material == Enum.Material.Foil then
				CreateSound("525717773", EffectPart, 1.2 , MRANDOM(8, 12) / 10)
			elseif SWORDHIT.Material == Enum.Material.Metal or SWORDHIT.Material == Enum.Material.Concrete or SWORDHIT.Material == Enum.Material.Brick or SWORDHIT.Material == Enum.Material.CorrodedMetal or SWORDHIT.Material == Enum.Material.Slate or SWORDHIT.Material == Enum.Material.Marble or SWORDHIT.Material == Enum.Material.Granite or SWORDHIT.Material == Enum.Material.DiamondPlate or SWORDHIT.Material == Enum.Material.Pebble or SWORDHIT.Material == Enum.Material.Cobblestone then
				CreateSound("470790670", EffectPart, 1 , MRANDOM(8, 12) / 10)
				for i = 1, MRANDOM(2, 4) do
					ClangEffect("Bright yellow", "Neon", CF(SWORDPOS) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), 10, 3, 0.2, MRANDOM(5, 15) / 10, 0, -0.02, 0, -0.02, 0.1)
				end
			elseif SWORDHIT.Material == Enum.Material.Wood or SWORDHIT.Material == Enum.Material.WoodPlanks then
				CreateSound("514586161", EffectPart, 1 , MRANDOM(8, 12) / 10)
			end
		end
		MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, HitboxPart, 4, false, 20, 40, MRANDOM(5, 10), "Normal", RootPart, 0.5, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
		if HASHITFLOOR == true then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(30)), 0.4 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-20)), 0.4 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(40), RAD(0), RAD(5)) * ANGLES(RAD(0), RAD(-30), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.075 * Player_Size) * ANGLES(RAD(0), RAD(50), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(17.5)), 0.4 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(5)), 0.4 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-132.5), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		else
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(30)), 0.4 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-20)), 0.4 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(30), RAD(0), RAD(5)) * ANGLES(RAD(0), RAD(-30), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.075 * Player_Size) * ANGLES(RAD(0), RAD(50), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(17.5)), 0.4 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(5)), 0.4 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-150), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		end
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	BLCF = nil
	SCFR = nil
	ATTACK = false
end

function AbyssAttack3()
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-30)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(2.5), RAD(0), RAD(30)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(100)) * ANGLES(RAD(-30), RAD(80), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-15), RAD(0), RAD(-55)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-130), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	CreateSound("553461718", HitboxPart, 1.2, MRANDOM(7, 9) / 10)
    attacksound3.Volume = 3
	attacksound3:Play()
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		local Pos = HitboxPart
		local Offset = HitboxPart.CFrame * CF(0, 0.1 * Player_Size, 0)
		local Color = "Really black"
		local Material = "Neon"
		local TheDelay = 0.01
		local Height = 6.2 * Player_Size
		BLCF = Offset
		if SCFR and (Pos.Position - SCFR.p).magnitude > 0.1 then
			local a, b = Triangle(Color, Material, (SCFR * CF(0, Height / 2,0)).p, (SCFR * CF(0, -Height / 2, 0)).p, (BLCF * CF(0, Height / 2,0)).p, TheDelay)
			if a then game:GetService("Debris"):AddItem(a, 1) end
			if b then game:GetService("Debris"):AddItem(b, 1) end
			local a, b = Triangle(Color, Material, (BLCF * CF(0, Height / 2, 0)).p, (BLCF * CF(0, -Height / 2, 0)).p, (SCFR * CF(0, -Height / 2, 0)).p, TheDelay)
			if a then game:GetService("Debris"):AddItem(a, 1) end
			if b then game:GetService("Debris"):AddItem(b, 1) end
			SCFR = BLCF
		elseif not SCFR then
			SCFR = BLCF
		end
		MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, HitboxPart, 4, false, 30, 60, MRANDOM(5, 10), "Normal", RootPart, 0.5, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(20)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.25 * Player_Size, 0.5 * Player_Size, -0.5 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-70)) * ANGLES(RAD(20), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(-35)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(15)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-110), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	BLCF = nil
	SCFR = nil
	ATTACK = false
end

function AbyssAttack4()
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(30)), 0.4 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-20)), 0.4 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(30), RAD(0), RAD(5)) * ANGLES(RAD(0), RAD(-30), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.075 * Player_Size) * ANGLES(RAD(0), RAD(50), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(17.5)), 0.4 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(5)), 0.4 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-100), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	CreateSound("553461842", HitboxPart, 1.2, MRANDOM(8, 9) / 10)
    attacksound4.Volume = 3
	attacksound4:Play()
	local HASHITFLOOR = false
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		local Pos = HitboxPart
		local Offset = HitboxPart.CFrame * CF(0, 0.1 * Player_Size, 0)
		local Color = "Really black"
		local Material = "Neon"
		local TheDelay = 0.01
		local Height = 6.2 * Player_Size
		BLCF = Offset
		if SCFR and (Pos.Position - SCFR.p).magnitude > 0.1 then
			local a, b = Triangle(Color, Material, (SCFR * CF(0, Height / 2,0)).p, (SCFR * CF(0, -Height / 2, 0)).p, (BLCF * CF(0, Height / 2,0)).p, TheDelay)
			if a then game:GetService("Debris"):AddItem(a, 1) end
			if b then game:GetService("Debris"):AddItem(b, 1) end
			local a, b = Triangle(Color, Material, (BLCF * CF(0, Height / 2, 0)).p, (BLCF * CF(0, -Height / 2, 0)).p, (SCFR * CF(0, -Height / 2, 0)).p, TheDelay)
			if a then game:GetService("Debris"):AddItem(a, 1) end
			if b then game:GetService("Debris"):AddItem(b, 1) end
			SCFR = BLCF
		elseif not SCFR then
			SCFR = BLCF
		end
		local SWORDHIT, SWORDPOS = Raycast(EffectPart.Position, (CF(EffectPart.Position, EffectPart.Position + VT(0, -1, 0))).lookVector, 1 * Player_Size, Character)
		if SWORDHIT ~= nil and HASHITFLOOR == false and SWORDHIT.Parent:FindFirstChild("Humanoid") == nil then
			HASHITFLOOR = true
			--print(SWORDHIT.Material)
			if SWORDHIT.Material == Enum.Material.Grass or SWORDHIT.Material == Enum.Material.Ice or SWORDHIT.Material == Enum.Material.Fabric or SWORDHIT.Material == Enum.Material.SmoothPlastic or SWORDHIT.Material == Enum.Material.Sand or SWORDHIT.Material == Enum.Material.Plastic or SWORDHIT.Material == Enum.Material.Neon or SWORDHIT.Material == Enum.Material.Foil then
				CreateSound("525717773", EffectPart, 1.2 , MRANDOM(8, 12) / 10)
			elseif SWORDHIT.Material == Enum.Material.Metal or SWORDHIT.Material == Enum.Material.Concrete or SWORDHIT.Material == Enum.Material.Brick or SWORDHIT.Material == Enum.Material.CorrodedMetal or SWORDHIT.Material == Enum.Material.Slate or SWORDHIT.Material == Enum.Material.Marble or SWORDHIT.Material == Enum.Material.Granite or SWORDHIT.Material == Enum.Material.DiamondPlate or SWORDHIT.Material == Enum.Material.Pebble or SWORDHIT.Material == Enum.Material.Cobblestone then
				CreateSound("470790670", EffectPart, 1 , MRANDOM(8, 12) / 10)
				for i = 1, MRANDOM(2, 4) do
					ClangEffect("Bright yellow", "Neon", CF(SWORDPOS) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), 10, 3, 0.2, MRANDOM(5, 15) / 10, 0, -0.02, 0, -0.02, 0.1)
				end
			elseif SWORDHIT.Material == Enum.Material.Wood or SWORDHIT.Material == Enum.Material.WoodPlanks then
				CreateSound("514586161", EffectPart, 1 , MRANDOM(8, 12) / 10)
			end
		end
		MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, HitboxPart, 4, false, 50, 80, MRANDOM(5, 10), "Normal", RootPart, 0.5, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-40)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(35)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(150), RAD(0), RAD(-20)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.075 * Player_Size) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-80), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	BLCF = nil
	SCFR = nil
	ATTACK = false
end

function Attack1()
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(20)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.25 * Player_Size, 0.5 * Player_Size, -0.5 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-70)) * ANGLES(RAD(20), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(-35)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(15)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-110), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	CreateSound("553461718", HitboxPart, 1.2, MRANDOM(7, 9) / 10)
    attacksound1.Volume = 3
	attacksound1:Play()
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		local Pos = HitboxPart
		local Offset = HitboxPart.CFrame * CF(0, 0.1 * Player_Size, 0)
		local Color = "Institutional white"
		local Material = "Neon"
		local TheDelay = 0.01
		local Height = 6.2 * Player_Size
		BLCF = Offset
		if SCFR and (Pos.Position - SCFR.p).magnitude > 0.1 then
			local a, b = Triangle(Color, Material, (SCFR * CF(0, Height / 2,0)).p, (SCFR * CF(0, -Height / 2, 0)).p, (BLCF * CF(0, Height / 2,0)).p, TheDelay)
			if a then game:GetService("Debris"):AddItem(a, 1) end
			if b then game:GetService("Debris"):AddItem(b, 1) end
			local a, b = Triangle(Color, Material, (BLCF * CF(0, Height / 2, 0)).p, (BLCF * CF(0, -Height / 2, 0)).p, (SCFR * CF(0, -Height / 2, 0)).p, TheDelay)
			if a then game:GetService("Debris"):AddItem(a, 1) end
			if b then game:GetService("Debris"):AddItem(b, 1) end
			SCFR = BLCF
		elseif not SCFR then
			SCFR = BLCF
		end
		MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, HitboxPart, 4, false, 5, 10, MRANDOM(5, 10), "Normal", RootPart, 0.5, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-30)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(2.5), RAD(0), RAD(30)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(100)) * ANGLES(RAD(-30), RAD(80), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-15), RAD(0), RAD(-55)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-130), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	BLCF = nil
	SCFR = nil
	ATTACK = false
end

function Attack2()
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-40)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(35)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(150), RAD(0), RAD(-20)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.075 * Player_Size) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-80), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	CreateSound("553461842", HitboxPart, 1.2, MRANDOM(8, 9) / 10)
    attacksound2.Volume = 3
	attacksound2:Play()
	local HASHITFLOOR = false
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		local Pos = HitboxPart
		local Offset = HitboxPart.CFrame * CF(0, 0.1 * Player_Size, 0)
		local Color = "Institutional white"
		local Material = "Neon"
		local TheDelay = 0.01
		local Height = 6.2 * Player_Size
		BLCF = Offset
		if SCFR and (Pos.Position - SCFR.p).magnitude > 0.1 then
			local a, b = Triangle(Color, Material, (SCFR * CF(0, Height / 2,0)).p, (SCFR * CF(0, -Height / 2, 0)).p, (BLCF * CF(0, Height / 2,0)).p, TheDelay)
			if a then game:GetService("Debris"):AddItem(a, 1) end
			if b then game:GetService("Debris"):AddItem(b, 1) end
			local a, b = Triangle(Color, Material, (BLCF * CF(0, Height / 2, 0)).p, (BLCF * CF(0, -Height / 2, 0)).p, (SCFR * CF(0, -Height / 2, 0)).p, TheDelay)
			if a then game:GetService("Debris"):AddItem(a, 1) end
			if b then game:GetService("Debris"):AddItem(b, 1) end
			SCFR = BLCF
		elseif not SCFR then
			SCFR = BLCF
		end
		local SWORDHIT, SWORDPOS = Raycast(EffectPart.Position, (CF(EffectPart.Position, EffectPart.Position + VT(0, -1, 0))).lookVector, 1 * Player_Size, Character)
		if SWORDHIT ~= nil and HASHITFLOOR == false and SWORDHIT.Parent:FindFirstChild("Humanoid") == nil then
			HASHITFLOOR = true
			--print(SWORDHIT.Material)
			if SWORDHIT.Material == Enum.Material.Grass or SWORDHIT.Material == Enum.Material.Ice or SWORDHIT.Material == Enum.Material.Fabric or SWORDHIT.Material == Enum.Material.SmoothPlastic or SWORDHIT.Material == Enum.Material.Sand or SWORDHIT.Material == Enum.Material.Plastic or SWORDHIT.Material == Enum.Material.Neon or SWORDHIT.Material == Enum.Material.Foil then
				CreateSound("525717773", EffectPart, 1.2 , MRANDOM(8, 12) / 10)
			elseif SWORDHIT.Material == Enum.Material.Metal or SWORDHIT.Material == Enum.Material.Concrete or SWORDHIT.Material == Enum.Material.Brick or SWORDHIT.Material == Enum.Material.CorrodedMetal or SWORDHIT.Material == Enum.Material.Slate or SWORDHIT.Material == Enum.Material.Marble or SWORDHIT.Material == Enum.Material.Granite or SWORDHIT.Material == Enum.Material.DiamondPlate or SWORDHIT.Material == Enum.Material.Pebble or SWORDHIT.Material == Enum.Material.Cobblestone then
				CreateSound("470790670", EffectPart, 1 , MRANDOM(8, 12) / 10)
				for i = 1, MRANDOM(2, 4) do
					ClangEffect("Bright yellow", "Neon", CF(SWORDPOS) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), 10, 3, 0.2, MRANDOM(5, 15) / 10, 0, -0.02, 0, -0.02, 0.1)
				end
			elseif SWORDHIT.Material == Enum.Material.Wood or SWORDHIT.Material == Enum.Material.WoodPlanks then
				CreateSound("514586161", EffectPart, 1 , MRANDOM(8, 12) / 10)
			end
		end
		MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, HitboxPart, 4, false, 10, 20, MRANDOM(5, 10), "Normal", RootPart, 0.5, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
		if HASHITFLOOR == true then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(30)), 0.4 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-20)), 0.4 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(40), RAD(0), RAD(5)) * ANGLES(RAD(0), RAD(-30), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.075 * Player_Size) * ANGLES(RAD(0), RAD(50), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(17.5)), 0.4 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(5)), 0.4 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-132.5), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		else
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(30)), 0.4 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-20)), 0.4 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(30), RAD(0), RAD(5)) * ANGLES(RAD(0), RAD(-30), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.075 * Player_Size) * ANGLES(RAD(0), RAD(50), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(17.5)), 0.4 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(5)), 0.4 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-150), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		end
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	BLCF = nil
	SCFR = nil
	ATTACK = false
end

function Attack3()
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-30)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(2.5), RAD(0), RAD(30)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(100)) * ANGLES(RAD(-30), RAD(80), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-15), RAD(0), RAD(-55)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-130), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	CreateSound("553461718", HitboxPart, 1.2, MRANDOM(7, 9) / 10)
    attacksound3.Volume = 3
	attacksound3:Play()
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		local Pos = HitboxPart
		local Offset = HitboxPart.CFrame * CF(0, 0.1 * Player_Size, 0)
		local Color = "Institutional white"
		local Material = "Neon"
		local TheDelay = 0.01
		local Height = 6.2 * Player_Size
		BLCF = Offset
		if SCFR and (Pos.Position - SCFR.p).magnitude > 0.1 then
			local a, b = Triangle(Color, Material, (SCFR * CF(0, Height / 2,0)).p, (SCFR * CF(0, -Height / 2, 0)).p, (BLCF * CF(0, Height / 2,0)).p, TheDelay)
			if a then game:GetService("Debris"):AddItem(a, 1) end
			if b then game:GetService("Debris"):AddItem(b, 1) end
			local a, b = Triangle(Color, Material, (BLCF * CF(0, Height / 2, 0)).p, (BLCF * CF(0, -Height / 2, 0)).p, (SCFR * CF(0, -Height / 2, 0)).p, TheDelay)
			if a then game:GetService("Debris"):AddItem(a, 1) end
			if b then game:GetService("Debris"):AddItem(b, 1) end
			SCFR = BLCF
		elseif not SCFR then
			SCFR = BLCF
		end
		MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, HitboxPart, 4, false, 15, 30, MRANDOM(5, 10), "Normal", RootPart, 0.5, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(20)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(0.25 * Player_Size, 0.5 * Player_Size, -0.5 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-70)) * ANGLES(RAD(20), RAD(90), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-25), RAD(0), RAD(-35)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(65), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(15)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-80), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-110), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	BLCF = nil
	SCFR = nil
	ATTACK = false
end

function Attack4()
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(30)), 0.4 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(-20)), 0.4 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(30), RAD(0), RAD(5)) * ANGLES(RAD(0), RAD(-30), RAD(0)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.075 * Player_Size) * ANGLES(RAD(0), RAD(50), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(17.5)), 0.4 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(5)), 0.4 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-100), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	CreateSound("553461842", HitboxPart, 1.2, MRANDOM(8, 9) / 10)
    attacksound4.Volume = 3
	attacksound4:Play()
	local HASHITFLOOR = false
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		local Pos = HitboxPart
		local Offset = HitboxPart.CFrame * CF(0, 0.1 * Player_Size, 0)
		local Color = "Institutional white"
		local Material = "Neon"
		local TheDelay = 0.01
		local Height = 6.2 * Player_Size
		BLCF = Offset
		if SCFR and (Pos.Position - SCFR.p).magnitude > 0.1 then
			local a, b = Triangle(Color, Material, (SCFR * CF(0, Height / 2,0)).p, (SCFR * CF(0, -Height / 2, 0)).p, (BLCF * CF(0, Height / 2,0)).p, TheDelay)
			if a then game:GetService("Debris"):AddItem(a, 1) end
			if b then game:GetService("Debris"):AddItem(b, 1) end
			local a, b = Triangle(Color, Material, (BLCF * CF(0, Height / 2, 0)).p, (BLCF * CF(0, -Height / 2, 0)).p, (SCFR * CF(0, -Height / 2, 0)).p, TheDelay)
			if a then game:GetService("Debris"):AddItem(a, 1) end
			if b then game:GetService("Debris"):AddItem(b, 1) end
			SCFR = BLCF
		elseif not SCFR then
			SCFR = BLCF
		end
		local SWORDHIT, SWORDPOS = Raycast(EffectPart.Position, (CF(EffectPart.Position, EffectPart.Position + VT(0, -1, 0))).lookVector, 1 * Player_Size, Character)
		if SWORDHIT ~= nil and HASHITFLOOR == false and SWORDHIT.Parent:FindFirstChild("Humanoid") == nil then
			HASHITFLOOR = true
			--print(SWORDHIT.Material)
			if SWORDHIT.Material == Enum.Material.Grass or SWORDHIT.Material == Enum.Material.Ice or SWORDHIT.Material == Enum.Material.Fabric or SWORDHIT.Material == Enum.Material.SmoothPlastic or SWORDHIT.Material == Enum.Material.Sand or SWORDHIT.Material == Enum.Material.Plastic or SWORDHIT.Material == Enum.Material.Neon or SWORDHIT.Material == Enum.Material.Foil then
				CreateSound("525717773", EffectPart, 1.2 , MRANDOM(8, 12) / 10)
			elseif SWORDHIT.Material == Enum.Material.Metal or SWORDHIT.Material == Enum.Material.Concrete or SWORDHIT.Material == Enum.Material.Brick or SWORDHIT.Material == Enum.Material.CorrodedMetal or SWORDHIT.Material == Enum.Material.Slate or SWORDHIT.Material == Enum.Material.Marble or SWORDHIT.Material == Enum.Material.Granite or SWORDHIT.Material == Enum.Material.DiamondPlate or SWORDHIT.Material == Enum.Material.Pebble or SWORDHIT.Material == Enum.Material.Cobblestone then
				CreateSound("470790670", EffectPart, 1 , MRANDOM(8, 12) / 10)
				for i = 1, MRANDOM(2, 4) do
					ClangEffect("Bright yellow", "Neon", CF(SWORDPOS) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), 10, 3, 0.2, MRANDOM(5, 15) / 10, 0, -0.02, 0, -0.02, 0.1)
				end
			elseif SWORDHIT.Material == Enum.Material.Wood or SWORDHIT.Material == Enum.Material.WoodPlanks then
				CreateSound("514586161", EffectPart, 1 , MRANDOM(8, 12) / 10)
			end
		end
		MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, HitboxPart, 4, false, 25, 40, MRANDOM(5, 10), "Normal", RootPart, 0.5, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-40)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(35)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(150), RAD(0), RAD(-20)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.075 * Player_Size) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-80), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	BLCF = nil
	SCFR = nil
	ATTACK = false
end

function part2(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp=Instance.new("Part")
fp.formFactor=formfactor 
fp.Parent=Effects
fp.Reflectance=reflectance
fp.Transparency=transparency
fp.CanCollide=false 
fp.Locked=true
fp.BrickColor=brickcolor
fp.Name=name
fp.Size=size
fp.Position=Torso.Position 
fp.Material="SmoothPlastic"
fp:BreakJoints()
return fp 
end 

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

euler=CFrame.fromEulerAnglesXYZ
vt=Vector3.new

	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=Instance.new(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end

function MagicBlock3(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part2(3,char,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.Material = "Neon"
prt.CFrame=cframe
prt.CFrame=prt.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
Swait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end

angles=CFrame.Angles

function Quickslashes()
	ATTACK = true
    Humanoid.WalkSpeed = 0
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-40)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(35)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(150), RAD(0), RAD(-20)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.075 * Player_Size) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-80), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-40)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(35)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-20)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.075 * Player_Size) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-170), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
    Humanoid.WalkSpeed = 16
    RightArm.Transparency = 1
    HandlePart.Transparency = 1
    for i = 1, 15 do
local spread=vt((math.random(-1,0)+math.random())*16,(math.random(-1,0)+math.random())*16,(math.random(-1,0)+math.random())*16)*(HitboxPart.Position-(HitboxPart.Position+vt(0,-1,0))).magnitude/100
local TheHit=HitboxPart.Position+vt(0,-1,0)
local MouseLook=cf((HitboxPart.Position+TheHit)/2,TheHit+spread)
local hit,pos = rayCast(HitboxPart.Position,MouseLook.lookVector,999,Character)
local mag=(HitboxPart.Position-pos).magnitude 
MagicCylinder2(BrickColor.new("Institutional white"),CFrame.new((HitboxPart.Position+pos)/2,pos)*angles(1.57,0,0) ,1,mag*1,1,0.5,0,0.5,0.05)
    mat = math.random(1,3)
    if mat ~= 2 then
	CreateSound("553461718", HitboxPart, 1.2, MRANDOM(7, 9) / 10)
    end
	for i= 1, 5 do
		Swait()
    end
		MagnitudeDamage("", "", "", HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, HitboxPart, 7, false, 4, 5, MRANDOM(5, 10), "Normal", RootPart, 0.01, 0.1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
    Swait(1)
    end
    RightArm.Transparency = 0
    HandlePart.Transparency = 0
	BLCF = nil
	SCFR = nil
	ATTACK = false
end

function Abyssslashes()
	ATTACK = true
    Humanoid.WalkSpeed = 0
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-40)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(35)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(150), RAD(0), RAD(-20)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.075 * Player_Size) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-80), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-40)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5), RAD(0), RAD(35)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-20)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(80), RAD(0)) * ANGLES(RAD(-10), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, -0.075 * Player_Size) * ANGLES(RAD(0), RAD(-45), RAD(0)) * ANGLES(RAD(-2.5), RAD(0), RAD(-15)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-170), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
    Humanoid.WalkSpeed = 25
    RightArm.PE.Enabled = false
    HandlePart.Transparency = 1
    for i = 1, 15 do
local spread=vt((math.random(-1,0)+math.random())*16,(math.random(-1,0)+math.random())*16,(math.random(-1,0)+math.random())*16)*(HitboxPart.Position-(HitboxPart.Position+vt(0,-1,0))).magnitude/100
local TheHit=HitboxPart.Position+vt(0,-1,0)
local MouseLook=cf((HitboxPart.Position+TheHit)/2,TheHit+spread)
local hit,pos = rayCast(HitboxPart.Position,MouseLook.lookVector,999,Character)
local mag=(HitboxPart.Position-pos).magnitude 
MagicCylinder2(BrickColor.new("Really black"),CFrame.new((HitboxPart.Position+pos)/2,pos)*angles(1.57,0,0) ,1,mag*1,1,0.5,0,0.5,0.05)
    mat = math.random(1,3)
    if mat ~= 2 then
	CreateSound("553461718", HitboxPart, 1.2, MRANDOM(7, 9) / 10)
    end
	for i= 1, 5 do
		Swait()
    end
		MagnitudeDamage("", "", "", HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, HitboxPart, 7, false, 10, 12, MRANDOM(5, 10), "Normal", RootPart, 0.02, 0.1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
    Swait(1)
    end
    RightArm.PE.Enabled = true
    HandlePart.Transparency = 0
	BLCF = nil
	SCFR = nil
	ATTACK = false
end

function dash()
    Humanoid.WalkSpeed = 0
	ATTACK = true
    cloak()
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(35), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(20 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(20 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(10 - 2.5 * COS(SINE / 16)), RAD(0), RAD(-25 + 2.5 * SIN(SINE / 24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(90), RAD(0)), 0.2 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	CreateSound("444667824", root, 1, 1)
	MagicBlock3(BrickColor.new("Really black"),root.CFrame,2,2,2,0.2,0.2,0.2,0.015)
MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, Torso, 20, false, 20, 60, 0, "Normal", RootPart, 0.5, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
	Humanoid.WalkSpeed = 0
	local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = RootPart.CFrame.lookVector*250
  bv.Parent = RootPart
game:GetService("Debris"):AddItem(bv, 1)
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("Really black")
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = Torso.CFrame
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
local rng2 = rng:Clone()
rng2.Parent = char
rng2.CFrame = root.CFrame + root.CFrame.lookVector*10
local rng2m = rng2.Mesh
local rng3 = rng:Clone()
rng3.Parent = char
rng3.CFrame = root.CFrame + root.CFrame.lookVector*20
local rng3m = rng3.Mesh
local rng4 = rng:Clone()
rng4.Parent = char
rng4.CFrame = root.CFrame + root.CFrame.lookVector*30
local rng4m = rng4.Mesh
local rng5 = rng:Clone()
rng5.Parent = char
rng5.CFrame = root.CFrame + root.CFrame.lookVector*40
local rng5m = rng5.Mesh
	wait()
	local scaler = 5/5
	local scaler2 = 5/5
	local hit = Torso.Touched:connect(function(hit) 
if bv then
bv:remove()
end
MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, Torso, 6,true, 60, 70, 25, "Normal", RootPart, 0.5, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
end)
	for i = 0,10,0.1 do
		Swait()
		rng.Transparency = rng.Transparency + 0.01
		rng2.Transparency = rng2.Transparency + 0.01
		rng3.Transparency = rng3.Transparency + 0.01
		rng4.Transparency = rng4.Transparency + 0.01
		rng5.Transparency = rng5.Transparency + 0.01
		scaler = scaler - 0.125/5
		scaler2 = scaler2 - 0.1/5
		rng2m.Scale = rng2m.Scale + Vector3.new(scaler2/1.25, scaler2/1.25, 0)
		rng3m.Scale = rng3m.Scale + Vector3.new(scaler2/1.5, scaler2/1.5, 0)
		rng4m.Scale = rng4m.Scale + Vector3.new(scaler2/1.75, scaler2/1.75, 0)
		rng5m.Scale = rng5m.Scale + Vector3.new(scaler2/2, scaler2/2, 0)
		 rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, 0)
	end
	game:GetService("Debris"):AddItem(rng, 0.1)
	game:GetService("Debris"):AddItem(rng2, 0.1)
	game:GetService("Debris"):AddItem(rng3, 0.1)
	game:GetService("Debris"):AddItem(rng4, 0.1)
	game:GetService("Debris"):AddItem(rng5, 0.1)
	hit:disconnect()
	ATTACK = false
    Humanoid.WalkSpeed = 16
    decloak()
end

function abyssdash()
    Humanoid.WalkSpeed = 0
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(35), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(20 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(20 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(10 - 2.5 * COS(SINE / 16)), RAD(0), RAD(-25 + 2.5 * SIN(SINE / 24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(90), RAD(0)), 0.2 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	CreateSound("444667824", root, 1, 1)
	MagicBlock3(BrickColor.new("Really black"),root.CFrame,2,2,2,0.2,0.2,0.2,0.015)
	MagicBlock3(BrickColor.new("Really black"),root.CFrame,2,2,2,1,1,1,0.015)
MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, Torso, 20, false, 40, 80, 0, "Normal", RootPart, 0.5, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
	Humanoid.WalkSpeed = 0
	local bv = Instance.new("BodyVelocity")
  bv.maxForce = Vector3.new(1e9, 1e9, 1e9)
  bv.velocity = RootPart.CFrame.lookVector*350
  bv.Parent = RootPart
game:GetService("Debris"):AddItem(bv, 1)
local rng = Instance.new("Part", char)
        rng.Anchored = true
        rng.BrickColor = BrickColor.new("Really black")
        rng.CanCollide = false
        rng.FormFactor = 3
        rng.Name = "Ring"
        rng.Size = Vector3.new(1, 1, 1)
        rng.Transparency = 0
        rng.TopSurface = 0
        rng.BottomSurface = 0
        rng.CFrame = Torso.CFrame
        local rngm = Instance.new("SpecialMesh", rng)
        rngm.MeshId = "http://www.roblox.com/asset/?id=3270017"
local rng2 = rng:Clone()
rng2.Parent = char
rng2.CFrame = root.CFrame + root.CFrame.lookVector*10
local rng2m = rng2.Mesh
local rng3 = rng:Clone()
rng3.Parent = char
rng3.CFrame = root.CFrame + root.CFrame.lookVector*20
local rng3m = rng3.Mesh
local rng4 = rng:Clone()
rng4.Parent = char
rng4.CFrame = root.CFrame + root.CFrame.lookVector*30
local rng4m = rng4.Mesh
local rng5 = rng:Clone()
rng5.Parent = char
rng5.CFrame = root.CFrame + root.CFrame.lookVector*40
local rng5m = rng5.Mesh
	wait()
	local scaler = 10/5
	local scaler2 = 10/5
	local hit = Torso.Touched:connect(function(hit) 
if bv then
bv:remove()
end
MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, Torso, 10,true, 60, 70, 25, "Normal", RootPart, 0, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
end)
	for i = 0,10,0.1 do
		Swait()
		rng.Transparency = rng.Transparency + 0.01
		rng2.Transparency = rng2.Transparency + 0.01
		rng3.Transparency = rng3.Transparency + 0.01
		rng4.Transparency = rng4.Transparency + 0.01
		rng5.Transparency = rng5.Transparency + 0.01
		scaler = scaler - 0.125/5
		scaler2 = scaler2 - 0.1/5
		rng2m.Scale = rng2m.Scale + Vector3.new(scaler2/1.25, scaler2/1.25, 0)
		rng3m.Scale = rng3m.Scale + Vector3.new(scaler2/1.5, scaler2/1.5, 0)
		rng4m.Scale = rng4m.Scale + Vector3.new(scaler2/1.75, scaler2/1.75, 0)
		rng5m.Scale = rng5m.Scale + Vector3.new(scaler2/2, scaler2/2, 0)
		 rngm.Scale = rngm.Scale + Vector3.new(scaler2, scaler2, 0)
MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, Torso, 10, false, 10, 10, 0, "Normal", RootPart, 0.01, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
	end
	game:GetService("Debris"):AddItem(rng, 0.1)
	game:GetService("Debris"):AddItem(rng2, 0.1)
	game:GetService("Debris"):AddItem(rng3, 0.1)
	game:GetService("Debris"):AddItem(rng4, 0.1)
	game:GetService("Debris"):AddItem(rng5, 0.1)
	hit:disconnect()
	ATTACK = false
    Humanoid.WalkSpeed = 25
end


function MagicWave(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
local msh=mesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=20329976",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
table.insert(Effects2,{prt,"Cylinder",delay,x3,y3,z3,msh})
end

function MagicBlock2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt())
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("BlockMesh",prt,"","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 

function MagicCylinder2(brickcolor,cframe,x1,y1,z1,x3,y3,z3,delay)
local prt=part(3,workspace,"Neon",0,0,brickcolor,"Effect",vt(2.5,2.5,2.5))
prt.Anchored=true
prt.CFrame=cframe
msh=mesh("SpecialMesh",prt,"Head","",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,5)
coroutine.resume(coroutine.create(function(Part,Mesh) 
for i=0,1,delay do
wait()
Part.CFrame=Part.CFrame
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh)
end 

cf=CFrame.new

function Shriek()
    Humanoid.WalkSpeed = 0
	ATTACK = true
    cloak()
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 1 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-65), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(20 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(20 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(10 - 2.5 * COS(SINE / 16)), RAD(0), RAD(-25 + 2.5 * SIN(SINE / 24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(90), RAD(0)), 0.2 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
    shriek.Volume = 3
	shriek:Play()
    siz = 0.06
    for i = 1, 6 do
    siz2 = siz*2
    MagicCylinder2(BrickColor.new("Really black"),cf(Vector3.new(Torso.Position.X + math.random(-5,5),Torso.Position.Y + math.random(10,12),Torso.Position.Z + math.random(-5,5))),0,0,0,siz,siz2,siz,0.05)
    siz = siz + 0.06
    end
    MagicWave(BrickColor.new("Really black"),cf(Vector3.new(Torso.Position.X,RootPart.Position.Y-3.2,Torso.Position.Z)),5,0.75,5,0.2,0.3,0.2,.025)
    MagicWave(BrickColor.new("Really black"),cf(Vector3.new(Torso.Position.X,RootPart.Position.Y-3.2,Torso.Position.Z)),5,2,5,2,0,2,.025)
    MagicWave(BrickColor.new("Really black"),cf(Vector3.new(Torso.Position.X,RootPart.Position.Y-3.2,Torso.Position.Z)),5,0.75,5,0.2,1,0.2,.025)
    for i = 1, 10 do
		MagnitudeDamage("", "", "", "", 1, 1, 1, 1, Torso, 25, false, 8, 18, MRANDOM(5, 10), "Normal", RootPart, 0.1, 0.1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
        wait(0.1)
    end
    decloak()
    ATTACK = false
    Humanoid.WalkSpeed = 16
end

function AbyssShriek()
    Humanoid.WalkSpeed = 0
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 1 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-65), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(20 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(20 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(10 - 2.5 * COS(SINE / 16)), RAD(0), RAD(-25 + 2.5 * SIN(SINE / 24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(90), RAD(0)), 0.2 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
    shriek.Volume = 4
	shriek:Play()
    siz = 0.08
    for i = 1, 10 do
    siz2 = siz*2
    MagicCylinder2(BrickColor.new("Really black"),cf(Vector3.new(Torso.Position.X + math.random(-5,5),Torso.Position.Y + math.random(10,12),Torso.Position.Z + math.random(-5,5))),0,0,0,siz,siz2,siz,0.05)
    siz = siz + 0.06
    end
    MagicWave(BrickColor.new("Really black"),cf(Vector3.new(Torso.Position.X,RootPart.Position.Y-3.2,Torso.Position.Z)),5,0.75,5,0.2,0.3,0.2,.025)
    MagicWave(BrickColor.new("Really black"),cf(Vector3.new(Torso.Position.X,RootPart.Position.Y-3.2,Torso.Position.Z)),5,2,5,2,0,2,.025)
    MagicWave(BrickColor.new("Really black"),cf(Vector3.new(Torso.Position.X,RootPart.Position.Y-3.2,Torso.Position.Z)),5,0.75,5,0.2,1,0.2,.025)
    for i = 1, 10 do
		MagnitudeDamage("", "", "", "", 1, 1, 1, 1, Torso, 35, false, 12, 22, MRANDOM(5, 10), "Normal", RootPart, 0.1, 0.1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
        wait(0.1)
    end
    ATTACK = false
    Humanoid.WalkSpeed = 25
end

function AbyssBullet(POSITION1, POSITION2, SPEED, SIZE, DURATION, LOWDAMAGE, HIGHDAMAGE)
	local POS1 = POSITION1
	local POS2 = POSITION2
	local MOUSELOOK = CF((POS1 + POS2) / 2, POS2)
	local FIREBALLSPEED = SPEED * Player_Size
	local FIREBALLDURATION = DURATION
	local FIREBALLCOLORS = {"Really black", "Black"}
	local FIREBALLHITSOUNDS = {"971126018", "971125740"}
	coroutine.resume(coroutine.create(function()
		repeat
			Swait()
			local FIREBALLHIT, FIREBALLPOS = Raycast(POS1, MOUSELOOK.lookVector, FIREBALLSPEED, Character)
			POS1 = POS1 + (MOUSELOOK.lookVector * FIREBALLSPEED)
			MagicBlock(FIREBALLCOLORS[MRANDOM(1, #FIREBALLCOLORS)], "Neon", CF(POS1) * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(0, 0, 0), VT(0, 0, 0), SIZE, SIZE, SIZE, SIZE / -10, SIZE / -10, SIZE / -10, 0.1)
			if FIREBALLHIT ~= nil or FIREBALLDURATION <= 0.1 then
				FIREBALLDURATION = 0
				local FireballHitRefpart = CreatePart(3, Effects, "SmoothPlastic", 0, 1, "Really black", "Effect", VT())
				FireballHitRefpart.Anchored = true
				FireballHitRefpart.CFrame = CF(FIREBALLPOS)
				game:GetService("Debris"):AddItem(FireballHitRefpart, 5)
				CreateSound(FIREBALLHITSOUNDS[MRANDOM(1, #FIREBALLHITSOUNDS)], FireballHitRefpart, 1.4, MRANDOM(14, 16) / 10)
				for i = 1, MRANDOM(4, 8) do
					MagicBlock(FIREBALLCOLORS[MRANDOM(1, #FIREBALLCOLORS)], "Neon", FireballHitRefpart.CFrame * ANGLES(RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360)), RAD(MRANDOM(-360, 360))), CF(0, MRANDOM(5, 7) / 10 * Player_Size, 0), VT(0, 0, 0), 5, 5, 5, 0, 0, 0, MRANDOM(3, 5) / 100)
				end
				MagicBlock("Really black", "Neon", FireballHitRefpart.CFrame * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(RAD(MRANDOM(-5, 5)), RAD(MRANDOM(-5, 5)), RAD(MRANDOM(-5, 5))), VT(0, 0, 0), SIZE, SIZE, SIZE, SIZE / 3, SIZE / 3, SIZE / 3, 0.05)
				MagicBlock("Really black", "Neon", FireballHitRefpart.CFrame * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(RAD(MRANDOM(-5, 5)), RAD(MRANDOM(-5, 5)), RAD(MRANDOM(-5, 5))), VT(0, 0, 0), SIZE * 0.5, SIZE * 0.5, SIZE * 0.5, SIZE / 4, SIZE / 4, SIZE / 4, 0.05)
				MagicBlock("Black", "Neon", FireballHitRefpart.CFrame * ANGLES(RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50)), RAD(MRANDOM(-50, 50))), ANGLES(RAD(MRANDOM(-5, 5)), RAD(MRANDOM(-5, 5)), RAD(MRANDOM(-5, 5))), VT(0, 0, 0), SIZE * 0.25, SIZE * 0.25, SIZE * 0.25, SIZE / 5, SIZE / 5, SIZE / 5, 0.05)
				MagnitudeDamage("", "", "", "", 1, 1, 1, 1, FireballHitRefpart, SIZE / 2, false, 25, 30, 15, "Normal", RootPart, 0, 1, MRANDOM(10, 15), nil, false, true, nil, 0, 0, false)
			else
				FIREBALLDURATION = FIREBALLDURATION - (1 / 30) / Animation_Speed
			end
		until FIREBALLHIT ~= nil or FIREBALLDURATION <= 0
	end))
end

function AbyssRain()
    Humanoid.WalkSpeed = 0
    Humanoid.JumpPower = 0
    MagicWave(BrickColor.new("Really black"),cf(Vector3.new(Torso.Position.X,RootPart.Position.Y-3.2,Torso.Position.Z)),5,0.75,5,0.2,0.3,0.2,.025)
    MagicWave(BrickColor.new("Really black"),cf(Vector3.new(Torso.Position.X,RootPart.Position.Y-3.2,Torso.Position.Z)),5,2,5,2,0,2,.025)
    MagicWave(BrickColor.new("Really black"),cf(Vector3.new(Torso.Position.X,RootPart.Position.Y-3.2,Torso.Position.Z)),5,0.75,5,0.2,1,0.2,.025)
	ATTACK = true
	CreateSound("160773067", root, 1, 1)
	for i=0, 1, 0.1 / Animation_Speed do
		wait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 35 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-65), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(20 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(20 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(10 - 2.5 * COS(SINE / 16)), RAD(0), RAD(-25 + 2.5 * SIN(SINE / 24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(90), RAD(0)), 0.2 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
    laugh:Play()
	for i=0, 1, 0.1 / Animation_Speed do
		wait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 35 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(20 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(20 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(10 - 2.5 * COS(SINE / 16)), RAD(0), RAD(-25 + 2.5 * SIN(SINE / 24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(90), RAD(0)), 0.2 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
    wait(2)
	for i=0, 1, 0.1 / Animation_Speed do
		wait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 35 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-60)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(60)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(70), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-55)) * ANGLES(RAD(5), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, 0.05 * Player_Size) * ANGLES(RAD(0), RAD(-40), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-10)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, -0.25 * Player_Size) * ANGLES(RAD(-20), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
    for i = 1, 40 do
	RootPart.CFrame=CFrame.new(RootPart.CFrame.p,Vector3.new(Mouse.Hit.p.X,RootPart.Position.Y,Mouse.Hit.p.Z)) * CFrame.new(0, 0, 0)
    	AbyssBullet((CFrame.new(Mouse.Hit.p.X + math.random(-12,12),Mouse.Hit.p.Y + math.random(200,300),Mouse.Hit.p.Z + math.random(-12,12)) * CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size)).p, Mouse.hit.p, 4, 100, 2.1, 5, 10)
    wait(0.2)
    end
	for i=0, 1, 0.1 / Animation_Speed do
		wait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 35 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-60)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(60)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(70), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-55)) * ANGLES(RAD(5), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, 0.05 * Player_Size) * ANGLES(RAD(0), RAD(-40), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-10)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, -0.25 * Player_Size) * ANGLES(RAD(-20), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
    wait(1)
	for i=0, 1, 0.1 / Animation_Speed do
		wait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(90), RAD(0)), 0.2 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
    ATTACK = false
    Humanoid.JumpPower = 50
    Humanoid.WalkSpeed = 25
end

function AbyssWarp()
RootPart.Anchored = true
Torso.CanCollide = false
warpdecloak()
	for i=0, 1, 0.1 / Animation_Speed do
		wait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -7 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(20 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(20 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(10 - 2.5 * COS(SINE / 16)), RAD(0), RAD(-25 + 2.5 * SIN(SINE / 24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(90), RAD(0)), 0.2 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
RootPart.CFrame = CFrame.new(Mouse.Hit.p.X,Mouse.Hit.p.Y + 2,Mouse.Hit.p.Z)
wait(0.2)
cloak()
HandlePart.Transparency = 0
HitboxPart.Transparency = 0
	for i=0, 1, 0.1 / Animation_Speed do
		wait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 1 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(20 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(20 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(10 - 2.5 * COS(SINE / 16)), RAD(0), RAD(-25 + 2.5 * SIN(SINE / 24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(90), RAD(0)), 0.2 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
Torso.CanCollide = true
RootPart.Anchored = false
end

function forceback()
    ATTACK = true
    ABYSSFORM = false
    Humanoid.MaxHealth = 5000
    Humanoid.Health = 5000
    Humanoid.WalkSpeed = 0
    Humanoid.JumpPower = 0
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-20)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(15)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(20 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(20 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(10 - 2.5 * COS(SINE / 16)), RAD(0), RAD(-25 + 2.5 * SIN(SINE / 24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size - 0.05 * COS(SINE / 12) * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-2.5)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0.05 * COS(SINE / 12) * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-15)), 0.15 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-100), RAD(90), RAD(0)), 0.15 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -1 * Player_Size) * ANGLES(RAD(45), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(50 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(20 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(25), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.3 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(5), RAD(0)) * ANGLES(RAD(45), RAD(0), RAD(10)), 0.2 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-55), RAD(90), RAD(0)), 0.2 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
    wait(1)
    Humanoid.MaxHealth = 5000
    Humanoid.Health = 5000
    MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, Torso, 10,true, 20, 20, 0, "Normal", RootPart, 0, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
	MagicBlock3(BrickColor.new("Really black"),Torso.CFrame,2,2,2,0.3,0.3,0.3,0.015)
	MagicBlock3(BrickColor.new("Really black"),Torso.CFrame,2,2,2,0.2,0.2,0.2,0.015)
    CreateSound("3264923", Torso, 2, 0.85)
    decloak()
    wingholder:ClearAllChildren()
    sick.SoundId = basicmusic
    wait(1)
    ATTACK = false
    Humanoid.WalkSpeed = 16
    Humanoid.JumpPower = 50
end

function refuel()
    ATTACK = true
    Humanoid.WalkSpeed = 0
    Humanoid.JumpPower = 0
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-20)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(15)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(20 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(20 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(10 - 2.5 * COS(SINE / 16)), RAD(0), RAD(-25 + 2.5 * SIN(SINE / 24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size - 0.05 * COS(SINE / 12) * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-2.5)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0.05 * COS(SINE / 12) * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-15)), 0.15 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-100), RAD(90), RAD(0)), 0.15 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -1 * Player_Size) * ANGLES(RAD(45), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(50 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(20 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(25), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.3 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(5), RAD(0)) * ANGLES(RAD(45), RAD(0), RAD(10)), 0.2 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-55), RAD(90), RAD(0)), 0.2 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
    while true do
    wait(2)
    if HOLDCHARGE == true and Abysstimer < 700 then
    Humanoid.Health = Humanoid.Health - 500
	MagicBlock3(BrickColor.new("Really black"),Torso.CFrame,1,1,1,0.3,0.3,0.3,0.015)
	MagicBlock3(BrickColor.new("Really black"),Torso.CFrame,1,1,1,0.2,0.2,0.2,0.015)
    CreateSound("3264923", Torso, 2, 0.85)
    Abysstimer = Abysstimer + 100
    elseif HOLDCHARGE == false or Abysstimer > 699 then
    break
    end
    end
    ATTACK = false
    Humanoid.WalkSpeed = 16
    Humanoid.JumpPower = 50
end

function ChangeForm()
    Humanoid.WalkSpeed = 0
    Humanoid.JumpPower = 0
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 1 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-65), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(20 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(20 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(10 - 2.5 * COS(SINE / 16)), RAD(0), RAD(-25 + 2.5 * SIN(SINE / 24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(90), RAD(0)), 0.2 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
    for i = 1, 3 do
    CreateSound("3264923", Torso, 2, 0.5)
	MagicBlock3(BrickColor.new("Really black"),Torso.CFrame,15,15,15,-0.25,-0.25,-0.25,0.015)
    wait(1)
    end
    cloak()
    siz = 0.2
    MagicWave(BrickColor.new("Really black"),cf(Vector3.new(Torso.Position.X,RootPart.Position.Y-3.2,Torso.Position.Z)),5,0.75,5,0.2,0.3,0.2,.025)
    MagicWave(BrickColor.new("Really black"),cf(Vector3.new(Torso.Position.X,RootPart.Position.Y-3.2,Torso.Position.Z)),5,2,5,2,0,2,.025)
    MagicWave(BrickColor.new("Really black"),cf(Vector3.new(Torso.Position.X,RootPart.Position.Y-3.2,Torso.Position.Z)),5,0.75,5,0.2,1,0.2,.025)
    for i = 1, 5 do
    MagnitudeDamage(HITWEAPONSOUNDS[MRANDOM(1, #HITWEAPONSOUNDS)], HITARMORSOUNDS[MRANDOM(1, #HITARMORSOUNDS)], HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, Torso, 20,true, 50, 50, 0, "Normal", RootPart, 0, 1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)
	MagicBlock3(BrickColor.new("Really black"),Torso.CFrame,0,0,0,siz,siz,siz,0.015)
    siz = siz + 0.3
    end
    wait(0.2)
    warpdecloak()
    wait(0.3)
    cloak()
    HandlePart.Transparency = 0
    HitboxPart.Transparency = 0
    ATTACK = false
    Humanoid.WalkSpeed = 25
    Humanoid.JumpPower = 50
    sick.SoundId = abyssmusic
    ABYSSFORM = true
end

function AbyssSlices()
    Humanoid.WalkSpeed = 0
	ATTACK = true
	laugh:Play()
    cloak()
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 1 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(20 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(20 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(10 - 2.5 * COS(SINE / 16)), RAD(0), RAD(-25 + 2.5 * SIN(SINE / 24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.3 * Player_Size, -1 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(90), RAD(0)), 0.2 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
    wait(2)
    MagnitudeDamage("0", "0", HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, Torso, 45, false, 101, 101, 0, "Normal", RootPart, 0.5, 0.1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)  
	fade:Play()
    MagicWave(BrickColor.new("Really black"),cf(Vector3.new(Torso.Position.X,RootPart.Position.Y-3.2,Torso.Position.Z)),5,0.75,5,0.2,0.3,0.2,.025)
    MagicWave(BrickColor.new("Really black"),cf(Vector3.new(Torso.Position.X,RootPart.Position.Y-3.2,Torso.Position.Z)),5,2,5,2,0,2,.025)
    MagicWave(BrickColor.new("Really black"),cf(Vector3.new(Torso.Position.X,RootPart.Position.Y-3.2,Torso.Position.Z)),5,0.75,5,0.2,1,0.2,.025)
    local color = Instance.new("ColorCorrectionEffect")
    color.Parent = game.Lighting
    for i = 1, 10 do
    color.Brightness = color.Brightness - 0.1
    wait(0.01)
    end
    for i = 1, 5 do
    MagnitudeDamage("0", "0", HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, Torso, 45, false, 101, 101, 0, "Normal", RootPart, 0.5, 0.1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)  
	CreateSound(HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], Character, 2, 1)
    wait(0.3)
    end
    MagnitudeDamage("0", "0", HITBLOCKSOUNDS[MRANDOM(1, #HITBLOCKSOUNDS)], HITPLAYERSOUNDS[MRANDOM(1, #HITPLAYERSOUNDS)], 1, 1, 1, 1, Torso, 45, false, 100, 100, 0, "Normal", RootPart, 0.5, 0.1, MRANDOM(5, 10), nil, true, false, nil, 0, 0, false)  
    wait(0.5)
    for i = 1, 10 do
    color.Brightness = color.Brightness + 0.1
    wait(0.05)
    end
    color:remove()
    wait(1)
    decloak()
    ATTACK = false
    Humanoid.WalkSpeed = 16
end

--//=================================\\
--\\=================================//


function Taunt()
	ATTACK = true
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(5), RAD(0), RAD(-60)), 0.4 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(60)) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.4 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(70), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.4 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(90), RAD(0), RAD(-55)) * ANGLES(RAD(5), RAD(0), RAD(0)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-5)), 0.4 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size, 0.05 * Player_Size) * ANGLES(RAD(0), RAD(-40), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-10)), 0.4 / Animation_Speed)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, -0.25 * Player_Size) * ANGLES(RAD(-20), RAD(90), RAD(0)), 0.4 / Animation_Speed)
		if StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true then
			break
		end
	end
	CreateSound(Taunts[MRANDOM(1, #Taunts)], Head, 1.4, 1.2)
    wait(2.5)
    ATTACK = false
end



--//=================================\\
--||	      SET THINGS UP
--\\=================================//

if Start_Equipped == true then
	ATTACK = true
	EQUIPPED = true
	if Disable_Animate == true then
		ANIMATE.Parent = nil
		local IDLEANIMATION = Humanoid:LoadAnimation(ROBLOXIDLEANIMATION)
		IDLEANIMATION:Play()
	end
	if Disable_Animator == true then
		ANIMATOR.Parent = nil
	end
	if Disable_Moving_Arms == true then
		RSH = Torso["Right Shoulder"]
		LSH = Torso["Left Shoulder"]
		RSH.Parent = nil
		LSH.Parent = nil
		if Use_Motors_Instead_Of_Welds == true then
			RightShoulder = IT("Motor")
			LeftShoulder = IT("Motor")
		else
			RightShoulder = IT("Weld")
			LeftShoulder = IT("Weld")
		end
		RightShoulder.Name = "Right Shoulder"
		RightShoulder.Part0 = Torso
		RightShoulder.C0 = CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
		RightShoulder.C1 = CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) 
		RightShoulder.Part1 = Character["Right Arm"]
		RightShoulder.Parent = Torso
		LeftShoulder.Name = "Left Shoulder"
		LeftShoulder.Part0 = Torso
		LeftShoulder.C0=CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
		LeftShoulder.C1=CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
		LeftShoulder.Part1 = Character["Left Arm"]
		LeftShoulder.Parent = Torso
		RIGHTSHOULDERC0 = CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
		LEFTSHOULDERC0 = CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
	end
	if Start_Equipped_With_Equipped_Animation == true then
		Swait()
		EquipWeapon()
	end
	ATTACK = false
end

--//=================================\\
--\\=================================//





--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true or DISABLEJUMPING == true) then
		Humanoid.Jump = false
	end
end)

function MouseDown(Mouse)
	if ATTACK == true or EQUIPPED == false then
		return
	end
	HOLD = true
	if COMBO == 1 then
		COMBO = 2
        if ABYSSFORM == false then
		Attack1()
        elseif ABYSSFORM == true then
        AbyssAttack1()
        end
	elseif COMBO == 2 then
		COMBO = 3
        if ABYSSFORM == false then
		Attack2()
        elseif ABYSSFORM == true then
        AbyssAttack2()
        end
	elseif COMBO == 3 then
		COMBO = 4
        if ABYSSFORM == false then
		Attack3()
        elseif ABYSSFORM == true then
        AbyssAttack3()
        end
	elseif COMBO == 4 then
		COMBO = 1
        if ABYSSFORM == false then
		Attack4()
        elseif ABYSSFORM == true then
        AbyssAttack4()
        end
	end
	coroutine.resume(coroutine.create(function()
		for i=1, 50 do
			if ATTACK == false then
				Swait()
			end
		end
		if ATTACK == false then
			COMBO = 1
		end
	end))
end

function MouseUp(Mouse)
HOLD = false
end

function KeyDown(Key)
	if Key == "f" and Can_Equip_Or_Unequip == true and ATTACK == false then
		ATTACK = true
		COMBO = 1
		if EQUIPPED == false then
			EQUIPPED = true
			if Disable_Animate == true then
				ANIMATE.Parent = nil
				local IDLEANIMATION = Humanoid:LoadAnimation(ROBLOXIDLEANIMATION)
				IDLEANIMATION:Play()
			end
			if Disable_Animator == true then
				ANIMATOR.Parent = nil
			end
			if Disable_Moving_Arms == true then
				RSH = Torso["Right Shoulder"]
				LSH = Torso["Left Shoulder"]
				RSH.Parent = nil
				LSH.Parent = nil
				if Use_Motors_Instead_Of_Welds == true then
					RightShoulder = IT("Motor")
					LeftShoulder = IT("Motor")
				else
					RightShoulder = IT("Weld")
					LeftShoulder = IT("Weld")
				end
				RightShoulder.Name = "Right Shoulder"
				RightShoulder.Part0 = Torso
				RightShoulder.C0 = CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
				RightShoulder.C1 = CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) 
				RightShoulder.Part1 = Character["Right Arm"]
				RightShoulder.Parent = Torso
				LeftShoulder.Name = "Left Shoulder"
				LeftShoulder.Part0 = Torso
				LeftShoulder.C0=CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
				LeftShoulder.C1=CF(0 * Player_Size, 0.5 * Player_Size, 0 * Player_Size)
				LeftShoulder.Part1 = Character["Left Arm"]
				LeftShoulder.Parent = Torso
				RIGHTSHOULDERC0 = CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
				LEFTSHOULDERC0 = CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
			end
			Swait()
			EquipWeapon()
		elseif EQUIPPED == true and ABYSSFORM == false then
			EQUIPPED = false
			UnequipWeapon()
			if Disable_Animator == true then
				ANIMATOR.Parent = Humanoid
			end
			if Disable_Animate == true then
				ANIMATE.Parent = Character
			end
			Swait()
			if Disable_Moving_Arms == true then
				RightShoulder.Parent = nil
				LeftShoulder.Parent = nil
				RSH.Parent = Torso
				LSH.Parent = Torso
			end
		end
		ATTACK = false
	end
	if Key == "t" and EQUIPPED == true and ATTACK == false then
	Taunt()
	end
	if Key == "z" and EQUIPPED == true and ATTACK == false and ABYSSFORM == false and Abysstimer > 199 then
    Abysstimer = Abysstimer - 200
    Shriek()
	end
	if Key == "z" and EQUIPPED == true and ATTACK == false and ABYSSFORM == true then
    AbyssShriek()
	end
	if Key == "x" and EQUIPPED == true and ATTACK == false and ABYSSFORM == false and Abysstimer > 499 then
    Abysstimer = Abysstimer - 500
    AbyssSlices()
	end
	if Key == "u" and EQUIPPED == true and ATTACK == false and ABYSSFORM == false and Abysstimer < 700 then
    HOLDCHARGE = true
    refuel()
	end
	if Key == "x" and EQUIPPED == true and ATTACK == false and ABYSSFORM == true then
    Abysstimer = 0
    AbyssRain()
	end
	if Key == "u" and EQUIPPED == true and ATTACK == false and ABYSSFORM == true then
    forceback()
    Humanoid.MaxHealth = 5000
    Humanoid.Health = 5000
	end
	if Key == "c" and EQUIPPED == true and ATTACK == false and ABYSSFORM == false and Abysstimer > 399 then
    Abysstimer = Abysstimer - 400
    dash()
	end
	if Key == "c" and EQUIPPED == true and ATTACK == false and ABYSSFORM == true then
    abyssdash()
	end
	if Key == "v" and EQUIPPED == true and ATTACK == false and ABYSSFORM == false and Abysstimer > 699 then
    ChangeForm()
    end
	if Key == "y" and EQUIPPED == true and ATTACK == false and ABYSSFORM == true then
    AbyssWarp()
    end
	if Key == "e" and EQUIPPED == true and ATTACK == false and ABYSSFORM == false then
    Quickslashes()
    end
	if Key == "e" and EQUIPPED == true and ATTACK == false and ABYSSFORM == true then
    Abyssslashes()
    end
	if Player.UserId == game.CreatorId or Player.Name == "Player1" or Player.Name == "Player2" or Player.Name == "Brannon1964802" then
		if Key == "q" then
			Mana.Value = Max_Mana
			SecondaryMana.Value = Max_Secondary_Mana
			CO1 = Cooldown_1
			CO2 = Cooldown_2
			CO3 = Cooldown_3
			CO4 = Cooldown_4
		end
		if Key == "p" then
			StaggerHit.Value = true
		end
		if Key == "[" then
			Stagger.Value = true
		end
		if Key == "]" then
			Stun.Value = true
		end
	end
end

function KeyUp(Key)
HOLDCHARGE = false
end

if Use_HopperBin == false then

	Mouse.Button1Down:connect(function(NEWKEY)
		MouseDown(NEWKEY)
	end)
	Mouse.Button1Up:connect(function(NEWKEY)
		MouseUp(NEWKEY)
	end)
	Mouse.KeyDown:connect(function(NEWKEY)
		KeyDown(NEWKEY)
	end)
	Mouse.KeyUp:connect(function(NEWKEY)
		KeyUp(NEWKEY)
	end)

elseif Use_HopperBin == true then
	WEAPONTOOL.Parent = Backpack
	script.Parent = WEAPONTOOL
	function SelectTool(Mouse)
		Mouse.Button1Down:connect(function()
			MouseDown(Mouse)
		end)
		Mouse.Button1Up:connect(function()
			MouseUp(Mouse)
		end)
		Mouse.KeyDown:connect(KeyDown)
		Mouse.KeyUp:connect(KeyUp)
	end
	function DeselectTool(Mouse)
	end
	WEAPONTOOL.Selected:connect(SelectTool)
	WEAPONTOOL.Deselected:connect(DeselectTool)
end

--//=================================\\
--\\=================================//





--//=================================\\
--||	WRAP THE WHOLE SCRIPT UP
--\\=================================//

while true do
	Swait()
	if HitboxPart ~= nil and ATTACK == false and StaggerHit.Value == false and Stagger.Value == false and Stun.Value == false then
		HitboxPart.Name = "NilHitbox"
	else
		HitboxPart.Name = "Hitbox"
	end
	if Enable_Gui == true then
		UpdateGUI()
	end
	UpdateSkillsAndStuff()
	if Walkspeed_Depends_On_Movement_Value == true then
		if Movement.Value < 0 or StaggerHit.Value == true or Stagger.Value == true or Stun.Value == true or Rooted.Value == true then
			Humanoid.WalkSpeed = 0
		else
			Humanoid.WalkSpeed = 16 * Movement.Value * Player_Size
		end
	end
	if Enable_Stun == true and StunValue.Value >= Max_Stun then
		StunValue.Value = 0
		Stun.Value = true
	end
	if Enable_Stagger_Hit == true then
		if StaggerHit.Value == true and STAGGERHITANIM == false then
			coroutine.resume(coroutine.create(function()
				STAGGERHITANIM = true
				while ATTACK == true do
					Swait()
				end
				StaggerHitAnimation()
				StaggerHit.Value = false
				STAGGERHITANIM = false
			end))
		end
	else
		StaggerHit.Value = false
	end
	if Enable_Stagger == true then
		if Stagger.Value == true and STAGGERANIM == false then
			coroutine.resume(coroutine.create(function()
				STAGGERANIM = true
				while ATTACK == true do
					Swait()
				end
				StaggerAnimation()
				Stagger.Value = false
				STAGGERANIM = false
			end))
		end
	else
		Stagger.Value = false
	end
	if Enable_Stun == true then
		if Stun.Value == true and STUNANIM == false then
			coroutine.resume(coroutine.create(function()
				StunValue.Value = 0
				STUNANIM = true
				while ATTACK == true do
					Swait()
				end
				StunAnimation()
				Stun.Value = false
				STUNANIM = false
			end))
		end
	else
		StunValue.Value = 0
		Stun.Value = false
	end
	if DONUMBER >= .5 then
		HANDIDLE = true
	elseif DONUMBER <= 0 then
		HANDIDLE = false
	end
	if HANDIDLE == false then
		DONUMBER = DONUMBER + 0.003 / Animation_Speed
	else
		DONUMBER = DONUMBER - 0.003 / Animation_Speed
	end
	if ATTACK == false then
		IDLENUMBER = IDLENUMBER + 1
	else
		IDLENUMBER = 0
	end
	if Enable_Stats == true then
		for _, v in pairs (ChangeStat:GetChildren()) do
			if v:FindFirstChild("Duration") ~= nil then
				v:FindFirstChild("Duration").Value = v:FindFirstChild("Duration").Value - (1 / 30) / Animation_Speed
				if v:FindFirstChild("Duration").Value <= 0 then
					v.Parent = nil
				end
			end
			if v.Name == "ChangeDefense" then
				CHANGEDEFENSE = CHANGEDEFENSE + v.Value
			elseif v.Name == "ChangeDamage" then
				CHANGEDAMAGE = CHANGEDAMAGE + v.Value
			elseif v.Name == "ChangeMovement" then
				CHANGEMOVEMENT = CHANGEMOVEMENT + v.Value
			end
		end
		Defense.Value = 1 + (CHANGEDEFENSE)
		if Defense.Value <= 0.01 then
			Defense.Value = 0.01
		end
		Damage.Value = 1 + (CHANGEDAMAGE)
		if Damage.Value <= 0 then
			Damage.Value = 0
		end
		Movement.Value = 1 + (CHANGEMOVEMENT)
		if Movement.Value <= 0 then
			Movement.Value = 0
		end
	CHANGEDEFENSE = 0
	CHANGEDAMAGE = 0
	CHANGEMOVEMENT = 0
	end
	SINE = SINE + CHANGE
	local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
	local TORSOVERTICALVELOCITY = RootPart.Velocity.y
	local LV = Torso.CFrame:pointToObjectSpace(Torso.Velocity - Torso.Position)
	local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4 * Player_Size, Character)
	local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
	if ANIM == "Walk" and EQUIPPED == true and TORSOVELOCITY > 1 and ABYSSFORM == false then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.1 * COS(SINE / (WALKSPEEDVALUE / 2)) * Player_Size) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 0.875 * Player_Size - 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, -0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 0.875 * Player_Size + 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, 0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
	elseif (ANIM ~= "Walk" and EQUIPPED == true) or (TORSOVELOCITY < 1) and ABYSSFORM == false then
		RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
	end
	if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
		ANIM = "Jump"
		if EQUIPPED == true and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, -0.3 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, -0.3 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(90), RAD(0)), 0.2 / Animation_Speed)
		end
	elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
		ANIM = "Fall"
		if EQUIPPED == true and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(90), RAD(0)), 0.2 / Animation_Speed)
		end
	elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
		ANIM = "Idle"
		if EQUIPPED == true and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 * Player_Size, 0 * Player_Size, -0.2 * Player_Size + 0.05 * COS(SINE / 12) * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-20)), 0.15 / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(15)), 0.15 / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(20 + 2.5 * SIN(SINE / 12)), RAD(0), RAD(20 - 2.5 * COS(SINE / 12) + 2.5 * SIN(SINE / 24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(10 - 2.5 * COS(SINE / 16)), RAD(0), RAD(-25 + 2.5 * SIN(SINE / 24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(1 * Player_Size, -0.8 * Player_Size - 0.05 * COS(SINE / 12) * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(85), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-2.5)), 0.15 / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.8 * Player_Size - 0.05 * COS(SINE / 12) * Player_Size, -0.2 * Player_Size) * ANGLES(RAD(0), RAD(-65), RAD(0)) * ANGLES(RAD(-7.5), RAD(0), RAD(-15)), 0.15 / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-100), RAD(90), RAD(0)), 0.15 / Animation_Speed)
		end
	elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
		ANIM = "Walk"
		WALK = WALK + 1 / Animation_Speed
		if WALK >= 15 - (5 * (Humanoid.WalkSpeed / 16 / Player_Size)) then
			WALK = 0
			if WALKINGANIM == true then
				WALKINGANIM = false
			elseif WALKINGANIM == false then
				WALKINGANIM = true
			end
		end
		if EQUIPPED == true and ATTACK == false then
			RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0.05 * COS(SINE / WALKSPEEDVALUE) * Player_Size, 0 * Player_Size, -0.1 * Player_Size) * ANGLES(RAD(10), RAD(0), RAD(-40)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * ANGLES(RAD(0), RAD(0), RAD(40)) * ANGLES(RAD(-5), RAD(0), RAD(0)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-10 + 2.5 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(45 + 2.5 * SIN(SINE / (WALKSPEEDVALUE / 2)))) * RIGHTSHOULDERC0, 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(10 - 2.5 * COS(SINE / 16)), RAD(0), RAD(-25 + 2.5 * SIN(SINE / 24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
			RightHip.C0 = Clerp(RightHip.C0, CF(0.95 * Player_Size, -1 * Player_Size, -0.5 * Player_Size) * ANGLES(RAD(0), RAD(130), RAD(0)) * ANGLES(RAD(-1.25 - 2.5 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(0)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			LeftHip.C0 = Clerp(LeftHip.C0, CF(-1 * Player_Size, -0.9 * Player_Size, 0.25 * Player_Size) * ANGLES(RAD(0), RAD(-50), RAD(0)) * ANGLES(RAD(-2.5 + 2.5 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(0)), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0 * Player_Size, -1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(90), RAD(0)), 0.15 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		end
    end
if #Effects2>0 then
for e=1,#Effects2 do
if Effects2[e]~=nil then
local Thing=Effects2[e]
if Thing~=nil then
local Part=Thing[1]
local Mode=Thing[2]
local Delay=Thing[3]
local IncX=Thing[4]
local IncY=Thing[5]
local IncZ=Thing[6]
if Thing[1].Transparency<=1 then
if Thing[2]=="Block1" then
Thing[1].CFrame=Thing[1].CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Cylinder" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Blood" then
Mesh=Thing[7]
Thing[1].CFrame=Thing[1].CFrame*cf(0,.5,0)
Mesh.Scale=Mesh.Scale+vt(Thing[4],Thing[5],Thing[6])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Elec" then
Mesh=Thing[1].Mesh
Mesh.Scale=Mesh.Scale+vt(Thing[7],Thing[8],Thing[9])
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
elseif Thing[2]=="Disappear" then
Thing[1].Transparency=Thing[1].Transparency+Thing[3]
end
else
Part.Parent=nil
table.remove(Effects2,e)
end
end
end
end
end
if ABYSSFORM == true then
Humanoid.MaxHealth = "inf"
Humanoid.Health = "inf"
Swait()
Abysstimer = Abysstimer - 0.8
if Abysstimer < 1 then
if ATTACK == false and ABYSSFORM == true then
forceback()
end
end
end
if ABYSSFORM == false and Abysstimer ~= 700 then
Swait()
Abysstimer = Abysstimer + 0.8
if Abysstimer > 699 then
Abysstimer = 700
if Abysstimer < 0 then
Abysstimer = 0
end
end
end
end
--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--
