// Initialize your app
var myApp = new Framework7();

// Export selectors engine
var $$ = Dom7;

// Add view
var mainView = myApp.addView('.view-main', {
    // Because we use fixed-through navbar we can enable dynamic navbar
    dynamicNavbar: true
});

// Callbacks to run specific code for specific pages, for example for About page:
myApp.onPageInit('about', function (page) {
    // run createContentPage func after link was clicked
    $$('.create-page').on('click', function () {
        createContentPage();
    });
});

// Generate dynamic page
var dynamicPageIndex = 0;
function createContentPage() {
	mainView.router.loadContent(
        '<!-- Top Navbar-->' +
        '<div class="navbar">' +
        '  <div class="navbar-inner">' +
        '    <div class="left"><a href="#" class="back link"><i class="icon icon-back"></i><span>Back</span></a></div>' +
        '    <div class="center sliding">Dynamic Page ' + (++dynamicPageIndex) + '</div>' +
        '  </div>' +
        '</div>' +
        '<div class="pages">' +
        '  <!-- Page, data-page contains page name-->' +
        '  <div data-page="dynamic-pages" class="page">' +
        '    <!-- Scrollable page content-->' +
        '    <div class="page-content">' +
        '      <div class="content-block">' +
        '        <div class="content-block-inner">' +
        '          <p>Here is a dynamic page created on ' + new Date() + ' !</p>' +
        '          <p>Go <a href="#" class="back">back</a> or go to <a href="services.html">Services</a>.</p>' +
        '        </div>' +
        '      </div>' +
        '    </div>' +
        '  </div>' +
        '</div>'
    );
	return;
}

//- With callbacks on click
function users_action(uid) {
    var buttons = [
        {
            text: '冻结/解冻该用户',
            onClick: function () {
              myApp.confirm('确定冻结/解冻该用户?','善意',
              function () {
                  $.post('/shanyi/users',{
                    'action':'freeze',
                    'uid':uid
                  },function(data,status){
                    if(data == 'success'){
                      myApp.alert('冻结/解冻成功',function(){
                      location.reload();
                      });
                    }
                    else if(data == 'error'){
                      myApp.alert('失败');
                    }
                  })
              },
              function () {
                ;
              }
            );
            }
        },
        {
            text: '删除该用户',
            color:  'orange',
            onClick: function () {
              myApp.confirm('确定删除该用户?','善意',
              function () {
                $.post('/shanyi/users',{
                  'action':'delete',
                  'uid':uid
                },function(data,status){
                  if(data == 'success'){
                    myApp.alert('删除成功',function(){
                    location.reload();
                    });
                  }
                  else if(data == 'error'){
                    myApp.alert('失败');
                  }
                })
              },
              function () {
                ;
              }
            );
            }
        },
        {
            text: 'Cancel',
            color: 'red'
        },
    ];
    myApp.actions(buttons);
}

function users_action1(uid) {
    var buttons = [
        {
            text: '冻结/解冻该用户',
            onClick: function () {
              myApp.confirm('确定冻结/解冻该用户?','善意',
              function () {
                  $.post('/shanyi/users',{
                    'action':'freeze',
                    'uid':uid
                  },function(data,status){
                    if(data == 'success'){
                      myApp.alert('冻结/解冻成功',function(){
                      location.reload();
                      });
                    }
                    else if(data == 'error'){
                      myApp.alert('失败');
                    }
                  })
              },
              function () {
                ;
              }
            );
            }
        },
        {
            text: '删除该用户',
            color:  'orange',
            onClick: function () {
              myApp.confirm('确定删除该用户?','善意',
              function () {
                $.post('/shanyi/users',{
                  'action':'delete',
                  'uid':uid
                },function(data,status){
                  if(data == 'success'){
                    myApp.alert('删除成功',function(){
                    location.reload();
                    });
                  }
                  else if(data == 'error'){
                    myApp.alert('失败');
                  }
                })
              },
              function () {
                ;
              }
            );
            }
        },
        {
            text: 'Cancel',
            color: 'red'
        },
    ];
    myApp.actions(buttons);
}

function dt_back(){
  window.location.href = "/shanyi/dailytasks";
}

function news_back(){
  window.location.href = "/shanyi/manage";
}

function hw_delete(delete_id){
  $.post('/shanyi/heartwords/delete',
  {
    'delete_id' : delete_id
  },function(data,status){
    if(data == 'success'){
      myApp.alert('删除成功！',function(){
        location.reload();
      });}
    else if(data =='error'){
      myApp.alert('删除失败!');
    }
  })
}

function hw_star(star_id){
  $.post('/shanyi/heartwords/star',
  {
    'star_id' : star_id
  },function(data,status){
    if(data == 'success'){
      myApp.alert('加精成功！',function(){
      location.reload();
      });}
    else if(data =='error'){
      myApp.alert('加精失败!');
    }
  })
}

function hw_destar(star_id){
  $.post('/shanyi/heartwords/star',
  {
    'star_id' : star_id
  },function(data,status){
    if(data == 'success'){
      myApp.alert('取消加精成功！',function(){
      location.reload();
      });}
    else if(data =='error'){
      myApp.alert('取消加精失败!');
    }
  })
}

function user_login(){
  $.post('/shanyi/login',{
    'username':$("#username").val(),
    'password':$("#password").val()
  },function(data,status){
    if(data == 'success'){
      myApp.alert('登陆成功！');
      window.location.href = "/shanyi/heartwords";}
    else if(data =='error'){
      myApp.alert('账号或密码错误!',function(){
        location.reload();
      });
    }
  })
}

$$('form.ajax-submit').on('submitted', function (e) {
  var xhr = e.detail.xhr; // actual XHR object
  var data = e.detail.data; // Ajax repsonse from action file
  // do something with response data
  if(data == 'success'){
    myApp.alert('发布成功！',function(){
      window.location.href = "/shanyi/manage";
    });
    }
  else if(data =='error'){
    myApp.alert('发布失败!');
  }
});

function news1(){
  $.post('/shanyi/news',{
    'title':$('#title').val(),
    'subtitle':$('#subtitle').val(),
    'image':$('#image').val(),
    'source':$('#source').val(),
    'content':$('#content').val(),
    'city':0,
    'type':1
  },function(data,status){
    if(data == 'success'){
      myApp.alert('发布成功！',function(){
        window.location.href = "/shanyi/manage";
      });
      }
    else if(data =='error'){
      myApp.alert('发布失败!');
    }
  })
}

function task1(){
  $.post('/shanyi/dailytasks',{
    'title':$('#title').val(),
    'desc':$('#desc').val(),
    'image':$('#image').val(),
    'target':$('#target').val(),
    'content':$('#content').val(),
    'label':$('#label').val()
  },function(data,status){
    if(data == 'success'){
      myApp.alert('发布成功！',function(){
        window.location.href = "/shanyi/manage";
      });
      }
    else if(data =='error'){
      myApp.alert('发布失败!');
    }
  })
}

function prize2(){
  $.post('/shanyi/prize',{
    'title':$('#title').val(),
    'provider':$('#provider').val(),
    'image':$('#image').val(),
    'cover':$('#cover').val(),
    'round_img':$('#round_img').val(),
    'cost':$('#cost').val(),
    'content':$('#content').val()
  },function(data,status){
    if(data == 'success'){
      myApp.alert('发布成功！',function(){
        window.location.href = "/shanyi/manage";
      });
      }
    else if(data =='error'){
      myApp.alert('发布失败!');
    }
  })
}
