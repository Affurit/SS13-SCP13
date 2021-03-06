/////////////
//READ THIS//
/////////////
// WARNING: DO NOT ADD INTEGER VALUES ABOVE 20 FOR ANY STAT OR SKILL OTHER THAN INTELLIGENCE, MEDICAL AND ENGINEERING. - LION

/datum/map/site_ds90
/datum/map/site_ds90/setup_map()

/datum/job/assistant
	title = "Class D"
	department = "Civilian"
	supervisors = "Foundation Personnel"
	selection_color = "#E55700"
	economic_modifier = 1
	duties = "<big><b>As a Class D, your first and foremost task is to be tested upon. This is usually done by order of a Scientist.<br> As Class D you can request several available jobs to kill time at the appropriate area.<br> : <span style = 'color:red'>REMEMBER!</span> Rioting as Class D has been prohibited without staff approval, under rule 15.<br>IMPORTANT! Do not try to break out of your cell at game start. You will break your only way out!</span>"
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/civ/classd
	allowed_ranks = list(/datum/mil_rank/civ/classd)
	var/static/list/used_numbers = list()



/datum/job/assistant/equip(var/mob/living/carbon/human/H)
	..()
	var/r = rand(100,9000)
	while (used_numbers.Find(r))
		r = rand(100,9000)
	used_numbers += r
	H.name = "D-[used_numbers[used_numbers.len]]"
	H.real_name = H.name



/datum/job/captain
	has_email = TRUE
	title = "Site Director"
	supervisors = "the SCP Foundation and O5 Council"
	duties = "<big><b>As the Site Director you are responsible for the operations happening in the Site that you manage.<br>You won't have access to SCP's, or the D-Class area.<br> As Site Director, you should worry about making sure all SOP and safety procedures are followed by delegating to the heads of staff.<br><span style = 'color:red'>It is not your job to jump in where necessary! Consistently bad roleplay will be punished under the CoHoS rule!</span>"
	minimal_player_age = 20
	economic_modifier = 15
	ideal_character_age = 50
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/command/facilitydir
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/classa)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(7,10), rand(7,10), rand(12,16))
		H.add_skills(rand(25,40), rand(25,40), rand(65,85), rand(50,70))

	access = list(
	access_adminlvl5,
	access_adminlvl4,
	access_adminlvl3,
	access_adminlvl2,
	access_adminlvl1
	)
	minimal_access = list()


/datum/job/hop
	has_email = TRUE
	title = "Head of Personnel"
	supervisors = "the Facility Director"
	department = "Command"
	department_flag = COM
	duties = "<big><b>As the Head of Personnel, you're the right hand of the Site Director.<br>You can go to places he, or she couldn't, but still won't have access to SCP's, or the D-Class Cells.<br>Your job is to be the Site Director's eyes and ears, as well as being in charge of personnel outside of the Security branch.<br>You reserve the right to promote and demote people in cases of emergencies, otherwise, approval of the Site Director is needed.<br><span style = 'color:red'>It is not your job to jump in where necessary! Bad roleplay will be punished!</span>"
	minimal_player_age = 15
	economic_modifier = 10
	ideal_character_age = 45
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/command/headofhr
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/classa)
	alt_titles = list("Personnel Director")
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(7,10), rand(7,10), rand(11,14))
		H.add_skills(rand(25,40), rand(25,40), rand(45,65), rand(40,60))


	access = list(
	access_adminlvl4,
	access_adminlvl3,
	access_adminlvl2,
	access_adminlvl1
	)
	minimal_access = list()

/datum/job/commsofficer
	has_email = TRUE
	title = "Communications Officer"
	supervisors = "the Security Commander"
	department = "Command"
	department_flag = COM
	total_positions = 0
	spawn_positions = 0
	duties = "<big><b>As the Communications Officer it is your job to maintain long-range communications, monitor the happenings on the Telecomms servers and assess situations by mere observation. Your job may entail being a dispatch center of the likes.<br>You should not ever leave your tower unless under specific circumstances."
	minimal_player_age = 15
	economic_modifier = 10
	ideal_character_age = 45
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/command/commsofficer
	allowed_branches = list(/datum/mil_branch/security)
	allowed_ranks = list(
	/datum/mil_rank/security/w1,
	/datum/mil_rank/security/w2,
	/datum/mil_rank/security/w3,
	/datum/mil_rank/security/w4,
	/datum/mil_rank/security/w5
	)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(7,10), rand(7,10), rand(11,14))
		H.add_skills(rand(25,40), rand(25,40), rand(45,65), rand(40,60))


	access = list(
	access_mtflvl1,
	access_mtflvl2,
	access_mtflvl3,
	access_mtflvl4
	)
	minimal_access = list()


