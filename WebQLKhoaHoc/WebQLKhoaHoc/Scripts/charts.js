function googleChart(json_data, container) {
    google.charts.load('current', { packages: ['corechart', 'line'] });
    google.charts.setOnLoadCallback(function () {
        drawChart(json_data, container);
    });
    function drawChart(json_data, container) {
        var arr_data = JSON.parse(json_data);
        console.log(arr_data);
        var data = google.visualization.arrayToDataTable(arr_data);

        var options = {
            height: 500,
            legend: { position: 'top', alignment: 'center' }
        };
        var chart = new google.visualization.LineChart(document.getElementById(container));

        chart.draw(data, options);
    }
}
