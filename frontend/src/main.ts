import endpoints from "./endpoints"

document.querySelector<HTMLDivElement>('#app')!.innerHTML = `
  <div>
    <button id="hello">Hello</button>
  </div>
`

document.querySelector('#hello')?.addEventListener('click', async () => {
  const data = await endpoints.books.hello()
  alert(data.message)
})