// AWAITING OVERHAUL

/datum/job/cmo
	has_email = TRUE
	title = "Chief Medical Officer"
	supervisors = "the Security Commander"
	economic_modifier = 10
	minimal_player_age = 21
	ideal_character_age = 48
	alt_titles = list("Medical Director")
	outfit_type = /decl/hierarchy/outfit/job/ds90/crew/command/cmo
	allowed_branches = list(/datum/mil_branch/security)
	allowed_ranks = list(/datum/mil_rank/security/w1,
	/datum/mil_rank/security/w2,
	/datum/mil_rank/security/w3)

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_mtflvl4)
	minimal_access = list()


// CELLS

/datum/job/cellguardlieutenant
	has_email = TRUE
	title = "Cell Warden"
	department = "Security"
	department_flag = SEC
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Security Commander"
	economic_modifier = 4
	alt_titles = null
	duties = "<big><b>As the Cell Warden, it is your job to coordinate the cell guards, prevent riots and breakouts. <br>It's also important to note that if you're an asshole or intentionally trying to be one, Class D's are more likely to riot.<br> If a Class D is requested for testing it is not your, or the Cell Guard's job to deliver them to the tests. Hand them over to one of the zone guards, instead.</span>"
	minimal_player_age = 7
	ideal_character_age = 30
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/cellguardlieutenant
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/o1,
		/datum/mil_rank/security/o2
	)

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_mtflvl4, access_dclassjanitorial, access_dclassmining, access_dclasskitchen, access_dclassbotany)
	minimal_access = list()

/datum/job/brigofficer
	has_email = TRUE
	title = "Cell Guard"
	department = "Security"
	department_flag = SEC
	total_positions = 7
	spawn_positions = 7
	supervisors = "the Cell Warden"
	duties = "<big><b>As the Cell Guard, it is your job to prevent riots and breakouts. <br>It's also important to note that if you're an asshole or intentionally trying to be one, Class D's are more likely to riot.<br> If a Class D is requested for testing it is not your, or the Cell Guard's job to deliver them to the tests. Hand them over to one of the zone guards, instead.</span>"
	economic_modifier = 4
	alt_titles = null
	minimal_player_age = 5
	ideal_character_age = 23
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/brigofficer
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
	/datum/mil_rank/security/e7,
	/datum/mil_rank/security/e8

	)

	access = list(access_mtflvl1, access_mtflvl2, access_dclassjanitorial, access_dclassmining, access_dclasskitchen, access_dclassbotany)
	minimal_access = list()

// SECURITY
/datum/job/hos
	has_email = TRUE
	title = "Guard Commander"
	supervisors = "The Facility Director"
	department = "Security"
	department_flag = SEC|COM
	duties = "<big><b>As the Guard Commander, you have direct say over the Security department. You're not assigned to any zone, but instead should jump in where necessary or requested. You are to speak with your Zone Commanders oftenly, and assign new guards to the right zone, or where it's needed mostly.</span>"
	economic_modifier = 8
	minimal_player_age = 21
	ideal_character_age = 55
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/command/cos
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/o3
	)

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_mtflvl4, access_mtflvl5, access_sciencelvl1, access_sciencelvl2, access_sciencelvl3, access_sciencelvl4)
	minimal_access = list()
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(12,18), rand(12,16), rand(10,12))
		H.add_skills(rand(60, 75), rand(60,75))

/datum/job/ltofficer
	has_email = TRUE
	title = "Zone Commander"
	department = "Security"
	department_flag = SEC
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Guard Commander"
	duties = "<big><b>As the Zone Commander, you're the right hand of the Guard Commander, and in charge of a specific zone. In this zone, you have full command of the guards stationed there in every situation, except Code Red or higher. You should ask the Guard Commander which zone you're assigned to, if you joined later in the round. You won't have command over the Cell Guards or Warden.</span>"
	economic_modifier = 4
	minimal_player_age = 10
	ideal_character_age = 45
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/ltofficer
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/o1,
		/datum/mil_rank/security/o2
	)

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_mtflvl4, access_sciencelvl1, access_sciencelvl2, access_sciencelvl3, access_sciencelvl4)
	minimal_access = list()

