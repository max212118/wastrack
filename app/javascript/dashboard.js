import Chart from 'chart.js';
import ChartDataLabels from 'chartjs-plugin-datalabels';
const graph = document.getElementById('graph').getContext('2d');

console.log(graph);
let  = new Chart(graph, {
  type: 'bar',
  data: {
    labels: ["Janvier","Fevrier","Mars","Avril","Mai","Juin","Juillet","Aout","Septembre","Octobre","Novembre","Decembre"],
    datasets: [{
      label: "Filling Level of Containers",
      data: [80, 90, 70, 40, 40, 50, 60, 70, 40, 30, 40, 80],
    }]
  }
})
