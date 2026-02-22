install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C hello.py 

format:
	black *.py 

check-format:
	black --check .

test: 
	python -m pytest -vv --cov=hello test_hello.py

# A Makefile in  a Phyton project is a file used by the tool make
# to automate repetitive tasks such as:
# - Running a project (run)
# - Installing dependencies (install)
# - Running tests (test)
# - Formatting code (format)
# - Linting (lint)
# - Building Docker Images
# - Deploying 

# && -> run second command only if first command is successful
# \ -> allows to split a long command into multiple lines for better readability
# -vv -> verbose output
# --cov=hello -> measure code coverage for the hello module
# R -> Refactor code
# C -> Convention, for example, naming conventions, code style, etc.

# A linter is like a spell checker and grammar checker for code. It analyzes code for potential errors, coding style issues, and other problems. It helps developers maintain code quality and consistency across a project.
# Linting is the process of automatically analyzing code to detect:
# - Errors
# - Potential bugs
# - Code style issues
# - bad practices
# - Code smells

# Here are the most used ones: 
# - pylint -> very strict, detailed feedback
# - flake8 -> more lenient, focuses on style, lighweight 
# - ruff -> fast, focuses on style, lighweight
# - black -> code formatter, not a linter, but can be used in conjunction with linters to ensure consistent code style

# A test is code that verifies your program behaves correctly.
# Instead of manually running your program and checking results, tests automate that verification.
# The most popular testing framework in Python is pytest, which allows you to write simple test functions and provides powerful features for running and organizing tests.
# - Find test files (like test_hello.py)
# - Executre test functions (like test_greet())
# - report pass/fail
# - show coverage


