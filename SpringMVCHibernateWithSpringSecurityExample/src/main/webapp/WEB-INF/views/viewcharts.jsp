<html>
   <head>
      <title>Highcharts for School Enrollment</title>
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js">
      </script>
      <script src = "https://code.highcharts.com/highcharts.js"></script>  
   </head>
   
   <body>
   <b>Total Enrollment of the school : ${school.total} in year : 2018</b>
      <div id = "container" style = "width: 550px; height: 400px; margin: 0 auto"></div>
      <script language = "JavaScript">
         $(document).ready(function() {
//             var general = Number($("#general").val());
          var gen = ${school.general};
        
          var sc = ${school.sc};
          var st = ${school.st};
          var others = ${school.others};
            var chart = {
               plotBackgroundColor: null,
               plotBorderWidth: null,
               plotShadow: false
            };
            var title = {
               text: 'Caste Based Enrollment of the School, 2018'   
            };
            var tooltip = {
               pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            };
            var plotOptions = {
               pie: {
                  allowPointSelect: true,
                  cursor: 'pointer',
                  
                  dataLabels: {
                     enabled: true,
                     format: '<b>{point.name}%</b>: {point.percentage:.1f} %',
                     style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor)||
                        'black'
                     }
                  }
               }
            };
            var series = [{
               type: 'pie',
               name: 'Caste share',
               data: [
                  ['General',   gen],
//                   ['OBC',       obc],
//                   {
//                      name: 'Chrome',
//                      y: 12.8,
//                      sliced: true,
//                      selected: true
//                   },
                  
                  ['SC',    sc],
                  ['ST',     st],
                  ['Others',   others]
               ]
            }];
            var json = {};   
            json.chart = chart; 
            json.title = title;     
            json.tooltip = tooltip;  
            json.series = series;
            json.plotOptions = plotOptions;
            $('#container').highcharts(json);  
         });
      </script>
   </body>
   
</html>