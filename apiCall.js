fetch('https://prog2700.onrender.com/dna/dnaMap.json')
  .then(response => response.json())
  .then(data => {
    // Do something with the data
    console.log(data);
  })
  .catch(error => {
    console.error('Error fetching data:', error);
  });
