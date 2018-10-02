const express = require('express')
const app = express()
const port = 3000

app.use('/', express.static('public'))
app.get('/health', (req, res) => res.send('true'))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))