<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="raspberrypi" Type="Raspberry Pi 2 B">
		<Property Name="alias.name" Type="Str">raspberrypi</Property>
		<Property Name="alias.value" Type="Str">10.12.34.2</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,Linux;CPU,ARM;LINX_DEVICE,True;LINX_DEVICE_FAMILY,4;LINX_DEVICE_ID,3;</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">8</Property>
		<Property Name="host.TargetOSID" Type="UInt">8</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/home/lvuser/natinst/bin</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="VisionFgvTest.vi" Type="VI" URL="../VisionFgvTest.vi"/>
		<Item Name="VMX_IOB.lvlibp" Type="LVLibp" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp">
			<Item Name="example" Type="Folder">
				<Item Name="OneMotorPositionControlTest.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/example/OneMotorPositionControlTest.vi"/>
				<Item Name="ReadButton.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/example/ReadButton.vi"/>
				<Item Name="ReadEncoder.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/example/ReadEncoder.vi"/>
				<Item Name="TEST.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/example/TEST.vi"/>
				<Item Name="USS_TEST.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/example/USS_TEST.vi"/>
				<Item Name="VisionFGVTest.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/example/VisionFGVTest.vi"/>
			</Item>
			<Item Name="SubVI" Type="Folder">
				<Item Name="Action" Type="Folder">
					<Item Name="[RVT]Remote.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Action/[RVT]Remote.vi"/>
					<Item Name="[RVT]RobotMoveXYZ.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Action/[RVT]RobotMoveXYZ.vi"/>
					<Item Name="[RVT]SensorCalibrate.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Action/[RVT]SensorCalibrate.vi"/>
					<Item Name="[RVT]SlideMove.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Action/[RVT]SlideMove.vi"/>
					<Item Name="[RVT]SlideReset.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Action/[RVT]SlideReset.vi"/>
				</Item>
				<Item Name="Control" Type="Folder">
					<Item Name="[RVT]1motorVelcityControl.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Control/[RVT]1motorVelcityControl.vi"/>
					<Item Name="[RVT]3MotorPWM.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Control/[RVT]3MotorPWM.vi"/>
					<Item Name="[RVT]3motorVelcityControl.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Control/[RVT]3motorVelcityControl.vi"/>
					<Item Name="[RVT]motorSpeed (PWM).vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Control/[RVT]motorSpeed (PWM).vi"/>
					<Item Name="[RVT]servoPWM.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Control/[RVT]servoPWM.vi"/>
				</Item>
				<Item Name="Math" Type="Folder">
					<Item Name="[RVT]IR-USMath.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Math/[RVT]IR-USMath.vi"/>
					<Item Name="[RVT]sensor_SlowlyAccelerata.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Math/[RVT]sensor_SlowlyAccelerata.vi"/>
					<Item Name="[RVT]SimpleXYZMotorcSpeedCalculate.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Math/[RVT]SimpleXYZMotorcSpeedCalculate.vi"/>
					<Item Name="[RVT]SVnAccToVoutT3.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Math/[RVT]SVnAccToVoutT3.vi"/>
					<Item Name="[RVT]VelocityAndTimeCalculation.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Math/[RVT]VelocityAndTimeCalculation.vi"/>
					<Item Name="[RVT]WaveGenerator.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Math/[RVT]WaveGenerator.vi"/>
				</Item>
				<Item Name="Sensor" Type="Folder">
					<Item Name="[RVT] readEnc (SubVI).vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Sensor/[RVT] readEnc (SubVI).vi"/>
					<Item Name="[RVT]IR_Read.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Sensor/[RVT]IR_Read.vi"/>
					<Item Name="[RVT]Limit_button.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Sensor/[RVT]Limit_button.vi"/>
					<Item Name="[RVT]QTR_Read.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Sensor/[RVT]QTR_Read.vi"/>
					<Item Name="[RVT]ReMi_PSP.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Sensor/[RVT]ReMi_PSP.vi"/>
					<Item Name="[RVT]US_Read.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Sensor/[RVT]US_Read.vi"/>
				</Item>
				<Item Name="System" Type="Folder">
					<Item Name="CamFGV.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/System/CamFGV.ctl"/>
					<Item Name="motorPort.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/System/motorPort.ctl"/>
					<Item Name="servoPort.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/System/servoPort.ctl"/>
					<Item Name="TCP File Client.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/System/TCP File Client.vi"/>
					<Item Name="TCP File Server.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/System/TCP File Server.vi"/>
				</Item>
				<Item Name="Vision" Type="Folder">
					<Item Name="[RVT]ReadImage.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Vision/[RVT]ReadImage.vi"/>
					<Item Name="autoROI (SubVI).vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Vision/autoROI (SubVI).vi"/>
					<Item Name="DirectionTest.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Vision/DirectionTest.vi"/>
					<Item Name="getTemplate.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Vision/getTemplate.vi"/>
					<Item Name="VisionTest2.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/SubVI/Vision/VisionTest2.vi"/>
				</Item>
			</Item>
			<Item Name="Cast Image 2 Method.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Management.llb/Cast Image 2 Method.ctl"/>
			<Item Name="Check Special Tags.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Check Special Tags.vi"/>
			<Item Name="Clear Errors.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Clear Errors.vi"/>
			<Item Name="Color (U64)" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Image Controls.llb/Color (U64)"/>
			<Item Name="Color to RGB.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/colorconv.llb/Color to RGB.vi"/>
			<Item Name="compatCalcOffset.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/_oldvers/_oldvers.llb/compatCalcOffset.vi"/>
			<Item Name="compatFileDialog.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/_oldvers/_oldvers.llb/compatFileDialog.vi"/>
			<Item Name="compatOpenFileOperation.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/_oldvers/_oldvers.llb/compatOpenFileOperation.vi"/>
			<Item Name="CV4LV.lvlib" Type="Library" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/CISH Robotics/CV4LV/CV4LV.lvlib"/>
			<Item Name="DialogType.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/error.llb/DialogType.ctl"/>
			<Item Name="DialogTypeEnum.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/error.llb/DialogTypeEnum.ctl"/>
			<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Error Cluster From Error Code.vi"/>
			<Item Name="Error Code Database.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Error Code Database.vi"/>
			<Item Name="Error to Warning.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Error to Warning.vi"/>
			<Item Name="Find Tag.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Find Tag.vi"/>
			<Item Name="Format Message String.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Format Message String.vi"/>
			<Item Name="FormatTime String.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/express/express execution control/ElapsedTimeBlock.llb/FormatTime String.vi"/>
			<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/error.llb/General Error Handler Core CORE.vi"/>
			<Item Name="General Error Handler.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/error.llb/General Error Handler.vi"/>
			<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/error.llb/GetRTHostConnectedProp.vi"/>
			<Item Name="Image Type" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Image Controls.llb/Image Type"/>
			<Item Name="Image Unit" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Image Controls.llb/Image Unit"/>
			<Item Name="IMAQ ArrayToColorImage" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Basics.llb/IMAQ ArrayToColorImage"/>
			<Item Name="IMAQ ArrayToImage" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Basics.llb/IMAQ ArrayToImage"/>
			<Item Name="IMAQ Cast Image 2" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Management.llb/IMAQ Cast Image 2"/>
			<Item Name="IMAQ Convert From Matches Internal" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Pattern Matching.llb/IMAQ Convert From Matches Internal"/>
			<Item Name="IMAQ Convert From OCR Read Report Internal 2.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/OCR.llb/IMAQ Convert From OCR Read Report Internal 2.vi"/>
			<Item Name="IMAQ Convert To Curve Parameters Internal" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Pattern Matching.llb/IMAQ Convert To Curve Parameters Internal"/>
			<Item Name="IMAQ Copy" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Management.llb/IMAQ Copy"/>
			<Item Name="IMAQ Create" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Basics.llb/IMAQ Create"/>
			<Item Name="IMAQ Curve Parameters Internal.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Pattern Matching.llb/IMAQ Curve Parameters Internal.ctl"/>
			<Item Name="IMAQ Curve Parameters.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Pattern Matching.llb/IMAQ Curve Parameters.ctl"/>
			<Item Name="Imaq Dispose" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Basics.llb/Imaq Dispose"/>
			<Item Name="IMAQ Geometric Pattern 2 Advanced Match Options.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Pattern Matching.llb/IMAQ Geometric Pattern 2 Advanced Match Options.ctl"/>
			<Item Name="Imaq GetImageInfo" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Basics.llb/Imaq GetImageInfo"/>
			<Item Name="IMAQ GM Match Report Internal.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Pattern Matching.llb/IMAQ GM Match Report Internal.ctl"/>
			<Item Name="IMAQ GM Match Report.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Pattern Matching.llb/IMAQ GM Match Report.ctl"/>
			<Item Name="IMAQ Image.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Image Controls.llb/IMAQ Image.ctl"/>
			<Item Name="IMAQ Match Range Setting.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Pattern Matching.llb/IMAQ Match Range Setting.ctl"/>
			<Item Name="IMAQ OCR Character Report 2.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/OCR.llb/IMAQ OCR Character Report 2.ctl"/>
			<Item Name="IMAQ OCR Property.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/OCR.llb/IMAQ OCR Property.ctl"/>
			<Item Name="IMAQ OCR Session.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/OCR.llb/IMAQ OCR Session.ctl"/>
			<Item Name="IMAQ OCR Threshold Mode - Color.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/OCR.llb/IMAQ OCR Threshold Mode - Color.ctl"/>
			<Item Name="IMAQ OCR Threshold Mode - Local.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/OCR.llb/IMAQ OCR Threshold Mode - Local.ctl"/>
			<Item Name="IMAQ OCR Threshold Mode.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/OCR.llb/IMAQ OCR Threshold Mode.ctl"/>
			<Item Name="IMAQ Overlay Line" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Overlay.llb/IMAQ Overlay Line"/>
			<Item Name="IMAQ Overlay Multiple Lines 2" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Overlay.llb/IMAQ Overlay Multiple Lines 2"/>
			<Item Name="IMAQ Overlay Oval" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Overlay.llb/IMAQ Overlay Oval"/>
			<Item Name="IMAQ Overlay Rectangle" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Overlay.llb/IMAQ Overlay Rectangle"/>
			<Item Name="IMAQ Read Image And Vision Info 2" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Files1.llb/IMAQ Read Image And Vision Info 2"/>
			<Item Name="IMAQ Write Image And Vision Info File 2" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Files.llb/IMAQ Write Image And Vision Info File 2"/>
			<Item Name="Internecine Avoider.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/tcp.llb/Internecine Avoider.vi"/>
			<Item Name="IVA Append VI Name to GUID.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Vision Assistant Utils.llb/IVA Append VI Name to GUID.vi"/>
			<Item Name="IVA Clear Coordsys Errors.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Vision Assistant Utils.llb/IVA Clear Coordsys Errors.vi"/>
			<Item Name="IVA Get Alternate Path.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Vision Assistant Utils.llb/IVA Get Alternate Path.vi"/>
			<Item Name="IVA Match Geometric Pattern Algorithm 3.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Vision Assistant Utils.llb/IVA Match Geometric Pattern Algorithm 3.vi"/>
			<Item Name="IVA OCR - Set Parameters 2.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Vision Assistant Utils.llb/IVA OCR - Set Parameters 2.vi"/>
			<Item Name="IVA Result Manager Function.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Vision Assistant Utils.llb/IVA Result Manager Function.ctl"/>
			<Item Name="IVA Result Manager.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Vision Assistant Utils.llb/IVA Result Manager.vi"/>
			<Item Name="IVA Store Match Geometric Pattern Results.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Vision Assistant Utils.llb/IVA Store Match Geometric Pattern Results.vi"/>
			<Item Name="IVA Store Particles Results.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Vision Assistant Utils.llb/IVA Store Particles Results.vi"/>
			<Item Name="L4VMX.lvlib" Type="Library" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/CISH Robotics/L4VMX VMXpi/L4VMX.lvlib"/>
			<Item Name="NI_AALBase.lvlib" Type="Library" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Analysis/NI_AALBase.lvlib"/>
			<Item Name="NI_PID_pid.lvlib" Type="Library" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/addons/control/pid/NI_PID_pid.lvlib"/>
			<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/ptbypt/NI_PtbyPt.lvlib"/>
			<Item Name="NI_Vision_Development_Module.lvlib" Type="Library" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/NI_Vision_Development_Module.lvlib"/>
			<Item Name="Open_Create_Replace File.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/_oldvers/_oldvers.llb/Open_Create_Replace File.vi"/>
			<Item Name="Overlay Geometric Pattern Matching Results.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/examples/Vision/Overlay Utilities/Overlay Geometric Pattern Matching Results.vi"/>
			<Item Name="Overlay Landmark.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/examples/Vision/Overlay Utilities/Overlay Landmark.vi"/>
			<Item Name="Particle Parameters" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Image Controls.llb/Particle Parameters"/>
			<Item Name="ROI Descriptor" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Image Controls.llb/ROI Descriptor"/>
			<Item Name="Search and Replace Pattern.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Search and Replace Pattern.vi"/>
			<Item Name="Simple Error Handler.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Simple Error Handler.vi"/>
			<Item Name="subElapsedTime.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/express/express execution control/ElapsedTimeBlock.llb/subElapsedTime.vi"/>
			<Item Name="subTimeDelay.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/express/express execution control/TimeDelayBlock.llb/subTimeDelay.vi"/>
			<Item Name="System Exec.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Platform/system.llb/System Exec.vi"/>
			<Item Name="TagReturnType.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/error.llb/TagReturnType.ctl"/>
			<Item Name="TCP Listen Internal List.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/tcp.llb/TCP Listen Internal List.vi"/>
			<Item Name="TCP Listen List Operations.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/tcp.llb/TCP Listen List Operations.ctl"/>
			<Item Name="TCP Listen.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/tcp.llb/TCP Listen.vi"/>
			<Item Name="Trim Whitespace.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Trim Whitespace.vi"/>
			<Item Name="Vision Info Type" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Image Controls.llb/Vision Info Type"/>
			<Item Name="Vision Info Type2.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/vision/Image Controls.llb/Vision Info Type2.ctl"/>
			<Item Name="whitespace.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Utility/error.llb/whitespace.ctl"/>
			<Item Name="WorldSkills Toolbox.lvlib" Type="Library" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/CISH Robotics/L4VMX WorldSkills Toolbox/WorldSkills Toolbox.lvlib"/>
			<Item Name="XDNodeRunTimeDep.lvlib" Type="Library" URL="../../builds/VMX_IOB/VMX/VMX_IOB/VMX_IOB.lvlibp/1abvi3w/vi.lib/Platform/TimedLoop/XDataNode/XDNodeRunTimeDep.lvlib"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="L4VMXCLIT.dll" Type="Document" URL="L4VMXCLIT.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="MATRIX JOYSTICK II.lvlibp" Type="LVLibp" URL="../../builds/VMX_IOB/VMX/VMX_IOB/MATRIX JOYSTICK II.lvlibp">
				<Item Name="Clear Errors.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/MATRIX JOYSTICK II.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="CRC-16.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/MATRIX JOYSTICK II.lvlibp/CRC-16.vi"/>
				<Item Name="MATRIX JOYSTICK II.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/MATRIX JOYSTICK II.lvlibp/MATRIX JOYSTICK II.ctl"/>
				<Item Name="MJ2 (AutoDetect).vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/MATRIX JOYSTICK II.lvlibp/MJ2 (AutoDetect).vi"/>
				<Item Name="MJ2Test.vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/MATRIX JOYSTICK II.lvlibp/MJ2Test.vi"/>
				<Item Name="stick.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/MATRIX JOYSTICK II.lvlibp/stick.ctl"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/MATRIX JOYSTICK II.lvlibp/1abvi3w/vi.lib/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Find Search Mode.ctl" Type="VI" URL="../../builds/VMX_IOB/VMX/VMX_IOB/MATRIX JOYSTICK II.lvlibp/1abvi3w/vi.lib/Instr/_visa.llb/VISA Find Search Mode.ctl"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
