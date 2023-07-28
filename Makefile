install:
	npm install

lint:
	npx stylelint ./src/styles/*.css
	npx stylelint ./src/styles/**/*.scss
	npx htmlhint ./src/*.html

compile:
	npx sass --no-source-map ./src/scss/style.scss:./src/css/style.css
  # npx sass --no-source-map --style=compressed ./src/scss/style.scss:./src/css/style.css
  # npx sass --no-source-map ./src/scss/style.scss:./src/css/style.css

watch:
	npx sass --watch --no-source-map ./src/scss:./src/css

deploy:
	npx surge ./src/
