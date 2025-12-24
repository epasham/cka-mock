############
# Run CKA Mock
############
git clone https://github.com/epasham/cka-mock
cd ~/cka-mock/app
{
apt install npm -y
npm install --only=production
npm start &
}

############
# Build CKA Mock
############
docker build -t ekambaram/cka-mock:1.0 .
docker push ekambaram/cka-mock:1.0

# Run container
docker run --rm -p 3000:3000 ekambaram/cka-mock:1.0
