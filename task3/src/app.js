const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send(`<h1>Hello from Containerized App!</h1>
            <p>Deployed via Terraform CI/CD</p>
            <p>Version: ${process.env.APP_VERSION || '1.0.0'}</p>`);
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
