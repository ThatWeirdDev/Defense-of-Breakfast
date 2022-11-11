--local zombie = script.Parent
--local waypoints = workspace.Waypoints

--for waypoint=1, #waypoints:GetChildren() do
--	local starting_x = zombie.HumanoidRootPart.Position.X
--	local starting_y = zombie.HumanoidRootPart.Position.Y
--	local destination_x = waypoints[waypoint].Position.X
--	local destination_y = waypoints[waypoint].Position.Y
--	local steps_to_take = 22
	
	
--	local x_to_move =  (destination_x - starting_x)/steps_to_take
--	local y_to_move = (destination_y - starting_y)/steps_to_take
--	for i = 0, steps_to_take, 1 do 
--		local destination_vector = Vector3.new(zombie.HumanoidRootPart.Position.X + x_to_move, zombie.HumanoidRootPart.Position.Y + y_to_move, zombie.HumanoidRootPart.Position.Z)
--		print(destination_vector.X)
--		print(destination_vector.Y)
--		print(destination_vector.Z)
--		print("\n")
--		zombie.Humanoid:MoveTo(destination_vector)
--		zombie.Humanoid.Pan:MoveTo(zombie.HumanoidRootPart.Position)
--		zombie.Humanoid.MoveToFinished:Wait()
--	end
--	print("are we here?????")
	
	
--end

local zombie = script.Parent

local waypoints = workspace.Waypoints



for waypoint=1, #waypoints:GetChildren() do
	local starting_x = zombie.HumanoidRootPart.Position.X
	local starting_y = zombie.HumanoidRootPart.Position.Y
	local starting_z = zombie.HumanoidRootPart.Position.Z
	local destination_x = waypoints[waypoint].Position.X
	local destination_y = waypoints[waypoint].Position.Y
	local destination_z = waypoints[waypoint].Position.Z
	local steps_to_take = 40


	local x_to_move =  (destination_x - starting_x)/steps_to_take
	local y_to_move = (destination_y - starting_y)/steps_to_take
	local z_to_move = (destination_z - starting_z)/steps_to_take
	if destination_x > starting_x then
		x_to_move = x_to_move * -1
	end
	if destination_y > starting_y then
		y_to_move = y_to_move * -1
	end
	if destination_z > starting_z then
		z_to_move = z_to_move * -1
	end
	print("starting_x:", starting_x)
	print("starting_y:", starting_y)
	print("starting_z:", starting_z)
	print("x to move", x_to_move)
	print("y to move", y_to_move)
	print("z to move", z_to_move)
	print("destination x:", destination_x)
	print("destination y:", destination_y)
	print("destination z:", destination_z)

	for i = 0, steps_to_take, 1 do 
		local destination_vector = Vector3.new(
			zombie.HumanoidRootPart.Position.X + x_to_move, 
			zombie.HumanoidRootPart.Position.Y + y_to_move, 
			zombie.HumanoidRootPart.Position.Z + z_to_move
		)
		local current_x = zombie.HumanoidRootPart.Position.X
		local current_y = zombie.HumanoidRootPart.Position.Y
		local current_z = zombie.HumanoidRootPart.Position.Z
		local new_x = current_x + x_to_move
		local new_y = current_y + y_to_move
		local new_z = current_z + z_to_move
		print("current_x:", current_x)
		print("current_y:", current_y)
		print("current_z:", current_z)
		print("x to move", x_to_move)
		print("y to move", y_to_move)
		print("z to move", z_to_move)
		print("new_x:", new_x)
		print("new_y:", new_y)
		print("new_z:", new_z)
		print("\n")
		zombie.Humanoid:MoveTo(destination_vector)
		zombie.Humanoid.Pan:MoveTo(zombie.HumanoidRootPart.Position)
		zombie.Humanoid.MoveToFinished:Wait()
		--wait(3)
	end
	print("are we here?????")


end



