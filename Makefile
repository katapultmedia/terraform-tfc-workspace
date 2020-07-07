  ## Initializes the local system for necessary tools
init:
	brew install pre-commit || exit 0 && \
	brew install tflint || exit 0 && \
	brew install terraform-docs