#Dresses 
20.times do |d|   
	Dress.create!(     
		name: "Haljina #{d}",
		short_desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu nisl id turpis bibendum egestas eget eget ligula.",
		long_desc: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eu nisl id turpis bibendum egestas eget eget ligula. Fusce sed luctus dui. Cras bibendum ipsum id mauris volutpat eleifend. Aenean vel aliquam orci. Aenean vel justo nibh. Etiam sed ante quam. Mauris venenatis, arcu id convallis molestie, risus purus egestas elit, id volutpat enim est a odio. Quisque aliquam, ex in porttitor lobortis, elit massa placerat justo, nec facilisis sapien tellus vitae neque. Donec at diam mi. Vivamus gravida urna vitae euismod tincidunt. Phasellus tempor dui eget arcu maximus porttitor. Morbi at rutrum orci. Suspendisse quis mi egestas, volutpat ante pretium, eleifend ligula. Morbi sodales lectus vitae elit rutrum malesuada. Etiam vitae justo suscipit, ornare odio eu, tincidunt dui.",
		kwrds: "Lorem ipsum Etiam Morbi",
		main_img: "https://via.placeholder.com/600x800",
		main_thumb: "https://via.placeholder.com/210x280"
	) 
end
