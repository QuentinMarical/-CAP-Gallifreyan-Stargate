ENT.Type = "anim";
ENT.Base = "stargate_base";
ENT.PrintName = "Gallifreyan Stargate";
ENT.Author = "QuentinMaricalYTB, aVoN, Madman07, Llapp, Rafael De Jongh, AlexALX";
ENT.Category = "Stargate Carter Addon Pack: Custom Gates"

list.Set("CAP.Entity", ENT.PrintName, ENT);

ENT.WireDebugName = "Gallifreyan Stargate"

ENT.EventHorizonData = {
	OpeningDelay = 0.9,
	OpenTime = 2.2,
	NNFix = 0,
}

properties.Add( "Stargate.Atl.RingLight.On",
{
	MenuLabel	=	SGLanguage.GetMessage("stargate_c_tool_08"),
	Order		=	-120,
	MenuIcon	=	"icon16/plugin_disabled.png",

	Filter		=	function( self, ent, ply )
						if ( !IsValid( ent ) || !IsValid( ply ) || !ent.IsStargate || ent:GetClass()!="stargate_gallifrey" || ent:GetNWBool("GateSpawnerProtected",false) || ent:GetNWBool("ActRingL",false)) then return false end
						if ( !gamemode.Call( "CanProperty", ply, "stargatemodify", ent ) ) then return false end
						return true

					end,

	Action		=	function( self, ent )

						self:MsgStart()
							net.WriteEntity( ent )
						self:MsgEnd()

					end,

	Receive		=	function( self, length, player )

						local ent = net.ReadEntity()
						if ( !self:Filter( ent, player ) ) then return false end

						ent:TriggerInput("Turn on ring light",2);
					end

});

properties.Add( "Stargate.Atl.RingLight.Off",
{
	MenuLabel	=	SGLanguage.GetMessage("stargate_c_tool_08d"),
	Order		=	-120,
	MenuIcon	=	"icon16/plugin.png",

	Filter		=	function( self, ent, ply )

						if ( !IsValid( ent ) || !IsValid( ply ) || !ent.IsStargate || ent:GetClass()!="stargate_gallifrey" || ent:GetNWBool("GateSpawnerProtected",false) || !ent:GetNWBool("ActRingL",false)) then return false end
						if ( !gamemode.Call( "CanProperty", ply, "stargatemodify", ent ) ) then return false end
						return true

					end,

	Action		=	function( self, ent )

						self:MsgStart()
							net.WriteEntity( ent )
						self:MsgEnd()

					end,

	Receive		=	function( self, length, player )

						local ent = net.ReadEntity()
						if ( !self:Filter( ent, player ) ) then return false end

						ent:TriggerInput("Turn on ring light",0);
					end

});

properties.Add( "Stargate.Atl.AtlType.On",
{
	MenuLabel	=	SGLanguage.GetMessage("stargate_c_tool_19"),
	Order		=	-125,
	MenuIcon	=	"icon16/plugin_disabled.png",

	Filter		=	function( self, ent, ply )
						if ( !IsValid( ent ) || !IsValid( ply ) || !ent.IsStargate || ent:GetClass()!="stargate_gallifrey" || ent:GetNWBool("GateSpawnerProtected",false) || ent:GetNWBool("AtlType",false)) then return false end
						if ( !gamemode.Call( "CanProperty", ply, "stargatemodify", ent ) ) then return false end
						return true

					end,

	Action		=	function( self, ent )

						self:MsgStart()
							net.WriteEntity( ent )
						self:MsgEnd()

					end,

	Receive		=	function( self, length, player )

						local ent = net.ReadEntity()
						if ( !self:Filter( ent, player ) ) then return false end

						ent:TriggerInput("Atlantis Type",1);
					end

});

properties.Add( "Stargate.Atl.AtlType.Off",
{
	MenuLabel	=	SGLanguage.GetMessage("stargate_c_tool_19d"),
	Order		=	-125,
	MenuIcon	=	"icon16/plugin.png",

	Filter		=	function( self, ent, ply )

						if ( !IsValid( ent ) || !IsValid( ply ) || !ent.IsStargate || ent:GetClass()!="stargate_gallifrey" || ent:GetNWBool("GateSpawnerProtected",false) || !ent:GetNWBool("AtlType",false)) then return false end
						if ( !gamemode.Call( "CanProperty", ply, "stargatemodify", ent ) ) then return false end
						return true

					end,

	Action		=	function( self, ent )

						self:MsgStart()
							net.WriteEntity( ent )
						self:MsgEnd()

					end,

	Receive		=	function( self, length, player )

						local ent = net.ReadEntity()
						if ( !self:Filter( ent, player ) ) then return false end

						ent:TriggerInput("Atlantis Type",0);
					end

});

properties.Add( "Stargate.Atl.AtlType.On",
{
	MenuLabel	=	SGLanguage.GetMessage("stargate_c_tool_22"),
	Order		=	-130,
	MenuIcon	=	"icon16/plugin_disabled.png",

	Filter		=	function( self, ent, ply )

						if ( !IsValid( ent ) || !IsValid( ply ) || !ent.IsStargate || ent:GetClass()!="stargate_gallifrey" || ent:GetNWBool("GateSpawnerProtected",false) || ent:GetNWBool("FasterDial",false)) then return false end
						if ( !gamemode.Call( "CanProperty", ply, "stargatemodify", ent ) ) then return false end
						return true

					end,

	Action		=	function( self, ent )

						self:MsgStart()
							net.WriteEntity( ent )
						self:MsgEnd()

					end,

	Receive		=	function( self, length, player )

						local ent = net.ReadEntity()
						if ( !self:Filter( ent, player ) ) then return false end

						ent:TriggerInput("Alternative Slow Dial",1);
					end

});

properties.Add( "Stargate.Atl.AtlType.Off",
{
	MenuLabel	=	SGLanguage.GetMessage("stargate_c_tool_22d"),
	Order		=	-130,
	MenuIcon	=	"icon16/plugin.png",

	Filter		=	function( self, ent, ply )

						if ( !IsValid( ent ) || !IsValid( ply ) || !ent.IsStargate || ent:GetClass()!="stargate_gallifrey" || ent:GetNWBool("GateSpawnerProtected",false) || !ent:GetNWBool("FasterDial",false)) then return false end
						if ( !gamemode.Call( "CanProperty", ply, "stargatemodify", ent ) ) then return false end
						return true

					end,

	Action		=	function( self, ent )

						self:MsgStart()
							net.WriteEntity( ent )
						self:MsgEnd()

					end,

	Receive		=	function( self, length, player )

						local ent = net.ReadEntity()
						if ( !self:Filter( ent, player ) ) then return false end

						ent:TriggerInput("Alternative Slow Dial",0);
					end

});