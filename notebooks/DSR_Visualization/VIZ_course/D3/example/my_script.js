var x = 9

function hello(){
    return("Hello World")
}

var person = {
    firstName: "Luke",
    lastName: "Skywalker",
    power: 10
}

var name = person.firstName
var name2 = person["firstName"]

var cars = ["Seat", "Volvo", "BMW"];

var names = cars.map(function(d){return d;});
var indices = cars.map(function(d,i){return i;});


// Append at the end of the document this hyperlink: <a target=”_blank” href="http://www.w3schools.com/">docs</a>
d3.select("body").append('a').attr('target', '_blank').attr("href", "http://www.w3schools.com/").text('docs')

// Append a column to the table filled with zeros.
d3.selectAll("tr").append("td").text("0")

// change the value of the first element of every row to "9"
d3.select('tbody').selectAll('tr').select('td').text("9")

// add circle
d3.select('svg').append('circle')
.attr('cx', 150)
.attr('cy', 200)
.attr('r', 20)
.style('fill', 'red')

// let circles bounce
d3.selectAll('circle')
    .transition()
    .duration(2000)
    .ease(d3.easeBounce)
    .attr('cy', 500)

d3.select('circle').on("mouseclick", shrink);

function shrink(event){
    d3.selectAll('circle')
        .transition()
        .attr("r", 10)
}