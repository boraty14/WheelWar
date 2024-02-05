function vibrate(duration,state)
	local system_name = sys.get_sys_info().system_name
	if system_name == "Android" then
		vibrate.vibrate(duration)
	elseif system_name == "iPhone OS" and taptic_engine and taptic_engine.isSupported() then
		if state == 0 then
			taptic_engine.impact(taptic_engine.IMPACT_LIGHT)
		elseif state == 1 then
			taptic_engine.impact(taptic_engine.IMPACT_MEDIUM)
		else if state == 2 then
			taptic_engine.impact(taptic_engine.IMPACT_HEAVY)
		end
	end
end