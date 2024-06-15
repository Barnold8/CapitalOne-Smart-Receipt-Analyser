/*Manually adding json data for now, will be extended to pull from server in the future*/
const json = '[{"catagory":"household","price":73},{"catagory":"cigarettes","price":26},{"catagory":"cigarettes","price":24},{"catagory":"bills","price":120},{"catagory":"household","price":151},{"catagory":"bills","price":36},{"catagory":"travel","price":40},{"catagory":"bills","price":84},{"catagory":"household","price":52},{"catagory":"bills","price":165},{"catagory":"travel","price":142},{"catagory":"cigarettes","price":81},{"catagory":"food","price":14},{"catagory":"food","price":12},{"catagory":"entertainment","price":100},{"catagory":"cigarettes","price":51},{"catagory":"entertainment","price":0},{"catagory":"bills","price":106},{"catagory":"bills","price":89},{"catagory":"cigarettes","price":174}]';
const obj = JSON.parse(json);

labels = [];
data = [];

// Loops over the json object and separates unique catagories into a list and adds the total price to the same index in the price list
for (var i in obj){
  if(labels.includes(obj[i].catagory)){
    index = labels.indexOf(obj[i].catagory);
    data[index] += obj[i].price;
  }
  else{
    labels.push(obj[i].catagory);
    data.push(obj[i].price);
  }
}

/*big function that initialised the chart. Uses data from the data variable. */
const ctx = document.getElementById('myChart');
ctx.canvas
new Chart(ctx, {
  type: 'bar',
  data: {
    labels: labels,
    datasets: [{
      label: 'Money spent (£)',
      data: data,
      borderWidth: 1
    }]
  },
  options: {
    scales: {
      y: {
        beginAtZero: true
      }
    },
    responsive : true,
    maintainAspectRation : false,
  }
});