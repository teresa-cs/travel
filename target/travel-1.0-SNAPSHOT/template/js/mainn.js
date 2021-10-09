

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function addComment(postId){
    fetch("/travel/api/add-comment",{
        method:'post',
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
                                        <span class="img" style="background-image: url(../template/images/blog-4.jpg);"></span>
                                        <div class="desc my-date">
                                            <i style="color:black" > <span>${moment(data.createdDate).fromNow()}</span></i>
                                            <h3>${data.comment}</h3>
                                            <span class="cat">Activities</span>
                                        </div>
                                    </a>
                                </div>                                
                            </div>`+ area.innerHTML;
        location.reload();
    });
}

