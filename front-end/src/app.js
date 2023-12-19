async function afficherCountries() {
    const reponse = await fetch("http://localhost:5000/countries");
    const countries = await reponse.json();
    
  var countriesTable =  document.getElementById('countries');
  countries.forEach(country => {
    let row = countriesTable.insertRow(-1);
    row.insertCell(0).innerHTML = country.name;
    row.insertCell(1).innerHTML = country.primary_color;
    row.insertCell(2).innerHTML = country.secondary_color;
    row.insertCell(3).innerHTML = country.fifa_rank;
    row.insertCell(4).innerHTML = country.code;
    row.insertCell(5).innerHTML = country.hat;
    row.insertCell(6).innerHTML = country.playoff;
    let imagesrow = row.insertCell(7);
    let image = document.createElement("img");
    image.src = "assets/images/flags/1x1/" + country.code + ".svg";
    imagesrow.appendChild(image);
  });
  }

  afficherCountries();
  
  async function afficherGroups() {
    const reponse = await fetch("http://localhost:5000/groups");
    const groups = await reponse.json();
    
  var groupsTable =  document.getElementById('groups');
  
  }