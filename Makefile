
all:
	docker build -t sparse_matrix_converter .

check:
	docker run -it -v "$(PWD)":/work -w /work sparse_matrix_converter west0132.rua HB west0132.mat MM
	@cat west0132.mat | head
	@rm -f west0132.mat
