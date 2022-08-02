.PHONY: examples

CC = xelatex
#EXAMPLES_DIR = examples
#RESUME_DIR = examples/resume
CV_DIR = beck-cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

#examples: $(foreach x, coverletter cv resume, $x.pdf)

#resume.pdf: $(EXAMPLES_DIR)/resume.tex $(RESUME_SRCS)
#	$(CC) -output-directory=$(EXAMPLES_DIR) $<

cv.pdf: $(CV_DIR)/beck-cv.tex $(CV_SRCS)
	$(CC) -output-directory=. $<

#coverletter.pdf: $(EXAMPLES_DIR)/coverletter.tex
#	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	rm -rf $(CV_SRCS)/*.pdf
