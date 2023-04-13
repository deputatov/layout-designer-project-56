install:
	npm install

lint:
	npx stylelint ./src/styles/*.css
	npx stylelint ./src/styles/**/*.scss
	npx htmlhint ./src/*.html

compile:
	npx sass ./src/scss:./src/css

deploy:
	npx surge ./src/