/datum/job/ncoofficer
	has_email = TRUE
	title = "Guard"
	department = "Security"
	department_flag = SEC
	total_positions = 6
	spawn_positions = 6
	duties = "<big><b>As the Guard you have more access than a Junior Guard, but do not control them. You are to guard tests and SCP's in the zone you spawned in. If in doubt, ask your Zone or Guard Commander. If you joined post-round start, you should ask the Guard Commander where to go immediately."
	supervisors = "the Guard/Zone Commander"
	economic_modifier = 4
	alt_titles = list("Agent")
	minimal_player_age = 5
	ideal_character_age = 30
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/ncoofficer
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e4,
		/datum/mil_rank/security/e5,
		/datum/mil_rank/security/e6
	)


	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_sciencelvl1, access_sciencelvl2, access_sciencelvl3)
	minimal_access = list()

/datum/job/enlistedofficer
	has_email = TRUE
	title = "Junior Guard"
	department = "Security"
	department_flag = SEC
	total_positions = 8
	spawn_positions = 8
	duties = "<big><b>As the Junior Guard you have minimal access. You are to guard tests, SCP's and provide support in the zone you spawned in. If in doubt, ask your Zone or Guard Commander. If you joined post-round start, you should ask the Guard Commander where to go immediately."
	supervisors = "the Guard/Zone Commander"
	economic_modifier = 4
	alt_titles = list("Junior Agent")
	minimal_player_age = 0
	ideal_character_age = 25
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/enlistedofficer
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e1,
		/datum/mil_rank/security/e2
	)


	access = list(access_mtflvl1, access_sciencelvl1)
	minimal_access = list()
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(11,16), rand(10,14), rand(7,10))
		H.add_skills(rand(60, 75), rand(60,75))

// SCIENCE

/datum/job/juniorscientist
	has_email = TRUE
	title = "Scientist Associate"
	department = "Science"
	department_flag = SCI
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Research Director and anyone in a higher position than you"
	economic_modifier = 4
	alt_titles = list("Xenobiologist Associate", "Xenoarcheologist Associate")
	minimal_player_age = 0
	ideal_character_age = 22
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/science/juniorscientist
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/classc)


	access = list(access_sciencelvl1)
	minimal_access = list()

/datum/job/scientist
	has_email = TRUE
	title = "Scientist"
	department = "Science"
	department_flag = SCI
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Research Director and anyone in a higher position than you"
	economic_modifier = 4
	alt_titles = list("Xenobiologist", "Xenoarcheologist")
	minimal_player_age = 5
	ideal_character_age = 22
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/science/scientist
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/classc)


	access = list(access_sciencelvl1, access_sciencelvl2)
	minimal_access = list()

/datum/job/seniorscientist
	has_email = TRUE
	title = "Senior Scientist"
	department = "Science"
	department_flag = SCI
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Research Director and anyone in a higher position than you"
	economic_modifier = 4
	alt_titles = list("Senior Xenobiologist", "Senior Xenoarcheologist")
	minimal_player_age = 10
	ideal_character_age = 22
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/science/seniorscientist
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/classb)


	access = list(access_sciencelvl1, access_sciencelvl2, access_sciencelvl3, access_sciencelvl4)
	minimal_access = list()

/datum/job/rd
	has_email = TRUE
	title = "Research Director"
	supervisors = "Facility Director and the Head of Human Resources"
	total_positions = 1
	spawn_positions = 1
	economic_modifier = 20
	minimal_player_age = 15
	ideal_character_age = 60
	spawn_positions = 6
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/science/researchdirector
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/classa)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(6,8), rand(6,8), rand(14,17))
		H.add_skills(rand(25,40), rand(25,40), rand(65,85), rand(50,70))

	access = list(access_sciencelvl5,
	access_sciencelvl4,
	access_sciencelvl3,
	access_sciencelvl2,
	access_sciencelvl1)
	minimal_access = list()


// ENGINEERING


/datum/job/juneng
	has_email = TRUE
	title = "Junior Engineer"
	total_positions = 4
	spawn_positions = 4
	department_flag = ENG
	supervisors = "the Chief Engineer"
	economic_modifier = 5
	minimal_player_age = 7
	ideal_character_age = 30
	alt_titles = list(
		"Junior Maintenance Technician",
		"Junior Engine Technician",
		"Junior Damage Control Technician",
		"Junior Electrician"
		)
	outfit_type = /decl/hierarchy/outfit/job/ds90/crew/engineering/juneng
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e4
	)

	access = list(access_mtflvl1, access_mtflvl2)
	minimal_access = list()

