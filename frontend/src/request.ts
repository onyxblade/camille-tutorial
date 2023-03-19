import axios from 'axios'

const BASE_URL = 'http://localhost:3000'

export default function request(method: 'get' | 'post', path: string, params: any) {
  const config = method === 'get' ? { params: params } : { data: params }
  return axios({
    method: method,
    url: `${BASE_URL}${path}`,
    ...config
  }).then(response => response.data)
}
