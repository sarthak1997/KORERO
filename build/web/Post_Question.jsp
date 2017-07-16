<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/png" href="MDB Free/img/img1.png" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Korero</title>
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="MDB Free/font-awesome-4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="MDB Free/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="MDB Free/css/mdb.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="MDB Free/css/chip.css">
    
     
  </head>

  <body style="background-image: url('img/testd.jpg');">
      <button type="button" class="btn btn-primary" id="om" data-toggle="modal" data-target="#centralModalInfo" style="visibility:hidden" data-backdrop="static" data-keyboard="false">Small </button> <br>

<!-- Central Modal Medium Info -->
<form method="post" id="queform" onsubmit="return check();">
<div class="modal fade" id="centralModalInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog modal-notify modal-info modal-lg" role="document">
        <!--Content-->
        <div class="modal-content" style="border: none;">
            <!--Header-->
            <div class="modal-header" style="background-color: #33b5e5;box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.16), 0 2px 10px 0 rgba(0, 0, 0, 0.12);color: #ffffff;border-bottom: none;">
                <div class="heading lead">Ask a question</div>

                <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="goToFeed()">
                    <span aria-hidden="true" class="white-text">&times;</span>
                </button>
            </div>

            <!--Body-->
            
            
            <div class="modal-body">
                <div class="text-center">
                    <i class="fa fa-comments-o fa-4x mb-1 animated rotateIn mr-2"></i>
                    <i class="fa fa-commenting-o fa-4x mb-1 animated rotateIn mr-2"></i>
                    <i class="fa fa-quora fa-4x mb-1 animated rotateIn mr-2"></i>
                    <i class="fa fa-commenting fa-4x mb-1 animated rotateIn mr-2"></i>
                    <i class="fa fa-comments fa-4x mb-1 animated rotateIn"></i>

                </div>
                <hr class="my-2">
                <div class="row container-fluid mt-1 ml-1">
                    <div class="col-md-6" style="border-right: groove;">
                        <h4 class="mb-2">Choose Workspace for your question</h4>
                        <li class="nav-item btn-group">
                        <i class="fa fa-archive fa-2x"></i>
                        <a class="nav-link dropdown-toggle"  style="width: 700px;" id="dropdownMenu3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Select here</a>
                        <div class="dropdown-menu container" aria-labelledby="dropdownMenu3">
                            <div class="row">
                                <div class="col-md-5">
                                    <a class="dropdown-item" id="1" onclick="myfunct3(this.id)">COMPUTER SCIENCE</a>
                                    <a class="dropdown-item" id="2" onclick="myfunct3(this.id)">MECHANICAL</a>
                                    <a class="dropdown-item" id="3" onclick="myfunct3(this.id)">INFORMATION TECHNOLOGY</a>
                                    <a class="dropdown-item" id="4" onclick="myfunct3(this.id)">ELECTRICAL</a>                                    
                                    <a class="dropdown-item" id="5" onclick="myfunct3(this.id)">ELECTRONICS</a>
                                    <a class="dropdown-item" id="6" onclick="myfunct3(this.id)">FIRE TECH</a>
                                    <a class="dropdown-item" id="7" onclick="myfunct3(this.id)">CHEMICAL</a>
                                    <a class="dropdown-item" id="8" onclick="myfunct3(this.id)">CIVIL</a>
                                    
                                </div>
                                <div class="col-md-4">
                                    
                                    
                                    <a class="dropdown-item" id="9" onclick="myfunct3(this.id)">LIBRARY</a>
                                    <a class="dropdown-item" id="10" onclick="myfunct3(this.id)">SPORTS</a>
                                    <a class="dropdown-item" id="11" onclick="myfunct3(this.id)">PLACEMENT CELL</a>
                                    <a class="dropdown-item" id="12" onclick="myfunct3(this.id)">ACCOUNTS</a>   
                                    <a class="dropdown-item" id="13" onclick="myfunct3(this.id)">ADMISSION CELL</a>
                                    <a class="dropdown-item" id="14" onclick="myfunct3(this.id)">SCHOLARSHIP</a>
                                    <a class="dropdown-item" id="15" onclick="myfunct3(this.id)">MOONSTONE</a>
                                    <a class="dropdown-item" id="16" onclick="myfunct3(this.id)">HOSTEL</a>
                                    <a class="dropdown-item" id="25" onclick="myfunct3(this.id)">OTHER</a>
                                </div>
                                <div class="col-md-3">
                                    <a class="dropdown-item" id="17" onclick="myfunct3(this.id)">TRANSPORTATION</a>
                                    <a class="dropdown-item" id="18" onclick="myfunct3(this.id)">MUSIC CLUB</a>  
                                    <a class="dropdown-item" id="19" onclick="myfunct3(this.id)">DANCE CLUB</a>
                                    <a class="dropdown-item" id="20" onclick="myfunct3(this.id)">LITERARY CLUB</a>
                                    <a class="dropdown-item" id="21" onclick="myfunct3(this.id)">STIC</a>
                                    <a class="dropdown-item" id="22" onclick="myfunct3(this.id)">E-CELL</a>
                                    <a class="dropdown-item" id="23" onclick="myfunct3(this.id)">CANTEEN</a>

                                    <a class="dropdown-item" id="24" onclick="myfunct3(this.id)">KORERO</a>      
                                </div>
                               
                            </div>
                        </div>
                        </li>
                        <div class="md-form mt-1">
                            <i class="fa fa-search prefix"></i>
                            <input type="text" id="form2" class="form-control" onchange="textDispatcher()" name="askedquestion">
                            <label for="form2" id='quetext'>Start typing your question here..</label>
                        </div>
                        <h4><i class="fa fa-hashtag mr-3"></i>
                            What it is related to?
                        </h4>
                        
                          <input type="text" name="aa" id="tags" placeholder="enter tags" class="tags">
                              
                        <label id="label"></label>      
                    </div>
                    <div class="col-md-6" id="data"><h4>Are you searching for?</h4></div>
                    
                    
                </div>
            </div>
            

            <!--Footer-->
            
            <div class="modal-footer flex-center">
                <button type="submit" class="btn btn-primary btn-lg" ><i class="fa fa-cloud-upload"></i>  Post </button>   
            </div>
            
        </div>
        <!--/.Content-->
        
    </div>
