# Create React App with Runtime ENV

## Development

1. Copy config.js.example to config.js in public directory.
2. Run `npm start`

## Docker

1. Build

   ```bash
   docker build -f docker/Dockerfile -t cra-runtime-env .
   ```

2. Run

   ```bash
   docker run --rm -it -p 8080:80 \
         -e CREATE_REACT_APP_API_URL="http://localhost:5000" \
       cra-runtime-env
   ```
