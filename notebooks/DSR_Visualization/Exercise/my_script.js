// d3.csv("https://github.com/chumo/Data2Serve/blob/master/transition_clusters.csv")

d3.csv("https://raw.githubusercontent.com/chumo/Data2Serve/master/transition_clusters.csv")
  .then(function(data){
    console.log(data)
    
    mySVG = d3.select("svg");

    var circles = mySVG.selectAll("circle").data(data);

    circles.join("circle")
            .attr("cx", function(d){return d.Xi})
            .attr("cy", function(d){return d.Yi})
            .attr("r", 5)
            .attr("fill", function(d){return d.color})
            .transition()
            .duration(2000)
            .attr("cx", function(d){return d.Xf})
            .attr("cy", function(d){return d.Yf})

    d3.selectAll("circle").on("mouseover", function(){
      d3.select(this).transition.attr("r", 20)
    })

    d3.selectAll("circle").on("mouseout", function(){
      d3.select(this).transition.attr("r", 5)
    })

   })