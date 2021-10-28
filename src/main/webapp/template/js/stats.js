/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function placeChart(id, placeLables = [], placeInfo = []) {
    const labels = placeLables;
    const data = {
        labels: placeLables,
        datasets: [{
                label: 'Total revenue by Places',
                data: placeInfo,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 205, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(201, 203, 207, 0.2)'
                ],
                borderColor: [
                    'rgb(255, 99, 132)',
                    'rgb(255, 159, 64)',
                    'rgb(255, 205, 86)',
                    'rgb(75, 192, 192)',
                    'rgb(54, 162, 235)',
                    'rgb(153, 102, 255)',
                    'rgb(201, 203, 207)'
                ],
                borderWidth: 1
            }]
    };
    const config = {
        type: 'bar',
        data: data,
        options: {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        },
    };

    let ctx = document.getElementById(id).getContext("2d");
    new Chart(ctx, config);
}

function totalChart(id, placeLables = [], totalInfo = []) {
    const labels = placeLables;
    const data = {
        labels: placeLables,
        datasets: [{
                label: 'Total Revenue',
                backgroundColor: 'rgb(255, 99, 132)',
                borderColor: 'rgb(255, 99, 132)',
                data: totalInfo,
            }]
    };
    const config = {
        type: 'line',
        data: data,
        options: {}
    };
    let ctx = document.getElementById(id).getContext("2d");
    new Chart(ctx, config);
}

function totalMonth(id, monthLables = [], totalInfo = []) {

    const actions = [
        {
            name: 'Randomize',
            handler(chart) {
                chart.data.datasets.forEach(dataset => {
                    dataset.data = generateData();
                });
                chart.update();
            }
        },
    ];


    const data = {
        labels: monthLables,
        datasets: [{
                data: totalInfo,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(255, 159, 64, 0.2)',
                    'rgba(255, 205, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(201, 203, 207, 0.2)'
                ],
                borderColor: [
                    'rgb(255, 99, 132)',
                    'rgb(255, 159, 64)',
                    'rgb(255, 205, 86)',
                    'rgb(75, 192, 192)',
                    'rgb(54, 162, 235)',
                    'rgb(153, 102, 255)',
                    'rgb(201, 203, 207)'
                ],
            }]
    };
    
   

    function alternatePointStyles(ctx) {
        const index = ctx.dataIndex;
        return index % 2 === 0 ? 'circle' : 'rect';
    }

 

    function adjustRadiusBasedOnData(ctx) {
        const v = ctx.parsed.y;
        return v < 10 ? 5
                : v < 25 ? 7
                : v < 50 ? 9
                : v < 75 ? 11
                : 15;
    }

    const config = {
        type: 'line',
        data: data,
        options: {
            plugins: {
                legend: false,
                tooltip: true,
            },
            elements: {
                line: {
                    fill: false,
                },
                point: {        
                    radius: adjustRadiusBasedOnData,
                    pointStyle: alternatePointStyles,
                    hoverRadius: 15,
                }
            }
        }
    };
    let ctx = document.getElementById(id).getContext("2d");
    new Chart(ctx, config);

}
