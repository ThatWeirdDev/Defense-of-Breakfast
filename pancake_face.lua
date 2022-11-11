local zombie = script.Parent

local waypoints = workspace.Waypoints



for waypoint=1, #waypoints:GetChildren() do
	local starting_x = zombie.HumanoidRootPart.Position.X
	local starting_y = zombie.HumanoidRootPart.Position.Y
	local starting_z = zombie.HumanoidRootPart.Position.Z
	local destination_x = waypoints[waypoint].Position.X
	local destination_y = waypoints[waypoint].Position.Y
	local destination_z = waypoints[waypoint].Position.Z
	local steps_to_take = 20


	local x_to_move =  (destination_x - starting_x)/steps_to_take
	local y_to_move = (destination_y - starting_y)/steps_to_take
	local z_to_move = (destination_z - starting_z)/steps_to_take
	if destination_x < starting_x then
		x_to_move = 0 - math.abs(x_to_move)
	end
	if destination_y < starting_y then
		y_to_move = 0 - math.abs(y_to_move)
	end
	if destination_z < starting_z then
		z_to_move = 0 - math.abs(z_to_move)
	end
	
	for i = 0, steps_to_take, 1 do 
		local new_x = starting_x + ((i + 1) * x_to_move)
		local new_y = starting_y + ((i + 1) * y_to_move)
		local new_z = starting_z + ((i + 1) * z_to_move)
		local destination_vector = Vector3.new(
			new_x, 
			new_y, 
			new_z
		)
		zombie.Humanoid:MoveTo(destination_vector)
		zombie.Humanoid.MoveToFinished:Wait()
		zombie.Humanoid.Pan:MoveTo(zombie.HumanoidRootPart.Position)

	end

end



