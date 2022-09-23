# Hibernate


> spring.jpa.hibernate.ddl-auto
		
	create -> delete all the tables, and recreate them
	update -> checks the diff, only updates the changes
	create-drop -> same as create but will drop the table at the end
	validate -> only validates whether given columns exist
	none -> turns off ddl generation


> Id generation strategy
	@GeneratedValue(strategy = GenerationType..

