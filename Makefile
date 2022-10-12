.PHONY: examples

CC = xelatex
CCFLAGS = -interaction nonstopmode
#EXAMPLES_DIR = examples
COVERLETTER_DIR = coverletter
CV_DIR = beck-cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')
CoverLetter_SRCS = $(shell find $(COVERLETTER_DIR) -name '*.tex')

#examples: $(foreach x, coverletter cv resume, $x.pdf)

#resume.pdf: $(EXAMPLES_DIR)/resume.tex $(RESUME_SRCS)
#	$(CC) -output-directory=$(EXAMPLES_DIR) $<

.PHONY: all cv coverletter

all: cv coverletter clean

cv: $(CV_DIR)/beck-cv.tex $(CV_SRCS)
	$(CC) $(CCFLAGS) -output-directory=. $<

coverletter: $(COVERLETTER_DIR)/coverletter.tex 
	$(CC) $(CCFLAGS) -output-directory=. $<

clean:
	rm -f $(CV_DIR)/{*.aux *.log *.out} \
  rm -f *.aux *.log *.out


