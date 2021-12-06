docker build . -t vladimir/frontend
docker run -dp 3000:3000 vladimir/frontend