/datum/job/eng
	has_email = TRUE
	title = "Engineer"
	total_positions = 3
	spawn_positions = 3
	department_flag = ENG
	supervisors = "the Chief Engineer"
	economic_modifier = 5
	minimal_player_age = 7
	ideal_character_age = 30
	alt_titles = list(
		"Maintenance Technician",
		"Engine Technician",
		"Damage Control Technician",
		"Electrician"
		)
	outfit_type = /decl/hierarchy/outfit/job/ds90/crew/engineering/juneng
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e5,
		/datum/mil_rank/security/e6
	)

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3)
	minimal_access = list()

/datum/job/seneng
	has_email = TRUE
	title = "Senior Engineer"
	total_positions = 2
	spawn_positions = 2
	department_flag = ENG
	supervisors = "the Chief Engineer"
	economic_modifier = 5
	minimal_player_age = 7
	ideal_character_age = 30
	alt_titles = list(
		"Senior Maintenance Technician",
		"Senior Engine Technician",
		"Senior Damage Control Technician",
		"Senior Electrician"
		)
	outfit_type = /decl/hierarchy/outfit/job/ds90/crew/engineering/seneng
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e7,
		/datum/mil_rank/security/e8,
		/datum/mil_rank/security/e9
	)

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_mtflvl4)
	minimal_access = list()

/datum/job/conteng
	has_email = TRUE
	title = "Containment Engineer"
	total_positions = 1
	spawn_positions = 1
	department_flag = ENG
	supervisors = "the Chief Engineer"
	economic_modifier = 5
	minimal_player_age = 7
	ideal_character_age = 30
	outfit_type = /decl/hierarchy/outfit/job/ds90/crew/engineering/conteng
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/w1,
		/datum/mil_rank/security/w2,
		/datum/mil_rank/security/w3,
		/datum/mil_rank/security/w4,
		/datum/mil_rank/security/w5
	)

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_mtflvl4, access_sciencelvl1, access_sciencelvl2, access_sciencelvl3, access_sciencelvl4)
	minimal_access = list()



/datum/job/chief_engineer
	has_email = TRUE
	title = "Chief Engineer"
	supervisors = "the Security Commander and Facility Director"
	total_positions = 1
	spawn_positions = 1
	economic_modifier = 9
	ideal_character_age = 40
	minimal_player_age = 21
	outfit_type = /decl/hierarchy/outfit/job/ds90/crew/command/chief_engineer
	allowed_branches = list(/datum/mil_branch/security)
	allowed_ranks = list(/datum/mil_rank/security/o1, /datum/mil_rank/security/o2)

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_mtflvl4)
	minimal_access = list()

// MEDICAL JOBS.

/datum/job/chemist
	has_email = TRUE
	title = "Chemist"
	department = "Medical"
	department_flag = MED

	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Medical Officer"
	selection_color = "#013d3b"
	economic_modifier = 4
	ideal_character_age = 30
	outfit_type = /decl/hierarchy/outfit/job/ds90/medical/chemist
	allowed_branches = list(/datum/mil_branch/security)
	allowed_ranks = list(/datum/mil_rank/security/e3)

	access = list(access_mtflvl1, access_mtflvl2)
	minimal_access = list()

/datum/job/psychiatrist
	has_email = TRUE
	title = "Psychiatrist"
	department = "Medical"
	department_flag = MED
	selection_color = "#013d3b"
	total_positions = 1
	spawn_positions = 1
	ideal_character_age = 40
	economic_modifier = 5
	supervisors = "the Chief Medical Officer"
	alt_titles = list("Counselor")
	outfit_type = /decl/hierarchy/outfit/job/ds90/medical/psychiatrist
	allowed_branches = list(
	/datum/mil_branch/civilian)
	allowed_ranks = list(
		/datum/mil_rank/civ/classa)


	access = list(access_mtflvl1)
	minimal_access = list()

/datum/job/medicaldoctor
	has_email = TRUE
	title = "Medical Doctor"
	department = "Medical"
	department_flag = MED
	selection_color = "#013d3b"
	total_positions = 3
	spawn_positions = 3
	ideal_character_age = 40
	economic_modifier = 5
	supervisors = "the Chief Medical Officer"
	outfit_type = /decl/hierarchy/outfit/job/ds90/medical/medicaldoctor
	allowed_branches = list(
	/datum/mil_branch/security)
	allowed_ranks = list(
		/datum/mil_rank/security/e4)


	access = list(access_mtflvl1, access_mtflvl2)
	minimal_access = list()

