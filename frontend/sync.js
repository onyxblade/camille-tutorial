import axios from 'axios'
import fs from 'fs'

const BASE_URL = 'http://localhost:3000'

axios.get(`${BASE_URL}/camille/endpoints.ts`)
  .then(response => {
    fs.writeFileSync('src/endpoints.ts', response.data)
  })
  .catch(error => {
    console.log(error)
  })