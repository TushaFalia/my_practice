build:
	@echo "Creating build directory..."
	@mkdir -p build
	@echo "*" > build/.gitignore 

.PHONY: run
run_1:
	@make -s build
	@cd build && xvlog -sv ../packed_array_example.sv 
	@cd build && xelab packed_array_example -s simulation
	@cd build && xsim simulation -runall

run_2:
	@make -s build
	@cd build && xvlog -sv ../newpackedarray.sv 
	@cd build && xelab newpackedarray -s simulation
	@cd build && xsim simulation -runall

run_3:
	@make -s build
	@cd build && xvlog -sv ../new_array_2.sv 
	@cd build && xelab new_array_2 -s simulation
	@cd build && xsim simulation -runall

run_4:
	@make -s build
	@cd build && xvlog -sv ../array_methods.sv 
	@cd build && xelab array_methods -s simulation
	@cd build && xsim simulation -runall


.PHONY: clean
clean:
	@rm -rf build
	@echo "Cleaned build directory."