/datum/job/virologist
	has_email = TRUE
	title = "Virologist"
	department = "Medical"
	department_flag = MED
	selection_color = "#013d3b"
	total_positions = 2
	spawn_positions = 2
	ideal_character_age = 40
	economic_modifier = 5
	supervisors = "the Chief Medical Officer"
	outfit_type = /decl/hierarchy/outfit/job/ds90/medical/virologist
	allowed_branches = list(
	/datum/mil_branch/security)
	allowed_ranks = list(
		/datum/mil_rank/security/e3)


	access = list(access_mtflvl1, access_mtflvl2)
	minimal_access = list()

/datum/job/surgeon
	has_email = TRUE
	title = "Surgeon"
	department = "Medical"
	department_flag = MED
	selection_color = "#013d3b"
	total_positions = 2
	spawn_positions = 2
	ideal_character_age = 40
	economic_modifier = 5
	supervisors = "the Chief Medical Officer"
	outfit_type = /decl/hierarchy/outfit/job/ds90/medical/surgeon
	allowed_branches = list(
	/datum/mil_branch/security)
	allowed_ranks = list(
		/datum/mil_rank/security/e3)


	access = list(access_mtflvl1, access_mtflvl2)
	minimal_access = list()

/datum/job/emt
	has_email = TRUE
	title = "Emergency Medical Technician"
	department = "Medical"
	department_flag = MED
	selection_color = "#013d3b"
	total_positions = 2
	spawn_positions = 2
	ideal_character_age = 40
	economic_modifier = 5
	supervisors = "the Chief Medical Officer"
	outfit_type = /decl/hierarchy/outfit/job/ds90/medical/emt
	allowed_branches = list(
	/datum/mil_branch/security)
	allowed_ranks = list(
		/datum/mil_rank/security/e4)


	access = list(access_mtflvl1, access_mtflvl2)
	minimal_access = list()


//LOGISTICS

/datum/job/qm
	has_email = TRUE
	title = "Logistics Officer"
	department = "Logistics"
	department_flag = SUP
	total_positions = 0
	spawn_positions = 0
	supervisors = "the Security Commander"
	selection_color = "#515151"
	economic_modifier = 5
	minimal_player_age = 7
	ideal_character_age = 35
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/command/logisticsofficer
	allowed_branches = list(
		/datum/mil_branch/security,
	)
	allowed_ranks = list(
		/datum/mil_rank/security/w1

	)

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3)
	minimal_access = list()


/datum/job/cargo_tech
	has_email = TRUE
	title = "Logistics Specialist"
	department = "Logistics"
	department_flag = SUP
	total_positions = 0
	spawn_positions = 0
	selection_color = "B4802B"
	supervisors = "the Logistics Officer"
	minimal_player_age = 3
	ideal_character_age = 24
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/command/logisticspecialist
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
	/datum/mil_rank/security/e3
	)

	access = list(access_mtflvl1, access_mtflvl2)
	minimal_access = list()

// MISC JOBS

/datum/job/janitor
	has_email = TRUE
	title = "Janitor"
	department = "Civilian"
	department_flag = CIV
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Head of Personnel"
	ideal_character_age = 24
	alt_titles = list("Interior caretaker")
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/civ/janitor
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
	/datum/mil_rank/civ/classd
	)

	access = list(access_sciencelvl1)
	minimal_access = list()

/datum/job/chef
	has_email = TRUE
	title = "Chef"
	department = "Civilian"
	department_flag = CIV
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Head of Personnel"
	selection_color = "#515151"
	ideal_character_age = 24
	alt_titles = list("Cook")
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/civ/chef
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
	/datum/mil_rank/civ/classd
	)

	access = list(access_sciencelvl1)
	minimal_access = list()

/datum/job/bartender
	has_email = TRUE
	title = "Bartender"
	department = "Civilian"
	department_flag = CIV
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Head of Personnel"
	selection_color = "#515151"
	ideal_character_age = 24
	alt_titles = list("Waiter")
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/civ/bartender
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
	/datum/mil_rank/civ/classd
	)

	access = list(access_sciencelvl1)
	minimal_access = list()