</div>
    </form>
     <script src="js/jquery-1.10.2.js"></script>
     <script src="js/jquery-ui.js"></script>
     <link rel="stylesheet" href="js/jquery-ui.css">
<!-- Central Modal Medium Info-->

    <!-- SCRIPTS -->
    <!-- JQuery -->
    
    <script type="text/javascript" src="MDB Free/js/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="MDB Free/js/tether.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="MDB Free/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="MDB Free/js/mdb.min.js"></script>
    
     
       
    <script type="text/javascript">
        var count=0;
    $("#tags").keypress(function(e) {

  if (e.keyCode === 0 || e.keyCode === 32) {
    var tag = $('#tags').val();
    if(tag==='' || tag==="" || tag===' ' || tag===" ")
    {
        alert("Empty Tag can't be entered!!");
        $('#tags').val('');
    }
    else{
    count++;  
    add(tag);
    $('#tags').val('');
  }
  }
});
var domain,domaincount=false;
    function myfunct3(id) {
    document.getElementById("dropdownMenu3").innerHTML = document.getElementById(id).innerHTML;
    domain=id;
    domaincount=true;
}

        function add(p) {
        var sty=document.createElement('div');
        sty.innerHTML=p;
        sty.id=p;
        sty.className="chip";
        sty.style.marginRight="10px";
        document.getElementById("label").appendChild(sty);
        sty.addEventListener("click", function() {
    dlt(p);
});

    }    
    function dlt(p)
    {
        var chld=document.getElementById(p);
       chld.remove();
       count--;
        }
        
        function check()
        {
            if(domaincount==false)
            {
                alert("Please choose workspace associated with Question !!");
                return false;
            }
            if(count<1)
            {
                alert("Please enter atleast one tag");
                return false;
            }
            var str=document.getElementById("form2").value;
            if(!(str.lastIndexOf('?')===str.length-1))
            {
                alert("Add ? at the end of question");
                return false;
        }
        collectTags();
    }
        var txt="";
       
        function collectTags()
        {
            var c=document.getElementById("label").childNodes;
            
            for(i=0;i<c.length;i++)
            {
                txt+=c[i].innerHTML.trim()+",";
            }
            
            console.log(txt);
            console.log(domain);
            document.getElementById("queform").setAttribute("action","PostQuestion?tags="+txt+"&domain="+domain);
        }
    </script>

    
    <script>
function getXmlHttpRequestObject()
{
var xmlHttpReq;

if(window.XMLHttpRequest){
    request=new window.XMLHttpRequest();
}
else if(window.ActiveXObject){
    request=new window.ActiveXObject();
}
else{
    request=null;
}
return request;
}

function textDispatcher()
{   
    var que=document.getElementById("form2").value;
    request=getXmlHttpRequestObject();
    request.onreadystatechange=showResponse;
    request.open("post","PostSuggestions",true);
    request.setRequestHeader ("Content-Type", "application/x-www-form-urlencoded");
    
    var data="que="+que;
    request.send(data);
}
function showResponse()
{
    if(request.readyState===4 && request.status===200){
        document.getElementById("data").innerHTML=request.responseText;
    }
}
function goToFeed()
{
var url="MyFeed";
        window.location.href = url;

        return false ;    
}
var modal=document.getElementById("centralModalInfo");
document.getElementById("om").click();
window.onclick = function(event) {
    if(event.target===modal)
    {
     
     } //location.reload();
};

//$(document).ready(function() {
//	$(function() {
//		$("#tagsauto").autocomplete({
//
//			source : function(request, response) {
//				$.ajax({
//					url : "SearchTags?domain="+domain,
//					type : "get",
//					data : {
//						term : request.term
//					},
//					dataType : "json",
//					success : function(data) {
//                                            console.log(data);
//						response(data);
//					}
//				});
//			}
//                         
//		});
//	});
//        
//        
//});



</script>
    
</body>

</html>

