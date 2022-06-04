RUN_CMD	:=	docker run --rm --name axi_dma	\
						-v $(abspath .):/axi_dma -w			\
						/axi_dma aignacio/axi_dma
run_test:
	$(RUN_CMD) tox

gen_csr:
	$(RUN_CMD) rggen -c config.yml -o csr_out csr_dma.xlsx

clean:
	@rm -rf run_dir
