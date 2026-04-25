build:
	@echo "Creating build directory..."
	@mkdir -p build
	@echo "*" > build/.gitignore 

.PHONY: run
run_1:
	@make -s build
	@cd build && xvlog -sv ../packed_array_example.sv # xvlog is for linux system,and xvlog.exe for windows
	@cd build && xelab packed_array_example -s simulation
	@cd build && xsim simulation -runall

.PHONY: clean
clean:
	@rm -rf build
	@echo "Cleaned build directory."