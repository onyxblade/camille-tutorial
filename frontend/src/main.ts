import endpoints from "./endpoints"

document.querySelector<HTMLDivElement>('#app')!.innerHTML = `
  <div>
    <button id="hello">Hello</button>
    <button id="create">Create Book</button>
    <button id="show">Show the first Book</button>
  </div>
`

document.querySelector('#hello')?.addEventListener('click', async () => {
  const data = await endpoints.books.hello()
  alert(data.message)
})

document.querySelector('#create')?.addEventListener('click', async () => {
  const data = await endpoints.books.create({
    book: {
      name: 'Metaprogramming Ruby',
      author: 'Paolo Perrotta',
      retailPrice: '27.95'
    }
  })
  alert(data ? "Created book" : "Error happened")
})

document.querySelector('#show')?.addEventListener('click', async () => {
  const data = await endpoints.books.show({id: 1})
  alert(JSON.stringify(data.book))
})