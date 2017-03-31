<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%><!DOCTYPE >
<html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>查看考勤情况</title>
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/bootstrap/4.0.0/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/xxzx/css/mobiles/kq/student/htmleaf-demo.css">
    <link rel="stylesheet" type="text/css" href="${ctxStatic}/jquery-plugin/jquery.eeyellow.Timeline.css" />
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
</head>
<body>
<input type="hidden" id="macAddress" value="${requestScope.macAddress}"/>
<input type="hidden" id="phoneNum" value="${requestScope.phoneNum}"/>
<input type="hidden" id="seriesNum" value="${requestScope.seriesNum}"/>
<script src="${ctxStatic}/jquery/jquery-3.1.1.min.js" type="text/javascript"></script>
<script>
$('#test-response-text').val('');
var jqxhr = $.ajax('/xxzx/a/kq/student/getStuVal?phoneNum=13232671057&mac=78:02:f8:fb:e4:4c&sNum=460078191292411', {
    dataType: 'json'
}).done(function (data) {
    console.log('成功, 收到的数据: ' + JSON.stringify(data));
    console.log(data);
}).fail(function (xhr, status) {
    console.log('失败: ' + xhr.status + ', 原因: ' + status);
}).always(function () {
    console.log('请求完成: 无论成功或失败都会调用');
});
</script>
<div class="htmleaf-container">
    <header class="htmleaf-header">
        <h1>考勤时间轴</h1>
        <div class="htmleaf-links">
            <a class="htmleaf-icon icon-htmleaf-home-outline" href="." title="主页" target="_blank"><span> 主页</span></a>
            <a class="htmleaf-icon icon-htmleaf-arrow-forward-outline" href="." title="返回" target="_blank"><span> 返回</span></a>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="VivaTimeline">
                    <dl>
                        <dt>May 2016</dt>
                        <dd class="pos-left clearfix">
                            <div class="circ"></div>
                            <div class="time">Feb 03</div>
                            <div class="events">
                                <div class="events-header">Event Heading</div>
                                <div class="events-body">
                                    <div class="row">
                                        <div class="col-md-6 pull-left">
                                        </div>
                                        <div class="events-desc">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 pull-left">
                                        </div>
                                        <div class="events-desc">
                                            Morbi at nisi vitae mauris pretium egestas. Morbi placerat risus ligula, nec placerat urna porta vel. Nullam sollicitudin orci quis odio eleifend, ut facilisis orci lobortis. Vivamus sed lobortis odio. Nam volutpat, leo a ullamcorper luctus, sapien libero auctor est, sed semper massa turpis sed quam. Mauris posuere, libero in ultricies dignissim, lacus purus egestas urna, nec semper lorem tellus non eros. Nam at bibendum libero. Curabitur a ante et orci cursus tincidunt. Vivamus dictum, libero et rhoncus congue, nulla erat mollis dui, vitae cursus dui justo quis velit. In a tellus arcu. Nam at lobortis nisl. Donec consequat placerat eros, quis elementum mauris sodales a. Maecenas id feugiat velit. Phasellus dictum eleifend varius. Cras nec orci turpis. Aenean ut turpis nibh.
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 pull-left">
                                        </div>
                                        <div class="events-desc">
                                            Cras condimentum, metus ut vehicula euismod, odio massa pulvinar neque, id gravida neque est et sem. Proin consequat id nibh quis molestie. Quisque vehicula purus id purus elementum facilisis. Phasellus sodales nibh quis neque rhoncus aliquet. Nunc eget ipsum efficitur, pretium arcu et, gravida purus. Phasellus tempor lacus ac enim pulvinar elementum. Integer aliquet justo lacinia nunc tempus vulputate.
                                        </div>
                                    </div>
                                </div>
                                <div class="events-footer">
                                    123
                                </div>
                            </div>
                        </dd>
                        <dt>Feb 2016</dt>
                        <dd class="pos-right clearfix">
                            <div class="circ"></div>
                            <div class="time">Jan 21</div>
                            <div class="events">
                                <div class="events-header">A Very Very Looooooooooooooooooooong Event Heading</div>
                                <div class="events-body">
                                    <div class="row">
                                        <div class="col-md-6 pull-left">
                                        </div>
                                        <div class="events-desc">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 pull-left">
                                        </div>
                                        <div class="events-desc">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6 pull-left">
                                        </div>
                                        <div class="events-desc">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                        </div>
                                    </div>
                                </div>
                                <div class="events-footer">

                                </div>
                            </div>
                        </dd>
                        <dd class="pos-left clearfix">
                            <div class="circ"></div>
                            <div class="time">Jan 07</div>
                            <div class="events">
                                <div class="events-header">Event Heading</div>
                                <div class="events-body">
                                    <div class="row">
                                        <div class="col-md-6 pull-left">
                                        </div>
                                        <div class="events-desc">
                                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </dd>
                        <dt>Jan 2016</dt>
                        <dt>Dec 2015</dt>
                        <dt>Oct 2015</dt>
                        <dt>Sep 2015</dt>
                        <dt>Aug 2015</dt>
                        <dt>aaaa</dt>
                    </dl>
                </div>
            </div>
        </div>
    </div>
</div>
<script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
<script src="/xxzx/js/mobiles/kq/student/tether.min.js"></script>
<script type="text/javascript" src="${ctxStatic}/bootstrap/4.0.0/bootstrap.js"></script>
<script type="text/javascript" src="${ctxStatic}/jquery-plugin/jquery.eeyellow.Timeline.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $('.VivaTimeline').vivaTimeline({
            carousel: true,
            carouselTime: 3000
        });
    });
</script>
</body>
</html>