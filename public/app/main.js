$(document).ready(function() {
    $tableRoot = $('#root');
    $btnNext = $('#next');
    $btnPrev = $('#prev');
    
    var limit = 3;
    var start = 0;
    var count = 0;
    var url   = "http://localhost/CI_jquery_lazy_loading/index.php/api_people";
    var limitUrl = url +"/limit/"+ limit +"/"+ start;
    var countUrl = url +"/count";

    // $.ajax({
    //     type: 'GET',
    //     url: "http://localhost/ci_api/public/app/data.json",
    //     success: function(datas){
    //         console.log(datas);
    //     },
    //     error: function(XMLHttpRequest, textStatus, errorThrown) { 
    //         alert("Status: " + textStatus); alert("Error: " + errorThrown);
    //     }  
    // });

    function getDatas() {
        $.ajax({
            type: 'GET',
            url: limitUrl,
            success: function(datas){
                myDatas = $.parseJSON(datas);
                $.each(myDatas, function(i, myData){
                   // console.log(i +" : "+myData); 
                   $tableRoot.append(
                        "<tr>"+
                            "<td>"+ myData.id +"</td>"+
                            "<td>"+ myData.name +"</td>"+
                        "</tr>"
                    );
                });
            }         
        });
    }

    function countData() {
        $.ajax({
            type: 'GET',
            url: countUrl,
            success: function(datas){
                count = datas;
            }         
        });
    }

    function getTHead() {
        $tableRoot.html(
            "<tr>"+
                "<td>no</td>"+
                "<td>Nama</td>"+
            "<tr>"
        );
    }

    // init
    getTHead();
    getDatas();
    countData();
    $btnPrev.hide();
    // ---

    $btnNext.on('click', function(){
        getTHead();
        $btnPrev.show();
        start += limit;
        limitUrl = url +"/limit/"+ limit +"/"+ start;
        getDatas();
        
        if (start >= (count-limit-1))  {
            $btnNext.hide();
        }
    });

    $btnPrev.on('click', function(){
        getTHead();
        $btnNext.show();
        start -= limit;
        limitUrl = url +"/limit/"+ limit +"/"+ start;
        getDatas();
        
        if (start <= 0) {
            $btnPrev.hide();
        }
    });
});

   