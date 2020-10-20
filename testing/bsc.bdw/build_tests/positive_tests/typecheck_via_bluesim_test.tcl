
# Creates a new project
handlers::open_project project.bspec 

# Sets the compilation result directories
handlers::set_compilation_results_location -simdir mult4 -bdir mult4

# Displays the project status
commands::display_project_status

# Cleans the project
commands::full_clean

# Typechecks the current project
handlers::typecheck

while {$BSPEC(BUILDPID) != ""} {
        update
}

# Displays the project status
commands::full_clean

# Closes the project 
handlers::close_project

# Exits the workstation
commands::exit_main_window
