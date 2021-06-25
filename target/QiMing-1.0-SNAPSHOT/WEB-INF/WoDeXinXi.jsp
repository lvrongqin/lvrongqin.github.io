<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>

<head>
	<meta charset="utf-8"><link rel="shortcut icon" href="http://venu.oss-cn-beijing.aliyuncs.com/favicon.ico/b7a8a119eb4d4a61bd3001c6b6443325.ico" type="image/x-icon" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/WoDeXinXi.css">

	<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
	<!-- <link rel="stylesheet" href="../css/foot.css"> -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/head.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/foot.css">
	<script src="${pageContext.request.contextPath }/js/searchMod.js"></script>
	<link rel="stylesheet" href="https://at.alicdn.com/t/font_2391674_xedpcyssgzf.css">
	<title>启明普法教育平台-我的信息</title>
</head>

<body>
	<div id="container">
		<div id="header">
			<div class="login_wrapper">
				<a href="${pageContext.request.contextPath }/denglu.jsp" id="header_top1">&nbsp;&nbsp;登录&nbsp;&nbsp;</a><span>|</span>
				<a href="${pageContext.request.contextPath }/zhuce.jsp" id="header_top2">&nbsp;&nbsp;注册</a>
			</div>
			<a class="search-back">
				<div class="search-box">
					<a href="javascript:;"></a>
					<a class="search-btn" href="javascript:;">
						<img class="search-icon" src="${pageContext.request.contextPath }/image/6.png" alt="搜索" />
					</a>
					<span class="iconfont icon-search"></span>
					<input class="search-text" type="text" name="" placeholder="Search" maxlength="40">
				</div>
			</a>

			<a class="msg_wrapper" href="${pageContext.request.contextPath }/WoDeXinXi">
				<div class="msg_people">
					<img id="img1" src="${pageContext.request.contextPath }/image/person.png" alt="我的信息" title="我的信息" />
				</div>
				<div class="msg_text">我的信息</div>
			</a>
			<div id="word1">启明普法教育平台</div>
			<div id="main_nav">
				<img id="main_nav_img" src="${pageContext.request.contextPath }/image/logo.png" alt="启明普法教育平台" />

				<ul id="head_nav">
					<li><a href="${pageContext.request.contextPath }/index" title="首页">首页</a></li>
					<li>
						<a href="${pageContext.request.contextPath }/FLZXXinWenDongTai" title="团队动态">团队动态</a>
					</li>
					<li><a href="${pageContext.request.contextPath }/YiAnShiFa" title="以案释法">以案释法</a>
					</li>
					<li><a href="${pageContext.request.contextPath }/PFJYFaZhiWenHua" >普法教育</a>
						<ul>
							<li><a href="${pageContext.request.contextPath }/PFJYFaZhiWenHua" >线上教育</a></li>
							<li><a href="${pageContext.request.contextPath }/PFJYFaZhiWenHua" >线下活动</a></li>
							<li><a href="${pageContext.request.contextPath }/PFJYFaZhiWenHua">法治文化</a></li>
						</ul>
					</li>
					<li>
						<a href="${pageContext.request.contextPath }/TSHDMoNiFaTing" >活动报名</a>
						<ul>
								<li><a href="${pageContext.request.contextPath }/TSHDMoNiFaTing" >模拟法庭</a></li>
								<li><a href="${pageContext.request.contextPath }/ft/fqtAll" title="启明倾听">启明倾听</a></li>
								<li><a href="${pageContext.request.contextPath }/WoYaoBaoMing" >我要报名</a></li>
							</ul>
					</li>
					<li>
						<a href="${pageContext.request.contextPath }/hd/hjlPageData?curr=1" >互动交流</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath }/GuanYuWoMen" >关于我们</a>
					</li>

				</ul>
			</div>
		</div>
		<div id="contentone">
			<div id="user">
				<div class="u_inf"> <img src="${Uuser.img}" class="photo" alt="" />
					<p class="u_name">${user1.username}</p>
					<a href="${pageContext.request.contextPath }/XiuGaiZiLiao">修改资料</a>
				</div>
			</div>
			<div id="content">
				<!-- 如果Uuser不为空，则展示插值表达式展示的值;如果Uuser为空，则展示默认值-->
				<c:choose>
					<c:when test="${Uuser!=null}">
						<ul>
							<li class="message"><a href="#">&emsp;&emsp;性别：${Uuser.gender}<i class="icon iconfont icon-xingbie2"></i></a></li>
							<li class="collect"><a href="#">出生年月：${Uuser.birth}<i class="icon iconfont icon-shengri1"></i></a></li>
							<li class="topic"><a href="#">个性签名：${Uuser.declar}<i class="icon iconfont icon-signature1"></i></a></li>
							<li class="caddie"><a href="${pageContext.request.contextPath }/hd/hjlSearch?curr=1">我的帖子：-- 看看这里 --<i class="icon iconfont icon-wendang"></i></a></li>
						</ul>
					</c:when>
					<c:otherwise>
						<ul class="a">
							<li class="message"><a href="#">&emsp;&emsp;性别：男<i class="icon iconfont icon-xingbie2"></i></a></li>
							<li class="collect"><a href="#">出生年月：2000-01-01<i class="icon iconfont icon-shengri1"></i></a></li>
							<li class="topic"><a href="#">个性签名：Hello World!!<i class="icon iconfont icon-signature1"></i></a></li>
							<li class="caddie"><a href="${pageContext.request.contextPath }/hd/hjlSearch?curr=1">我的帖子：-- 看看这里 --<i class="icon iconfont icon-wendang"></i></a></li>
						</ul>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<div id="footer">
			<div class="main_wrap">
				<div class="ulink">
					<div class="tlink">
						<div class="txtwrap">
							<h2>其它普法平台</h2>
							<ul>
								<li><a href="http://qspfw.moe.gov.cn/index.html">教育部全国青少年普法网</a></li>
								<li><a href="http://www.court.gov.cn/">中华人民共和国最高法院</a></li>
								<li><a href="http://www.legalinfo.gov.cn/pub/sfbzhfx/index.html">智慧普法平台</a></li>
								<li><a href="https://www.spp.gov.cn/">中华人民共和国最高人民检察院</a></li>
							</ul>
						</div>
					</div>
					<ul class="stu_inform">
						<li><a href="javascript:;" title="">
								<img src="${pageContext.request.contextPath }/image/index/SY2.png" />
							</a>
						</li>
						<li><a href="javascript:;" title="">
								<img src="${pageContext.request.contextPath }/image/fo2.png" alt="法治的力量" />
							</a>
						</li>
						<li><a href="javascript:;" title="">
								<img src="${pageContext.request.contextPath }/image/fo3.png" alt="12.4国家宪法日" />
							</a>
						</li>
					</ul>
				</div>
				<div class="copy">
					<div class="mainWrap">
						<div class="qrCode">
							<a href="javascript:;" title=""><img src="${pageContext.request.contextPath }/image/qrCode.png" alt=""></a>
						</div>

						<div class="contact">
							<img src="${pageContext.request.contextPath }/image/logo1.png" alt="湖北师范大学" />
							<div class="txtwrapper">
								<em class="icon-phone">0714-6572179</em> 　
								<span><em class="icon-mail">ehall.hbnu.edu.cn</em> </span>
								<br>
								<em class="icon-location">黄石市湖北省黄石市磁湖·11号 </em>
							</div>
						</div>
						<div class="copyrights">
							<p>版权所有 © 启明普法教育平台 &nbsp;&nbsp;&nbsp;&nbsp;鄂ICP备
								<a href="http://beian.miit.gov.cn" style="color:#fff;">05003319号-1</a>
								号
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>