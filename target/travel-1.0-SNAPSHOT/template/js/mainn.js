/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function addComment(postId) {
    fetch("/travel/api/add-comment", {
        method: 'post',
        body: JSON.stringify({
            "comment": document.getElementById("commentId").value,
            "postId": postId
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (res) {
        console.info(res);
        return res.json();

    }).then(function (data) {
        console.info(data);
        let area = document.getElementById("commentArea");
        area.innerHTML = `
                            <div class="row" >                              
                                <div class="col-md-12 animate-box fadeInUp animated-fast">
                                    <a href="blog.html" class="blog-post">
                                        <span class="img" style="background-image: url(${data.iduser.avt});"></span>
                                        <div class="desc my-date">
                                            <i style="color:black" > <span>${moment(data.createdDate).fromNow()}</span></i>
                                            <h3>${data.comment}</h3>
                                            <span class="cat">Activities</span>
                                        </div>
                                    </a>
                                </div>                                
                            </div>` + area.innerHTML;
    });
}


function getRate(rate) {
    return fetch(`/travel/api/rate-${rate}`, {
        method: 'get',
            "rate": rate
       ,
        headers: {
            "Content-Type": "application/json"
        }
    })
            .then(function (res) {
        console.info(res);
        return res.json();})
            .then(function (data) {
                let listHotels = document.getElementById("list-hotel");
                let star= document.getElementById("rates");
                star.innerHTML="";
                    for(i=0; i< rate; i++){                      
                star.innerHTML=` <i class="icon-star-full"></i>` + star.innerHTML;                      
                    }
                listHotels.innerHTML = "";
                for (i = 0; i < data.length; i++) {
                    console.info(data);

                    listHotels.innerHTML =listHotels.innerHTML+
                            `
                                        <div class="col-md-6 col-sm-6 animate-box" style="height: 550px;  margin-top: 20px" >
                                            <div class="hotel-entry">
                                                <a href="<c:url value='/hotel/hotel-${data[i].id}'/>" class="hotel-img" style="background-image: url(template/images/hotel-2.jpg);">
                                                    <p class="price"><span>$120</span><small> /night</small></p>
                                                </a>
                                                <div class="desc">
                                                    <p class="star"><span id="rates">
                                                    `+ star.innerHTML+`
                    
                                                            </span> 545 Reviews</p>
                                                    <h3><a href="<c:url value='/tour/tour-${data[i].id}'/>">${data[i].name}</a></h3>
                                                    <span class="place">${data[i].address}</span>
                                                    <p>${data[i].description}</p>
                                                </div>
                                            </div>
                                        </div>

                                       ` ;
                }
            })
}

function checkRefresh(rate)
{
    getRate(rate);
}

function uncheck(rate){
           var check5 = document.getElementById("check5");
            var check4 = document.getElementById("check4");
            var check3 = document.getElementById("check3");
            var check2 = document.getElementById("check2");
            var check1 = document.getElementById("check1");

                    if(rate==5){
                    check4.checked=false;
                    check3.checked=false;
                    check2.checked=false;
                    check1.checked=false;
                    checkRefresh(5);
                }else if(rate==4){
                    check5.checked=false;
                    check3.checked=false;
                    check2.checked=false;
                    check1.checked=false;
                    checkRefresh(4);
                    
                }else if(rate==3){
                    check5.checked=false;
                    check4.checked=false;
                    check2.checked=false;
                    check1.checked=false;
                    checkRefresh(3);
                    
                }else if(rate==2){
                    check5.checked=false;
                    check3.checked=false;
                    check4.checked=false;
                    check1.checked=false;
                    checkRefresh(2);
                    
                }else
                {
                    check5.checked=false;
                    check3.checked=false;
                    check4.checked=false;
                    check2.checked=false;
                    checkRefresh(1);
                }

}





