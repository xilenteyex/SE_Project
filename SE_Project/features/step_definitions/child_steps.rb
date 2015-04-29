Given /^the following entries exist/ do |child_infos_table|
 	child_infos_table.hashes.each do |child|
		ChildInfo.create!(child)
	end
end

Then /I should see "(.*)" and "(.*)"/ do |e1, e2|
assert page.body =~ /#{e1}.+#{e2}/m
end
