async function afficherCountries() {
    const reponse = await fetch("http://localhost:5000/countries");
    const countries = await reponse.json();
    console.log(countries);
  }
  