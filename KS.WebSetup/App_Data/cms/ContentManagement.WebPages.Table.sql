/****** Object:  Table [ContentManagement].[WebPages]    Script Date: 3/29/2018 6:51:13 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

CREATE TABLE [ContentManagement].[WebPages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Url] [nvarchar](1024) NULL,
	[CategoryId] [int] NULL,
	[TemplatePatternUrl] [nvarchar](1024) NULL,
	[FrameWorkId] [int] NULL,
	[CommentOff] [bit] NOT NULL,
	[Html] [nvarchar](max) NULL,
	[Tools] [nvarchar](512) NULL,
	[Services] [nvarchar](max) NULL,
	[EditMode] [bit] NOT NULL,
	[EnableCache] [bit] NOT NULL,
	[IsMobileVersion] [bit] NOT NULL,
	[TypeId] [int] NOT NULL,
	[Like] [int] NOT NULL,
	[DisLike] [int] NOT NULL,
	[CacheSlidingExpirationTimeInMinutes] [int] NOT NULL,
	[Language] [nvarchar](8) NULL,
	[CreateUserId] [int] NULL,
	[ModifieUserId] [int] NULL,
	[ViewCount] [int] NOT NULL,
	[ViewRoleId] [int] NULL,
	[ModifyRoleId] [int] NULL,
	[AccessRoleId] [int] NULL,
	[CreateLocalDateTime] [nvarchar](19) NULL,
	[ModifieLocalDateTime] [nvarchar](19) NULL,
	[AccessLocalDateTime] [nvarchar](19) NULL,
	[CreateDateTime] [datetime] NOT NULL,
	[ModifieDateTime] [datetime] NOT NULL,
	[AccessDateTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[RowVersion] [timestamp] NOT NULL,
	[FrameWorkUrl] [nvarchar](1024) NULL,
	[Params] [nvarchar](1024) NULL,
	[Guid] [nvarchar](32) NULL,
	[Version] [int] NOT NULL,
	[DependentModules] [nvarchar](2048) NULL,
	[HaveScript] [bit] NOT NULL,
	[HaveStyle] [bit] NOT NULL,
 CONSTRAINT [PK_ContentManagement.WebPages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


SET IDENTITY_INSERT [ContentManagement].[WebPages] ON 

INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (1, N'ورود اعضاء', N'/fa/login', NULL, N'', 0, 0, N'<div class="modal-content">
<div class="modal-header"><button class="close" type="button" data-dismiss="modal">&times;</button>
<h4 class="modal-title">ورود</h4>
</div>
<div class="modal-body"><form id="securityLogin_user">
    
 <div class="form-group">
            <label for="login_username" class="control-label"> نام کاربری</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" class="form-control as-validate-valid" name="login_username" id="login_username" placeholder="نام کاربری" aria-required="true" aria-invalid="false">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="securityLogin_password" class="control-label">گذر واژه</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password" required="" class="form-control as-validate-valid" id="securityLogin_password" name="securityLogin_password" placeholder="گذر واژه" aria-required="true" aria-invalid="false">
                </div>
         
        </div>

</form></div>
<div class="modal-footer">
<div class="form-group pull-right">
<div><span id="securityLogin_login" class="btn btn-primary">ورود</span> <span id="securityLogin_cancel" class="btn btn-primary">انصراف</span></div>
</div>
<br />
<div id="login_debugContainer" style="direction: ltr; display: none;"><br /> <label class="control-label" style="position: absolute; right: 10px;">حالت دیباگ</label>
<div class="as-material-switch">
<div style="float: left;"><input id="chkDebug" name="chkDebug" type="checkbox" /> <label class="label-default as-label" for="chkDebug"> </label></div>
</div>
</div>
</div>
</div>', N'''asModal'',''asValidate''', N'', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 6, 5, 5, N'1395/06/21 01:40:55', N'1396/11/10 12:56:00', N'1396/11/10 12:56:00', CAST(N'2016-04-30T16:16:09.677' AS DateTime), CAST(N'2018-01-30T09:26:00.097' AS DateTime), CAST(N'2018-01-30T09:26:00.097' AS DateTime), 1, N'', N'', N'6fe777e24d9a44118290fd5de1cd1eb9', 17, N'[{"url":"asValidate.js"},{"url":"asValidate.css"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (2, N'کارشناسان.نت', N'/fa', NULL, N'', 0, 0, N'
<!--main-slider-->
<section style="border-bottom: 1px solid #E1E1E1;background-image: url(''/content/images/slides/main/bg.jpg''); background-repeat: no-repeat;background-position: 50% 50%;background-size: cover;"><!--style="width: 100%;height:350px"-->
 
 <div id="sequence" class="seq fonts-a-google" style="direction:ltr;display:none">

    <div class="seq-screen">
      <ul class="seq-canvas seq-margin-left">

        <li class="seq-step1 seq-in" id="step1" >

              <div class="seq-code-pane seq-valign seq-rtl">

            <button type="button" class="seq-view-code">
              <i class="fa fa-angle-double-up"></i> توضیحات
            </button>

            <div class="seq-code" style="text-align:center">

              <div class="seq-code-block"  data-seq>
               <!--<i class="seq-step-icon">1</i>-->
                <!--<span class="tip">-->
                       
                <!--  <span><strong>.seq-in</strong> .content {</span>-->
                <!--  <span class="seq-code-1">transform: translateY(0);</span>-->
                <!--  <span class="seq-code-1">transition: .2s;</span>-->
                <!--  <span>}</span>-->
                <!--</span>-->

                <span style="font-size:22px" class="seq-code-1 seq-header">پلتفرم خودکار در یک نظر</span>
                <hr class="seq-hr">
              </div>
               <div class="seq-code-block"  data-seq>
                  <span style="font-size:18px" class="seq-code-1">متن باز و رایگان</span>
              </div>
               <div class="seq-code-block"  data-seq>
                  <span style="font-size:18px" class="seq-code-1">معماری سرویس گرا</span>
              </div>
                   <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px" class="seq-code-1">قابلیت چند زبانی و چند فرهنگی</span>
              </div>
                <div class="seq-code-block"  data-seq>
                  <span style="font-size:18px" class="seq-code-1">قابلیت پشتیبانی از چند فریم ورک همزمان</span>
              </div>
                <div class="seq-code-block"  data-seq>
                   <span style="font-size:18px" class="seq-code-1">قابلیت پشتیبانی از چند قالب به طور همزمان</span>
              </div>

                                       <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px" class="seq-code-1">Mobile First And Mobile Special Pages</span>
              </div>
              <!--  <div class="seq-code-block"  data-seq>-->
              <!--    <span style="font-size:10px" class="seq-code-1"></span>-->
              <!--</div>-->
              <!--  <div class="seq-code-block"  data-seq>-->
                 
              <!--</div>-->
              
      
            </div>
            
          </div>

          <div class="seq-content seq-valign" style="background-image: url(''/content/images/slides/main/khodkar-slide-1.png''); background-repeat: no-repeat;background-position: 50% 50%;background-size: contain;" data-seq>

            <!--<div class="seq-instruction">-->

            <!--  <div class="seq-title">-->
            <!--    <object class="seq-instruction-icon" data="/content/images/slides/main/bracket-open.svg" type="image/svg+xml">-->
            <!--      <img src="/content/images/slides/main/bracket-open.png" alt="An opening code bracket" />-->
            <!--    </object>-->

            <!--    <h2>Step 1</h2>-->

            <!--    <object class="seq-instruction-icon" data="/content/images/slides/main/bracket-close.svg" type="image/svg+xml">-->
            <!--      <img src="/content/images/slides/main/bracket-close.png" alt="A closing code bracket" />-->
            <!--    </object>-->
            <!--  </div>-->

            <!--  <h3>Easily add CSS transitions to step-based applications using "in" and "out" CSS classes</h3>-->

            <!--  <div class="seq-step">-->
            <!--    <p>Step 1 is currently in its <code>in<sup class="seq-step-icon">1</sup></code> position. Watch what happens when you <a href="#" title="" class="seq-next">go to the next step →</a></p>-->
            <!--  </div>-->
            <!--</div>-->

          </div>
   
        </li>

        <li class="seq-step2" id="step2">
          <div class="seq-code-pane seq-valign seq-rtl">

            <button type="button" class="seq-view-code">
              <i class="fa fa-angle-double-up"></i> توضیحات
            </button>

           <div class="seq-code" style="text-align:center">

              <div class="seq-code-block"  data-seq>
           
                <span style="font-size:22px" class="seq-code-1 seq-header">پلتفرمی برای تمام فصول</span>
                <hr class="seq-hr">
              </div>
                   <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px" class="seq-code-1"> سیستم سورس کنترل داخلی با قابلیت دسترسی حتی بر روی یک خط کد</span>
              </div>
                <div class="seq-code-block"  data-seq>
                  <span style="font-size:18px" class="seq-code-1"> توسعه امن با کنترل دسترسی در چهار سطح توسعه تست استفاده اجرا </span>
              </div>
                <div class="seq-code-block"  data-seq>
                   <span style="font-size:18px;direction:rtl;" class="seq-code-1">     سیستم Publish و کنترل نگارش منحصر به فرد</span>
              </div>
                <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px;direction:rtl;" class="seq-code-1">  سیستم Unit Test و دیباگ</span>
              </div>
              <!--  <div class="seq-code-block"  data-seq>-->
              <!--    <span style="font-size:10px" class="seq-code-1"></span>-->
              <!--</div>-->
              <!--  <div class="seq-code-block"  data-seq>-->
                 
              <!--</div>-->
              

      
            </div>

          </div>
          <div class="seq-content seq-valign" style="background-image: url(''/content/images/slides/main/khodkar-slide-2.png''); background-repeat: no-repeat;background-position: 50% 50%;background-size: contain;" data-seq>

          </div>
        </li>
        
          <li class="seq-step3" id="step3">
          <div class="seq-code-pane seq-valign seq-rtl">

            <button type="button" class="seq-view-code">
              <i class="fa fa-angle-double-up"></i> توضیحات
            </button>

           <div class="seq-code" style="text-align:center">

              <div class="seq-code-block"  data-seq>
           <span style="font-size:18px" class="seq-code-1 seq-header">همه تنها از طریق یک مرورگر ساده در کامپیوتر یا تبلت یا گوشی هوشمند شما</span>
               <hr class="seq-hr">
                </div>
               <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px" class="seq-code-1">قابلیت کد نویسی سمت سرور و کلاینت با بیش از ده ها زبان</span>
              </div>
                <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px" class="seq-code-1">C# VB.NET SQL SASS LESS CoffeScript TypeScript Handlebars Hogan ... </span>
              </div>
                <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px" class="seq-code-1"> سیستم مدیریت کدهای بر روی دیتابیس</span>
              </div>
                 <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px;direction:rtl;" class="seq-code-1"> و خیلی بیشتر از انتظار شما ...</span>
              </div>

      
            </div>


         
           </div>
          <div class="seq-content seq-valign" style="background-image: url(''/content/images/slides/main/khodkar-slide-3.png''); background-repeat: no-repeat;background-position: 50% 50%;background-size: contain;" data-seq>

          </div>
       
        </li>
        
         <li class="seq-step4" id="step4">
          <div class="seq-code-pane seq-valign seq-rtl">

            <button type="button" class="seq-view-code">
              <i class="fa fa-angle-double-up"></i> توضیحات
            </button>

           <div class="seq-code" style="text-align:center">

              <div class="seq-code-block"  data-seq>
           <span style="font-size:18px" class="seq-code-1 seq-header">کارشناسان.نت</span>
                <hr class="seq-hr">
                </div>
                
               <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px" class="seq-code-1">برنامه نویسان ابری</span>
              </div>
                <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px" class="seq-code-1">انتخاب برنامه نویس با توجه به نمره های ارزیابی کدهای سمت سرور و کلاینت و طراحی وبسایت های نمونه برنامه نویس </span>
              </div>
                <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px" class="seq-code-1">  تشکیل آنلاین تیم های برنامه نویسی و مدیریت آنها</span>
              </div>
                 <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px;direction:rtl;" class="seq-code-1"> درخواست رفع اشکال آنلاین</span>
              </div>
                    <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px;direction:rtl;" class="seq-code-1">  شتاب دادن به استارت آپ ها</span>
              </div>
      
            </div>

  
           </div>
          <div class="seq-content seq-valign" style="background-image: url(''/content/images/slides/main/khodkar-slide-4.png''); background-repeat: no-repeat;background-position: 50% 50%;background-size: contain;" data-seq>


          </div>
       
        </li>
      </ul>
    </div>

    <!--<fieldset class="seq-nav" aria-controls="sequence" aria-label="Slider buttons">-->
    <!--  <button type="button" class="seq-prev" aria-label="Previous"><i class="fa fa-chevron-circle-left"></i> Previous</button>-->
    <!--  <button type="button" class="seq-next" aria-label="Next">Next <i class="fa fa-chevron-circle-right"></i></button>-->
    <!--</fieldset>-->
  </div>

        
        
    <div style="text-align:center">
            <ul role="navigation" aria-label="Pagination" aria-controls="sequence" class="pagination seq-pagination">
              <li class="active"><a href="#step1" title=" پلتفرم خودکار در یک نظر"
              >
                  1 <span class="sr-only">(current)</span></a></li>
              <li><a href="#step2" title="پلتفرمی برای تمام فصول"
              >2</a></li>
              <li><a href="#step3" title="همه تنها بایک مرورگر در کامپیوتر یا تبلت یا گوشی هوشمند شما"
              >3</a></li>
              <li><a href="#step4" title=" کارشناسان.نت"
              >4</a></li>
            </ul>
    </div>


  
</section>
<p></p>
<!-- Page Content -->
<div class="container">

<div>&nbsp;</div>
<div class="row">
پلتفرم رایگان و متن باز خودکار, سریع ترین پلتفرم توسعه نرم افزار تحت وب برای توسعه دهندگان تحت دات نت
    </div>
<div class="row">
<div class="col-lg-6"></div>
<div class="col-lg-6"></div>
</div>
</div>', N'''asCalendar'',''asDateTimeInput'',''asSlider''', N'', 0, 1, 0, 16, 0, 0, 180, N'fa', 1, 1, 0, 6, 5, 5, N'1395/05/24 11:36:32', N'1396/12/15 18:19:39', N'1396/12/15 18:19:39', CAST(N'2016-08-14T07:06:32.413' AS DateTime), CAST(N'2018-03-06T14:49:39.440' AS DateTime), CAST(N'2018-03-06T14:49:39.440' AS DateTime), 1, N'', N'', N'44910806741f445181072d14a44d07a5', 251, N'[{"url":"asSlider.css?minversion=57"},{"url":"asSlider.js?minversion=57"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (3, N'قالب پیش فرض', N'/fa/admin/cms/templates/defaults', NULL, N'/', 5, 0, N' <div class="as-wrapper">
        <!-- Header -->
        <div id="header">
 <div class="col-lg-4 col-md-8 col-sm-9 col-xs-12">
    
           <div style="float:right"><img class="img-responsive" style="margin-top:15px" src="/content/images/main/dotnetexpert.png" /></div>
       <div style="float:right;margin-top:15px" id="defaultTemplate_drp_languge"></div>
     
 </div>


<div class="col-lg-1  hidden-md hidden-sm hidden-xs"></div>
<div class="col-lg-1 hidden-md hidden-sm hidden-xs"></div>
<div class="col-lg-1 hidden-md  hidden-sm hidden-xs"></div>
<div class="col-lg-1 hidden-md hidden-sm hidden-xs"></div>
<div class="col-lg-1  hidden-md hidden-sm hidden-xs"></div>
<div class="col-lg-1 hidden-1 hidden-1 col-xs-1">
    <div id="defaultTemplate_drp_menu" class="as-move-by-fixed-nav" style="position:fixed;top:86px;left:3px;z-index:1049">
<div style="width:15px;height:15px"></div>
                    </div>
</div>
<div class="col-lg-2 col-md-3 col-sm-2 hidden-xs">
         <div class="top-link-box">
                <ul class=" menu-inline">
                        <li class=""><a class="top-link-last" href="/fa" data-as-url="cms-pagemanager"> صفحه نخست </a></li>
                        <li id="defaultTemplate_login_link" class=""><a id="lnkLogin" class="top-link-divider" href="/login" data-as-modal="defaultTemplate_login" data-as-url="login">ورود اعضاء</a></li>
                    </ul>
           </div>
    </div>
        </div>
        <!-- Menu -->
        <div id="defaultTemplate_menu" class="as-nav">
  
            <header id="defaultTemplate_mega_menu"  class="navbar navbar-inverse top-menu" role="banner">
               

                <!--<nav class="collapse navbar-collapse pull-right" role="navigation" id="bs-navbar-collapse">-->
                <!--</nav>-->
                <!--<span style="position: absolute;left: 2px;top: 8px;">-->
                <!--</span>-->
                <!--<div class="search">

                        <input type="text" class="form-control input-sm" maxlength="64" placeholder="        جستجو" />
                        <button class="search-btn btn btn-primary btn-sm"><i class="glyphicon glyphicon-search"></i></button>


                    </div>-->

            </header>
        </div>
        <!-- Place Holder -->
        <div id="placeHolder">
            @asPlaceHolder
        </div>

    </div>

    <!-- Footer -->
    <div class="as-footer footer">
        <div class="container">
            <div class="row" style="background: #222;">
                <!--<div class="col-lg-2">
                    <h3> کارشناسان در شبکه های اجتماعی</h3>
                    <p style="direction: rtl">
                        ما را در شبکه های اجتماعی دنبال کنید
                    </p>
                    <div>
                        <img src="../../Source/img/icons/facebook.png" width="32" alt="Facebook">
                        <img src="../../Source/img/icons/twitter.png" width="32" alt="Twitter">
                        <img src="../../Source/img/icons/linkedin.png" width="32" alt="LinkedIn">
                        <img src="../../Source/img/icons/rss.png" width="32" alt="RSS Feed">
                    </div>
                </div>-->

                <div class="col-lg-3">
                    <h3 style="text-align: center">دسترسی سریع</h3>
                    <p style="direction: rtl" class="quickAccess">
                        <a href="#">پرداخت</a>
                        <br />
                        <a href="#">مشاهده و دریافت صورتحساب</a>
                        <br />
                        <a href="#">درخواست</a>
                        <br />
                        <a href="#">طرح های سرمایه گذاری</a>
                    </p>
                </div>

                <div class="col-lg-3">
                    <h3 style="text-align: center">پیوندها</h3>
                    <p style="direction: rtl" class="quickAccess">
                        <a href="http://khodkarsystem.com">خودکار سیستم</a>
                        <br />
                        <a href="http://www.khodsaz.ir">خودساز</a>
                    </p>
                </div>

                <div class="col-lg-2">
                    <h3 style="text-align: center">اسکن کنید</h3>
                    <p class="contact-us-details text-center">
                        <img style="width: 128px; margin-top:5px" title="thei qr code" src="/Content/images/qrcode.png" alt="dotnetexpert.ir qr code">
                    </p>
                </div>

                <div class="col-lg-4" style="background: transparent url(/Content/images/world-map.jpg) no-repeat scroll center bottom; min-height: 211px;">
                    <h3 style="text-align: center"> کارشناسان.نت</h3>
                    <p style="direction: rtl" class="quickAccess">
                        <span class="glyphicon glyphicon-map-marker" >
                            <span style="font-family: tahoma;">
                           تهران خیابان آزادی خیابان حبیب زادگان بن بست کوکب زاده پلاک 2.1
                        </span>
                        </span>
                        <br /><br />
                        <span class="glyphicon glyphicon-earphone">
                            <label style="direction:ltr;font-family: tahoma;">
                                +98 21 66089834
                            </label>
                        </span>
                        <br /><br />
                        <span class="glyphicon glyphicon-envelope">

                            <a href="mailto:Contact@dotnetexpert.ir">
                                <label>
                                    Contact[at]dotnetexpert.ir
                                </label>
                            </a>
                        </span>
                    </p>
                </div>
            </div>

            <div class="row" style="background: #222;">

                <div class="col-lg-12">
                    <div class="footer-copyright">
                       Copyright © 2018
                    </div>
                    <div>
                        <!--<br />-->
                    </div>
                    <div class="footer-powerdby">
                      خودساز نوشته شده با خودکار!
                    </div>
                    <div>
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </div>
 

    
    
', N'''asModal'',''asOffCanvas'',''asPopovers'',''asDropdown'',''asMegaMenu'',''asFixedNav'',''asFlexSelect''', N'cms_languageAndCulture_public_getAll:"/cms/languageAndCulture/public/getAll",cms_link_public_getAll:"/odata/public/cms/LinksPublic?$filter=((TypeId%20eq%201d)%20or%20(TypeId%20eq%202d))%20and%20(Language%20eq%20''@lang'')%20and%20(IsMobile%20eq%20@isMobile)&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf",cms_link_userAccess:"/odata/cms/EntityGroups?$filter=((EntityTypeId%20eq%20101d)%20and%20(GroupId%20eq%2071d))%20and%20(Link%2FLanguage%20eq%20''@lang'')%20and%20(Link%2FIsMobile%20eq%20@isMobile)&$expand=Link&$select=Link%2FId%2CLink%2FParentId%2CLink%2FText%2CLink%2FHtml%2CLink%2FUrl%2CLink%2FOrder%2CLink%2FIsLeaf",cms_link_userMenus:"/odata/cms/Links?$filter=(TypeId%20eq%201d)%20and%20(Language%20eq%20''@lang'')%20and%20(IsMobile%20eq%20@isMobile)&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf"', 0, 1, 0, 15, 0, 0, 0, N'fa', 1, 1, 0, 6, 5, 5, N'1395/05/26 05:34:28', N'1396/12/07 22:17:41', N'1396/12/07 22:17:41', CAST(N'2016-08-16T13:04:28.310' AS DateTime), CAST(N'2018-02-26T18:47:41.437' AS DateTime), CAST(N'2018-02-26T18:47:41.437' AS DateTime), 1, N'/fa/admin/cms/framework/defaults', N'loadScriptAndStyle:{urls:[{url:$.asGetStylePath() +''offCanvas/foonav.light.css''}]}', N'1ff8fbaeb3bc4967861c0a224c83d07b', 90, N'[{"url":"asOffCanvas.css?minversion=25"},{"url":"asOffCanvas.js?minversion=25"},{"url":"asPopovers.js?minversion=4"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asMegaMenu.css?minversion=10"},{"url":"asMegaMenu.js?minversion=10"},{"url":"asFixedNav.css?minversion=5"},{"url":"asFixedNav.js?minversion=5"},{"url":"asFlexSelect.css?minversion=41"},{"url":"asFlexSelect.js?minversion=41"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (4, N'رزرو مدیریت صفحات', N'/fa/admin/cms/pagemanagerreserve', NULL, N'', 0, 0, N'<form id="cmsWebForm_webForm" role="form" class="container-fluid">
    <div class="form-group">
        <label for="cmsWebForm_Title" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="cmsWebForm_Title" id="cmsWebForm_Title" data-localize="title" placeholder="">
        </div>

    </div>
    <br />
    <label for="cmsWebForm_drp_menu" class="control-label" style="float: right">منو</label>

  <br />
    <div id="cmsWebForm_menu">
        <div class="container">

            <div id="cmsWebForm_drp_menu" name="cmsWebForm_drp_menu" style="float: left;">
            </div>
        </div>
        
            <br />
             <label class="control-label">حالت موبایل</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkMobile" name="chkMobile" type="checkbox" />
            <label for="chkMobile" class="label-default as-label">  </label>
          </div>
     </div>
    <br />
    <label for="cmsWebForm_drp_type" class="control-label" style="float: right">نوع صفحه</label>
    <br />
    <div class="container">

        <div id="cmsWebForm_drp_type" name="cmsWebForm_drp_type" style="float: left;">
        </div>
    </div>
    <br/>
       <div id="cmsWebFom_frameWork">
    <label for="cmsWebFom_rdrp_frameWork" class="control-label" style="float: right">چهارچوب</label>
        <br />
        <div class="container">

            <div id="cmsWebForm_drp_frameWork" name="cmsWebForm_drp_frameWork" style="float: left;">
            </div>
        </div>
   </div>
   <br/>
   <div id="cmsWebFom_template">
    <div class="form-group">
        <label for="cmsWebForm_TemplatePatternUrl" class="control-label">الگوی قالب</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-random"></i></span>
            <input type="text" class="form-control" name="cmsWebForm_TemplatePatternUrl" id="cmsWebForm_TemplatePatternUrl"  placeholder="/" style="direction:ltr">
        </div>
    </div>
   </div>
    </div>
    <br />
    <div id="divParams">
            <div class="form-group">
        <label for="cmsWebForm_params" class="control-label">پارامتر های صفحه</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <input type="text" class="form-control" name="cmsWebForm_params" id="cmsWebForm_params" style="direction: ltr;"  placeholder="پارامتر های صفحه">
        </div>

    </div>
 <br>
                        <div class="form-group">
        <label for="cmsWebForm_id" class="control-label">شناسه صفحه</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="cmsWebForm_id" id="cmsWebForm_id" style="direction: ltr;"  placeholder="شناسه صفحه">
        </div>
<br>
    </div>
    </div>

    <br>
                    <div class="form-group">
        <label for="cmsWebForm_version" class="control-label"> ورژن</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" readonly="true" class="form-control" name="cmsWebForm_version" id="cmsWebForm_version" style="direction: ltr;"  placeholder="شناسه صفحه">
        </div>
    

    </div>
    <br/>
   <div id="divRoles">
        <label for="cmsWebForm_drp_viewRole" class="control-label" style="float: right">نقش مشاهده</label>
    <br />
    <div class="container">

        <div id="cmsWebForm_drp_viewRole" name="cmsWebForm_drp_viewRole" style="float: left;">
        </div>
    </div>
    <br />
        <br />
    <label for="cmsWebForm_drp_modifyRole" class="control-label" style="float: right">نقش ویرایش</label>
    <br />
    <div class="container">

        <div id="cmsWebForm_drp_modifyRole" name="cmsWebForm_drp_modifyRole" style="float: left;">
        </div>
    </div>
    <br />
        <br />
    <label for="cmsWebForm_drp_accessRole" class="control-label" style="float: right">نقش اعطای دسترسی</label>
    <br />
    <div class="container">

        <div id="cmsWebForm_drp_accessRole" name="cmsWebForm_drp_accessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
      
         <label class="control-label">اجرای سریع از حافظه</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="cmsWebForm_Cache" name="cmsWebForm_Cache" type="checkbox" />
            <label for="cmsWebForm_Cache" class="label-default as-label">  </label>
          </div>
     </div>
  <br />
<fieldset id="cmsWebForm_SlidingExpirationTimeInMinutes_fieldset" disabled>
    <div class="form-group">
        <label for="cmsWebForm_SlidingExpirationTimeInMinutes" class="control-label" >زمان عدم دسترسی قبل ازحذف نسخه ذخیره شده در حافظه</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="cmsWebForm_SlidingExpirationTimeInMinutes" id="cmsWebForm_SlidingExpirationTimeInMinutes" value="180"  placeholder="180">
        </div>

    </div>
    </fieldset>

	 <br />
       
        
<div id="divMetaTag" class="form-group">
    <div class="web-order alert alert-warning" role="alert">
            افزودن یا تغییر متا تگ ها بدون تیک زدن حالت انتشار , ذخیره نخواهد شد.
            </div>
        <label for="txtMetaTag" class="control-label">متا تگ ها</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
           
            <textarea style="direction: ltr;" class="form-control" rows="5" id="txtMetaTag" name="txtMetaTag" placeholder='' <meta name="description" content="تست">''></textarea>
        </div>

    </div>

       <br />

 <div id="cmsWebForm_Html_container">
        <label class="control-label">محتوا</label>
    <div id="cmsWebForm_Html" style="height: 600px;"></div>
   
 </div> 
    <br />

<div id="divHtml">
              <div id="cmsWebForm_htmlSource_container">
                  <label class="control-label" for="cmsWebForm_HtmlSource">Html</label>
    <div id="cmsWebForm_htmlSource" name="cmsWebForm_htmlSource" style="height: 300px">

    </div>
        </div>
</div>
    <br />
    <label class="control-label" style="float: right">سرویس ها</label>
    <br />
    <div class="container">

        <div id="cmsWebForm_drp_service" style="float: left;">
        </div>
    </div>
    <br />
    <div id="divJs">
    <div id="cmsWebForm_javaScript_container">
        <label class="control-label">جاوا اسکریپت</label>
    <div id="cmsWebForm_javaScript" name="cmsWebForm_javaScript" style="height: 300px">

    </div>
    </div>
    </div>
    <br />
<div id="divCss">
    <div id="cmsWebForm_style_container">
        <label class="control-label">استایل</label>
    <div id="cmsWebForm_style" name="cmsWebForm_style" style="height: 300px">

    </div>
</div> 
</div>

      <br/>
      
        <label class="control-label">فعال</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="cmsWebForm_Status" name="cmsWebForm_Status" type="checkbox" />
            <label for="cmsWebForm_Status" class="label-default as-label">  </label>
          </div>
     </div>
                    <br />
                <label class="control-label">اعمال تغییرات بر روی فایل اصلی</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCheckIn" name="chkCheckIn" type="checkbox" />
            <label for="chkCheckIn" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
                <label class="control-label">انتشار</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="cmsWebForm_Publish" name="cmsWebForm_Publish" type="checkbox" />
            <label for="cmsWebForm_Publish" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
       
      
        <label class="control-label">در حال ویرایش</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="cmsWebForm_EditeMode" name="cmsWebForm_EditeMode" type="checkbox" />
            <label for="cmsWebForm_EditeMode" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
        
            <label class="control-label">آخرین تغییر دهنده</label>
        <div class="container">
               <div id="divLastModifiUser" style="float: left;">
           
            
          </div>
     </div>
        <br />
        
                   <label class="control-label">آخرین زمان تغییرات</label>
        <div class="container">
               <div id="divLastModifiLocalDataTime" style="float: left;">
           
            
          </div>
     </div>
        <br />
            <div class="form-group">
        <label for="txtComment" class="control-label" >توضیحات مرتبط با تغییرات این ورژن</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtComment" id="txtComment" >
        </div>

    </div>
     <br />
        <div class="text-center">
            <input id="cmsWebForm_save" type="button" class="btn btn-default" data-localize="save" />
            <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>
      <div class="text-center hide" style="position:fixed;bottom:0;width:100%;z-index:1060;background-color: white;" id="sourceEditorToolbar">
            <input id="cmsWebForm_html_changeMode" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+G" type="button" class="btn btn-default" value="تفییر ابعاد" />
                <label class="control-label" style="float: right;margin-top: 10px;">ویرایشگر فعال : </label>
        <span id="lblSourceEditor" class="control-label" style="float: right;margin-top: 10px;"> محتوا </span>
         </div> 
<div id="editorToolbar" class="text-center hide" style="position:fixed;bottom:0;width:100%;z-index:1060;background-color: white;">
         <label class="control-label" style="float: right;;margin-top: 10px;">ویرایشگر فعال : </label>
        <span id="lblEditor" class="control-label" style="float: right;margin-top: 10px;"> </span>
            <input id="btnNext" type="button" class="btn btn-default" value=" < "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان بعدی در ویرایشگر"/>
       
            <input id="btnEditorResize" type="button"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+L" class="btn btn-default" value="تفییر ابعاد" />
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value="پیدا و جایگزینی" />
             <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="Comment/UnComment" />
              <input id="btnRecovery" type="button" class="btn btn-default" value="بازیابی آخرین ویرایش" />
                <input id="btnSourceControl" type="button" class="btn btn-default" value="  سورس کنترل" />
                  <input id="btnPrev" type="button" class="btn btn-default" value=" > "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان قبلی در ویرایشگر"/>
</div>
    <!-- Modal -->
  
         <div id="cmsWebForm_find">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title">پیدا و جایگزین کردن</h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="cmsWebForm_txtFind" class="control-label">جستجو</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="cmsWebForm_txtFind" placeholder="متن مورد جستجو">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="cmsWebForm_txtReplace" class="control-label">جایگزین</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="cmsWebForm_txtReplace" required class="form-control" name="cmsWebForm_txtReplace" placeholder="متن جایگزین">
                </div>
         
        </div>
 
    </form>
    <div>
         <span id="cmsWebForm_findNext" class="btn btn-primary">بعدی</span>
  <span id="cmsWebForm_findPrev" class="btn btn-primary">قبلی</span>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="کل متن با هم">
            <input id="cmsWebForm_findWhole" name="cmsWebForm_findWhole" type="checkbox" />
            <label for="cmsWebForm_findWhole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="حساس به حروف کوچک و بزرگ">
            <input id="cmsWebForm_findCase" name="cmsWebForm_findCase" type="checkbox" />
            <label for="cmsWebForm_findCase" class="label-default as-label">  </label>
          </div>
           </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="cmsWebForm_findExp" name="cmsWebForm_findExp" type="checkbox" />
            <label for="cmsWebForm_findExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="انتخابی">
            <input id="cmsWebForm_findSelect" name="cmsWebForm_findSelect" type="checkbox" />
            <label for="cmsWebForm_findSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div>
                <span id="btnReplace" class="btn btn-primary">جایگزین</span>
  <span id="btnReplaceAll" class="btn btn-primary">جایگزین همه</span>
       </div>
       <p></p>
    </div>

 
  <div id="cmsWebForm_restorEditor">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">بازیابی ویرایشگرهای قبلی</h4>
            </div>
        
    <div class="modal-body">
         <span id="cmsWebForm_restorPerviousEditors" class="btn btn-primary">بازیابی</span>
  <span id="cmsWebForm_cancelRestor" class="btn btn-primary">انصراف</span>
        
    </div>
       
 </div>
  ', N'''asModal'',''asDropdown'',''asValidate'',''asEditor'',''asCodeEditor'',''asWindow''', N'cms_link_getByLanguage:"/odata/cms/Links?$filter=Language%20eq%20''@lang''&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf",cms_webPage_save:"/cms/webpage/save",cms_webPage_get:"/cms/WebPage/Get/@url/@typeId",cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",cms_webPage_delete:"/cms/webpage/delete",cms_webPage_getWebPageChanges:"/cms/WebPage/GetWebPageChanges/@orderBy/@skip/@take/@comment/@user/@fromDateTime/@toDateTime/@webPageGuid/@type",cms_webPage_getWebPageChange:"/cms/WebPage/GetWebPageChange/@changeId/@webPageGuid",cms_webPage_getWebPageResourcesChange:"/cms/WebPage/GetWebPageResourcesChange/@changeId/@webPageGuid"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1395/05/31 09:15:08', N'1396/11/10 12:59:03', N'1396/11/10 12:59:03', CAST(N'2016-08-21T16:45:08.527' AS DateTime), CAST(N'2018-01-30T09:29:03.953' AS DateTime), CAST(N'2018-01-30T09:29:03.953' AS DateTime), 1, N'', N'loadScriptAndStyle:{urls:[{url:''asGetDependentModules.js?minversion='' + $.asuniqueId()}]}', N'817bdf9024794cb9b52f8a3666a46b75', 70, N'[{"url":"asDropdown.js"},{"url":"asDropdown.css"},{"url":"asValidate.js"},{"url":"asValidate.css"},{"url":"asEditor.js"},{"url":"asCodeEditor.js"},{"url":"asWindow.js"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (5, N'چهار چوب خودکار', N'/fa/admin/cms/framework/defaults', NULL, N'', 0, 0, N'<!DOCTYPE html>
<html lang="en">

<head>


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    @asMetaTags
<link rel="shortcut icon" href="/Content/images/main/favicon.ico"/>
    <title>@asTitle</title>

 @asStyleRefrencesStart@asCore.css,bootstrap-rtl.css@asStyleRefrencesEnd@

 @asStyle
 
</head>

<body class="@asPageId">
  @asTemplate
       <script src="@asScriptsPath@modernizr.js"></script>  
    <script src="@asScriptsPath@jquery.js"></script>  
    <script src="@asScriptsPath@jquery.signalR.js"></script>  
     @asJavaScriptRefrencesStart@fa,libs.js,asCore.js@asJavaScriptRefrencesEnd@
 

  
    @asJavaScript
    
        <script src="/signalr/hubs"></script>
  
</body>
</html>', N'''''', N'frameWorkServices_reload:"/Defaults/Reload/@url",frameWorkServices_changeTemplate:"/Defaults/ChangeTemplate/@url",frameWorkServices_isAuthenticated:"/Defaults/IsAuthenticated",frameWorkServices_logOff:"/Defaults/LogOff",frameWorkServices_getWebPage:"/Defaults/GetWebPage/@url/@isModal",frameWorkServices_login:"/Token"', 0, 0, 0, 14, 0, 0, 0, N'fa', 1, 1, 0, 6, 5, 5, N'1395/06/06 01:41:31', N'1396/12/12 11:47:05', N'1396/12/12 11:47:05', CAST(N'2016-08-27T09:11:31.790' AS DateTime), CAST(N'2018-03-03T08:17:05.540' AS DateTime), CAST(N'2018-03-03T08:17:05.540' AS DateTime), 1, N'', N'', N'c17eb9aa38064a06b59546fa0c6ccb5f', 58, N'[]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (6, N'خانه', N'/fa/home', NULL, N'', 0, 0, N'<p> خانه</p>
', N'''asFlexSelect''', N'', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 7, 5, 5, N'1395/06/07 01:43:44', N'1396/11/16 15:01:29', N'1396/11/16 15:01:29', CAST(N'2016-08-28T09:13:44.700' AS DateTime), CAST(N'2018-02-05T11:31:29.767' AS DateTime), CAST(N'2018-02-05T11:31:29.767' AS DateTime), 1, N'', N'', N'f828e4b2a8554e20a2a1b8cd9996b2d1', 20, N'[]', 0, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (7, N'ورود اعضاء', N'/fa/login', NULL, N'', 0, 0, N'<form id="login_user">
    
 <div class="form-group">
            <label for="login_username" class="control-label"> نام کاربری</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" class="form-control as-validate-valid" name="login_username" id="login_username" placeholder="نام کاربری" aria-required="true" aria-invalid="false">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="login_password" class="control-label">گذر واژه</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password" required="" class="form-control as-validate-valid" id="login_password" name="login_password" placeholder="گذر واژه" aria-required="true" aria-invalid="false">
                </div>
         
        </div>
<span id="login_login" class="btn btn-primary">ورود</span> <br />
<div id="login_debugContainer" style="display: none;"><br /> <label class="control-label">حالت دیباگ</label>
<div class="as-material-switch container">
<div style="float: left;"><input id="login_debug" name="login_debug" type="checkbox" /> <label class="label-default as-label" for="login_debug"> </label></div>
</div>
</div>

</form>', N'''asValidate''', N'', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 6, 5, 5, N'1395/06/14 12:26:17', N'1396/11/10 12:55:44', N'1396/11/10 12:55:44', CAST(N'2016-09-03T19:56:17.330' AS DateTime), CAST(N'2018-01-30T09:25:44.797' AS DateTime), CAST(N'2018-01-30T09:25:44.797' AS DateTime), 1, N'', N'', N'667b8403d2e14b38b4fede2e76585a51', 18, N'[{"url":"asValidate.js"},{"url":"asValidate.css"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (8, N'قالب جایگزین', N'/fa/admin/cms/templates/defaultsreserve', NULL, N'/fa/admin/cms/pageManagerReserve', 5, 0, N' <div class="as-wrapper">
        <!-- Header -->
        <div id="header">
 <div class="col-lg-4 col-md-8 col-sm-9 col-xs-12">
    
           <div style="float:right"><img class="img-responsive" style="margin-top:15px" src="/content/images/main/dotnetexpert.png" /></div>
       <div style="float:right;margin-top:15px" id="defaultTemplate_drp_languge"></div>
     
 </div>


<div class="col-lg-1  hidden-md hidden-sm hidden-xs"></div>
<div class="col-lg-1 hidden-md hidden-sm hidden-xs"></div>
<div class="col-lg-1 hidden-md  hidden-sm hidden-xs"></div>
<div class="col-lg-1 hidden-md hidden-sm hidden-xs"></div>
<div class="col-lg-1  hidden-md hidden-sm hidden-xs"></div>
<div class="col-lg-1 hidden-1 hidden-1 col-xs-1">
    <div id="defaultTemplate_drp_menu" class="as-move-by-fixed-nav" style="position:fixed;top:86px;left:3px;z-index:1049">
<div style="width:15px;height:15px"></div>
                    </div>
</div>
<div class="col-lg-2 col-md-3 col-sm-2 hidden-xs">
         <div class="top-link-box">
                <ul class=" menu-inline">
                        <li class=""><a class="top-link-last" href="/fa" data-as-url="cms-pagemanager"> صفحه نخست </a></li>
                        <li id="defaultTemplate_login_link" class=""><a id="lnkLogin" class="top-link-divider" href="/login" data-as-modal="defaultTemplate_login" data-as-url="login">ورود اعضاء</a></li>
                    </ul>
           </div>
    </div>
        </div>
        <!-- Menu -->
        <div id="defaultTemplate_menu" class="as-nav">
  
            <header id="defaultTemplate_mega_menu"  class="navbar navbar-inverse top-menu" role="banner">
               

                <!--<nav class="collapse navbar-collapse pull-right" role="navigation" id="bs-navbar-collapse">-->
                <!--</nav>-->
                <!--<span style="position: absolute;left: 2px;top: 8px;">-->
                <!--</span>-->
                <!--<div class="search">

                        <input type="text" class="form-control input-sm" maxlength="64" placeholder="        جستجو" />
                        <button class="search-btn btn btn-primary btn-sm"><i class="glyphicon glyphicon-search"></i></button>


                    </div>-->

            </header>
        </div>
        <!-- Place Holder -->
        <div id="placeHolder">
            @asPlaceHolder
        </div>

    </div>

    <!-- Footer -->
    <div class="as-footer footer">
        <div class="container">
            <div class="row" style="background: #222;">
                <!--<div class="col-lg-2">
                    <h3> کارشناسان در شبکه های اجتماعی</h3>
                    <p style="direction: rtl">
                        ما را در شبکه های اجتماعی دنبال کنید
                    </p>
                    <div>
                        <img src="../../Source/img/icons/facebook.png" width="32" alt="Facebook">
                        <img src="../../Source/img/icons/twitter.png" width="32" alt="Twitter">
                        <img src="../../Source/img/icons/linkedin.png" width="32" alt="LinkedIn">
                        <img src="../../Source/img/icons/rss.png" width="32" alt="RSS Feed">
                    </div>
                </div>-->

                <div class="col-lg-3">
                    <h3 style="text-align: center">دسترسی سریع</h3>
                    <p style="direction: rtl" class="quickAccess">
                        <a href="#">پرداخت</a>
                        <br />
                        <a href="#">مشاهده و دریافت صورتحساب</a>
                        <br />
                        <a href="#">درخواست</a>
                        <br />
                        <a href="#">طرح های سرمایه گذاری</a>
                    </p>
                </div>

                <div class="col-lg-3">
                    <h3 style="text-align: center">پیوندها</h3>
                    <p style="direction: rtl" class="quickAccess">
                        <a href="http://khodkarsystem.com">خودکار سیستم</a>
                        <br />
                        <a href="http://www.khodsaz.ir">خودساز</a>
                    </p>
                </div>

                <div class="col-lg-2">
                    <h3 style="text-align: center">اسکن کنید</h3>
                    <p class="contact-us-details text-center">
                        <img style="width: 128px; margin-top:5px" title="thei qr code" src="/Content/images/qrcode.png" alt="dotnetexpert.ir qr code">
                    </p>
                </div>

                <div class="col-lg-4" style="background: transparent url(/Content/images/world-map.jpg) no-repeat scroll center bottom; min-height: 211px;">
                    <h3 style="text-align: center"> کارشناسان.نت</h3>
                    <p style="direction: rtl" class="quickAccess">
                        <span class="glyphicon glyphicon-map-marker" >
                            <span style="font-family: tahoma;">
                           تهران خیابان آزادی خیابان حبیب زادگان بن بست کوکب زاده پلاک 2.1
                        </span>
                        </span>
                        <br /><br />
                        <span class="glyphicon glyphicon-earphone">
                            <label style="direction:ltr;font-family: tahoma;">
                                +98 21 66089834
                            </label>
                        </span>
                        <br /><br />
                        <span class="glyphicon glyphicon-envelope">

                            <a href="mailto:Contact@dotnetexpert.ir">
                                <label>
                                    Contact[at]dotnetexpert.ir
                                </label>
                            </a>
                        </span>
                    </p>
                </div>
            </div>

            <div class="row" style="background: #222;">

                <div class="col-lg-12">
                    <div class="footer-copyright">
                       Copyright © 2018
                    </div>
                    <div>
                        <!--<br />-->
                    </div>
                    <div class="footer-powerdby">
                      خودساز نوشته شده با خودکار!
                    </div>
                    <div>
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </div>
 

    
    
', N'''asModal'',''asOffCanvas'',''asPopovers'',''asDropdown'',''asMegaMenu'',''asFixedNav'',''asFlexSelect''', N'cms_languageAndCulture_public_getAll:"/cms/languageAndCulture/public/getAll",cms_link_public_getAll:"/odata/public/cms/LinksPublic?$filter=((TypeId%20eq%201d)%20or%20(TypeId%20eq%202d))%20and%20(Language%20eq%20''@lang'')%20and%20(IsMobile%20eq%20@isMobile)&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf",cms_link_userAccess:"/odata/cms/EntityGroups?$filter=((EntityTypeId%20eq%20101d)%20and%20(GroupId%20eq%2071d))%20and%20(Link%2FLanguage%20eq%20''@lang'')%20and%20(Link%2FIsMobile%20eq%20@isMobile)&$expand=Link&$select=Link%2FId%2CLink%2FParentId%2CLink%2FText%2CLink%2FHtml%2CLink%2FUrl%2CLink%2FOrder%2CLink%2FIsLeaf",cms_link_userMenus:"/odata/cms/Links?$filter=(TypeId%20eq%201d)%20and%20(Language%20eq%20''@lang'')%20and%20(IsMobile%20eq%20@isMobile)&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf"', 0, 0, 0, 15, 0, 0, 0, N'fa', 1, 1, 0, 6, 5, 5, N'1395/06/27 05:36:41', N'1396/12/07 22:18:02', N'1396/12/07 22:18:02', CAST(N'2016-09-17T13:06:41.470' AS DateTime), CAST(N'2018-02-26T18:48:02.433' AS DateTime), CAST(N'2018-02-26T18:48:02.433' AS DateTime), 1, N'/fa/admin/cms/framework/defaults', N'loadScriptAndStyle:{urls:[{url:$.asGetStylePath() +''offCanvas/foonav.light.css''}]}', N'4b5e09a4ffe440439cc4cac7ea19fa54', 30, N'[{"url":"asOffCanvas.css?minversion=25"},{"url":"asOffCanvas.js?minversion=25"},{"url":"asPopovers.js?minversion=4"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asMegaMenu.css?minversion=10"},{"url":"asMegaMenu.js?minversion=10"},{"url":"asFixedNav.css?minversion=5"},{"url":"asFixedNav.js?minversion=5"},{"url":"asFlexSelect.css?minversion=41"},{"url":"asFlexSelect.js?minversion=41"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (9, N'Login', N'/en/login', NULL, N'', 0, 0, N'<div class="modal-header"><button class="close" type="button" data-dismiss="modal">&times;</button>
<h4 class="modal-title">Login</h4>
</div>
<div class="modal-body"><form id="securityLogin_user">
<div class="form-group">
                <label for="securityLogin_username" class="control-label"> User Name </label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" class="form-control as-validate-valid" name="securityLogin_username" id="login_username" placeholder="UserName " aria-required="true" aria-invalid="false">
                </div>
</div>
<div class="form-group">
    
                <label for="securityLogin_password" class="control-label">PassWord </label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password" required="" class="form-control as-validate-valid" id="securityLogin_password" name="securityLogin_password" placeholder=" PassWord" aria-required="true" aria-invalid="false">
                </div>
    
</div>
</form></div>
<div class="modal-footer">
<div class="form-group pull-right">
<div><span id="securityLogin_login" class="btn btn-primary">Login</span> <span id="securityLogin_cancel" class="btn btn-primary">Cancel</span></div>
</div>
<br />
<div id="login_debugContainer" style="direction: rtl; display: none;"><br /> <label class="control-label" style="position: absolute; left: 10px;">Debug Mode</label>
<div class="as-material-switch">
<div style="position: absolute; right: 10px;"><input id="chkDebug" name="chkDebug" type="checkbox" /> <label class="label-default as-label" for="chkDebug"> </label></div>
</div>
</div>
</div>', N'''asModal'',''asValidate''', N'', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 6, 5, 5, N'1395/06/21 01:40:55', N'1396/11/19 16:19:03', N'1396/11/19 16:19:03', CAST(N'2016-04-30T16:16:09.677' AS DateTime), CAST(N'2018-02-08T12:49:03.537' AS DateTime), CAST(N'2018-02-08T12:49:03.537' AS DateTime), 1, N'', N'', N'86892370946f4e08b0c45a32c3851967', 13, N'[{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (10, N'Webpage Management', N'/en/admin/cms/pagemanager', NULL, N'', 0, 0, N'<form id="cmsWebForm_webForm" role="form" class="container-fluid">
    <div class="form-group">
        <label for="cmsWebForm_Title" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="cmsWebForm_Title" id="cmsWebForm_Title" data-localize="title" placeholder="">
        </div>

    </div>
    <br />
    <label for="cmsWebForm_drp_menu" class="control-label">Menu</label>
    <br />
    <div id="cmsWebForm_menu">
        <div class="container">

            <div id="cmsWebForm_drp_menu" name="cmsWebForm_drp_menu" style="float: left;">
            </div>
        </div>
        
       <br />
      
         <label class="control-label">Mobile Mode</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkMobile" name="chkMobile" type="checkbox" />
            <label for="chkMobile" class="label-default as-label">  </label>
          </div>
     </div>
    <br />
    <label for="cmsWebForm_drp_type" class="control-label"> Page Type</label>
    <br />
    <div class="container">

        <div id="cmsWebForm_drp_type" name="cmsWebForm_drp_type" style="float: left;">
        </div>
    </div>
    <br/>
       <div id="cmsWebFom_frameWork">
    <label for="cmsWebFom_rdrp_frameWork" class="control-label">Framework</label>
        <br />
        <div class="container">

            <div id="cmsWebForm_drp_frameWork" name="cmsWebForm_drp_frameWork" style="float: left;">
            </div>
        </div>
   </div>
   <br/>
   <div id="cmsWebFom_template">
    <div class="form-group">
        <label for="cmsWebForm_TemplatePatternUrl" class="control-label"> Template</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="cmsWebForm_TemplatePatternUrl" id="cmsWebForm_TemplatePatternUrl"  placeholder="/" style="direction:ltr">
        </div>
    </div>
   </div>
    </div>
    <br />
        <div id="divParams">
            <div class="form-group">
        <label for="cmsWebForm_params" class="control-label"> Page Params </label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <input type="text" class="form-control" name="cmsWebForm_params" id="cmsWebForm_params" style="direction: ltr;"  placeholder="  Page Params">
        </div>
    </div>
      <br>
                                <div class="form-group">
        <label for="cmsWebForm_id" class="control-label"> Page Id</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="cmsWebForm_id" id="cmsWebForm_id" style="direction: ltr;"  placeholder=" Page Id">
        </div>
<br>
    </div>
  
    </div>
    <br/>

                    <div class="form-group">
        <label for="cmsWebForm_version" class="control-label"> Version</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" readonly="true" class="form-control" name="cmsWebForm_version" id="cmsWebForm_version" style="direction: ltr;"  placeholder="Version">
        </div>
    

    </div>
    <br>
    <div id="divRoles">
        <label for="cmsWebForm_drp_viewRole" class="control-label"> View Role</label>
    <br />
    <div class="container">

        <div id="cmsWebForm_drp_viewRole" name="cmsWebForm_drp_viewRole" style="float: left;">
        </div>
    </div>
    <br />
        <br />
    <label for="cmsWebForm_drp_modifyRole" class="control-label"> Edit Role</label>
    <br />
    <div class="container">

        <div id="cmsWebForm_drp_modifyRole" name="cmsWebForm_drp_modifyRole" style="float: left;">
        </div>
    </div>
    <br />
        <br />
    <label for="cmsWebForm_drp_accessRole" class="control-label">Access Role</label>
    <br />
    <div class="container">

        <div id="cmsWebForm_drp_accessRole" name="cmsWebForm_drp_accessRole" style="float: left;">
        </div>
    </div>
    </div>
       <br />
      
         <label class="control-label">  Run From Cache </label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="cmsWebForm_Cache" name="cmsWebForm_Cache" type="checkbox" />
            <label for="cmsWebForm_Cache" class="label-default as-label">  </label>
          </div>
     </div>
  <br />
<fieldset id="cmsWebForm_SlidingExpirationTimeInMinutes_fieldset" disabled>
    <div class="form-group">
        <label for="cmsWebForm_SlidingExpirationTimeInMinutes" class="control-label" > Sliding Expiration Time In Minutes</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="cmsWebForm_SlidingExpirationTimeInMinutes" id="cmsWebForm_SlidingExpirationTimeInMinutes" value="180"  placeholder="180">
        </div>

    </div>
    </fieldset>

	   <br />
       
        
<div id="divMetaTag" class="form-group">
    <div class="web-order alert alert-warning" role="alert">
         Adding or changing meta tags without checking the publish button will not be saved.
            </div>
        <label for="txtMetaTag" class="control-label">Meta Tags</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
           
            <textarea class="form-control" rows="5" id="txtMetaTag" name="txtMetaTag" placeholder='' <meta name="description" content="test">''></textarea>
        </div>

    </div>

       <br />

 <div id="cmsWebForm_Html_container">
        <label class="control-label">Content</label>
    <div id="cmsWebForm_Html" style="height: 600px;"></div>
   
 </div> 
    <br />
<div id="divHtml">
          <div id="cmsWebForm_htmlSource_container">
                  <label class="control-label" for="cmsWebForm_HtmlSource">Html</label>
    <div id="cmsWebForm_htmlSource" name="cmsWebForm_htmlSource" style="height: 300px">

    </div>
        </div>
         </div>
    <br />
    <label class="control-label" style="float: left"> Services</label>
    <br />
    <div >

        <div id="cmsWebForm_drp_service">
        </div>
    </div>
    <br />
    <div id="divJs">
    <div id="cmsWebForm_javaScript_container">
        <label class="control-label"> Java Script</label>
    <div id="cmsWebForm_javaScript" name="cmsWebForm_javaScript" style="height: 300px">

    </div>
    </div>
    </div>
    <br />
    <div id="divCss">
<div id="cmsWebForm_style_container">
        <label class="control-label">Style</label>
    <div id="cmsWebForm_style" name="cmsWebForm_style" style="height: 300px">

    </div>
</div> 
</div>
      <br/>
      
        <label class="control-label">Active</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="cmsWebForm_Status" name="cmsWebForm_Status" type="checkbox" />
            <label for="cmsWebForm_Status" class="label-default as-label">  </label>
          </div>
     </div>
              <br/>
      
        <label class="control-label">Check In</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCheckIn" name="chkCheckIn" type="checkbox" />
            <label for="chkCheckIn" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
                <label class="control-label">Publish</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="cmsWebForm_Publish" name="cmsWebForm_Publish" type="checkbox" />
            <label for="cmsWebForm_Publish" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
              <br/>
      
        <label class="control-label">  Check Out</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="cmsWebForm_EditeMode" name="cmsWebForm_EditeMode" type="checkbox" />
            <label for="cmsWebForm_EditeMode" class="label-default as-label">  </label>
          </div>
     </div>
          <br />
        
            <label class="control-label">  Last Modifi User</label>
        <div class="container">
               <div id="divLastModifiUser" style="float: right;">
           
            
          </div>
     </div>
        <br />
        
                   <label class="control-label">  Last Modifi Local DateTime</label>
        <div class="container">
               <div id="divLastModifiLocalDataTime" style="float: right;">
           
            
          </div>
     </div>
        <br />
            <div class="form-group">
        <label for="txtComment" class="control-label" >ChangSet Comment</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtComment" id="txtComment"  >
        </div>

    </div>
    <br />
        <div class="text-center">
            <input id="cmsWebForm_save" type="button" class="btn btn-default" data-localize="save" />
            <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>
      <div class="text-center hide" style="position:fixed;bottom:0;width:100%;z-index:1060;background-color: white;" id="sourceEditorToolbar">
                           <label class="control-label" style="float: left;margin-top: 10px;">Active Editor :  </label>
        <span id="lblSourceEditor" class="control-label" style="float: left;margin-top: 10px;"> Content </span>
            <input id="cmsWebForm_html_changeMode" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+G" type="button" class="btn btn-default" value=" Resize" />

         </div> 
<div id="editorToolbar" class="text-center hide" style="position:fixed;bottom:0;width:100%;z-index:1060;background-color: white;">
         <input id="btnPrev" type="button" class="btn btn-default" value=" < "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="   Previous Positon In Editor"/>
            
            <input id="btnEditorResize" type="button"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+L" class="btn btn-default" value=" Resize" />
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value=" Find And Replace " />
             <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="Comment/UnComment" />
              <input id="btnRecovery" type="button" class="btn btn-default" value="Recover Last Edition" />
               <input id="btnSourceControl" type="button" class="btn btn-default" value="Source Control" />
               <input id="btnNext" type="button" class="btn btn-default" value=" > "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Next Position In Editor"/>
     <label class="control-label" style="float: left;;margin-top: 10px;">Active Editor : </label>
        <span id="lblEditor" class="control-label" style="float: left;margin-top: 10px;"> </span>
</div>
    <!-- Modal -->
  
         <div id="cmsWebForm_find">
           
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title"> Find And Replace</h4>
            
            </div>

          <form role="form" >
        <div class="form-group">
            <label for="cmsWebForm_txtFind" class="control-label">Search</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="cmsWebForm_txtFind" placeholder="Text For Search">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="cmsWebForm_txtReplace" class="control-label">Replace</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="cmsWebForm_txtReplace" required class="form-control" name="cmsWebForm_txtReplace" placeholder="Text to Replace">
                </div>
         
        </div>
 
    </form>
    <div>
         <span id="cmsWebForm_findNext" class="btn btn-primary">Next</span>
  <span id="cmsWebForm_findPrev" class="btn btn-primary">Previouse</span>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Whole Word">
            <input id="cmsWebForm_findWhole" name="cmsWebForm_findWhole" type="checkbox" />
            <label for="cmsWebForm_findWhole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Case">
            <input id="cmsWebForm_findCase" name="cmsWebForm_findCase" type="checkbox" />
            <label for="cmsWebForm_findCase" class="label-default as-label">  </label>
          </div>
          </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="cmsWebForm_findExp" name="cmsWebForm_findExp" type="checkbox" />
            <label for="cmsWebForm_findExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Selection">
            <input id="cmsWebForm_findSelect" name="cmsWebForm_findSelect" type="checkbox" />
            <label for="cmsWebForm_findSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div>
                <span id="btnReplace" class="btn btn-primary">Replace</span>
  <span id="btnReplaceAll" class="btn btn-primary">Replace All</span>
       </div>
       <p></p>
    </div>

 
  <div id="cmsWebForm_restorEditor">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">Recover Editor</h4>
            </div>
        
    <div class="modal-body">
          <span id="cmsWebForm_cancelRestor" class="btn btn-primary">Cancel</span>
         <span id="cmsWebForm_restorPerviousEditors" class="btn btn-primary">Recover</span>

        
    </div>
       
 </div>
  ', N'''asModal'',''asDropdown'',''asValidate'',''asEditor'',''asCodeEditor'',''asWindow''', N'cms_link_getByLanguage:"/odata/cms/Links?$filter=Language%20eq%20''@lang''&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf",cms_webPage_save:"/cms/webpage/save",cms_webPage_get:"/cms/WebPage/Get/@url/@typeId",cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",security_Role_getAllByOtherLanguage:"/odata/security/LocalRoles?$filter=(Language%20eq%20''@lang'')&$expand=Role&$select=Role%2FId%2CRole%2FParentId%2CRole%2FName%2CRole%2FOrder%2CRole%2FIsLeaf%2CName",cms_webPage_delete:"/cms/webpage/delete",cms_webPage_getWebPageChanges:"/cms/WebPage/GetWebPageChanges/@orderBy/@skip/@take/@comment/@user/@fromDateTime/@toDateTime/@webPageGuid/@type",cms_webPage_getWebPageChange:"/cms/WebPage/GetWebPageChange/@changeId/@webPageGuid",cms_webPage_getWebPageResourcesChange:"/cms/WebPage/GetWebPageResourcesChange/@changeId/@webPageGuid"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1395/05/23 02:50:44', N'1396/12/07 21:52:44', N'1396/12/07 21:52:44', CAST(N'2016-08-13T10:20:44.673' AS DateTime), CAST(N'2018-02-26T18:22:44.153' AS DateTime), CAST(N'2018-02-26T18:22:44.153' AS DateTime), 1, N'', N'test:''test'',loadScriptAndStyle:{urls:[{url:''asGetDependentModules.js?minversion='' + Math.floor((1 + Math.random()) * 0x10000)}]}', N'fa76e92aa4344a2d83f3fc6748c29a9c', 82, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asEditor.js?minversion=19"},{"url":"asCodeEditor.js?minversion=7"},{"url":"asWindow.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (11, N'.Net Experts', N'/en', NULL, N'', 0, 0, N'
<!--main-slider-->
<section style="border-bottom: 1px solid #E1E1E1;background-image: url(''/content/images/slides/main/bg.jpg''); background-repeat: no-repeat;background-position: 50% 50%;background-size: cover;"><!--style="width: 100%;height:350px"-->
 <div id="sequence" class="seq fonts-a-google" style="direction:rtl;display:none">

    <div class="seq-screen">
      <ul class="seq-canvas seq-margin-left">

        <li class="seq-step1 seq-in" id="step1" >

              <div class="seq-code-pane seq-valign seq-ltr">

            <button type="button" class="seq-view-code">
              <i class="fa fa-angle-double-up"></i> Information
            </button>

            <div class="seq-code" style="text-align:center">

              <div class="seq-code-block"  data-seq>
               <!--<i class="seq-step-icon">1</i>-->
                <!--<span class="tip">-->
                       
                <!--  <span><strong>.seq-in</strong> .content {</span>-->
                <!--  <span class="seq-code-1">transform: translateY(0);</span>-->
                <!--  <span class="seq-code-1">transition: .2s;</span>-->
                <!--  <span>}</span>-->
                <!--</span>-->

                <span style="font-size:22px" class="seq-code-1 seq-header"> Khodkar Platform In a Short View</span>
                <hr class="seq-hr">
              </div>
               <div class="seq-code-block"  data-seq>
                  <span style="font-size:18px" class="seq-code-1">   Open Source And Free</span>
              </div>
               <div class="seq-code-block"  data-seq>
                  <span style="font-size:18px" class="seq-code-1">Oriented Service Architecture </span>
              </div>
                   <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px" class="seq-code-1">Multi Language And Culture</span>
              </div>
                <div class="seq-code-block"  data-seq>
                  <span style="font-size:18px" class="seq-code-1">Multi Framework</span>
              </div>
                <div class="seq-code-block"  data-seq>
                   <span style="font-size:18px" class="seq-code-1"> Multi Template</span>
              </div>

                                       <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px" class="seq-code-1">Mobile First And Mobile Special Pages</span>
              </div>
              <!--  <div class="seq-code-block"  data-seq>-->
              <!--    <span style="font-size:10px" class="seq-code-1"></span>-->
              <!--</div>-->
              <!--  <div class="seq-code-block"  data-seq>-->
                 
              <!--</div>-->
              
      
            </div>
            
          </div>

          <div class="seq-content seq-valign" style="background-image: url(''/content/images/slides/main/khodkar-slide-en-1.png''); background-repeat: no-repeat;background-position: 50% 50%;background-size: contain;" data-seq>

            <!--<div class="seq-instruction">-->

            <!--  <div class="seq-title">-->
            <!--    <object class="seq-instruction-icon" data="/content/images/slides/main/bracket-open.svg" type="image/svg+xml">-->
            <!--      <img src="/content/images/slides/main/bracket-open.png" alt="An opening code bracket" />-->
            <!--    </object>-->

            <!--    <h2>Step 1</h2>-->

            <!--    <object class="seq-instruction-icon" data="/content/images/slides/main/bracket-close.svg" type="image/svg+xml">-->
            <!--      <img src="/content/images/slides/main/bracket-close.png" alt="A closing code bracket" />-->
            <!--    </object>-->
            <!--  </div>-->

            <!--  <h3>Easily add CSS transitions to step-based applications using "in" and "out" CSS classes</h3>-->

            <!--  <div class="seq-step">-->
            <!--    <p>Step 1 is currently in its <code>in<sup class="seq-step-icon">1</sup></code> position. Watch what happens when you <a href="#" title="" class="seq-next">go to the next step →</a></p>-->
            <!--  </div>-->
            <!--</div>-->

          </div>
   
        </li>

        <li class="seq-step2" id="step2">
          <div class="seq-code-pane seq-valign seq-ltr">

            <button type="button" class="seq-view-code">
              <i class="fa fa-angle-double-up"></i> Information
            </button>

           <div class="seq-code" style="text-align:center">

              <div class="seq-code-block"  data-seq>
           
                <span style="font-size:22px" class="seq-code-1 seq-header">Platform For All Seasons </span>
                <hr class="seq-hr">
              </div>
                   <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px" class="seq-code-1"> An Internal Source Control System With Accessibility Even On a Single Line Of Code</span>
              </div>
                <div class="seq-code-block"  data-seq>
                  <span style="font-size:18px" class="seq-code-1">Secure Development With Access Control at Four Levels of Development and Testing and Use and Implementation </span>
              </div>
                <div class="seq-code-block"  data-seq>
                   <span style="font-size:18px;direction:rtl;" class="seq-code-1">Unique Release and Version Controling system</span>
              </div>
                <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px;direction:rtl;" class="seq-code-1">Unit Test And Debug System </span>
              </div>
              <!--  <div class="seq-code-block"  data-seq>-->
              <!--    <span style="font-size:10px" class="seq-code-1"></span>-->
              <!--</div>-->
              <!--  <div class="seq-code-block"  data-seq>-->
                 
              <!--</div>-->
              

      
            </div>

          </div>
          <div class="seq-content seq-valign" style="background-image: url(''/content/images/slides/main/khodkar-slide-en-2.png''); background-repeat: no-repeat;background-position: 50% 50%;background-size: contain;" data-seq>

          </div>
        </li>
        
          <li class="seq-step3" id="step3">
          <div class="seq-code-pane seq-valign seq-ltr">

            <button type="button" class="seq-view-code">
              <i class="fa fa-angle-double-up"></i> Information
            </button>

           <div class="seq-code" style="text-align:center">

              <div class="seq-code-block"  data-seq>
           <span style="font-size:18px" class="seq-code-1 seq-header">Everyone Is Only Through a Simple Browser On Your Computer or Tablet or Smartphone</span>
               <hr class="seq-hr">
                </div>
               <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px" class="seq-code-1">Ability To Code On Server And Client Side With Over Tens Of Languages</span>
              </div>
                <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px" class="seq-code-1">C# VB.NET SQL SASS LESS CoffeScript TypeScript Handlebars Hogan ... </span>
              </div>
                <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px" class="seq-code-1">Database Code Management System </span>
              </div>
                 <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px;" class="seq-code-1">And Much More Than You Expect ...</span>
              </div>

      
            </div>


         
           </div>
          <div class="seq-content seq-valign" style="background-image: url(''/content/images/slides/main/khodkar-slide-en-3.png''); background-repeat: no-repeat;background-position: 50% 50%;;background-size: contain;" data-seq>

          </div>
       
        </li>
        
         <li class="seq-step4" id="step4">
          <div class="seq-code-pane seq-valign seq-ltr">

            <button type="button" class="seq-view-code">
              <i class="fa fa-angle-double-up"></i> Information
            </button>

           <div class="seq-code" style="text-align:center">

              <div class="seq-code-block"  data-seq>
           <span style="font-size:18px;direction:ltr;" class="seq-code-1 seq-header">.Net Experts</span>
                <hr class="seq-hr">
                </div>
                
               <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px" class="seq-code-1">Cloud Developers</span>
              </div>
                <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px" class="seq-code-1">Selection Of The Programmer According To The Evaluation Points
                    Of The Server-Client Code And The Design Of The Programmer''s Website </span>
              </div>
                <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px" class="seq-code-1"> Formation Of Online Programming Teams And Their Management</span>
              </div>
                 <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px;direction:rtl;" class="seq-code-1">Request a Bug Fix Online</span>
              </div>
                    <div class="seq-code-block"  data-seq>
                    <span style="font-size:18px;direction:rtl;" class="seq-code-1"> Accelerating Startups</span>
              </div>
      
            </div>

  
           </div>
          <div class="seq-content seq-valign" style="background-image: url(''/content/images/slides/main/khodkar-slide-en-4.png''); background-repeat: no-repeat;background-position: 50% 50%;background-size: contain;" data-seq>


          </div>
       
        </li>
      </ul>
    </div>

    <!--<fieldset class="seq-nav" aria-controls="sequence" aria-label="Slider buttons">-->
    <!--  <button type="button" class="seq-prev" aria-label="Previous"><i class="fa fa-chevron-circle-left"></i> Previous</button>-->
    <!--  <button type="button" class="seq-next" aria-label="Next">Next <i class="fa fa-chevron-circle-right"></i></button>-->
    <!--</fieldset>-->
  </div>

        
        
    <div style="text-align:center">
            <ul role="navigation" aria-label="Pagination" aria-controls="sequence" class="pagination seq-pagination">
              <li class="active"><a href="#step1" title=" پلتفرم خودکار در یک نظر"
              >
                  1 <span class="sr-only">(current)</span></a></li>
              <li><a href="#step2" title="پلتفرمی برای تمام فصول"
              >2</a></li>
              <li><a href="#step3" title="همه تنها بایک مرورگر در کامپیوتر یا تبلت یا گوشی هوشمند شما"
              >3</a></li>
              <li><a href="#step4" title=" کارشناسان.نت"
              >4</a></li>
            </ul>
    </div>


</section>
<p></p>
<!-- Page Content -->
<div class="container">
<div class="row">
    Khodkar Platform IS The Most Free And Open Source Speady Developement Platform In The World For .Net Developers 
    </div>
<div>&nbsp;</div>
<div class="row">
<div class="col-lg-6"><!-- Carousel
                            ================================================== -->
<div id="myCarousel_01" class="carousel slide wrap"><!-- Indicators -->
<h4> Technology news</h4>
<hr />
<div class="carousel-inner" style="direction: rtl; height: 100px;">
<div class="item active">
<h5>Verson One Of The Khodkar Platform</h5>
<h6>Comming soon</h6>
</div>
</div>
<div class="carousel-controls">&nbsp;</div>
</div>
<!-- End Carousel --></div>
<div class="col-lg-6"><!-- Carousel
                            ================================================== -->
<div id="myCarousel_02" class="carousel slide wrap"><!-- Indicators -->
<h4>.Net News</h4>
<hr />
<div class="carousel-inner" style="direction: rtl; height: 100px;">
<div class="item active">
<h5>Khodkar Platform News</h5>
<br />
<h6>Khodkar FrameWork</h6>
</div>
<div class="item">
<h5>Server FrameWork</h5>
<h6>  Client FrameWork</h6>
</div>
</div>
<div class="carousel-controls">&nbsp;</div>
</div>
<!-- End Carousel --></div>
</div>
</div>', N'''asCalendar'',''asDateTimeInput'',''asSlider''', N'', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 6, 5, 5, N'1395/05/24 11:36:32', N'1396/11/16 21:28:37', N'1396/11/16 21:28:37', CAST(N'2016-08-14T07:06:32.413' AS DateTime), CAST(N'2018-02-05T17:58:37.070' AS DateTime), CAST(N'2018-02-05T17:58:37.070' AS DateTime), 1, N'', N'', N'32a199dfcbeb48e7b57d99638d2ffa41', 34, N'[{"url":"asSlider.css?minversion=57"},{"url":"asSlider.js?minversion=57"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (12, N'Defaults Template', N'/en/admin/cms/templates/defaults', NULL, N'/en', 14, 0, N' <div class="as-wrapper">
        <!-- Header -->
        <div id="header">
 <div class="col-lg-4 col-md-7 col-sm-7 col-xs-12">
    
           <div style="float:left"><img class="img-responsive" style="margin-top:15px;" src="/content/images/main/dotnetexpert-en.png" /></div>
       <div style="float:left;margin-top:15px" id="defaultTemplate_drp_languge"></div>
     
 </div>


<div class="col-lg-1  hidden-md hidden-sm hidden-xs"></div>
<div class="col-lg-1 hidden-md hidden-sm hidden-xs"></div>
<div class="col-lg-1 hidden-md  hidden-sm hidden-xs"></div>
<div class="col-lg-1 hidden-md hidden-sm hidden-xs"></div>
<div class="col-lg-1  hidden-md hidden-sm hidden-xs"></div>
<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
    <div id="defaultTemplate_drp_menu" class="as-move-by-fixed-nav" style="position:fixed;top:86px;right:6%;z-index:1049">
<div style="width:15px;height:15px"></div>
                    </div>
</div>
<div class="col-lg-2 col-md-4 col-sm-4 hidden-xs">
         <div class="top-link-box">
                <ul class=" menu-inline">
                        <li class=""><a class="top-link-last" href="/en" data-as-url="cms-pagemanager">Home</a></li>
                        <li id="defaultTemplate_login_link" class=""><a id="lnkLogin" class="top-link-divider" href="/login" data-as-modal="defaultTemplate_login" data-as-url="login">Login</a></li>
                    </ul>
           </div>
    </div>
        </div>
        <!-- Menu -->
        <div id="defaultTemplate_menu" class="as-nav">
  
            <header id="defaultTemplate_mega_menu"  class="navbar navbar-inverse top-menu" role="banner">
               

                <!--<nav class="collapse navbar-collapse pull-right" role="navigation" id="bs-navbar-collapse">-->
                <!--</nav>-->
                <!--<span style="position: absolute;left: 2px;top: 8px;">-->
                <!--</span>-->
                <!--<div class="search">

                        <input type="text" class="form-control input-sm" maxlength="64" placeholder="        جستجو" />
                        <button class="search-btn btn btn-primary btn-sm"><i class="glyphicon glyphicon-search"></i></button>


                    </div>-->

            </header>
        </div>
        <!-- Place Holder -->
        <div id="placeHolder">
            @asPlaceHolder
        </div>

    </div>

    <!-- Footer -->
    <div class="as-footer footer">
        <div class="container">
            <div class="row" style="background: #222;">
                <!--<div class="col-lg-2">
                    <h3>
                    <p style="direction: rtl">
                        ما را در شبکه های اجتماعی دنبال کنید
                    </p>
                    <div>
                        <img src="../../Source/img/icons/facebook.png" width="32" alt="Facebook">
                        <img src="../../Source/img/icons/twitter.png" width="32" alt="Twitter">
                        <img src="../../Source/img/icons/linkedin.png" width="32" alt="LinkedIn">
                        <img src="../../Source/img/icons/rss.png" width="32" alt="RSS Feed">
                    </div>
                </div>-->

                <div class="col-lg-3">
                    <h3 style="text-align: center">Quick Access</h3>
                    <p style="direction: rtl" class="quickAccess">
                        <a href="#">test</a>
                        <br />
                        <a href="#">test1</a>
                        <br />
                        <a href="#">test3</a>
                        <br />
                        <a href="#">test4</a>
                    </p>
                </div>

                <div class="col-lg-3">
                    <h3 style="text-align: center">Links</h3>
                    <p style="direction: rtl" class="quickAccess">
                        <a href="http://www.khodkarsystem.com">Khodkar System</a>
                        <br />
                        <a href="http://www.khodsaz.ir">khodsaz</a>
          
                    </p>
                </div>

                <div class="col-lg-2">
                    <h3 style="text-align: center">اسکن کنید</h3>
                    <p class="contact-us-details text-center">
                      <img style="width: 128px; margin-top:5px" title="thei qr code" src="/Content/images/qrcode.png" alt="dotnetexpert.ir qr code">
                    </p>
                </div>

                <div class="col-lg-4" style="background: transparent url(/Content/images/world-map.jpg) no-repeat scroll center bottom; min-height: 211px;">
                    <h3 style="text-align: center">Khodkar System</h3>
                    <p style="direction: rtl" class="quickAccess">
                        <span class="glyphicon glyphicon-map-marker">
                               <label style="direction:ltr;font-family: tahoma;">
                         Theran
                          </label>
                        </span>

                        <br /><br />
                        <span class="glyphicon glyphicon-earphone">
                           <label style="direction:ltr;font-family: tahoma;">
                                 +98 21 66089834
                            </label>
                        </span>
                        <br /><br />
                        <span class="glyphicon glyphicon-envelope">

                            <a href="mailto:Contact@thei.ir">
                                <label>
                                    Contact[at]Dotnetexpert.ir
                                </label>
                            </a>
                        </span>
                    </p>
                </div>
            </div>

            <div class="row" style="background: #222;">

                <div class="col-lg-12">
                    <div class="footer-copyright">
                     Copyright © 2018
                    </div>
                    <div>
                        <!--<br />-->
                    </div>
                    <div class="footer-powerdby">
                       KhodSaz Writed By Khodkar!
                    </div>
                    <div>
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </div>
 
    
', N'''asModal'',''asOffCanvas'',''asPopovers'',''asDropdown'',''asMegaMenu'',''asFixedNav'',''asFlexSelect''', N'cms_languageAndCulture_public_getAll:"/cms/languageAndCulture/public/getAll",cms_link_public_getAll:"/odata/public/cms/LinksPublic?$filter=((TypeId%20eq%201d)%20or%20(TypeId%20eq%202d))%20and%20(Language%20eq%20''@lang'')%20and%20(IsMobile%20eq%20@isMobile)&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf",cms_link_userAccess:"/odata/cms/EntityGroups?$filter=((EntityTypeId%20eq%20101d)%20and%20(GroupId%20eq%2071d))%20and%20(Link%2FLanguage%20eq%20''@lang'')%20and%20(Link%2FIsMobile%20eq%20@isMobile)&$expand=Link&$select=Link%2FId%2CLink%2FParentId%2CLink%2FText%2CLink%2FHtml%2CLink%2FUrl%2CLink%2FOrder%2CLink%2FIsLeaf",cms_link_userMenus:"/odata/cms/Links?$filter=(TypeId%20eq%201d)%20and%20(Language%20eq%20''@lang'')%20and%20(IsMobile%20eq%20@isMobile)&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf"', 0, 1, 0, 15, 0, 0, 0, N'en', 1, 1, 0, 6, 5, 5, N'1395/05/26 05:34:28', N'1396/12/07 22:12:43', N'1396/12/07 22:12:43', CAST(N'2016-08-16T13:04:28.310' AS DateTime), CAST(N'2018-02-26T18:42:43.383' AS DateTime), CAST(N'2018-02-26T18:42:43.383' AS DateTime), 1, N'/en/admin/cms/framework/defaults', N'loadScriptAndStyle:{urls:[{url:$.asGetStylePath() +''offCanvas/foonav.light.css''}]}', N'422f635c63ec43809bc4af376428d971', 44, N'[{"url":"asOffCanvas.css?minversion=25"},{"url":"asOffCanvas.js?minversion=25"},{"url":"asPopovers.js?minversion=4"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asMegaMenu.css?minversion=10"},{"url":"asMegaMenu.js?minversion=10"},{"url":"asFixedNav.css?minversion=5"},{"url":"asFixedNav.js?minversion=5"},{"url":"asFlexSelect.css?minversion=41"},{"url":"asFlexSelect.js?minversion=41"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (13, N'Altarnative Webpage Management', N'/en/admin/cms/pagemanagerreserve', NULL, N'', 0, 0, N'<form id="cmsWebForm_webForm" role="form" class="container-fluid">
    <div class="form-group">
        <label for="cmsWebForm_Title" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="cmsWebForm_Title" id="cmsWebForm_Title" data-localize="title" placeholder="">
        </div>

    </div>
    <br />
    <label for="cmsWebForm_drp_menu" class="control-label">Menu</label>
    <br />
    <div id="cmsWebForm_menu">
        <div class="container">

            <div id="cmsWebForm_drp_menu" name="cmsWebForm_drp_menu" style="float: left;">
            </div>
        </div>
        
       <br />
      
         <label class="control-label">Mobile Mode</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkMobile" name="chkMobile" type="checkbox" />
            <label for="chkMobile" class="label-default as-label">  </label>
          </div>
     </div>
    <br />
    <label for="cmsWebForm_drp_type" class="control-label"> Page Type</label>
    <br />
    <div class="container">

        <div id="cmsWebForm_drp_type" name="cmsWebForm_drp_type" style="float: left;">
        </div>
    </div>
    <br/>
       <div id="cmsWebFom_frameWork">
    <label for="cmsWebFom_rdrp_frameWork" class="control-label">Framework</label>
        <br />
        <div class="container">

            <div id="cmsWebForm_drp_frameWork" name="cmsWebForm_drp_frameWork" style="float: left;">
            </div>
        </div>
   </div>
   <br/>
   <div id="cmsWebFom_template">
    <div class="form-group">
        <label for="cmsWebForm_TemplatePatternUrl" class="control-label"> Template</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="cmsWebForm_TemplatePatternUrl" id="cmsWebForm_TemplatePatternUrl"  placeholder="/" style="direction:ltr">
        </div>
    </div>
   </div>
    </div>
    <br />
        <div id="divParams">
            <div class="form-group">
        <label for="cmsWebForm_params" class="control-label"> Page Params </label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <input type="text" class="form-control" name="cmsWebForm_params" id="cmsWebForm_params" style="direction: ltr;"  placeholder="  Page Params">
        </div>
    </div>
      <br>
                                <div class="form-group">
        <label for="cmsWebForm_id" class="control-label"> Page Id</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="cmsWebForm_id" id="cmsWebForm_id" style="direction: ltr;"  placeholder=" Page Id">
        </div>
<br>
    </div>
  
    </div>
    <br/>

                    <div class="form-group">
        <label for="cmsWebForm_version" class="control-label"> Version</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" readonly="true" class="form-control" name="cmsWebForm_version" id="cmsWebForm_version" style="direction: ltr;"  placeholder="Version">
        </div>
    

    </div>
    <br>
    <div id="divRoles">
        <label for="cmsWebForm_drp_viewRole" class="control-label"> View Role</label>
    <br />
    <div class="container">

        <div id="cmsWebForm_drp_viewRole" name="cmsWebForm_drp_viewRole" style="float: left;">
        </div>
    </div>
    <br />
        <br />
    <label for="cmsWebForm_drp_modifyRole" class="control-label"> Edit Role</label>
    <br />
    <div class="container">

        <div id="cmsWebForm_drp_modifyRole" name="cmsWebForm_drp_modifyRole" style="float: left;">
        </div>
    </div>
    <br />
        <br />
    <label for="cmsWebForm_drp_accessRole" class="control-label">Access Role</label>
    <br />
    <div class="container">

        <div id="cmsWebForm_drp_accessRole" name="cmsWebForm_drp_accessRole" style="float: left;">
        </div>
    </div>
    </div>
       <br />
      
         <label class="control-label">  Run From Cache </label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="cmsWebForm_Cache" name="cmsWebForm_Cache" type="checkbox" />
            <label for="cmsWebForm_Cache" class="label-default as-label">  </label>
          </div>
     </div>
  <br />
<fieldset id="cmsWebForm_SlidingExpirationTimeInMinutes_fieldset" disabled>
    <div class="form-group">
        <label for="cmsWebForm_SlidingExpirationTimeInMinutes" class="control-label" > Sliding Expiration Time In Minutes</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="cmsWebForm_SlidingExpirationTimeInMinutes" id="cmsWebForm_SlidingExpirationTimeInMinutes" value="180"  placeholder="180">
        </div>

    </div>
    </fieldset>

		   <br />
       
        
<div id="divMetaTag" class="form-group">
    <div class="web-order alert alert-warning" role="alert">
         Adding or changing meta tags without checking the publish button will not be saved.
            </div>
        <label for="txtMetaTag" class="control-label">Meta Tags</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
           
            <textarea class="form-control" rows="5" id="txtMetaTag" name="txtMetaTag" placeholder='' <meta name="description" content="test">''></textarea>
        </div>

    </div>

       <br />

 <div id="cmsWebForm_Html_container">
        <label class="control-label">Content</label>
    <div id="cmsWebForm_Html" style="height: 600px;"></div>
   
 </div> 
    <br />
<div id="divHtml">
          <div id="cmsWebForm_htmlSource_container">
                  <label class="control-label" for="cmsWebForm_HtmlSource">Html</label>
    <div id="cmsWebForm_htmlSource" name="cmsWebForm_htmlSource" style="height: 300px">

    </div>
        </div>
         </div>
    <br />
    <label class="control-label" style="float: left"> Services</label>
    <br />
    <div >

        <div id="cmsWebForm_drp_service">
        </div>
    </div>
    <br />
    <div id="divJs">
    <div id="cmsWebForm_javaScript_container">
        <label class="control-label"> Java Script</label>
    <div id="cmsWebForm_javaScript" name="cmsWebForm_javaScript" style="height: 300px">

    </div>
    </div>
    </div>
    <br />
    <div id="divCss">
<div id="cmsWebForm_style_container">
        <label class="control-label">Style</label>
    <div id="cmsWebForm_style" name="cmsWebForm_style" style="height: 300px">

    </div>
</div> 
</div>
      <br/>
      
        <label class="control-label">Active</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="cmsWebForm_Status" name="cmsWebForm_Status" type="checkbox" />
            <label for="cmsWebForm_Status" class="label-default as-label">  </label>
          </div>
     </div>
              <br/>
      
        <label class="control-label">Check In</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCheckIn" name="chkCheckIn" type="checkbox" />
            <label for="chkCheckIn" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
                <label class="control-label">Publish</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="cmsWebForm_Publish" name="cmsWebForm_Publish" type="checkbox" />
            <label for="cmsWebForm_Publish" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
              <br/>
      
        <label class="control-label">  Check Out</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="cmsWebForm_EditeMode" name="cmsWebForm_EditeMode" type="checkbox" />
            <label for="cmsWebForm_EditeMode" class="label-default as-label">  </label>
          </div>
     </div>
          <br />
        
            <label class="control-label">  Last Modifi User</label>
        <div class="container">
               <div id="divLastModifiUser" style="float: right;">
           
            
          </div>
     </div>
        <br />
        
                   <label class="control-label">  Last Modifi Local DateTime</label>
        <div class="container">
               <div id="divLastModifiLocalDataTime" style="float: right;">
           
            
          </div>
     </div>
        <br />
            <div class="form-group">
        <label for="txtComment" class="control-label" >ChangSet Comment</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtComment" id="txtComment"  >
        </div>

    </div>
    <br />
        <div class="text-center">
            <input id="cmsWebForm_save" type="button" class="btn btn-default" data-localize="save" />
            <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>
      <div class="text-center hide" style="position:fixed;bottom:0;width:100%;z-index:1060;background-color: white;" id="sourceEditorToolbar">
                           <label class="control-label" style="float: left;margin-top: 10px;">Active Editor :  </label>
        <span id="lblSourceEditor" class="control-label" style="float: left;margin-top: 10px;"> Content </span>
            <input id="cmsWebForm_html_changeMode" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+G" type="button" class="btn btn-default" value=" Resize" />

         </div> 
<div id="editorToolbar" class="text-center hide" style="position:fixed;bottom:0;width:100%;z-index:1060;background-color: white;">
         <input id="btnPrev" type="button" class="btn btn-default" value=" < "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="   Previous Positon In Editor"/>
            
            <input id="btnEditorResize" type="button"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+L" class="btn btn-default" value=" Resize" />
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value=" Find And Replace " />
             <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="Comment/UnComment" />
              <input id="btnRecovery" type="button" class="btn btn-default" value="Recover Last Edition" />
               <input id="btnSourceControl" type="button" class="btn btn-default" value="Source Control" />
               <input id="btnNext" type="button" class="btn btn-default" value=" > "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Next Position In Editor"/>
     <label class="control-label" style="float: left;;margin-top: 10px;">Active Editor : </label>
        <span id="lblEditor" class="control-label" style="float: left;margin-top: 10px;"> </span>
</div>
    <!-- Modal -->
  
         <div id="cmsWebForm_find">
           
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title"> Find And Replace</h4>
            
            </div>

          <form role="form" >
        <div class="form-group">
            <label for="cmsWebForm_txtFind" class="control-label">Search</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="cmsWebForm_txtFind" placeholder="Text For Search">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="cmsWebForm_txtReplace" class="control-label">Replace</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="cmsWebForm_txtReplace" required class="form-control" name="cmsWebForm_txtReplace" placeholder="Text to Replace">
                </div>
         
        </div>
 
    </form>
    <div>
         <span id="cmsWebForm_findNext" class="btn btn-primary">Next</span>
  <span id="cmsWebForm_findPrev" class="btn btn-primary">Previouse</span>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Whole Word">
            <input id="cmsWebForm_findWhole" name="cmsWebForm_findWhole" type="checkbox" />
            <label for="cmsWebForm_findWhole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Case">
            <input id="cmsWebForm_findCase" name="cmsWebForm_findCase" type="checkbox" />
            <label for="cmsWebForm_findCase" class="label-default as-label">  </label>
          </div>
          </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="cmsWebForm_findExp" name="cmsWebForm_findExp" type="checkbox" />
            <label for="cmsWebForm_findExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Selection">
            <input id="cmsWebForm_findSelect" name="cmsWebForm_findSelect" type="checkbox" />
            <label for="cmsWebForm_findSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div>
                <span id="btnReplace" class="btn btn-primary">Replace</span>
  <span id="btnReplaceAll" class="btn btn-primary">Replace All</span>
       </div>
       <p></p>
    </div>

 
  <div id="cmsWebForm_restorEditor">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">Recover Editor</h4>
            </div>
        
    <div class="modal-body">
          <span id="cmsWebForm_cancelRestor" class="btn btn-primary">Cancel</span>
         <span id="cmsWebForm_restorPerviousEditors" class="btn btn-primary">Recover</span>

        
    </div>
       
 </div>
  ', N'''asModal'',''asDropdown'',''asValidate'',''asEditor'',''asCodeEditor'',''asWindow''', N'cms_link_getByLanguage:"/odata/cms/Links?$filter=Language%20eq%20''@lang''&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf",cms_webPage_save:"/cms/webpage/save",cms_webPage_get:"/cms/WebPage/Get/@url/@typeId",cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",security_Role_getAllByOtherLanguage:"/odata/security/LocalRoles?$filter=(Language%20eq%20''@lang'')&$expand=Role&$select=Role%2FId%2CRole%2FParentId%2CRole%2FName%2CRole%2FOrder%2CRole%2FIsLeaf%2CName",cms_webPage_delete:"/cms/webpage/delete",cms_webPage_getWebPageChanges:"/cms/WebPage/GetWebPageChanges/@orderBy/@skip/@take/@comment/@user/@fromDateTime/@toDateTime/@webPageGuid/@type",cms_webPage_getWebPageChange:"/cms/WebPage/GetWebPageChange/@changeId/@webPageGuid",cms_webPage_getWebPageResourcesChange:"/cms/WebPage/GetWebPageResourcesChange/@changeId/@webPageGuid"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1395/05/31 09:15:08', N'1396/12/07 22:05:19', N'1396/12/07 22:05:19', CAST(N'2016-08-21T16:45:08.527' AS DateTime), CAST(N'2018-02-26T18:35:19.780' AS DateTime), CAST(N'2018-02-26T18:35:19.780' AS DateTime), 1, N'', N'test:''test'',loadScriptAndStyle:{urls:[{url:''asGetDependentModules.js?minversion='' + Math.floor((1 + Math.random()) * 0x10000)}]}', N'04b1951d1d2e475fa657a1f3e6691bf7', 68, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asEditor.js?minversion=19"},{"url":"asCodeEditor.js?minversion=7"},{"url":"asWindow.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (14, N'Khodkar FrameWork', N'/en/admin/cms/framework/defaults', NULL, N'', 0, 0, N'<!DOCTYPE html>
<html lang="en">

<head>


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    @asMetaTags
<link rel="shortcut icon" href="/Content/images/main/favicon.ico"/>
    <title>@asTitle</title>

   @asStyleRefrencesStart@asCore.css@asStyleRefrencesEnd@
 @asStyle
 
</head>

<body class="@asPageId">
  @asTemplate

       <script src="@asScriptsPath@modernizr.js"></script>  
        <script src="@asScriptsPath@jquery.js"></script>  
    <script src="@asScriptsPath@jquery.signalR.js"></script>  
     @asJavaScriptRefrencesStart@en,libs.js,asCore.js@asJavaScriptRefrencesEnd@
     

 

    @asJavaScript
    
         <script src="/signalr/hubs"></script>
</body>
</html>', N'''''', N'frameWorkServices_reload:"/Defaults/Reload/@url",frameWorkServices_changeTemplate:"/Defaults/ChangeTemplate/@url",frameWorkServices_isAuthenticated:"/Defaults/IsAuthenticated",frameWorkServices_logOff:"/Defaults/LogOff",frameWorkServices_getWebPage:"/Defaults/GetWebPage/@url/@isModal",frameWorkServices_login:"/Token"', 0, 0, 0, 14, 0, 0, 0, N'en', 1, 1, 0, 6, 5, 5, N'1395/06/06 01:41:31', N'1396/12/07 22:11:07', N'1396/12/07 22:11:07', CAST(N'2016-08-27T09:11:31.790' AS DateTime), CAST(N'2018-02-26T18:41:07.493' AS DateTime), CAST(N'2018-02-26T18:41:07.493' AS DateTime), 1, N'', N'', N'bc73f6add7b9418d89758dab68550884', 34, N'[]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (15, N'Home', N'/en/home', NULL, N'', 0, 0, N'<p>Home</p>', N'''asFlexSelect''', N'', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 7, 5, 5, N'1395/06/07 01:43:44', N'1396/11/16 15:02:34', N'1396/11/16 15:02:34', CAST(N'2016-08-28T09:13:44.700' AS DateTime), CAST(N'2018-02-05T11:32:34.237' AS DateTime), CAST(N'2018-02-05T11:32:34.237' AS DateTime), 1, N'', N'', N'e804254c1264448092f5f5b1cd272ae4', 20, N'[]', 0, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (16, N'Login', N'/en/login', NULL, N'', 0, 0, N'<form id="login_user">
<div class="form-group">
    
    
           <label for="login_username" class="control-label">  User Name</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" class="form-control as-validate-valid" name="login_username" id="login_username" placeholder=" UserName" aria-required="true" aria-invalid="false">
                </div>
</div>
<div class="form-group">
    
                <label for="login_password" class="control-label"> Password</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password" required="" class="form-control as-validate-valid" id="login_password" name="login_password" placeholder="Password " aria-required="true" aria-invalid="false">
                </div>
    
</div>
<span id="login_login" class="btn btn-primary">Login</span> <br />
<div id="login_debugContainer" style="direction: rtl; display: none;"><br /> <label class="control-label" style="position: absolute; left: 10px;">Debug Mode</label>
<div class="as-material-switch">
<div style="position: absolute; right: 10px;"><input id="login_debug" name="login_debug" type="checkbox" /> <label class="label-default as-label" for="login_debug"> </label></div>
</div>
</div>
</form>', N'''asValidate''', N'', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 6, 5, 5, N'1395/06/14 12:26:17', N'1396/11/19 16:16:56', N'1396/11/19 16:16:56', CAST(N'2016-09-03T19:56:17.330' AS DateTime), CAST(N'2018-02-08T12:46:56.640' AS DateTime), CAST(N'2018-02-08T12:46:56.640' AS DateTime), 1, N'', N'', N'55c6d80fc41f46debe942fadf98be42c', 14, N'[{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (17, N'Alternative Template', N'/en/admin/cms/templates/defaultsreserve', NULL, N'/en/admin/cms/pageManagerReserve', 14, 0, N' <div class="as-wrapper">
        <!-- Header -->
        <div id="header">
 <div class="col-lg-4 col-md-7 col-sm-7 col-xs-12">
    
           <div style="float:left"><img class="img-responsive" style="margin-top:15px;" src="/content/images/main/dotnetexpert-en.png" /></div>
       <div style="float:left;margin-top:15px" id="defaultTemplate_drp_languge"></div>
     
 </div>


<div class="col-lg-1  hidden-md hidden-sm hidden-xs"></div>
<div class="col-lg-1 hidden-md hidden-sm hidden-xs"></div>
<div class="col-lg-1 hidden-md  hidden-sm hidden-xs"></div>
<div class="col-lg-1 hidden-md hidden-sm hidden-xs"></div>
<div class="col-lg-1  hidden-md hidden-sm hidden-xs"></div>
<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
    <div id="defaultTemplate_drp_menu" class="as-move-by-fixed-nav" style="position:fixed;top:86px;right:6%;z-index:1049">
<div style="width:15px;height:15px"></div>
                    </div>
</div>
<div class="col-lg-2 col-md-4 col-sm-4 hidden-xs">
         <div class="top-link-box">
                <ul class=" menu-inline">
                        <li class=""><a class="top-link-last" href="/en" data-as-url="cms-pagemanager">Home</a></li>
                        <li id="defaultTemplate_login_link" class=""><a id="lnkLogin" class="top-link-divider" href="/login" data-as-modal="defaultTemplate_login" data-as-url="login">Login</a></li>
                    </ul>
           </div>
    </div>
        </div>
        <!-- Menu -->
        <div id="defaultTemplate_menu" class="as-nav">
  
            <header id="defaultTemplate_mega_menu"  class="navbar navbar-inverse top-menu" role="banner">
               

                <!--<nav class="collapse navbar-collapse pull-right" role="navigation" id="bs-navbar-collapse">-->
                <!--</nav>-->
                <!--<span style="position: absolute;left: 2px;top: 8px;">-->
                <!--</span>-->
                <!--<div class="search">

                        <input type="text" class="form-control input-sm" maxlength="64" placeholder="        جستجو" />
                        <button class="search-btn btn btn-primary btn-sm"><i class="glyphicon glyphicon-search"></i></button>


                    </div>-->

            </header>
        </div>
        <!-- Place Holder -->
        <div id="placeHolder">
            @asPlaceHolder
        </div>

    </div>

    <!-- Footer -->
    <div class="as-footer footer">
        <div class="container">
            <div class="row" style="background: #222;">
                <!--<div class="col-lg-2">
                    <h3>
                    <p style="direction: rtl">
                        ما را در شبکه های اجتماعی دنبال کنید
                    </p>
                    <div>
                        <img src="../../Source/img/icons/facebook.png" width="32" alt="Facebook">
                        <img src="../../Source/img/icons/twitter.png" width="32" alt="Twitter">
                        <img src="../../Source/img/icons/linkedin.png" width="32" alt="LinkedIn">
                        <img src="../../Source/img/icons/rss.png" width="32" alt="RSS Feed">
                    </div>
                </div>-->

                <div class="col-lg-3">
                    <h3 style="text-align: center">Quick Access</h3>
                    <p style="direction: rtl" class="quickAccess">
                        <a href="#">test</a>
                        <br />
                        <a href="#">test1</a>
                        <br />
                        <a href="#">test3</a>
                        <br />
                        <a href="#">test4</a>
                    </p>
                </div>

                <div class="col-lg-3">
                    <h3 style="text-align: center">Links</h3>
                    <p style="direction: rtl" class="quickAccess">
                        <a href="http://www.khodkarsystem.com">Khodkar System</a>
                        <br />
                        <a href="http://www.khodsaz.ir">khodsaz</a>
          
                    </p>
                </div>

                <div class="col-lg-2">
                    <h3 style="text-align: center">اسکن کنید</h3>
                    <p class="contact-us-details text-center">
                      <img style="width: 128px; margin-top:5px" title="thei qr code" src="/Content/images/qrcode.png" alt="dotnetexpert.ir qr code">
                    </p>
                </div>

                <div class="col-lg-4" style="background: transparent url(/Content/images/world-map.jpg) no-repeat scroll center bottom; min-height: 211px;">
                    <h3 style="text-align: center">Khodkar System</h3>
                    <p style="direction: rtl" class="quickAccess">
                        <span class="glyphicon glyphicon-map-marker">
                               <label style="direction:ltr;font-family: tahoma;">
                         Theran
                          </label>
                        </span>

                        <br /><br />
                        <span class="glyphicon glyphicon-earphone">
                           <label style="direction:ltr;font-family: tahoma;">
                                 +98 21 66089834
                            </label>
                        </span>
                        <br /><br />
                        <span class="glyphicon glyphicon-envelope">

                            <a href="mailto:Contact@thei.ir">
                                <label>
                                    Contact[at]Dotnetexpert.ir
                                </label>
                            </a>
                        </span>
                    </p>
                </div>
            </div>

            <div class="row" style="background: #222;">

                <div class="col-lg-12">
                    <div class="footer-copyright">
                         Copyright © 2018
                    </div>
                    <div>
                        <!--<br />-->
                    </div>
                    <div class="footer-powerdby">
                       KhodSaz Writed By Khodkar!
                    </div>
                    <div>
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </div>
 
    
', N'''asModal'',''asOffCanvas'',''asPopovers'',''asDropdown'',''asMegaMenu'',''asFixedNav'',''asFlexSelect''', N'cms_languageAndCulture_public_getAll:"/cms/languageAndCulture/public/getAll",cms_link_public_getAll:"/odata/public/cms/LinksPublic?$filter=((TypeId%20eq%201d)%20or%20(TypeId%20eq%202d))%20and%20(Language%20eq%20''@lang'')%20and%20(IsMobile%20eq%20@isMobile)&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf",cms_link_userAccess:"/odata/cms/EntityGroups?$filter=((EntityTypeId%20eq%20101d)%20and%20(GroupId%20eq%2071d))%20and%20(Link%2FLanguage%20eq%20''@lang'')%20and%20(Link%2FIsMobile%20eq%20@isMobile)&$expand=Link&$select=Link%2FId%2CLink%2FParentId%2CLink%2FText%2CLink%2FHtml%2CLink%2FUrl%2CLink%2FOrder%2CLink%2FIsLeaf",cms_link_userMenus:"/odata/cms/Links?$filter=(TypeId%20eq%201d)%20and%20(Language%20eq%20''@lang'')%20and%20(IsMobile%20eq%20@isMobile)&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf"', 0, 0, 0, 15, 0, 0, 0, N'en', 1, 1, 0, 6, 5, 5, N'1395/06/27 05:36:41', N'1396/12/07 22:13:01', N'1396/12/07 22:13:01', CAST(N'2016-09-17T13:06:41.470' AS DateTime), CAST(N'2018-02-26T18:43:01.457' AS DateTime), CAST(N'2018-02-26T18:43:01.457' AS DateTime), 1, N'/en/admin/cms/framework/defaults', N'loadScriptAndStyle:{urls:[{url:$.asGetStylePath() +''offCanvas/foonav.light.css''}]}', N'a01f4a7f29d846a4b186b24f10f73eaf', 34, N'[{"url":"asOffCanvas.css?minversion=25"},{"url":"asOffCanvas.js?minversion=25"},{"url":"asPopovers.js?minversion=4"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asMegaMenu.css?minversion=10"},{"url":"asMegaMenu.js?minversion=10"},{"url":"asFixedNav.css?minversion=5"},{"url":"asFixedNav.js?minversion=5"},{"url":"asFlexSelect.css?minversion=41"},{"url":"asFlexSelect.js?minversion=41"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (18, N'مدیریت لینک ها', N'/fa/admin/cms/linkmanager', NULL, N'', 0, 0, N'<form id="frmLink" class="container-fluid">
                 <br />
                 
                  <div class="form-group">
            <label class="control-label">کشور</label>
         
             <div id="drpLanguge"></div>
         
        </div>
          <br>
    <label class="control-label" style="float: right">انتخاب لینک</label>
    <br />
    <div class="container">
        <div id="drpLink" style="float: left;">
        </div>
    </div>
                            <br/>
      
        <label class="control-label">جدید</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>
               <br />
               
    <label for="drpLinkType" class="control-label" style="float: right"> انتخاب نوع لینک</label>
    <br />
    <div class="container">
        <div id="drpLinkType" name="drpLinkType" style="float: left;">
        </div>
    </div>
                       <br />
             <label class="control-label">برگ هست ؟</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkIsLeaf" name="chkIsLeaf" type="checkbox" />
            <label for="chkIsLeaf" class="label-default as-label">  </label>
          </div>
     </div>
         <br />
                   <br />
             <label class="control-label">حالت موبایل</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkMobile" name="chkMobile" type="checkbox" />
            <label for="chkMobile" class="label-default as-label">  </label>
          </div>
     </div>
         <br />
                         <div class="form-group">
        <label for="txtName" class="control-label"> نام</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName"  placeholder="نام">
        </div>
    

    </div>



                           <br/>
                    <div class="form-group">
        <label for="txtIconPath" class="control-label"> آدرس آیکون</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtIconPath" id="txtIconPath" style="direction: ltr;"  placeholder="آدرس آیکون">
        </div>
    

    </div>
    <br />

                    <div class="form-group">
        <label for="txtHtml" class="control-label"> Html</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtHtml" id="txtHtml" style="direction: ltr;"  placeholder="Html">
        </div>
    

    </div>
    <br/>
  
    <br />
                    <div class="form-group">
        <label for="txtUrl" class="control-label"> آدرس</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtUrl" id="txtUrl" style="direction: ltr;"  placeholder="آدرس">
        </div>
    

    </div>
        <br />
                    <div class="form-group">
        <label for="txtAction" class="control-label"> عملیات</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtAction" id="txtAction" style="direction: ltr;"  placeholder="عملیات">
        </div>
    

    </div>
            <br />
                    <div class="form-group">
        <label for="txtCode" class="control-label"> کد اجرا</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtCode" id="txtCode" style="direction: ltr;"  placeholder="کد اجرا">
        </div>
    

    </div>
    <br/>
        <div class="form-group">
        <label for="txtOrder" class="control-label" >ترتیب</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtOrder" id="txtOrder"  placeholder="1">
        </div>

    </div>
    <br/>
    <div id="divRoles">
        <label for="drpViewRole" class="control-label" style="float: right">نقش مشاهده</label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />

    <label for="drpAccessRole" class="control-label" style="float: right">نقش اعطای دسترسی</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label" style="float: right">نقش ویرایش</label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>

    <br />

        <label class="control-label">فعال</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
     <br />
            <label class="control-label">نمایش در موتورهای جستجو</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkShowToSerachEngin" name="chkShowToSerachEngin" type="checkbox" />
            <label for="chkShowToSerachEngin" class="label-default as-label">  </label>
          </div>
     </div>
         <br />
        <div class="text-center">
            <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
              <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>
</form>', N'''asDropdown''', N'cms_link_getByLanguage:"/odata/cms/Links?$filter=Language%20eq%20''@lang''&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf",cms_link_save:"/cms/link/save",cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",cms_languageAndCulture_public_getAll:"/cms/languageAndCulture/public/getAll",security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",cms_link_get:"/odata/cms/Links?$filter=Id%20eq%20@idd&$select=Id%2CText%2CHtml%2CTypeId%2CIconPath%2CIsLeaf%2CUrl%2COrder%2CParentId%2CShowToSearchEngine%2CViewRoleId%2CModifyRoleId%2CAccessRoleId%2CAction%2CTransactionCode%2CIsMobile%2CRowVersion%2CStatus",cms_link_delete:"/cms/link/delete"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1395/08/18 07:53:38', N'1396/11/23 21:55:24', N'1396/11/23 21:55:24', CAST(N'2016-11-08T15:23:38.473' AS DateTime), CAST(N'2018-02-12T18:25:24.157' AS DateTime), CAST(N'2018-02-12T18:25:24.157' AS DateTime), 1, N'', N'', N'a8644a03d35946fda163156c5516fdc2', 107, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asFlexSelect.css?minversion=41"},{"url":"asFlexSelect.js?minversion=41"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (20, N'مدیریت صفحات', N'/fa/admin/cms/pagemanager', NULL, N'', 0, 0, N'<form id="cmsWebForm_webForm" role="form" class="container-fluid">
    <div class="form-group">
        <label for="cmsWebForm_Title" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="cmsWebForm_Title" id="cmsWebForm_Title" data-localize="title" placeholder="">
        </div>

    </div>
    <br />
    <label for="cmsWebForm_drp_menu" class="control-label" style="float: right">منو</label>

  <br />
    <div id="cmsWebForm_menu">
        <div class="container">

            <div id="cmsWebForm_drp_menu" name="cmsWebForm_drp_menu" style="float: left;">
            </div>
        </div>
        
            <br />
             <label class="control-label">حالت موبایل</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkMobile" name="chkMobile" type="checkbox" />
            <label for="chkMobile" class="label-default as-label">  </label>
          </div>
     </div>
    <br />
    <label for="cmsWebForm_drp_type" class="control-label" style="float: right">نوع صفحه</label>
    <br />
    <div class="container">

        <div id="cmsWebForm_drp_type" name="cmsWebForm_drp_type" style="float: left;">
        </div>
    </div>
    <br/>
       <div id="cmsWebFom_frameWork">
    <label for="cmsWebFom_rdrp_frameWork" class="control-label" style="float: right">چهارچوب</label>
        <br />
        <div class="container">

            <div id="cmsWebForm_drp_frameWork" name="cmsWebForm_drp_frameWork" style="float: left;">
            </div>
        </div>
   </div>
   <br/>
   <div id="cmsWebFom_template">
    <div class="form-group">
        <label for="cmsWebForm_TemplatePatternUrl" class="control-label">الگوی قالب</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-random"></i></span>
            <input type="text" class="form-control" name="cmsWebForm_TemplatePatternUrl" id="cmsWebForm_TemplatePatternUrl"  placeholder="/" style="direction:ltr">
        </div>
    </div>
   </div>
    </div>
    <br />
    <div id="divParams">
            <div class="form-group">
        <label for="cmsWebForm_params" class="control-label">پارامتر های صفحه</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <input type="text" class="form-control" name="cmsWebForm_params" id="cmsWebForm_params" style="direction: ltr;"  placeholder="پارامتر های صفحه">
        </div>

    </div>
 <br>
                        <div class="form-group">
        <label for="cmsWebForm_id" class="control-label">شناسه صفحه</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="cmsWebForm_id" id="cmsWebForm_id" style="direction: ltr;"  placeholder="شناسه صفحه">
        </div>
<br>
    </div>
    </div>

    <br>
                    <div class="form-group">
        <label for="cmsWebForm_version" class="control-label"> ورژن</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" readonly="true" class="form-control" name="cmsWebForm_version" id="cmsWebForm_version" style="direction: ltr;"  placeholder="شناسه صفحه">
        </div>
    

    </div>
    <br/>
   <div id="divRoles">
        <label for="cmsWebForm_drp_viewRole" class="control-label" style="float: right">نقش مشاهده</label>
    <br />
    <div class="container">

        <div id="cmsWebForm_drp_viewRole" name="cmsWebForm_drp_viewRole" style="float: left;">
        </div>
    </div>
    <br />
        <br />
    <label for="cmsWebForm_drp_modifyRole" class="control-label" style="float: right">نقش ویرایش</label>
    <br />
    <div class="container">

        <div id="cmsWebForm_drp_modifyRole" name="cmsWebForm_drp_modifyRole" style="float: left;">
        </div>
    </div>
    <br />
        <br />
    <label for="cmsWebForm_drp_accessRole" class="control-label" style="float: right">نقش اعطای دسترسی</label>
    <br />
    <div class="container">

        <div id="cmsWebForm_drp_accessRole" name="cmsWebForm_drp_accessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
      
         <label class="control-label">اجرای سریع از حافظه</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="cmsWebForm_Cache" name="cmsWebForm_Cache" type="checkbox" />
            <label for="cmsWebForm_Cache" class="label-default as-label">  </label>
          </div>
     </div>
  <br />
<fieldset id="cmsWebForm_SlidingExpirationTimeInMinutes_fieldset" disabled>
    <div class="form-group">
        <label for="cmsWebForm_SlidingExpirationTimeInMinutes" class="control-label" >زمان عدم دسترسی قبل ازحذف نسخه ذخیره شده در حافظه</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="cmsWebForm_SlidingExpirationTimeInMinutes" id="cmsWebForm_SlidingExpirationTimeInMinutes" value="180"  placeholder="180">
        </div>

    </div>
    </fieldset>

		 <br />
       
        
<div id="divMetaTag" class="form-group">
    <div class="web-order alert alert-warning" role="alert">
            افزودن یا تغییر متا تگ ها بدون تیک زدن حالت انتشار , ذخیره نخواهد شد.
            </div>
        <label for="txtMetaTag" class="control-label">متا تگ ها</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
           
            <textarea style="direction: ltr;" class="form-control" rows="5" id="txtMetaTag" name="txtMetaTag" placeholder='' <meta name="description" content="تست">''></textarea>
        </div>

    </div>

       <br />

 <div id="cmsWebForm_Html_container">
        <label class="control-label">محتوا</label>
    <div id="cmsWebForm_Html" style="height: 600px;"></div>
   
 </div> 
    <br />

<div id="divHtml">
              <div id="cmsWebForm_htmlSource_container">
                  <label class="control-label" for="cmsWebForm_HtmlSource">Html</label>
    <div id="cmsWebForm_htmlSource" name="cmsWebForm_htmlSource" style="height: 300px">

    </div>
        </div>
</div>
    <br />
    <label class="control-label" style="float: right">سرویس ها</label>
    <br />
    <div class="container">

        <div id="cmsWebForm_drp_service" style="float: left;">
        </div>
    </div>
    <br />
    <div id="divJs">
    <div id="cmsWebForm_javaScript_container">
        <label class="control-label">جاوا اسکریپت</label>
    <div id="cmsWebForm_javaScript" name="cmsWebForm_javaScript" style="height: 300px">

    </div>
    </div>
    </div>
    <br />
<div id="divCss">
    <div id="cmsWebForm_style_container">
        <label class="control-label">استایل</label>
    <div id="cmsWebForm_style" name="cmsWebForm_style" style="height: 300px">

    </div>
</div> 
</div>

      <br/>
      
        <label class="control-label">فعال</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="cmsWebForm_Status" name="cmsWebForm_Status" type="checkbox" />
            <label for="cmsWebForm_Status" class="label-default as-label">  </label>
          </div>
     </div>
                    <br />
                <label class="control-label">اعمال تغییرات بر روی فایل اصلی</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCheckIn" name="chkCheckIn" type="checkbox" />
            <label for="chkCheckIn" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
                <label class="control-label">انتشار</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="cmsWebForm_Publish" name="cmsWebForm_Publish" type="checkbox" />
            <label for="cmsWebForm_Publish" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
       
      
        <label class="control-label">در حال ویرایش</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="cmsWebForm_EditeMode" name="cmsWebForm_EditeMode" type="checkbox" />
            <label for="cmsWebForm_EditeMode" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
        
            <label class="control-label">آخرین تغییر دهنده</label>
        <div class="container">
               <div id="divLastModifiUser" style="float: left;">
           
            
          </div>
     </div>
        <br />
        
                   <label class="control-label">آخرین زمان تغییرات</label>
        <div class="container">
               <div id="divLastModifiLocalDataTime" style="float: left;">
           
            
          </div>
     </div>
        <br />
            <div class="form-group">
        <label for="txtComment" class="control-label" >توضیحات مرتبط با تغییرات این ورژن</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtComment" id="txtComment" >
        </div>

    </div>
     <br />
        <div class="text-center">
            <input id="cmsWebForm_save" type="button" class="btn btn-default" data-localize="save" />
            <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>
      <div class="text-center hide" style="position:fixed;bottom:0;width:100%;z-index:1060;background-color: white;" id="sourceEditorToolbar">
            <input id="cmsWebForm_html_changeMode" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+G" type="button" class="btn btn-default" value="تفییر ابعاد" />
                <label class="control-label" style="float: right;margin-top: 10px;">ویرایشگر فعال : </label>
        <span id="lblSourceEditor" class="control-label" style="float: right;margin-top: 10px;"> محتوا </span>
         </div> 
<div id="editorToolbar" class="text-center hide" style="position:fixed;bottom:0;width:100%;z-index:1060;background-color: white;">
         <label class="control-label" style="float: right;;margin-top: 10px;">ویرایشگر فعال : </label>
        <span id="lblEditor" class="control-label" style="float: right;margin-top: 10px;"> </span>
            <input id="btnNext" type="button" class="btn btn-default" value=" < "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان بعدی در ویرایشگر"/>
       
            <input id="btnEditorResize" type="button"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+L" class="btn btn-default" value="تفییر ابعاد" />
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value="پیدا و جایگزینی" />
             <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="Comment/UnComment" />
              <input id="btnRecovery" type="button" class="btn btn-default" value="بازیابی آخرین ویرایش" />
                <input id="btnSourceControl" type="button" class="btn btn-default" value="  سورس کنترل" />
                  <input id="btnPrev" type="button" class="btn btn-default" value=" > "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان قبلی در ویرایشگر"/>
</div>
    <!-- Modal -->
  
         <div id="cmsWebForm_find">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title">پیدا و جایگزین کردن</h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="cmsWebForm_txtFind" class="control-label">جستجو</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="cmsWebForm_txtFind" placeholder="متن مورد جستجو">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="cmsWebForm_txtReplace" class="control-label">جایگزین</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="cmsWebForm_txtReplace" required class="form-control" name="cmsWebForm_txtReplace" placeholder="متن جایگزین">
                </div>
         
        </div>
 
    </form>
    <div>
         <span id="cmsWebForm_findNext" class="btn btn-primary">بعدی</span>
  <span id="cmsWebForm_findPrev" class="btn btn-primary">قبلی</span>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="کل متن با هم">
            <input id="cmsWebForm_findWhole" name="cmsWebForm_findWhole" type="checkbox" />
            <label for="cmsWebForm_findWhole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="حساس به حروف کوچک و بزرگ">
            <input id="cmsWebForm_findCase" name="cmsWebForm_findCase" type="checkbox" />
            <label for="cmsWebForm_findCase" class="label-default as-label">  </label>
          </div>
           </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="cmsWebForm_findExp" name="cmsWebForm_findExp" type="checkbox" />
            <label for="cmsWebForm_findExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="انتخابی">
            <input id="cmsWebForm_findSelect" name="cmsWebForm_findSelect" type="checkbox" />
            <label for="cmsWebForm_findSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div>
                <span id="btnReplace" class="btn btn-primary">جایگزین</span>
  <span id="btnReplaceAll" class="btn btn-primary">جایگزین همه</span>
       </div>
       <p></p>
    </div>

 
  <div id="cmsWebForm_restorEditor">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">بازیابی ویرایشگرهای قبلی</h4>
            </div>
        
    <div class="modal-body">
         <span id="cmsWebForm_restorPerviousEditors" class="btn btn-primary">بازیابی</span>
  <span id="cmsWebForm_cancelRestor" class="btn btn-primary">انصراف</span>
        
    </div>
       
 </div>
  ', N'''asModal'',''asDropdown'',''asValidate'',''asEditor'',''asCodeEditor'',''asWindow''', N'cms_link_getByLanguage:"/odata/cms/Links?$filter=Language%20eq%20''@lang''&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf",cms_webPage_save:"/cms/webpage/save",cms_webPage_get:"/cms/WebPage/Get/@url/@typeId",cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",cms_webPage_delete:"/cms/webpage/delete",cms_webPage_getWebPageChanges:"/cms/WebPage/GetWebPageChanges/@orderBy/@skip/@take/@comment/@user/@fromDateTime/@toDateTime/@webPageGuid/@type",cms_webPage_getWebPageChange:"/cms/WebPage/GetWebPageChange/@changeId/@webPageGuid",cms_webPage_getWebPageResourcesChange:"/cms/WebPage/GetWebPageResourcesChange/@changeId/@webPageGuid"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1395/05/23 02:50:44', N'1396/11/10 12:58:50', N'1396/11/10 12:58:50', CAST(N'2016-08-13T10:20:44.673' AS DateTime), CAST(N'2018-01-30T09:28:50.790' AS DateTime), CAST(N'2018-01-30T09:28:50.790' AS DateTime), 1, N'', N'test:''test'',loadScriptAndStyle:{urls:[{url:''asGetDependentModules.js?minversion='' + Math.floor((1 + Math.random()) * 0x10000)}]}', N'7dd9ce0eaf5f48fd8071fa19dcdab880', 182, N'[{"url":"asDropdown.js"},{"url":"asDropdown.css"},{"url":"asValidate.js"},{"url":"asValidate.css"},{"url":"asEditor.js"},{"url":"asCodeEditor.js"},{"url":"asWindow.js"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (21, N'صفحه تستی', N'/fa/admin/develop/test/testpage', NULL, N'', 0, 0, N'<div id="testService"></div>
 <div id="drp_service" style="float: left;"></div>
<div id="developTestPagePartial1">hcfgghcgcvgcv</div>

     <br/>
     <div id="cmsWebForm_drp_service2" style="float: left;"></div>
          <div>6546545641</div>
         <br/>
              <img data-srcset-base="/content/images/" data-srcset-ext="/image.png" data-srcset="hdpi 2000w, mdpi 1000w, ldpi 300w, ldpi" style="width:100px;heigt:100px;" >
              
              <div id="cmsWebForm_Html">sdfcdsfcd</div>', N'''asDropdown'',''asEditor'',''asOdataQueryBuilder''', N'', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1395/08/27 06:24:39', N'1396/11/10 13:01:54', N'1396/11/10 13:01:54', CAST(N'2016-11-17T13:54:39.280' AS DateTime), CAST(N'2018-01-30T09:31:54.197' AS DateTime), CAST(N'2018-01-30T09:31:54.197' AS DateTime), 1, N'', N'', N'a5dc28d9b1604344ae863d23b388adb3', 25, N'[{"url":"asDropdown.js"},{"url":"asDropdown.css"},{"url":"asEditor.js"},{"url":"asOdataQueryBuilder.js"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (22, N'Test Page', N'/en/admin/develop/test/testpage', NULL, N'', NULL, 0, N'<div id="testService"></div>
 <div id="drp_service" style="float: left;"></div>
<div id="developTestPagePartial1">hcfgghcgcvgcv</div>

     <br/>
     <div id="cmsWebForm_drp_service2" style="float: left;"></div>
          <div>6546545641</div>
         <br/>
              <img data-srcset-base="/content/images/" data-srcset-ext="/image.png" data-srcset="hdpi 2000w, mdpi 1000w, ldpi 300w, ldpi" style="width:100px;heigt:100px;" >
              
              <div id="cmsWebForm_Html">sdfcdsfcd</div>', NULL, N'', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1395/12/21 10:29:25', N'1396/11/24 13:59:57', N'1396/11/24 13:59:57', CAST(N'2017-03-11T17:59:25.323' AS DateTime), CAST(N'2018-02-13T10:29:57.310' AS DateTime), CAST(N'2018-02-13T10:29:57.310' AS DateTime), 1, N'', N'', N'f8732d663c3d4cdf863af491153d6813', 10, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asEditor.js?minversion=19"},{"url":"asOdataQueryBuilder.js"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (23, N'صفحه تستی', N'/fa/mobile/admin/develop/test/testpage', NULL, N'', NULL, 0, N'محتوای موبایل', NULL, N'', 0, 0, 1, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/01/03 03:28:24', N'1396/11/10 13:02:07', N'1396/11/10 13:02:07', CAST(N'2017-03-23T10:58:24.267' AS DateTime), CAST(N'2018-01-30T09:32:07.877' AS DateTime), CAST(N'2018-01-30T09:32:07.877' AS DateTime), 1, N'', N'', N'f7bd621af2e04466846abea1e355c16f', 7, N'[]', 0, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (25, N'مدیریت سرویس ها', N'/fa/admin/develop/servicemanagment', NULL, N'', NULL, 0, N'<form id="frmQuery" role="form" class="container-fluid">
        <br />
    <label class="control-label" style="float: right">انتخاب سرویس</label>
    <br />
    <div class="container">
          <input id="btnTranslator" type="button" style="float: left;margin-top: 6px;" class="btn btn-default disabled" disabled="disabled" value="ترجمه" />
        <div id="drpService" style="float: left;">
        </div>
    </div>
                           <br/>
      
        <label class="control-label">جدید</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>
                  <br/>
      
        <label class="control-label">سرویس هست ؟</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkService" name="chkService" type="checkbox" />
            <label for="chkService" class="label-default as-label">  </label>
          </div>
     </div>

      <br />
    <div class="form-group">
        <label for="txtName" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName" data-localize="title" placeholder="">
        </div>

    </div>
    
     <br>
                        <div class="form-group">
        <label for="txtServiceId" class="control-label"> شناسه سرویس</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtServiceId" id="txtServiceId" style="direction: ltr;"  placeholder=" شناسه سرویس">
        </div>
    </div>
         <br />
    <div class="form-group">
        <label for="txtCode" class="control-label">کد</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtCode" id="txtCode"  style="direction: ltr;"  placeholder="کد">
        </div>

    </div>
          <br />
    <div class="form-group">
        <label for="txtUrl" class="control-label">آدرس</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtUrl" id="txtUrl"  style="direction: ltr;"  placeholder="آدرس">
        </div>

    </div>

    <br />
        <div class="form-group">
        <label for="txtCompiledUrl" class="control-label">آدرس کامپایل شده</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtCompiledUrl" id="txtCompiledUrl"  style="direction: ltr;"  placeholder="آدرس کامپایل شده">
        </div>

    </div>

    <br />
   
            <div class="form-group">
        <label for="txtDescription" class="control-label">شرح</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>
 <br>
                        <div class="form-group">
        <label for="txtId" class="control-label">شناسه کد</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtId" id="txtId" style="direction: ltr;"  placeholder="شناسه کد">
        </div>
    </div>
   

    <br>
                    <div class="form-group">
        <label for="txtVersion" class="control-label"> ورژن</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" readonly="true" class="form-control" name="txtVersion" id="txtVersion" style="direction: ltr;"  placeholder="ورژن">
        </div>
    

    </div>
    <br/>
        <div class="form-group">
        <label for="txtOrder" class="control-label" >ترتیب</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtOrder" id="txtOrder"  placeholder="1">
        </div>

    </div>
    <br/>
    
       
      
  <div id="divCache">
             <label class="control-label">اجرای سریع از حافظه</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCache" name="chkCache" type="checkbox" />
            <label for="chkCache" class="label-default as-label">  </label>
          </div>
     </div>
  <br />
<fieldset id="divSlidingExpirationTimeInMinutes" disabled>
    <div class="form-group">
        <label for="txtSlidingExpirationTimeInMinutes" class="control-label" >زمان عدم دسترسی قبل ازحذف نسخه ذخیره شده در حافظه</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtSlidingExpirationTimeInMinutes" id="txtSlidingExpirationTimeInMinutes"   placeholder="0">
        </div>

    </div>
    </fieldset>
        <br />
  </div>
   <div id="divRoles">
        <label for="drpViewRole" class="control-label" style="float: right">نقش مشاهده</label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />

    <label for="drpAccessRole" class="control-label" style="float: right">نقش اعطای دسترسی</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label" style="float: right">نقش ویرایش</label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>

    <br />
           <br />
    <label for="drpContexts" class="control-label" style="float: right"> Odata Contexts MetaData</label>
    <br />
    <div class="container">

        <div id="drpContexts" name="drpContexts" style="float: left;">
        </div>
    </div>
        <br />
        <div class="text-center">
            <input id="btnGetMetaData" type="button" class="btn btn-default" value="دریافت متا دیتا" />
        </div>
    <br />
<div id="divEditor">
        <div id="edrJavascript_container">
        <label class="control-label">جاوا اسکریپت</label>
    <div id="edrJavascript" name="edrJavascript" style="height: 300px">

    </div>
    </div>
</div>
        
        
                            <br />
                <label class="control-label">اعمال تغییرات بر روی فایل اصلی</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCheckIn" name="chkCheckIn" type="checkbox" />
            <label for="chkCheckIn" class="label-default as-label">  </label>
          </div>
     </div>
               <br />
            <div class="form-group">
        <label for="txtComment" class="control-label" >توضیحات مرتبط با تغییرات این ورژن</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtComment" id="txtComment" >
        </div>

    </div>
     <br />
      
 <div id="divIsLogOnService">
            <label class="control-label">  ثبت وقایع سرویس</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkIsLogOnService" name="chkIsLogOnService" type="checkbox" />
            <label for="chkIsLogOnService" class="label-default as-label">  </label>
          </div>
     </div>

              <br/>
 </div>
      
        <label class="control-label">در حال ویرایش</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkEditeMode" name="chkEditeMode" type="checkbox" />
            <label for="chkEditeMode" class="label-default as-label">  </label>
          </div>
     </div>
           <br/>
      
        <label class="control-label">فعال</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
              <br />
        
            <label class="control-label">آخرین تغییر دهنده</label>
        <div class="container">
               <div id="divLastModifiUser" style="float: left;">
           
            
          </div>
     </div>
        <br />
        
                   <label class="control-label">آخرین زمان تغییرات</label>
        <div class="container">
               <div id="divLastModifiLocalDataTime" style="float: left;">
           
            
          </div>
     </div>
        <br />
        <div class="text-center">
            <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
             <input id="btnCompile" type="button" class="btn btn-default" data-loading-text=" در حال اجرا ..."  value="کامپایل" />
             <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>
 <br>
   <div class="text-center" id="divResult">
       

   </div>
    

            <br>
<div id="editorToolbar" class="text-center" style="position:fixed;bottom:0;width:100%;z-index:1060;background-color: white;">
         <label class="control-label" style="float: right;;margin-top: 10px;">ویرایشگر فعال : </label>
        <span id="lblEditor" class="control-label" style="float: right;margin-top: 10px;"> </span>
    <input id="btnNext" type="button" class="btn btn-default" value=" < "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان بعدی در ویرایشگر"/>
            <input id="btnEditorResize" type="button"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+L" class="btn btn-default" value="تفییر ابعاد" />
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value="پیدا و جایگزینی" />
             <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="Comment/UnComment" />
              <input id="btnRecovery" type="button" class="btn btn-default" value="بازیابی آخرین ویرایش" />
               <input id="btnSourceControl" type="button" class="btn btn-default" value="  سورس کنترل" />
     <input id="btnPrev" type="button" class="btn btn-default" value=" > "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان قبلی در ویرایشگر"/>
</div>
    <!-- Modal -->
  
         <div id="divFind">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title">پیدا و جایگزین کردن</h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="txtFind" class="control-label">جستجو</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="txtFind" placeholder="متن مورد جستجو">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtReplace" class="control-label">جایگزین</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="txtReplace" required class="form-control" name="txtReplace" placeholder="متن جایگزین">
                </div>
         
        </div>
 
    </form>
    <div>
         <span id="btnFindNext" class="btn btn-primary">بعدی</span>
  <span id="btnFindPrev" class="btn btn-primary">قبلی</span>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="کل متن با هم">
            <input id="chkFindWhole" name="chkFindWhole" type="checkbox" />
            <label for="chkFindWhole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="حساس به حروف کوچک و بزرگ">
            <input id="chkFindCase" name="chkFindCase" type="checkbox" />
            <label for="chkFindCase" class="label-default as-label">  </label>
          </div>
           </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="chkFindExp" name="chkFindExp" type="checkbox" />
            <label for="chkFindExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="انتخابی">
            <input id="chkFindSelect" name="chkFindSelect" type="checkbox" />
            <label for="chkFindSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div>
                <span id="btnReplace" class="btn btn-primary">جایگزین</span>
  <span id="btnReplaceAll" class="btn btn-primary">جایگزین همه</span>
       </div>
       <p></p>
    </div>

 
  <div id="winRestorEditor">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">بازیابی ویرایشگرهای قبلی</h4>
            </div>
        
    <div class="modal-body">
         <span id="btnRestorPerviousEditors" class="btn btn-primary">بازیابی</span>
  <span id="btnCancelRestor" class="btn btn-primary">انصراف</span>
        
    </div>
       
 </div>

  ', NULL, N'cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",develop_service_get:"/develop/service/get/@id",develop_service_save:"/develop/service/save",security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",develop_service_delete:"/develop/service/delete",develop_service_getChanges:"/develop/service/GetChanges/@codeGuid/@orderBy/@skip/@take/@comment/@user/@fromDateTime/@toDateTime",develop_service_getChange:"/develop/service/GetChange/@changeId/@codeId"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/01/04 05:39:44', N'1396/11/10 13:02:22', N'1396/11/10 13:02:22', CAST(N'2017-03-24T13:09:44.823' AS DateTime), CAST(N'2018-01-30T09:32:22.210' AS DateTime), CAST(N'2018-01-30T09:32:22.210' AS DateTime), 1, N'', N'', N'6776956069d04dd6a28b44f7c1d0546c', 282, N'[{"url":"asBootGrid.css?minversion=13"},{"url":"asBootGrid.js?minversion=13"},{"url":"asDropdown.js"},{"url":"asDropdown.css"},{"url":"asValidate.js"},{"url":"asValidate.css"},{"url":"asCodeEditor.js"},{"url":"asWindow.js"},{"url":"asOdataQueryBuilder.js"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (27, N'مترجم اطلاعات', N'/fa/admin/cms/languageandculture-manager/data-translator', NULL, N'', NULL, 0, N'
    <div class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">ترجمه اطلاعات</h4>
</div>
<div class="modal-body">
    <form  id="frmTranslator" role="form" >
         
          
          
                  <div class="form-group">
            <label class="control-label">کشور</label>
         
             <div id="drpLanguge"></div>
         
        </div>
          <br>
           <div class="form-group">
            <label for="txtLang" class="control-label"> زبان</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-font"></i></span>
                    <input type="text" readonly="readonly" class="form-control" name="txtLang" id="txtLang" placeholder=" زبان">
                </div>
         
        </div>
 
    <br />
               <div class="form-group">
            <label for="txtCulture" class="control-label"> فرهنگ</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
                    <input type="text" readonly="readonly" class="form-control" name="txtCulture" id="txtCulture" placeholder=" فرهنگ">
                </div>
         
        </div>
 
    <br />
        <div class="form-group">
            <label for="txtName" class="control-label"> نام</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
                    <input type="text" class="form-control" name="txtName" id="txtName" placeholder=" نام">
                </div>
         
        </div>
 
    <br />
   
            <div class="form-group">
        <label for="txtDescription" class="control-label">شرح</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-comment"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>
     
     
                      <br />
    <div style="direction: ltr;">
          <br />
           <label class="control-label" style="position: absolute;right: 10px;">فعال</label>
        <div class="as-material-switch">
               <div style="float:left">
            <input id="chkStatusTrans" name="chkStatusTrans" type="checkbox" />
            <label for="chkStatusTrans" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
    </div>


    </form>
</div>
<div class="modal-footer">
    <div class="form-group pull-right">
        <div>
            <span id="btnTranslate" class="btn btn-primary">ترجمه</span>
            <span id="btnCancel" class="btn btn-primary">انصراف</span>
        </div>
  
    </div>
  
   
</div>
</div>

', NULL, N'cms_masterDataLocalKeyValue_get:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValueId%20eq%20@idd)%20and%20(Language%20eq%20''@lang'')&$select=Id%2CName%2CDescription%2CRowVersion%2CStatus",cms_masterDataLocalKeyValue_save:"/cms/masterdatalocalkeyvalue/save",cms_languageAndCulture_public_getAll:"/cms/languageAndCulture/public/getAll",cms_localFilePath_save:"/cms/localfilepath/Save",cms_localFilePath_get:"/odata/cms/LocalFilePaths?$filter=(FilePathId%20eq%20@idd)%20and%20(Language%20eq%20''@lang'')&$select=Id%2CName%2CDescription%2CRowVersion%2CStatus",cms_localFile_get:"/odata/cms/LocalFiles?$filter=(FileId%20eq%20@idd)%20and%20(Language%20eq%20''@lang'')&$select=Id%2CName%2CDescription%2CRowVersion%2CStatus",cms_localFile_save:"/cms/localfile/Save",security_LocalRole_save:"/security/localrole/save",security_LocalRole_get:"/odata/security/LocalRoles?$filter=(RoleId%20eq%20@idd)%20and%20(Language%20eq%20''@lang'')&$select=Id%2CName%2CDescription%2CRowVersion%2CStatus",security_LocalGroup_get:"/odata/security/LocalGroups?$filter=(GroupId%20eq%20@idd)%20and%20(Language%20eq%20''@lang'')&$select=Id%2CName%2CDescription%2CRowVersion%2CStatus",security_LocalGroup_save:"/security/localgroup/save"', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/01/17 04:09:18', N'1396/11/10 13:00:09', N'1396/11/10 13:00:09', CAST(N'2017-04-06T11:39:18.773' AS DateTime), CAST(N'2018-01-30T09:30:09.523' AS DateTime), CAST(N'2018-01-30T09:30:09.523' AS DateTime), 1, N'', N'', N'b5fc8fca45e348858444e9a8a9eda23b', 93, N'[{"url":"asFlexSelect.js?minversion=36"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (29, N'ایجاد و ویرایش زبان و فرهنگ', N'/fa/admin/cms/languageandculture-manager/editor', NULL, N'', NULL, 0, N'
<form id="frmLang" role="form" class="container-fluid">
        <br />
        <div class="row">
                <div class="form-group">
    
                
       
               <div class="col-lg-1">     <label class="control-label">زبان و فرهنگ</label></div>
       <div id="drpLanguge" class="col-lg-1"></div>
            
        </div>
        </div>
                  <br>
                          <label class="control-label">جدید</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>

    <br/>
                  <div class="row">
                 <div class="form-group">
          <div class="col-lg-1">    <label for="txtLang" class="control-label"> پرچم</label></div>
         
                <div class="col-lg-1" id="imgFlag">
                </div>
                   <input id="btnPathSelector" type="button" class="btn btn-default" value=" انتخاب تصویر " />
        </div>
         </div>
                  <br>
                 <div class="form-group">
            <label for="txtCountry" class="control-label"> کشور</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-font"></i></span>
                    <input type="text" class="form-control" name="txtCountry" id="txtCountry" placeholder=" کشور">
                </div>
         
        </div>
          <br>
                 <div class="form-group">
            <label for="txtLang" class="control-label"> زبان</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-font"></i></span>
                    <input type="text" class="form-control" name="txtLang" id="txtLang" placeholder=" زبان">
                </div>
         
        </div>
 
    <br />
               <div class="form-group">
            <label for="txtCulture" class="control-label"> فرهنگ</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
                    <input type="text" class="form-control" name="txtCulture" id="txtCulture" placeholder=" فرهنگ">
                </div>
         
        </div>
 
    <br />

       
      
         <label class="control-label">زبان پیش فرض</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkDefaultsLang" name="chkDefaultsLang" type="checkbox" />
            <label for="chkDefaultsLang" class="label-default as-label">  </label>
          </div>
     </div>
  <br />
         
      
         <label class="control-label">زبان راست به چپ</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkIsRightToLeft" name="chkIsRightToLeft" type="checkbox" />
            <label for="chkIsRightToLeft" class="label-default as-label">  </label>
          </div>
     </div>
  <br />

   <div id="divRoles">
        <label for="drpViewRole" class="control-label" style="float: right">نقش مشاهده</label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />

    <label for="drpAccessRole" class="control-label" style="float: right">نقش اعطای دسترسی</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label" style="float: right">نقش ویرایش</label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>

    <br />
    <div id="edrJavascript_container">
        <label class="control-label">ترجمه</label>
    <div id="edrJavascript" name="edrJavascript" style="height: 300px">

    </div>
    </div>


              <br/>
      
        <label class="control-label">فعال</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
                   <br/>
      
        <label class="control-label">انتشار</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkPublish" name="chkPublish" type="checkbox" />
            <label for="chkPublish" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
        <div class="text-center">
            <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
              <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>

<div id="editorToolbar" class="text-center" style="position:fixed;bottom:0;width:100%;z-index:1060;background-color: white;">
         <label class="control-label" style="float: right;;margin-top: 10px;">ویرایشگر فعال : </label>
        <span id="lblEditor" class="control-label" style="float: right;margin-top: 10px;"> </span>
   <input id="btnNext" type="button" class="btn btn-default" value=" < "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان بعدی در ویرایشگر"/>
            <input id="btnEditorResize" type="button"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+L" class="btn btn-default" value="تفییر ابعاد" />
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value="پیدا و جایگزینی" />
             <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="Comment/UnComment" />
              <input id="btnRecovery" type="button" class="btn btn-default" value="بازیابی آخرین ویرایش" />
      <input id="btnPrev" type="button" class="btn btn-default" value=" > "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان قبلی در ویرایشگر"/>
</div>


    <!-- Modal -->
   <div id="divFind">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title">پیدا و جایگزین کردن</h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="txtFind" class="control-label">جستجو</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="txtFind" placeholder="متن مورد جستجو">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtReplace" class="control-label">جایگزین</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="txtReplace" required class="form-control" name="txtReplace" placeholder="متن جایگزین">
                </div>
         
        </div>
 
    </form>
    <div>
         <span id="btnFindNext" class="btn btn-primary">بعدی</span>
  <span id="btnFindPrev" class="btn btn-primary">قبلی</span>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="کل متن با هم">
            <input id="chkFindHole" name="chkFindHole" type="checkbox" />
            <label for="chkFindHole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="حساس به حروف کوچک و بزرگ">
            <input id="chkFindCase" name="chkFindCase" type="checkbox" />
            <label for="chkFindCase" class="label-default as-label">  </label>
          </div>
          
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="chkFindExp" name="chkFindExp" type="checkbox" />
            <label for="chkFindExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="انتخابی">
            <input id="chkFindSelect" name="chkFindSelect" type="checkbox" />
            <label for="chkFindSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div>
                <span id="btnReplace" class="btn btn-primary">جایگزین</span>
  <span id="btnReplaceAll" class="btn btn-primary">جایگزین همه</span>
       </div>
       <p></p>
    </div>
 </div>
    <div style="display: none">
      
 
  <div id="winRestorEditor">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">بازیابی ویرایشگرهای قبلی</h4>
            </div>
        
    <div class="modal-body">
         <span id="btnRestorPerviousEditors" class="btn btn-primary">بازیابی</span>
  <span id="btnCancelRestor" class="btn btn-primary">انصراف</span>
        
    </div>
       
 </div>

    </div>
', NULL, N'cms_languageAndCulture_save:"/cms/languageAndCulture/save",cms_languageAndCulture_public_getAll:"/cms/languageAndCulture/public/getAll",security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",cms_languageAndCulture_byJsFile_get:"/cms/languageAndCulture/Get/@id",cms_languageAndCulture_delete:"/cms/languageAndCulture/delete"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/02/03 09:49:19', N'1396/11/22 14:19:42', N'1396/11/22 14:19:42', CAST(N'2017-04-23T05:19:19.887' AS DateTime), CAST(N'2018-02-11T10:49:42.383' AS DateTime), CAST(N'2018-02-11T10:49:42.383' AS DateTime), 1, N'', N'', N'a585e491465a4116a0a5fb506c729730', 151, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asCodeEditor.js?minversion=7"},{"url":"asFlexSelect.css?minversion=41"},{"url":"asFlexSelect.js?minversion=41"},{"url":"asWindow.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (30, N'انتخاب مسیر', N'/fa/admin/cms/file-and-path-manager/path-selector', NULL, N'', NULL, 0, N' <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title"> انتخاب مسیر</h4>
</div>
<div class="modal-body">
   <table id="grvPath" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
            
               <th data-header-align="right" data-align = "right" data-column-id="Id" data-identifier="true" data-type="numeric" class="col-lg-1">ردیف</th>
            
            
                   <th data-header-align="center" data-align = "center" data-column-id="Name" data-order="desc">عنوان</th>
                        <th data-header-align="center" data-align = "center" data-column-id="Description" >توضیحات</th>
                     <th data-header-align="center" data-align = "center" data-column-id="Url" data-formatter="Url" >تصویر</th>
                 
        </tr>
    </thead>
</table>
</div>
<div class="modal-footer">
    <div class="form-group pull-right">
        <div>
            <span id="btnSelect" class="btn btn-primary">انتخاب</span>
            <span id="btnCancel" class="btn btn-primary">انصراف</span>
        </div>
  
    </div>
  
   
</div>
</div>', NULL, N'cms_filePath_GetByDefaultsLanguagesAndTypeCodeByPaging:"/odata/cms/FilePaths?$filter=TypeCode%20eq%20@typeCoded&$orderby=@orderby&$skip=@skip&$top=@top&$select=Id%2CName%2CDescription%2CUrl%2CGuid&$inlinecount=allpages"', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/02/07 02:11:40', N'1396/11/22 14:02:58', N'1396/11/22 14:02:58', CAST(N'2017-04-27T09:41:40.760' AS DateTime), CAST(N'2018-02-11T10:32:58.160' AS DateTime), CAST(N'2018-02-11T10:32:58.160' AS DateTime), 1, N'', N'', N'64566d5e85394bb5840d0114aea2c96c', 18, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (31, N'انتخاب فایل', N'/fa/admin/fms/file-selector', NULL, N'', NULL, 0, N' <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">  انتخاب فایل</h4>
</div>
<div class="modal-body">
    <div class="col-lg-12">
       <div id="divPath" style="direction:ltr;height:8px;margin:5px"></div>
</div>
   <table id="grvFile" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
            
               <th data-header-align="right" data-align = "right" data-column-id="Id" data-identifier="true" data-type="numeric" class="col-lg-1">ردیف</th>
            
            
                   <th data-header-align="center" data-align = "right" data-column-id="Name" data-order="desc" data-formatter="Name">عنوان</th>
                        <th data-header-align="center" data-align = "center" data-column-id="Size" >حجم</th>
                     <th data-header-align="center" data-align = "center" data-column-id="ModifieLocalDateTime"  >تاریخ آخرین تغییرات</th>
     
        </tr>
    </thead>
</table>
</div>
<div class="modal-footer">
    <div class="form-group pull-right">
        <div>
            <span id="btnSelect" class="btn btn-primary">انتخاب</span>
            <span id="btnCancel" class="btn btn-primary">انصراف</span>
        </div>
  
    </div>
  
   
</div>
</div>', NULL, N'fms_GetFileAndFoldersOfPathByPaging:"/fms/GetByPagination/@path/@orderby/@skip/@take/@createThumbnail"', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/02/13 06:17:43', N'1396/11/10 12:56:50', N'1396/11/10 12:56:50', CAST(N'2017-05-03T13:47:43.760' AS DateTime), CAST(N'2018-01-30T09:26:50.977' AS DateTime), CAST(N'2018-01-30T09:26:50.977' AS DateTime), 1, N'', N'', N'77ba76f608ae4cc6ba3f90c2f9e55007', 83, N'[{"url":"asBootGrid.css?minversion=13"},{"url":"asBootGrid.js?minversion=13"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (32, N'مدیریت فایل ها و دایرکتوری ها', N'/fa/admin/fms/files-folders-manager', NULL, N'', NULL, 0, N'<div class="col-lg-12">
<div class="col-lg-6">
<div class="as-material-switch" style="margin-top: 10px;">
<div><label class="control-label"> ساخت تصویر بند انگشتی</label> <input id="chkTumbnail" name="chkTumbnail" type="checkbox" /> <label class="label-default as-label" for="chkTumbnail"> </label></div>
</div>
</div>
<div id="drpPath" style="float: left;">&nbsp;</div>
</div>
<div class="col-lg-12">  <div id="divPath" style="direction:ltr;height:8px;margin:5px"></div></div>
<p>&nbsp;</p>
<table id="grvFile" class="table table-condensed table-hover table-striped table-responsive">
<thead>
<tr>
<th class="col-lg-1" data-header-align="right" data-align="right" data-column-id="Id" data-identifier="true" data-type="numeric">ردیف</th>
<th data-header-align="center" data-align="right" data-column-id="Name" data-order="desc" data-formatter="Name">عنوان</th>
<th data-header-align="center" data-align="center" data-column-id="Size">حجم</th>
<th data-header-align="center" data-align="center" data-column-id="ModifieLocalDateTime">تاریخ آخرین تغییرات</th>
<th data-header-align="center" data-align="center" data-column-id="IsFolder" data-visible="false">IsFolder</th>
</tr>
</thead>
</table>
 <div class="text-center">
<div class="btn-group dropup"><button id="btnZip" class="btn btn-default dropdown-toggle" type="button" data-loading-text=" در حال اجرا ..." data-toggle="dropdown"> زیپ 
 <span class="caret"></span> </button>
<ul class="dropdown-menu" style="cursor: pointer;">
<li id="btnZipView"><a ></a>مشاهده</li>
<li id="btnZipAddOrUpdate"><a ></a>ایجاد و ویرایش</li>
<li id="btnUnZip"><a ></a>بازکردن</li>
</ul>
</div>
<input id="btnMove" class="btn btn-default" type="button" value="  انتقال  " data-loading-text=" در حال اجرا ..." />
<div class="btn-group dropup"><button id="btnCopyMain" class="btn btn-default dropdown-toggle" type="button" data-loading-text=" در حال اجرا ..." data-toggle="dropdown"> کپی
 <span class="caret"></span> </button>
<ul class="dropdown-menu" style="cursor: pointer;">
<li id="btnCopyByReplace"><a ></a>با جایگزینی</li>
<li id="btnCopy"><a ></a>بدون جایگزینی</li>
</ul>
</div>
<input id="btnRename" class="btn btn-default" type="button" value="  تغییر نام  " />
<input id="btnDell" class="btn btn-default" type="button" value="  حذف  " data-loading-text=" در حال اجرا ... " /> 
<input id="btnCreateDir" class="btn btn-default" type="button" value="  ساخت دایرکتوری  " />
<div class="btn-group dropup"><button id="btnFile" class="btn btn-default dropdown-toggle" type="button" data-loading-text=" در حال اجرا ..." data-toggle="dropdown"> فایل
 <span class="caret"></span> </button>
<ul class="dropdown-menu" style="cursor: pointer;">
<li id="btnUploadFromDisk"><a ></a> بارگذاری از دیسک</li>
<li id="btnUploadFromUrl"><a ></a> بارگذاری از آدرس</li>
<li id="btnAddOrUpdateFile"><a ></a> ایجاد و ویرایش</li>
</ul>
</div>
</div>
<div style="display: none;">
<div id="winZipViewer">&nbsp;</div>
<div id="winAction">
<div class="modal-header as-handle">&nbsp;</div>
<div class="modal-body"><form id="frmAction" class="container-fluid">
<div class="form-group"><label class="control-label" for="txtName"> نام</label>
<div class="input-group"><input id="txtName" class="form-control" name="txtName" type="text" /></div>
</div>
</form></div>
<div class="modal-footer">
<div class="form-group pull-right">
<div><span id="btnExecAction" class="btn btn-primary"> اجرا</span> <span id="btnCancelAction" class="btn btn-primary">انصراف</span></div>
</div>
</div>
</div>
<div id="winZipOption">
<div class="modal-header as-handle">
<h4 class="modal-title">تنظیمات زیپ</h4>
</div>
<div class="modal-body"><form id="frmZip" class="container-fluid">
<div class="zip"><label class="control-label">جدید</label>
<div class="as-material-switch">
<div style="float: left;"><input id="chkNew" name="chkNew" type="checkbox" /> <label class="label-default as-label" for="chkNew"> </label></div>
</div>
</div>
<br />
<div class="form-group"><label class="control-label" for="txtNameZip"> نام زیپ</label>
<div class="input-group"><input id="txtNameZip" class="form-control" style="direction: ltr;" name="txtNameZip" type="text" /> <span class="input-group-btn"> <button id="btnSelectZip" class="btn btn-default" type="button">...</button> </span></div>
</div>
<div id="divZipDir" class="form-group"><label id="lblNameZipDir" class="control-label" for="txtNameZipDir"> مسیر باز کردن زیپ</label>
<div class="input-group"><input id="txtNameZipDir" class="form-control" style="direction: ltr;" name="txtNameZipDir" type="text" /> <span class="input-group-btn"> <button id="btnSelectZipDir" class="btn btn-default" type="button">...</button> </span></div>
</div>

        <div class="form-group">
            <label for="txtPassword" class="control-label">   رمز عبور زیپ</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password" class="form-control" name="txtPassword" id="txtPassword" style="direction:ltr">
                </div>
         
        </div>
<div class="zip">
<div class="row">
        <label for="drpEncryption" class="control-label" style="float: right">  وضعیت کد گذاری </label>
    <br />

        <div id="drpEncryption" name="drpEncryption" style="float: left;">
    </div>
</div>
<br />



<div class="row">
        <label for="drpCompression" class="control-label" style="float: right">سطح فشرده سازی</label>
    <br />

        <div id="drpCompression" name="drpCompression" style="float: left;">
    </div>
</div>
<br />
</div>
<div class="unzip">
<div class="row">
        <label for="drpReplace" class="control-label" style="float: right">وضعیت جایگزینی</label>
    <br />

        <div id="drpReplace" name="drpReplace" style="float: left;">
    </div>
</div>
<br />
</div>
<div class="zip">
<div id="divReplace"><label class="control-label"> در صورت وجود جایگزین گردد</label>
<div class="as-material-switch">
<div style="float: left;"><input id="chkReplaceZip" name="chkReplaceZip" type="checkbox" /> <label class="label-default as-label" for="chkReplaceZip"> </label></div>
</div>
</div>
</div>
</form></div>
<div class="modal-footer">
<div class="form-group pull-right">
<div><span id="btnExecute" class="btn btn-primary">اجرا</span> <span id="btnCancelZip" class="btn btn-primary">انصراف</span></div>
</div>
</div>
</div>
</div>', NULL, N'cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",fms_GetFileAndFoldersOfPathByPaging:"/fms/GetByPagination/@path/@orderby/@skip/@take/@createThumbnail",fms_move:"/fms/move",fms_copy:"/fms/copy",fms_zip_extract:"/fms/unzip",fms_zip_addOrUpdate:"/fms/zip/add-update",fms_rename:"/fms/rename",fms_delete:"/fms/delete",fms_createDir:"/fms/createdir",fms_get:"/fms/Get/@path",fms_save:"/fms/save"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/02/14 03:25:42', N'1396/11/22 21:57:23', N'1396/11/22 21:57:23', CAST(N'2017-05-04T10:55:42.137' AS DateTime), CAST(N'2018-02-11T18:27:23.993' AS DateTime), CAST(N'2018-02-11T18:27:23.993' AS DateTime), 1, N'', N'', N'c49aa150d56a4a8d93f935feea0b3aa7', 337, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (33, N'انتخاب دایرکتوری', N'/fa/admin/fms/folder-selector', NULL, N'', NULL, 0, N' <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">   انتخاب دایرکتوری</h4>
</div>
<div class="modal-body">
    <div class="col-lg-12">
       <div id="divPath" style="direction:ltr;height:8px;margin:5px"></div>
</div>
   <table id="grvFolder" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
            
               <th data-header-align="right" data-align = "right" data-column-id="Id" data-identifier="true" data-type="numeric" class="col-lg-1">ردیف</th>
            
            
                   <th data-header-align="center" data-align = "right" data-column-id="Name" data-order="desc" data-formatter="Name">عنوان</th>
                     <th data-header-align="center" data-align = "center" data-column-id="ModifieLocalDateTime"  >تاریخ آخرین تغییرات</th>
     
        </tr>
    </thead>
</table>
</div>
<div class="modal-footer">
    <div class="form-group pull-right">
        <div>
            <span id="btnSelect" class="btn btn-primary">انتخاب</span>
            <span id="btnCancel" class="btn btn-primary">انصراف</span>
        </div>
  
    </div>
  
   
</div>
</div>', NULL, N'fms_GetFoldersOfPathByPaging:"/fms/GetFoldersByPagination/@path/@orderby/@skip/@take"', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/02/17 09:36:22', N'1396/11/10 12:57:18', N'1396/11/10 12:57:18', CAST(N'2017-05-07T05:06:22.257' AS DateTime), CAST(N'2018-01-30T09:27:18.350' AS DateTime), CAST(N'2018-01-30T09:27:18.350' AS DateTime), 1, N'', N'', N'8a04e7a21bb94a86ae8d927633da1053', 36, N'[{"url":"asBootGrid.css?minversion=13"},{"url":"asBootGrid.js?minversion=13"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (34, N'مشاهده محتویات زیپ', N'/fa/admin/fms/zip-view', NULL, N'', NULL, 0, N' <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title"> محتوای زیپ</h4>
</div>
<div class="modal-body">
   <table id="grvZip" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
            
               <th data-header-align="right" data-align = "right" data-column-id="Id" data-identifier="true" data-type="numeric" >ردیف</th>
            
            
                   <th data-header-align="center" data-align = "right" data-column-id="FileName" data-order="desc"  data-header-css-class="col-lg-6 col-md-6 col-sm-6">عنوان</th>
                        <!--<th data-header-align="center" data-align = "center" data-column-id="CompressionRatio" >درصد فشرده سازی</th>-->
                           <th data-header-align="center" data-align = "center" data-column-id="UncompressedSize" >  سایز بدون فشرده سازی </th>
                              <!--<th data-header-align="center" data-align = "center" data-column-id="CompressedSize" >سایز فشرده شده</th>-->
                              <th data-header-align="center" data-align = "center" data-column-id="UsesEncryption" data-formatter="UsesEncryption">رمز نگاری شده</th>
                     <!--<th data-header-align="center" data-align = "center" data-column-id="ModifieLocalDateTime"  >تاریخ آخرین تغییرات</th>-->
     
        </tr>
    </thead>
</table>
</div>
<div class="modal-footer">
  
   
</div>
</div>', NULL, N'fms_zip_openByPaging:"/fms/openzip/@zipFullName/@orderBy/@skip/@take"', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/02/23 02:37:21', N'1396/11/10 12:57:31', N'1396/11/10 12:57:31', CAST(N'2017-05-13T10:07:21.623' AS DateTime), CAST(N'2018-01-30T09:27:31.503' AS DateTime), CAST(N'2018-01-30T09:27:31.503' AS DateTime), 1, N'', N'', N'250c365e2cfb43df8211bba50fbe25d7', 24, N'[{"url":"asBootGrid.css?minversion=13"},{"url":"asBootGrid.js?minversion=13"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (38, N'مدیریت مسیرها', N'/fa/admin/cms/file-and-path-manager/paths', NULL, N'', NULL, 0, N' 
 
     
       <div class="col-lg-12" >
               <div class="col-lg-2" style="float: left;" >        <div id="drpPath" style="float: left;">
            
        </div></div>
                 <div class="col-lg-2" style="float: left;" id="divFileType">        <div id="drpFileType" style="float: left;">
            
        </div></div>
       </div>
        <br/>
     <table id="grvFile" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
            
               <th data-header-align="right" data-align = "right" data-column-id="Id" data-identifier="true" data-type="numeric" class="col-lg-1">ردیف</th>
            
        
                   <th data-header-align="center" data-align = "center" data-column-id="Name" data-order="desc">عنوان</th>
                   <th data-header-align="center" data-align = "center" data-column-id="Url">مسیر</th>
                     <th data-header-align="center" data-align = "center" data-column-id="Size"  >حجم</th>
                                             <th data-header-align="center" data-align = "center" data-column-id="Status" data-formatter="Status" data-css-class="" style="">وضعیت</th>
        </tr>
    </thead>
</table>
  
<div class="text-center">
     <input id="btnTranslator" type="button" class="btn btn-default" value="   ترجمه  " />
        <input id="btnEdit" type="button" class="btn btn-default"  value=" ویرایش " />
      
            <input id="btnNew" type="button" class="btn btn-default" value="   جدید  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text=" در حال اجرا ... "  value="  حذف  "  />
</div>
     <div style="display: none">
    
              <div id="winAddOrEdit">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">ایجاد و ویرایش </h4>
            </div>
        
    <div class="modal-body">
        <form id="frm" role="form" class="container-fluid">
        <div class="form-group">
        <label for="txtName" class="control-label" > نام </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName"  style="direction:ltr">
        </div>
    <br>

    </div>

        <div class="form-group">
        <label for="txtPath" class="control-label"> مسیر </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
            <input type="text" class="form-control" name="txtPath" id="txtPath" style="direction:ltr">
                <span class="input-group-btn">
                <button id="btnSelectFile" class="btn btn-default" type="button">...</button>
               </span>
        </div>
        </div>
    <br>
    
        <div id="divGuid" class="form-group">
        <label for="txtGuId" class="control-label"> شناسه </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tower"></i></span>
            <input type="text" class="form-control" name="txtGuId" id="txtGuId" style="direction:ltr">
        </div>
    <br>

    </div>
            <div class="form-group">
        <label for="txtDescription" class="control-label">شرح</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>

       <br />
       <div class="row">
            <label for="drpFileTypeAddUpdate" class="control-label" style="float: right"> نوع فایل</label>
    <br />

        <div id="drpFileTypeAddUpdate" name="drpFileTypeAddUpdate" style="float: left;">
        </div>
</div>
    <br />
   <div id="divRoles">
<div class="row">
            <label for="drpViewRole" class="control-label" style="float: right">نقش مشاهده</label>
    <br />

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
</div>
    <br />

<div class="row">
        <label for="drpAccessRole" class="control-label" style="float: right">نقش اعطای دسترسی</label>
    <br />
        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
</div>
      <br />    
  <div class="row">
                <label for="drpModifyRole" class="control-label" style="float: right">نقش ویرایش</label>
    <br />

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
  </div>
        
   </div>
       <br />
   <div>
               <label class="control-label">  فعال</label>
        <div class="as-material-switch">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
  </div>
    </form>
    </div>
    
    <div class="modal-footer">
    <div class="form-group pull-right">
        <div>
            <span id="btnExecute" class="btn btn-primary">اجرا</span>
            <span id="btnCancel" class="btn btn-primary">انصراف</span>
        </div>
  
    </div>
       
 </div>
 
    </div>
    
    </div>

    ', NULL, N'cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",cms_filePath_GetByDefaultsLanguagesAndTypeCodeAndPathByPaging:"/odata/cms/FilePaths?$filter=(TypeCode%20eq%20@typeCoded)%20and%20(startswith(Url%2C''@path'')%20eq%20true)&$orderby=@orderby&$skip=@skip&$top=@top&$select=Id%2CName%2CUrl%2CStatus%2CSize&$inlinecount=allpages",cms_filePath_save:"/cms/filepath/Save",cms_filePath_getById:"/odata/cms/FilePaths?$filter=Id%20eq%20@idd&$select=Id%2CName%2CDescription%2CUrl%2CGuid%2CStatus%2CSize%2CViewRoleId%2CTypeCode%2CAccessRoleId%2CModifyRoleId%2CRowVersion",cms_filePath_delete:"/cms/filepath/delete"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/02/27 06:32:59', N'1396/11/22 14:43:33', N'1396/11/22 14:43:33', CAST(N'2017-05-17T14:02:59.767' AS DateTime), CAST(N'2018-02-11T11:13:33.023' AS DateTime), CAST(N'2018-02-11T11:13:33.023' AS DateTime), 1, N'', N'', N'514af161e6a34278b3b1aa019cb654d8', 122, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (39, N'مدیریت فایل ها', N'/fa/admin/cms/file-and-path-manager/files', NULL, N'', NULL, 0, N' 
 
     
       <div class="col-lg-12" >
                          <div class="col-lg-2" style="float: left;" >        <div id="drpPath" style="float: left;">
            
        </div></div>
                 <div class="col-lg-2" style="float: left;" id="divFileType">        <div id="drpFileType" style="float: left;">
            
        </div></div>
       </div>
<div class="col-lg-12">
       <div id="divPath" style="direction:ltr;height:8px;margin:5px"></div>
</div>
                           <br/>
     <table id="grvFile" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
            
               <th data-header-align="right" data-align = "right" data-column-id="Id" data-identifier="true" data-type="numeric" class="col-lg-1">ردیف</th>
            
        
                   <th data-header-align="center" data-align = "center" data-column-id="Name" data-order="desc">عنوان</th>
                     <th data-header-align="center" data-align = "center" data-column-id="Size"  >حجم</th>
                                             <th data-header-align="center" data-align = "center" data-column-id="Status" data-formatter="Status" data-css-class="" style="">وضعیت</th>
        </tr>
    </thead>
</table>
  
<div class="text-center">
     <input id="btnTranslator" type="button" class="btn btn-default" value="   ترجمه  " />
        <input id="btnEdit" type="button" class="btn btn-default"  value=" ویرایش " />
      
            <input id="btnNew" type="button" class="btn btn-default" value="   جدید  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text=" در حال اجرا ... "  value="  حذف  "  />
</div>
     <div style="display: none">
    
              <div id="winAddOrEdit">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">ایجاد و ویرایش </h4>
            </div>
        
    <div class="modal-body">
        <form id="frm" role="form" class="container-fluid">
        <div class="form-group">
        <label for="txtName" class="control-label" > نام </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName"  style="direction:ltr">
        </div>
    <br>

    </div>

        <div class="form-group">
        <label for="txtPath" class="control-label"> مسیر </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
            <input type="text" class="form-control" name="txtPath" id="txtPath" style="direction:ltr">
                <span class="input-group-btn">
                <button id="btnSelectFile" class="btn btn-default" type="button">...</button>
               </span>
        </div>
        </div>
    <br>
    
        <div id="divGuid" class="form-group">
        <label for="txtGuId" class="control-label"> شناسه </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tower"></i></span>
            <input type="text" class="form-control" name="txtGuId" id="txtGuId" style="direction:ltr">
        </div>
    <br>

    </div>
            <div class="form-group">
        <label for="txtDescription" class="control-label">شرح</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>

       <br />
       <div class="row">
            <label for="drpFileTypeAddUpdate" class="control-label" style="float: right"> نوع فایل</label>
    <br />

        <div id="drpFileTypeAddUpdate" name="drpFileTypeAddUpdate" style="float: left;">
        </div>
</div>
    <br />
   <div id="divRoles">
<div class="row">
            <label for="drpViewRole" class="control-label" style="float: right">نقش مشاهده</label>
    <br />

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
</div>
    <br />

<div class="row">
        <label for="drpAccessRole" class="control-label" style="float: right">نقش اعطای دسترسی</label>
    <br />
        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
</div>
      <br />    
  <div class="row">
                <label for="drpModifyRole" class="control-label" style="float: right">نقش ویرایش</label>
    <br />

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
  </div>
        
   </div>
       <br />
   <div>
               <label class="control-label">  فعال</label>
        <div class="as-material-switch">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
  </div>
    </form>
    </div>
    
    <div class="modal-footer">
    <div class="form-group pull-right">
        <div>
            <span id="btnExecute" class="btn btn-primary">اجرا</span>
            <span id="btnCancel" class="btn btn-primary">انصراف</span>
        </div>
  
    </div>
       
 </div>
 
    </div>
    
    </div>

    ', NULL, N'cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",cms_file_getByDefaultsLanguagesAndTypeCodeByPaging:"/odata/cms/Files?$filter=TypeCode%20eq%20@typeCoded&$orderby=@orderby&$skip=@skip&$top=@top&$select=Id%2CName%2CDescription%2CTypeCode%2CSize%2CStatus&$inlinecount=allpages",cms_file_save:"/cms/file/Save",cms_file_delete:"/cms/file/delete",cms_file_getById:"/odata/cms/Files?$filter=Id%20eq%20@idd&$select=Id%2CName%2CDescription%2CUrl%2CGuid%2CStatus%2CSize%2CViewRoleId%2CTypeCode%2CAccessRoleId%2CModifyRoleId%2CRowVersion"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/02/31 10:01:54', N'1396/11/22 17:12:18', N'1396/11/22 17:12:18', CAST(N'2017-05-21T05:31:54.760' AS DateTime), CAST(N'2018-02-11T13:42:18.187' AS DateTime), CAST(N'2018-02-11T13:42:18.187' AS DateTime), 1, N'', N'', N'c47c99d0cb3d4acf8fef3b771b4cab34', 39, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (43, N'مدیریت فایل ها و دایرکتوری های مسیر مشخص', N'/fa/admin/fms/files-folders-manager-for-a-path', NULL, N'', NULL, 0, N'<div id="win" class="modal-content">
<div class="modal-header"><button class="close" type="button" data-dismiss="modal">&times;</button>
<h4 class="modal-title">مدیریت فایل ها و دایرکتوری ها</h4>
</div>
<div class="modal-body">
<div class="col-lg-12">  <div id="divPath" style="direction:ltr;height:8px;margin:5px"></div></div>
<div class="col-lg-12">&nbsp;</div>
<br />
<table id="grvFile" class="table table-condensed table-hover table-striped table-responsive">
<thead>
<tr>
<th class="col-lg-1" data-header-align="right" data-align="right" data-column-id="Id" data-identifier="true" data-type="numeric">ردیف</th>
<th data-header-align="center" data-align="right" data-column-id="Name" data-order="desc" data-formatter="Name">عنوان</th>
<th data-header-align="center" data-align="center" data-column-id="Size">حجم</th>
<th data-header-align="center" data-align="center" data-column-id="ModifieLocalDateTime">تاریخ آخرین تغییرات</th>
<th data-header-align="center" data-align="center" data-column-id="IsFolder" data-visible="false">IsFolder</th>
</tr>
</thead>
</table>
<div style="display: none;">
<div id="winZipViewer">&nbsp;</div>
<div id="winAction">
<div class="modal-header as-handle">&nbsp;</div>
<div class="modal-body"><form id="frmAction" class="container-fluid">
<div class="form-group"><label class="control-label" for="txtName"> نام</label>
<div class="input-group"><input id="txtName" class="form-control" name="txtName" type="text" /></div>
</div>
</form></div>
<div class="modal-footer">
<div class="form-group pull-right">
<div><span id="btnExecAction" class="btn btn-primary"> اجرا</span> <span id="btnCancelAction" class="btn btn-primary">انصراف</span></div>
</div>
</div>
</div>
<div id="winZipOption">
<div class="modal-header as-handle">
<h4 class="modal-title">تنظیمات زیپ</h4>
</div>
<div class="modal-body"><form id="frmZip" class="container-fluid">
<div class="zip"><label class="control-label">جدید</label>
<div class="as-material-switch">
<div style="float: left;"><input id="chkNewZip" name="chkNewZip" type="checkbox" /> <label class="label-default as-label" for="chkNewZip"> </label></div>
</div>
</div>
<br />
<div class="form-group"><label class="control-label" for="txtNameZip"> نام زیپ</label>
<div class="input-group"><input id="txtNameZip" class="form-control" style="direction: ltr;" name="txtNameZip" type="text" /> <span class="input-group-btn"> <button id="btnSelectZip" class="btn btn-default" type="button">...</button> </span></div>
</div>
<div id="divZipDir" class="form-group"><label id="lblNameZipDir" class="control-label" for="txtNameZipDir"> مسیر باز کردن زیپ</label>
<div class="input-group"><input id="txtNameZipDir" class="form-control" style="direction: ltr;" name="txtNameZipDir" type="text" /> <span class="input-group-btn"> <button id="btnSelectZipDir" class="btn btn-default" type="button">...</button> </span></div>
</div>



        <div class="form-group">
            <label for="txtPassword" class="control-label">   رمز عبور زیپ</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password" class="form-control" name="txtPassword" id="txtPassword" style="direction:ltr">
                </div>
         
        </div>



<div class="zip">
<div class="row">
        <label for="drpEncryption" class="control-label" style="float: right">  وضعیت کد گذاری </label>
    <br />

        <div id="drpEncryption" name="drpEncryption" style="float: left;">
    </div>
</div>
<br />



<div class="row">
        <label for="drpCompression" class="control-label" style="float: right">سطح فشرده سازی</label>
    <br />

        <div id="drpCompression" name="drpCompression" style="float: left;">
    </div>
</div>
<br />
</div>
<div class="unzip">
<div class="row">
        <label for="drpReplace" class="control-label" style="float: right">وضعیت جایگزینی</label>
    <br />

        <div id="drpReplace" name="drpReplace" style="float: left;">
    </div>
</div>
<br />
</div>

<div class="zip">
<div id="divReplace"><label class="control-label"> در صورت وجود جایگزین گردد</label>
<div class="as-material-switch">
<div style="float: left;"><input id="chkReplaceZip" name="chkReplaceZip" type="checkbox" /> <label class="label-default as-label" for="chkReplaceZip"> </label></div>
</div>
</div>
</div>
</form></div>
<div class="modal-footer">
<div class="form-group pull-right">
<div><span id="btnExecute" class="btn btn-primary">اجرا</span> <span id="btnCancelZip" class="btn btn-primary">انصراف</span></div>
</div>
</div>
</div>
</div>
</div>
<div class="modal-footer" style="text-align: center;">
<div class="btn-group dropup"><button id="btnZip" class="btn btn-default dropdown-toggle" type="button" data-loading-text=" در حال اجرا ..." data-toggle="dropdown"> زیپ 
 <span class="caret"></span> </button>
<ul class="dropdown-menu" style="cursor: pointer;">
<li id="btnZipView"><a ></a>مشاهده</li>
<li id="btnZipAddOrUpdate"><a></a>ایجاد و ویرایش</li>
<li id="btnUnZip"><a ></a>بازکردن</li>
</ul>
</div>
<input id="btnMove" class="btn btn-default" type="button" value="  انتقال  " data-loading-text=" در حال اجرا ..." />
<div class="btn-group dropup"><button id="btnCopyMain" class="btn btn-default dropdown-toggle" type="button" data-loading-text=" در حال اجرا ..." data-toggle="dropdown"> کپی
 <span class="caret"></span> </button>
<ul class="dropdown-menu" style="cursor: pointer;">
<li id="btnCopyByReplace"><a ></a>با جایگزینی</li>
<li id="btnCopy"><a ></a>بدون جایگزینی</li>
</ul>
</div>
<input id="btnRename" class="btn btn-default" type="button" value="  تغییر نام  " />
<input id="btnDell" class="btn btn-default" type="button" value="  حذف  " data-loading-text=" در حال اجرا ... " />
<input id="btnCreateDir" class="btn btn-default" type="button" value="  ساخت دایرکتوری  " />
<div class="btn-group dropup"><button id="btnFile" class="btn btn-default dropdown-toggle" type="button" data-loading-text=" در حال اجرا ..." data-toggle="dropdown"> فایل
 <span class="caret"></span> </button>
<ul class="dropdown-menu" style="cursor: pointer;">
<li id="btnUploadFromDisk"><a ></a> بارگذاری از دیسک</li>
<li id="btnUploadFromUrl"><a ></a> بارگذاری از آدرس</li>
<li id="btnAddOrUpdateFile"><a ></a> ایجاد و ویرایش</li>
</ul>
</div>
</div>
</div>', NULL, N'cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",fms_GetFileAndFoldersOfPathByPaging:"/fms/GetByPagination/@path/@orderby/@skip/@take/@createThumbnail",fms_move:"/fms/move",fms_copy:"/fms/copy",fms_zip_extract:"/fms/unzip",fms_zip_addOrUpdate:"/fms/zip/add-update",fms_rename:"/fms/rename",fms_delete:"/fms/delete",fms_createDir:"/fms/createdir"', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/03/08 11:48:32', N'1396/11/10 12:57:43', N'1396/11/10 12:57:43', CAST(N'2017-05-29T07:18:32.703' AS DateTime), CAST(N'2018-01-30T09:27:43.370' AS DateTime), CAST(N'2018-01-30T09:27:43.370' AS DateTime), 1, N'', N'', N'feea4cb74a4a4207822330413afff0af', 105, N'[{"url":"asBootGrid.css?minversion=13"},{"url":"asBootGrid.js?minversion=13"},{"url":"asDropdown.js"},{"url":"asDropdown.css"},{"url":"asValidate.js"},{"url":"asValidate.css"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (46, N'مدیریت اطلاعات پایه', N'/fa/admin/cms/masterdata', NULL, N'', NULL, 0, N'<form id="frmMasterData" role="form" class="container-fluid">
        <br />
    <label class="control-label" style="float: right">نوع اطلاع پایه</label>
    <br />
    <div class="container">

        <div id="drpMasterDataType" style="float: left;">
        </div>
    </div>
                           <br/>
    <label class="control-label" style="float: right">اطلاع پایه</label>
    <br />
     
    <div class="container">
    <input id="btnTranslator" type="button" style="float: left;margin-top: 6px;" disabled="disabled" class="btn btn-default disabled" value="ترجمه" />
        <div id="drpMasterData" style="float: left;margin-top: 10px;">
        </div>
   
    </div>
     
                           <br/>
      
        <label class="control-label">جدید</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>
                  <br/>
      
        <label class="control-label"> برگ هست ؟</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkIsLeaf" name="chkIsLeaf" type="checkbox" />
            <label for="chkIsLeaf" class="label-default as-label">  </label>
          </div>
     </div>
        
      <br />
      
         <label class="control-label">نوع هست ؟</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkType" name="chkType" type="checkbox" />
            <label for="chkType" class="label-default as-label">  </label>
          </div>
     </div>

      <br />
      
    <div class="form-group">
        <label for="txtName" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName" data-localize="title" placeholder="">
        </div>

    </div>
    
     <br>
           <div class="form-group">
        <label for="txtParentId" class="control-label"> شناسه پدر</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtParentId" id="txtParentId" style="direction: ltr;"  placeholder=" شناسه پدر">
        </div>
    </div>
         <br />
                        <div class="form-group">
        <label for="txtMasterDataId" class="control-label"> شناسه اطلاع پایه</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtMasterDataId" id="txtMasterDataId" style="direction: ltr;"  placeholder=" شناسه اطلاع پایه">
        </div>
    </div>
         <br />
    <div class="form-group">
        <label for="txtCode" class="control-label">کد</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtCode" id="txtCode"  style="direction: ltr;"  placeholder="کد">
        </div>

    </div>
          <br />
          
              <div class="form-group">
        <label for="txtSecondCode" class="control-label">کد دوم</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtSecondCode" id="txtSecondCode"  style="direction: ltr;"  placeholder="کد دوم">
        </div>

    </div>
          <br />
        
        <label for="txtTypeId" class="control-label"> شناسه نوع</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtTypeId" id="txtTypeId"  style="direction: ltr;"  placeholder="شناسه نوع جدید">
        </div>

  
          <br />
              <label for="txtParentTypeId" class="control-label"> شناسه نوع پدر</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtParentTypeId" id="txtParentTypeId"  style="direction: ltr;"  placeholder="شناسه نوع پدر">
        </div>

                        <br />
    <label class="control-label" style="float: right">نوع پروتکل</label>
    <br />
    <div class="container">

        <div id="drpProtocolsPathOrUrl" style="float: left;">
        </div>
    </div>
                           <br/>
    <div class="form-group">
        <label for="txtUrl" class="control-label">ادرس یا مسیر</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtUrl" id="txtUrl"  style="direction: ltr;"  placeholder="آدرس یا مسیر">
        </div>

    </div>

                                         <br />
    <label class="control-label" style="float: right">نوع پروتکل</label>
    <br />
    <div class="container">

        <div id="drpProtocolsSecondPathOrUrl" style="float: left;">
        </div>
    </div>
                           <br/>
    <div class="form-group">
        <label for="txtSecondPathOrUrl" class="control-label">ادرس یا مسیر دوم</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtSecondPathOrUrl" id="txtSecondPathOrUrl"  style="direction: ltr;"  placeholder="آدرس یا مسیر دوم">
        </div>

    </div>

    <br />
   
            <div class="form-group">
        <label for="txtDescription" class="control-label">شرح</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>
 <br>
 
    <div class="form-group">
        <label for="txtData" class="control-label">اطلاعات تکمیلی</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtData" id="txtData">
                </textarea>
        </div>

    </div>
 <br>
                        <div class="form-group">
        <label for="txtId" class="control-label"> شناسه جهانی</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtId" id="txtId" style="direction: ltr;"  placeholder=" شناسه جهانی">
        </div>
    </div>
   

    <br>
                    <div class="form-group">
        <label for="txtVersion" class="control-label"> ورژن</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" readonly="true" class="form-control" name="txtVersion" id="txtVersion" style="direction: ltr;"  placeholder="ورژن">
        </div>
    

    </div>
    <br/>
        <div class="form-group">
        <label for="txtOrder" class="control-label" >ترتیب</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtOrder" id="txtOrder"  placeholder="1">
        </div>

    </div>
    <br/>
    
            <div class="form-group">
        <label for="txtKey" class="control-label" >کلید</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtKey" id="txtKey"  placeholder="1">
        </div>

    </div>
    <br/>
    
            <div class="form-group">
        <label for="txtValue" class="control-label" >مقدار</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtValue" id="txtValue"  placeholder="1">
        </div>

    </div>
    <br/>
    
        
            <div class="form-group">
        <label for="txtForeignKey1" class="control-label" >کلید خارجی 1</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtForeignKey1" id="txtForeignKey1"  placeholder="1">
        </div>

    </div>
    <br/>
    
        
            <div class="form-group">
        <label for="txtForeignKey2" class="control-label" >کلید خارجی 2</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtForeignKey2" id="txtForeignKey2"  placeholder="1">
        </div>

    </div>
    <br/>
    
        
            <div class="form-group">
        <label for="txtForeignKey3" class="control-label" >کلید خارجی 3</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtForeignKey3" id="txtForeignKey3"  placeholder="1">
        </div>

    </div>
    <br/>
    
       
      
         <label class="control-label">اجرای سریع از حافظه</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCache" name="chkCache" type="checkbox" />
            <label for="chkCache" class="label-default as-label">  </label>
          </div>
     </div>
  <br />
<fieldset id="divSlidingExpirationTimeInMinutes" disabled>
    <div class="form-group">
        <label for="txtSlidingExpirationTimeInMinutes" class="control-label" >زمان عدم دسترسی قبل ازحذف نسخه ذخیره شده در حافظه</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtSlidingExpirationTimeInMinutes" id="txtSlidingExpirationTimeInMinutes"   placeholder="0">
        </div>

    </div>
    </fieldset>
        <br />
   <div id="divRoles">
        <label for="drpViewRole" class="control-label" style="float: right">نقش مشاهده</label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />
        <br />
    <label for="drpAccessRole" class="control-label" style="float: right">نقش اعطای دسترسی</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label" style="float: right">نقش ویرایش</label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>


              <br/>
      
        <label class="control-label">در حال ویرایش</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkEditeMode" name="chkEditeMode" type="checkbox" />
            <label for="chkEditeMode" class="label-default as-label">  </label>
          </div>
     </div>
           <br/>
      
        <label class="control-label">فعال</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
        <div class="text-center">
            <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
              <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>


  ', NULL, N'cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",cms_masterDataKeyValue_get:"/cms/masterdatakeyvalue/get/@id",cms_masterDataKeyValue_save:"/cms/masterdatakeyvalue/save",cms_masterDataKeyValue_getType:"/odata/cms/MasterDataKeyValues?$filter=IsType%20eq%20true&$select=Id%2CParentTypeId%2CTypeId%2CCode%2COrder%2CName%2CKey%2CValue",security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",cms_masterDataKeyValue_delete:"/cms/masterdatakeyvalue/delete"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/03/23 10:51:06', N'1396/11/23 19:55:31', N'1396/11/23 19:55:31', CAST(N'2017-06-13T18:21:06.617' AS DateTime), CAST(N'2018-02-12T16:25:31.613' AS DateTime), CAST(N'2018-02-12T16:25:31.613' AS DateTime), 1, N'', N'', N'71fde09fd0a14bb1bb0780f677c22de6', 30, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (47, N'مدیریت گروه ها', N'/fa/admin/cms/group-manager', NULL, N'', NULL, 0, N'<form id="frmGroups" role="form" class="container-fluid">
        <br />
            <label for="drpGroup" class="control-label" style="float: right">گروه</label>
    <br />
     
    <div class="container">
        <div id="drpGroup" name="drpGroup" style="float: left;margin-top: 10px;">
        </div>
   
    </div>
     
                           <br/>
    <label class="control-label" style="float: right">نوع اطلاع پایه</label>
    <br />
    <div class="container">

        <div id="drpMasterDataType" style="float: left;">
        </div>
    </div>
                           <br/>
    <label class="control-label" style="float: right">اطلاع پایه</label>
    <br />
     
    <div id="masterdata" class="container">
        <div id="drpMasterData" style="float: left;margin-top: 10px;">
        </div>
   
    </div>
     
                           <br/>
                           <div class="text-center">
     <input id="btnMasterDataToGroup" type="button"  class="btn btn-default" value="ویرایش"/>
     </div>
                <br />
                 
                  <div class="form-group">
            <label class="control-label">کشور</label>
         
             <div id="drpLanguge"></div>
         
        </div>
          <br>
    <label class="control-label" style="float: right">انتخاب لینک</label>
    <br />
    <div id="link" class="container">
        <div id="drpLink" style="float: left;">
        </div>
    </div>
                            <br/>
                              <div class="text-center">
                              <input id="btnLinkToGroup" type="button" class="btn btn-default" value="ویرایش" />
                                </div>
       
</form>


  ', NULL, N'cms_link_getByLanguage:"/odata/cms/Links?$filter=Language%20eq%20''@lang''&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf",cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",cms_masterDataKeyValue_getType:"/odata/cms/MasterDataKeyValues?$filter=IsType%20eq%20true&$select=Id%2CParentTypeId%2CTypeId%2CCode%2COrder%2CName%2CKey%2CValue",cms_languageAndCulture_public_getAll:"/cms/languageAndCulture/public/getAll",cms_entityGroup_get:"/odata/cms/EntityGroups?$filter=GroupId%20eq%20@groupIdd&$select=Id%2CLinkId%2CMasterDataKeyValueId%2CCommentId%2CEntityTypeId",cms_entityGroup_save:"/cms/entityGroup/save"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/03/23 11:05:58', N'1396/11/21 13:43:40', N'1396/11/21 13:43:40', CAST(N'2017-06-13T18:35:58.743' AS DateTime), CAST(N'2018-02-10T10:13:40.253' AS DateTime), CAST(N'2018-02-10T10:13:40.253' AS DateTime), 1, N'', N'', N'54a03aaaed844a0dbd474ab8c2d1b335', 10, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asFlexSelect.css?minversion=41"},{"url":"asFlexSelect.js?minversion=41"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (48, N'تنظیمات', N'/fa/admin/develop/webconfig-managment/sttings', NULL, N'', NULL, 0, N'                                 <br/>
     <table id="grvSettings" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
               <th data-header-align="right" data-align = "right" data-column-id="Key"  data-identifier="true"  class="col-lg-1">کلید</th>
            
           <th data-header-align="center" data-align = "center" data-column-id="Value" data-order="desc" data-css-class="ltr">مقدار</th>
                   <th data-header-align="center" data-align = "center" data-column-id="Description" data-order="desc">شرح</th>
                   
                     <th data-header-align="center" data-align = "center" data-column-id="MasterDataKeyValuePropertyName"  data-visible = "false">MasterDataKeyValuePropertyName</th>
                      <th data-header-align="center" data-align = "center" data-column-id="JavaScriptType"  data-visible = "false">JavaScriptType</th>
                     <th data-header-align="center" data-align = "center" data-column-id="MasterDataKeyValueId"  data-visible = "false">MasterDataKeyValueId</th>
                       <th data-header-align="center" data-align = "center" data-column-id="InjectToJavaScript" data-formatter="InjectToJavaScript" data-css-class="" style="">ارسال به جاوا اسکریپت</th>
                        <th data-header-align="center" data-visible = "false" data-column-id="MasterDataKeyValueTypeId" >MasterDataKeyValueTypeId</th>
        </tr>
    </thead>
</table>
    

            <br>
        <div id="divButtons" class="text-center">
                    <input id="btnEdit" type="button" class="btn btn-default"  value=" ویرایش " />
      
            <input id="btnNew" type="button" class="btn btn-default" value="   جدید  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text=" در حال اجرا ... "   data-localize="remove" />
        </div>
    
        
        
    <div style="display: none">
        
                    <div id="winAddOrEdit">
                                          <div class="modal-header as-handle">
                             <h4 class="modal-title">ایجاد و ویرایش </h4>
                        </div>
                    
                <div class="modal-body">
                  <form id="frmConfig" role="form" class="container-fluid">
                       <br/>
                                  <label class="control-label">اطلاع پایه هست</label>
                    <div class="as-material-switch">
                           <div style="float: left;">
                        <input id="chkIsMasterData" name="chkIsMasterData" type="checkbox" />
                        <label for="chkIsMasterData" class="label-default as-label">  </label>
                      </div>
                 </div>
                  <br/>
                        <div id="divMasterData">
                                    <br />
                      <div class="row">
                        <label for="drpMasterDataType" class="control-label" style="float: right"> نوع اطلاع پایه</label>
                <br />
            
                    <div id="drpMasterDataType" name="drpMasterDataType" style="float: left;">
                    </div>
            </div>
            
                      
                                       <br/>
            
                      <div class="row">
                        <label for="drpMasterData" class="control-label" style="float: right"> اطلاع پایه</label>
                <br />
            
                    <div id="drpMasterData" name="drpMasterData" style="float: left;">
                    </div>
            </div>
            
                                                    <br />
                      <div class="row">
                        <label for="drpMasterDataProperty" class="control-label" style="float: right">   فیلد اطلاع پایه</label>
                        <br />
                    
                            <div id="drpMasterDataProperty" name="drpMasterDataProperty" >
                            </div>
                    </div>
            
                        </div>
                        <div id="divSetting">
                                <br>
                                     <div class="form-group">
                    <label for="txtKey" class="control-label" >  کلید</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
                        <input type="text" class="form-control" name="txtKey" id="txtKey"  style="direction:ltr">
                    </div>
                <br>
                     <div class="form-group">
                    <label for="txtValue" class="control-label" >  مقدار</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
                        <input type="text" class="form-control" name="txtValue" id="txtValue"  style="direction:ltr">
                    </div>
                <br>
                            
                           
                        </div>
                         
                                </div>
                        </div>
                                                      <br>
                     <div class="form-group">
                    <label for="txtDesc" class="control-label" >  شرح</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
                        <input type="text" class="form-control" name="txtDesc" id="txtDesc"  style="direction:ltr">
                    </div>
                <br>
                                  <label class="control-label">  به جاوا اسکریپت تزریق شود؟</label>
                    <div class="as-material-switch">
                           <div style="float: left;">
                        <input id="chkInjectToJavaScript" name="chkInjectToJavaScript" type="checkbox" />
                        <label for="chkInjectToJavaScript" class="label-default as-label">  </label>
                      </div>
                 </div>
                     <br />
                      <div class="row" id="divJavaScriptType">
                        <label for="drpJavaScriptType" class="control-label" style="float: right">     نوع جاوا اسکریپت</label>
                        <br />
                    
                            <div id="drpJavaScriptType" name="drpJavaScriptType" >
                            </div>
                    </div>
                     
                        </div>
                           </form>
                <div class="modal-footer">
                <div class="form-group pull-right">
                    <div>
                        <span id="btnExecute" class="btn btn-primary">اجرا</span>
                        <span id="btnCancel" class="btn btn-primary">انصراف</span>
                    </div>
              
                </div>
                   </div>
             </div>
                    </div>
                       
        </div>  
        
        ', NULL, N'cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",cms_masterDataKeyValue_get:"/cms/masterdatakeyvalue/get/@id",cms_masterDataKeyValue_getType:"/odata/cms/MasterDataKeyValues?$filter=IsType%20eq%20true&$select=Id%2CParentTypeId%2CTypeId%2CCode%2COrder%2CName%2CKey%2CValue",develop_webConfig_settings_save:"/develop/webconfig/settings/save/",develop_webConfig_settings_dell:"/develop/webconfig/settings/delete/",develop_webConfig_settings_getSettingsByPagination:"/develop/webconfig/settings/GetSettingsByPagination/@orderBy/@skip/@take",develop_webConfig_settings_getMasterDataKeyValuePropertyName:"/develop/webconfig/settings/GetMasterDataKeyValuePropertyName/"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/03/24 10:22:26', N'1396/11/10 15:10:01', N'1396/11/10 15:10:01', CAST(N'2017-06-14T05:52:26.030' AS DateTime), CAST(N'2018-01-30T11:40:01.277' AS DateTime), CAST(N'2018-01-30T11:40:01.277' AS DateTime), 1, N'', N'', N'396f7ef5b26a4aa691d707fc94008c38', 15, N'[{"url":"asBootGrid.css?minversion=14"},{"url":"asBootGrid.js?minversion=14"},{"url":"asDropdown.js"},{"url":"asDropdown.css"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asFlexSelect.css?minversion=38"},{"url":"asFlexSelect.js?minversion=38"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (49, N'مدیریت مجوزهای عملیاتی', N'/fa/admin/security/permission', NULL, N'', NULL, 0, N'<form id="frmQuery" role="form" class="container-fluid">
        <br />
            <label class="control-label" style="float: right"> مجوز عملیاتی</label>
    <br />
     
    <div class="container">
    <input id="btnTranslator" type="button" style="float: left;margin-top: 6px;" class="btn btn-default disabled" disabled="disabled" value="ترجمه" />
        <div id="drpPermission" style="float: left;">
        </div>
   
    </div>
     
            
     
                           <br/>
      
        <label class="control-label">جدید</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>
                  <br/>
      
        <label class="control-label">مجوز عملیاتی هست ؟</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkPermission" name="chkPermission" type="checkbox" />
            <label for="chkPermission" class="label-default as-label">  </label>
          </div>
     </div>
     
        <div id="divPermission">
            
                                <br/>
                    
      <label class="control-label" style="float: right"> عملیات ها</label>
    <br />
     
    <div class="container">
        <div id="drpActions" style="float: left;margin-top: 10px;">
        </div>
   
    </div>

            <br />
    <label for="drpRole" class="control-label" style="float: right">نقش </label>
    <br />
    <div class="container">

        <div id="drpRole" name="drpRole" style="float: left;">
        </div>
    </div>


              <br/>
    <label class="control-label" style="float: right">نوع اطلاع پایه</label>
    <br />
    <div class="container">

        <div id="drpMasterDataType" style="float: left;">
        </div>
    </div>
                           <br/>
    <div id="divMasterdata">
            <label class="control-label" style="float: right">اطلاع پایه</label>
    <br />
     
    <div class="container">
        <div id="drpMasterData" style="float: left;margin-top: 10px;">
        </div>
   
    </div>
    
                          <div id=divVersion>
               <br />
                   <label for="drpVersion" class="control-label" style="float: right">  نگارش قابل انتشار   </label>
    <br />
    <div class="container">

        <div id="drpVersion" name="drpVersion" style="float: left;">
        </div>
    </div>
</div>
    <br />
    </div>
        </div>

      <br />
      
      <div id="divLink" style="display:none">
             <br />
                 
                  <div class="form-group">
            <label class="control-label">کشور</label>
         
             <div id="drpLanguge"></div>
         
        </div>
          <br>
    <label class="control-label" style="float: right">انتخاب لینک</label>
    <br />
    <div class="container">
        <div id="drpLink" style="float: left;">
        </div>
    </div>
                            <br/>
      </div>
      
    <div class="form-group">
        <label for="txtName" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName" data-localize="title" placeholder="">
        </div>

    </div>
    
     <br>
           <div class="form-group">
        <label for="txtParentId" class="control-label"> شناسه پدر</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtParentId" id="txtParentId" style="direction: ltr;"  placeholder=" شناسه پدر">
        </div>
    </div>
         <br />
                        <div class="form-group">
        <label for="txtPermissionId" class="control-label">شناسه مجوز عملیاتی</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtPermissionId" id="txtPermissionId" style="direction: ltr;"  placeholder="   شناسه مجوز عملیاتی">
        </div>
    </div>
         <br />
    <div class="form-group">
        <label for="txtCode" class="control-label">کد</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtCode" id="txtCode"  style="direction: ltr;"  placeholder="کد">
        </div>

    </div>

                       <br />
        <div id="divForeign">

              <div class="form-group">
        <label for="txtMasterDataCode" class="control-label">کد اطلاع پایه</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtMasterDataCode" id="txtMasterDataCode"  style="direction: ltr;"  placeholder="کد اطلاع پایه">
        </div>

    </div>
    
              <br />
             <div class="form-group">
        <label for="txtMasterDataUrl" class="control-label">آدرس یا مسیر اطلاع پایه</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtMasterDataUrl" id="txtMasterDataUrl"  style="direction: ltr;"  placeholder="آدرس یا مسیر اطلاع پایه">
        </div>

    </div>
        </div>

    <br />
   
            <div class="form-group">
        <label for="txtDescription" class="control-label">شرح</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>
 <br>
                        <div class="form-group">
        <label for="txtId" class="control-label"> شناسه جهانی</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtId" id="txtId" style="direction: ltr;"  placeholder="شناسه جهانی">
        </div>
    </div>
   

    <br>
                    <div class="form-group">
        <label for="txtVersion" class="control-label"> ورژن</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" readonly="true" class="form-control" name="txtVersion" id="txtVersion" style="direction: ltr;"  placeholder="ورژن">
        </div>
    

    </div>
    <br/>
        <div class="form-group">
        <label for="txtOrder" class="control-label" >ترتیب</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtOrder" id="txtOrder"  placeholder="1">
        </div>

    </div>
    <br/>
<div style="display:none">
        
            <div class="form-group">
        <label for="txtValue" class="control-label" >مقدار</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtValue" id="txtValue"  placeholder="1">
        </div>

    </div>
    <br/>
    
    
       
      
         <label class="control-label">اجرای سریع از حافظه</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCache" name="chkCache" type="checkbox" />
            <label for="chkCache" class="label-default as-label">  </label>
          </div>
     </div>
  <br />
<fieldset id="divSlidingExpirationTimeInMinutes" disabled>
    <div class="form-group">
        <label for="txtSlidingExpirationTimeInMinutes" class="control-label" >زمان عدم دسترسی قبل ازحذف نسخه ذخیره شده در حافظه</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtSlidingExpirationTimeInMinutes" id="txtSlidingExpirationTimeInMinutes"   placeholder="0">
        </div>

    </div>
    </fieldset>
</div>
        <br />
   <div id="divRoles">
        <label for="drpViewRole" class="control-label" style="float: right">نقش مشاهده</label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />
        <br />
    <label for="drpAccessRole" class="control-label" style="float: right">نقش اعطای دسترسی</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label" style="float: right">نقش ویرایش</label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>


              <br/>
      
        <label class="control-label">در حال ویرایش</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkEditeMode" name="chkEditeMode" type="checkbox" />
            <label for="chkEditeMode" class="label-default as-label">  </label>
          </div>
     </div>
           <br/>
      
        <label class="control-label">فعال</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
               <br />
        
            <label class="control-label">آخرین تغییر دهنده</label>
        <div class="container">
               <div id="divLastModifiUser" style="float: left;">
           
            
          </div>
     </div>
        <br />
        
                   <label class="control-label">آخرین زمان نغییرات</label>
        <div class="container">
               <div id="divLastModifiLocalDataTime" style="float: left;">
           
            
          </div>
     </div>
        <br />
        <div class="text-center">
            <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
              <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>


  ', NULL, N'cms_link_getByLanguage:"/odata/cms/Links?$filter=Language%20eq%20''@lang''&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf",cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",cms_masterDataKeyValue_get:"/cms/masterdatakeyvalue/get/@id",cms_masterDataKeyValue_getType:"/odata/cms/MasterDataKeyValues?$filter=IsType%20eq%20true&$select=Id%2CParentTypeId%2CTypeId%2CCode%2COrder%2CName%2CKey%2CValue",cms_languageAndCulture_public_getAll:"/cms/languageAndCulture/public/getAll",security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",cms_link_get:"/odata/cms/Links?$filter=Id%20eq%20@idd&$select=Id%2CText%2CHtml%2CTypeId%2CIconPath%2CIsLeaf%2CUrl%2COrder%2CParentId%2CShowToSearchEngine%2CViewRoleId%2CModifyRoleId%2CAccessRoleId%2CAction%2CTransactionCode%2CIsMobile%2CRowVersion%2CStatus",security_Permission_save:"/security/permission/Save",security_Permission_delete:"/security/permission/delete",develop_code_os_dotNet_getOutputVersions:"/develop/code/os/dotnet/GetOutputVersions/@codeId",develop_code_os_dotNet_getDotNetCodesVersionsById:"/odata/cms/MasterDataKeyValues?$filter=(TypeId%20eq%201041d)%20and%20(Id%20eq%20@idd)&$select=Id%2CVersion%2CName%2CCode%2COrder"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/03/24 11:32:32', N'1396/11/28 20:38:13', N'1396/11/28 20:38:13', CAST(N'2017-06-14T07:02:32.040' AS DateTime), CAST(N'2018-02-17T17:08:13.547' AS DateTime), CAST(N'2018-02-17T17:08:13.547' AS DateTime), 1, N'', N'', N'b07b899629ab4762ae63dabe3677e716', 119, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asFlexSelect.css?minversion=41"},{"url":"asFlexSelect.js?minversion=41"},{"url":"asWindow.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (51, N'مدیریت کدهای تحت مرورگر', N'/fa/admin/develop/codes/browsers/management', NULL, N'', NULL, 0, N'<form id="frmCode" role="form" class="container-fluid">
            <br />
    <label class="control-label" style="float: right"> نوع کد</label>
    <br />
    <div class="container">
        <div id="drpCodeType" style="float: left;">
        </div>
    </div>
                           <br/>
        <br />
    <label class="control-label" style="float: right"> انتخاب کد</label>
    <br />
    <div id="divCode" class="container">
          <input id="btnTranslator" type="button" style="float: left;margin-top: 6px;" class="btn btn-default disabled" disabled="disabled" value="ترجمه" />
        <div id="drpCodes" style="float: left;margin-top: 10px;">
        </div>
    </div>
                           <br/>
      
        <label class="control-label">جدید</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>
                  <br/>
      
        <label class="control-label"> برگ هست ؟</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkIsLeaf" name="chkIsLeaf" type="checkbox"/>
            <label for="chkIsLeaf" class="label-default as-label ">  </label>
          </div>
     </div>
   <br />
            <label for="txtUrl" class="control-label">    مسیر فیزیکی</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtUrl" id="txtUrl" style="direction:ltr">
                <span class="input-group-btn divSelectDir" >
                <button id="btnSelectDir" class="btn btn-default" type="button">...</button>
               </span>
        </div>
    <br>
    <div class="form-group">
        <label for="txtName" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName" data-localize="title" placeholder="">
        </div>

    </div>
    
     <br>
                        <div class="form-group">
        <label for="txtCodeId" class="control-label">  شناسه کد</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtCodeId" id="txtCodeId" style="direction: ltr;"  placeholder=" شناسه کد">
        </div>
    </div>
         <br />
    <div class="form-group">
        <label for="txtCode" class="control-label">کد</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtCode" id="txtCode"  style="direction: ltr;"  placeholder="کد">
        </div>

    </div>

    <br />
   
            <div class="form-group">
        <label for="txtDescription" class="control-label">شرح</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>
 <br>
                        <div class="form-group">
        <label for="txtId" class="control-label">شناسه کد</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtId" id="txtId" style="direction: ltr;"  placeholder="شناسه کد">
        </div>
    </div>
   

    <br>
                    <div class="form-group">
        <label for="txtVersion" class="control-label"> ورژن</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" readonly="true" class="form-control" name="txtVersion" id="txtVersion" style="direction: ltr;"  placeholder="ورژن">
        </div>
    

    </div>
    <br/>
        <div class="form-group">
        <label for="txtOrder" class="control-label" >ترتیب</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtOrder" id="txtOrder"  placeholder="1">
        </div>

    </div>
    <br/>
    
       
      
         <label class="control-label">اجرای سریع از حافظه</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCache" name="chkCache" type="checkbox" />
            <label for="chkCache" class="label-default as-label">  </label>
          </div>
     </div>
  <br />
<fieldset id="divSlidingExpirationTimeInMinutes" disabled>
    <div class="form-group">
        <label for="txtSlidingExpirationTimeInMinutes" class="control-label" >زمان عدم دسترسی قبل ازحذف نسخه ذخیره شده در حافظه</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtSlidingExpirationTimeInMinutes" id="txtSlidingExpirationTimeInMinutes"   placeholder="0">
        </div>

    </div>
    </fieldset>
        <br />
   <div id="divRoles">
        <label for="drpViewRole" class="control-label" style="float: right">نقش مشاهده</label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />

    <label for="drpAccessRole" class="control-label" style="float: right">نقش اعطای دسترسی</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label" style="float: right">نقش ویرایش</label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>
  <div id="divEditor">
       <br />
    <label for="drpEditors" class="control-label" style="float: right"> انتخاب ویرایشگر</label>
    <br />
    <div class="container">

        <div id="drpEditors" name="drpEditors" style="float: left;">
        </div>
    </div>


    <br />
    <div id="edrCode_container">
        <label class="control-label"> ویرایشگر</label>
    <div id="edrCode" name="edrCode" style="height: 300px">

    </div>
            <br />
                <label class="control-label">اعمال تغییرات بر روی فایل اصلی</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCheckIn" name="chkCheckIn" type="checkbox" />
            <label for="chkCheckIn" class="label-default as-label">  </label>
          </div>
     </div>
                    <br />
            <div class="form-group">
        <label for="txtComment" class="control-label" >توضیحات مرتبط با تغییرات این ورژن</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtComment" id="txtComment" >
        </div>

    </div>
     <br />
            <div class="text-center">
                   <input id="btnCheckJavaScriptCode" type="button" class="btn btn-default" value="بررسی بیشتر کد" />
                    <input id="btnSaveCode" type="button" class="btn btn-default" data-localize="save" />
                     <input id="btnSelectFile" type="button" class="btn btn-default" value=" انتخاب فایل" />
             <input id="btnManageCode" type="button" class="btn btn-default" value="مدیریت کدها" />
             <input id="btnManageBundle" type="button" class="btn btn-default" value="مدیریت Bundle ها" />
             </div>
    </div>
  </div>
      
        <label class="control-label">در حال ویرایش</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkEditeMode" name="chkEditeMode" type="checkbox" />
            <label for="chkEditeMode" class="label-default as-label">  </label>
          </div>
     </div>
           <br/>
      
        <label class="control-label">فعال</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>

        <br />
        
            <label class="control-label">آخرین تغییر دهنده</label>
        <div class="container">
               <div id="divLastModifiUser" style="float: left;">
           
            
          </div>
     </div>
        <br />
        
                   <label class="control-label">آخرین زمان تغییرات</label>
        <div class="container">
               <div id="divLastModifiLocalDataTime" style="float: left;">
           
            
          </div>
     </div>
        <br />
        <div class="text-center">
            
            <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
            
             <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>

<div id="editorToolbar" class="text-center" style="position:fixed;bottom:0;width:100%;z-index:1060;background-color: white;">
         <label class="control-label" style="float: right;;margin-top: 10px;">ویرایشگر فعال : </label>
        <span id="lblEditor" class="control-label" style="float: right;margin-top: 10px;"> </span>
    <input id="btnNext" type="button" class="btn btn-default" value=" < "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان بعدی در ویرایشگر"/>
            <input id="btnEditorResize" type="button"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+L" class="btn btn-default" value="تفییر ابعاد" />
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value="پیدا و جایگزینی" />
             <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="Comment/UnComment" />
              <input id="btnRecovery" type="button" class="btn btn-default" value="بازیابی آخرین ویرایش" />
              <input id="btnSourceControl" type="button" class="btn btn-default" value="  سورس کنترل" />
      <input id="btnPrev" type="button" class="btn btn-default" value=" > "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان قبلی در ویرایشگر"/>
</div>
    <!-- Modal -->
  
      <div id="divFind">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title">پیدا و جایگزین کردن</h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="txtFind" class="control-label">جستجو</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="txtFind" placeholder="متن مورد جستجو">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtReplace" class="control-label">جایگزین</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="txtReplace" required class="form-control" name="txtReplace" placeholder="متن جایگزین">
                </div>
         
        </div>
 
    </form>
    <div>
         <span id="btnFindNext" class="btn btn-primary">بعدی</span>
  <span id="btnFindPrev" class="btn btn-primary">قبلی</span>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="کل متن با هم">
            <input id="chkFindWhole" name="chkFindWhole" type="checkbox" />
            <label for="chkFindWhole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="حساس به حروف کوچک و بزرگ">
            <input id="chkFindCase" name="chkFindCase" type="checkbox" />
            <label for="chkFindCase" class="label-default as-label">  </label>
          </div>
           </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="chkFindExp" name="chkFindExp" type="checkbox" />
            <label for="chkFindExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="انتخابی">
            <input id="chkFindSelect" name="chkFindSelect" type="checkbox" />
            <label for="chkFindSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div>
                <span id="btnReplace" class="btn btn-primary">جایگزین</span>
  <span id="btnReplaceAll" class="btn btn-primary">جایگزین همه</span>
       </div>
       <p></p>
    </div>


    <div style="display: none">
           
 
  <div id="winRestorEditor">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">بازیابی ویرایشگرهای قبلی</h4>
            </div>
        
    <div class="modal-body">
         <span id="btnRestorPerviousEditors" class="btn btn-primary">بازیابی</span>
  <span id="btnCancelRestor" class="btn btn-primary">انصراف</span>
        
    </div>
       
 </div>
              <div id="winBundleManager">

        </div>
    </div>
  ', NULL, N'cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeIdAndParentId:"/odata/cms/MasterDataKeyValues?$filter=(TypeId%20eq%20@typeIdd)%20and%20(ParentId%20eq%20@idd)&$select=Id%2CParentId%2CCode%2COrder%2CName",develop_code_browser_save:"/develop/code/browser/save",develop_code_browser_delete:"/develop/code/browser/delete",develop_code_browser_get:"/develop/code/browser/get/@id",cms_masterDataKeyValue_GetByDefaultsLanguageAndParentTypetId:"/odata/cms/MasterDataKeyValues?$filter=ParentTypeId%20eq%20@parentTypeIdd&$select=Id%2CParentId%2CCode%2COrder%2CName%2CTypeId",develop_code_browser_getCodeContent:"/develop/code/browser/GetCodeContent/@path/@id",develop_code_browser_file_save:"/develop/code/browser/file/save",develop_code_browser_checkJavascriptCode:"/develop/code/browser/CheckJavascriptCode",develop_code_browser_getChanges:"/develop/code/browser/GetChanges/@codePath/@codeName/@orderBy/@skip/@take/@comment/@user/@fromDateTime/@toDateTime",develop_code_browser_getChange:"/develop/code/browser/GetChange/@changeId/@path/@codeId"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/03/25 06:32:21', N'1396/11/26 14:15:05', N'1396/11/26 14:15:05', CAST(N'2017-06-15T14:02:21.340' AS DateTime), CAST(N'2018-02-15T10:45:05.973' AS DateTime), CAST(N'2018-02-15T10:45:05.973' AS DateTime), 1, N'', N'', N'dca8aa5752b843cbab98e7989ad6ba54', 144, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asCodeEditor.js?minversion=7"},{"url":"asWindow.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (53, N'مدیریت Bundle ها', N'/fa/admin/develop/codes/browsers/bundle', NULL, N'', NULL, 0, N' <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">  مدیریت Bundle ها</h4>
</div>
<div class="modal-body">
   <table id="grvBundles" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
            
               <th data-header-align="right" data-align = "right" data-column-id="Id" data-identifier="true" data-type="numeric" data-visible="false" >ردیف</th>
                  <th data-header-align="center" data-align = "center" data-column-id="Name" data-order="desc"> نام </th>
                   <th data-header-align="center" data-align = "left" data-column-id="PathOrUrl" data-css-class="ltr-text" data-header-css-class="col-lg-6 col-md-6 col-sm-6">آدرس</th>
                           <th data-header-align="center" data-align = "center" data-column-id="Description" data-visible=false> توضیحات </th>
                              <th data-header-align="center" data-align = "center" data-column-id="Key" data-formatter="IsCdn">  CDN دارد ؟</th>
                                <th data-header-align="center" data-align = "center" data-column-id="Value" data-visible=false> Value </th>
                                <th data-header-align="center" data-align = "center" data-column-id="SecondCode" data-visible=false> SecondCode </th>
                                  <th data-header-align="center" data-align = "center" data-column-id="Code" data-visible=false> Code </th>
                         <th data-header-align="center" data-align = "center" data-column-id="ViewRoleId" data-visible=false> ViewRoleId </th>
                           <th data-header-align="center" data-align = "center" data-column-id="AccessRoleId" data-visible=false> AccessRoleId </th>
                             <th data-header-align="center" data-align = "center" data-column-id="ModifyRoleId" data-visible=false> ModifyRoleId </th>
                             <th data-header-align="center" data-align = "center" data-column-id="RowVersion" data-visible=false> RowVersion </th>
        </tr>
    </thead>
</table>
 
      <br>
    <div class="container-fluid">
                    
                <label class="control-label">انتشار</label>
        <div class="as-material-switch">
               <div style="float: left;">
            <input id="chkPublishBundle" name="chkPublishBundle" type="checkbox" />
            <label for="chkPublishBundle" class="label-default as-label">  </label>
          </div>
     </div>
    </div>
        
  
</div>
<div class="modal-footer">

           <div id="divBtn" class="text-center">
             <input id="btnManageSource" type="button" class="btn btn-default" value="  مدیریت منابع" />
              <input id="btnCompile" type="button" class="btn btn-default" value="کامپایل" />
               <input id="btnEdit" type="button" class="btn btn-default"  value=" ویرایش " />
      
            <input id="btnNew" type="button" class="btn btn-default" value="   جدید  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text=" در حال اجرا ... "  value="  حذف  "  />
<input id="btnTranslator" type="button" class="btn btn-default" value="ترجمه" />
        </div>
        <br/>
           <br>
   <div style="display: none">
    
    <div id="winAddOrEdit">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">ایجاد و ویرایش </h4>
            </div>
        
    <div class="modal-body">
        <form id="frmAddOrAupdate" role="form" class="container-fluid">
        <div class="form-group">
        <label for="txtName" class="control-label" > نام دلخواه </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName">
        </div>
    <br>

    </div>

        <div class="form-group">
        <label for="txtPath" class="control-label"> آدرس کامل </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
            <input type="text" class="form-control" name="txtPath" id="txtPath" style="direction:ltr">
                <span class="input-group-btn">
                <button id="btnSelectPath" class="btn btn-default" type="button">...</button>
               </span>
        </div>
        </div>
    <br>
            <div class="form-group">
        <label for="txtDescription" class="control-label">شرح</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>

    <br />
   <div class="row">
            <label for="drpViewRole2" class="control-label" style="float: right">نقش مشاهده</label>
    <br />

        <div id="drpViewRole2" name="drpViewRole2" style="float: left;">
        </div>
</div>
    <br />

<div class="row">
        <label for="drpAccessRole2" class="control-label" style="float: right">نقش اعطای دسترسی</label>
    <br />
        <div id="drpAccessRole2" name="drpAccessRole2" style="float: left;">
        </div>
</div>
      <br />    
  <div class="row">
                <label for="drpModifyRole2" class="control-label" style="float: right">نقش ویرایش</label>
    <br />

        <div id="drpModifyRole2" name="drpModifyRole2" style="float: left;">
        </div>
  </div>

<div id="divDependencyPanel">
         <br />
     <div class="row">
    <label for="drpCodeTypeForDependency" class="control-label" style="float: right"> نوع کد برای وابستگی</label>
    <br />
   
        <div id="drpCodeTypeForDependency" name="drpCodeTypeForDependency" style="float: left;">
        </div>

    </div>
                           <br/>
        <br />
    <div class="row">
    <label for="drpCodesDependency" class="control-label" style="float: right"> انتخاب کد برای وابستگی</label>
    <br />
   
     
        <div id="drpCodesDependency" name="drpCodesDependency" style="float: left;">
        </div>
  
     </div>
                           <br/>
    <div class="row">
    <label for="drpBundlesDependency" class="control-label" style="float: right">  انتخاب باندل برای وابستگی</label>
    <br />
   
     
        <div id="drpBundlesDependency" name="drpBundlesDependency" style="float: left;">
        </div>
  
     </div>
                           <br/>
    <div class="text-center">
          <input id="btnAddDependency" type="button" class="btn btn-default" value="افزودن به وابستگی ها"/>
    </div>
   <div id="divDependency" class="row">
            <label for="drpDependency" class="control-label" style="float: right"> وابستگی ها</label>
    <br />

        <div id="drpDependency" name="drpDependency" style="float: left;">
        </div>
</div>
    <br />
            <div class="form-group">
        <label for="txtDependencyKey" class="control-label" >  کلید وابستگی </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
            <input type="text" class="form-control" name="txtDependencyKey" id="txtDependencyKey" style="direction:ltr">
        </div>
    <br>

    </div>
</div>
       <br />
   <div>
                         
                <label class="control-label">  باندل تک به تک</label>
        <div class="as-material-switch">
               <div style="float: left;">
            <input id="chkOneByOneBundle" name="chkOneByOneBundle" type="checkbox" />
            <label for="chkOneByOneBundle" class="label-default as-label">  </label>
          </div>
     </div>
     </div>
       <br />
   <div>
               <label class="control-label"> CDN</label>
        <div class="as-material-switch">
               <div style="float: left;">
            <input id="chkCdn" name="chkCdn" type="checkbox" />
            <label for="chkCdn" class="label-default as-label">  </label>
          </div>
     </div>
       
  </div>
   <br />
          <div id="divCdn" class="form-group">
        <label for="txtCdnUrl" class="control-label"> آدرس CDN </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
            <input type="text" class="form-control" name="txtCdnUrl" id="txtCdnUrl" style="direction:ltr">
        </div>
        </div>

    </form>
    </div>
    
    <div class="modal-footer">
    <div class="form-group pull-right">
        <div>
            <span id="btnExecute" class="btn btn-primary">اجرا</span>
            <span id="btnCancel" class="btn btn-primary">انصراف</span>
        </div>
  
    </div>
       
 </div>
 
    </div>
        
                     <div id="winBundleSourceManager">

        </div>

    </div>
</div>
  
</div>

 ', NULL, N'cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",develop_code_browser_bundle_compile:"/develop/code/browser/bundle/compile",develop_code_browser_GetBundlesOfCodeByDefaultsLanguageByPaging:"/odata/cms/MasterDataKeyValues?$filter=(TypeId%20eq%20@typeIdd)%20and%20(ParentId%20eq%20@parentIdd)&$orderby=@orderby&$skip=@skip&$top=@top&$select=Id%2CName%2CCode%2CPathOrUrl%2CKey%2CValue%2CSecondCode%2CDescription%2CViewRoleId%2CAccessRoleId%2CModifyRoleId%2CRowVersion&$inlinecount=allpages",cms_masterDataKeyValue_GetByDefaultsLanguageAndParentTypetId:"/odata/cms/MasterDataKeyValues?$filter=ParentTypeId%20eq%20@parentTypeIdd&$select=Id%2CParentId%2CCode%2COrder%2CName%2CTypeId",develop_code_browser_bundle_save:"/develop/code/browser/bundle/Save",develop_code_browser_bundle_Delete:"/develop/code/browser/bundle/delete",develop_code_browser_GetBundlesOfCodeExceptOneByOneBundle:"/odata/cms/MasterDataKeyValues?$filter=((TypeId%20eq%201033d)%20and%20(ParentId%20eq%20@codeIdd))%20and%20(Value%20ne%201d)&$select=Id%2CParentId%2CPathOrUrl",develop_code_browser_getBundledependency:"/develop/code/browser/getbundledependency/@bundleId"', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/03/27 09:26:20', N'1396/11/26 16:35:50', N'1396/11/26 16:35:50', CAST(N'2017-06-17T04:56:20.023' AS DateTime), CAST(N'2018-02-15T13:05:50.153' AS DateTime), CAST(N'2018-02-15T13:05:50.153' AS DateTime), 1, N'', N'', N'5999ca6891bf423384f709310780b0d3', 203, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (54, N'مدیریت منابع Bundle ها', N'/fa/admin/develop/codes/browsers/bundle/sources', NULL, N'', NULL, 0, N' <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">مدیریت منابع Bundle ها</h4>
</div>
<div class="modal-body">
   <table id="grvBundleSources" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
            
               <th data-header-align="right" data-align = "right" data-column-id="Id" data-identifier="true" data-type="numeric" data-visible="false" >ردیف</th>
                   <th data-header-align="center" data-align = "left" data-column-id="PathOrUrl" data-css-class="ltr-text" data-header-css-class="col-lg-6 col-md-6 col-sm-6" data-order="desc">آدرس</th>
                           <th data-header-align="center" data-align = "center" data-column-id="Description" data-visible=false> توضیحات </th>
                         <th data-header-align="center" data-align = "center" data-column-id="ViewRoleId" data-visible=false> ViewRoleId </th>
                           <th data-header-align="center" data-align = "center" data-column-id="AccessRoleId" data-visible=false> AccessRoleId </th>
                             <th data-header-align="center" data-align = "center" data-column-id="ModifyRoleId" data-visible=false> ModifyRoleId </th>
                             <th data-header-align="center" data-align = "center" data-column-id="RowVersion" data-visible=false> RowVersion </th>
        </tr>
    </thead>
</table>
 

        
  
</div>
<div class="modal-footer">
  
           <div id="divBtn" class="text-center">
               <input id="btnEdit" type="button" class="btn btn-default"  value=" ویرایش " />
      
            <input id="btnNew" type="button" class="btn btn-default" value="   جدید  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text=" در حال اجرا ... "  value="  حذف  "  />
            <input id="btnTranslator" type="button" class="btn btn-default" value="ترجمه" />
        </div>
        <br/>
          <div style="display: none">
    
              <div id="winAddOrEdit">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">ایجاد و ویرایش </h4>
            </div>
        
    <div class="modal-body">
        <form id="frmAddOrAupdate" role="form" class="container-fluid">

        <div class="form-group">
        <label for="txtPath" class="control-label"> آدرس کامل </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
            <input type="text" class="form-control" name="txtPath" id="txtPath" style="direction:ltr">
                <span class="input-group-btn">
                <button id="btnSelectPath" class="btn btn-default" type="button">...</button>
               </span>
        </div>
        </div>
    <br>
            <div class="form-group">
        <label for="txtDescription" class="control-label">شرح</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>

    <br />
   <div class="row">
            <label for="drpViewRole3" class="control-label" style="float: right">نقش مشاهده</label>
    <br />

        <div id="drpViewRole3" name="drpViewRole3" style="float: left;">
        </div>
</div>
    <br />

<div class="row">
        <label for="drpAccessRole3" class="control-label" style="float: right">نقش اعطای دسترسی</label>
    <br />
        <div id="drpAccessRole3" name="drpAccessRole3" style="float: left;">
        </div>
</div>
      <br />    
  <div class="row">
                <label for="drpModifyRole3" class="control-label" style="float: right">نقش ویرایش</label>
    <br />

        <div id="drpModifyRole3" name="drpModifyRole3" style="float: left;">
        </div>
  </div>
       <br />

    </form>
    </div>
    
    <div class="modal-footer">
    <div class="form-group pull-right">
        <div>
            <span id="btnExecute" class="btn btn-primary">اجرا</span>
            <span id="btnCancel" class="btn btn-primary">انصراف</span>
        </div>
  
    </div>
       
 </div>
 
    </div>
    
    
    </div>
</div>
  
</div>

 ', NULL, N'develop_code_browser_GetBundlesOfCodeByDefaultsLanguageByPaging:"/odata/cms/MasterDataKeyValues?$filter=(TypeId%20eq%20@typeIdd)%20and%20(ParentId%20eq%20@parentIdd)&$orderby=@orderby&$skip=@skip&$top=@top&$select=Id%2CName%2CCode%2CPathOrUrl%2CKey%2CValue%2CSecondCode%2CDescription%2CViewRoleId%2CAccessRoleId%2CModifyRoleId%2CRowVersion&$inlinecount=allpages",develop_code_browser_bundle_source_save:"/develop/code/browser/bundle/source/Save",develop_code_browser_bundle_source_delete:"/develop/code/browser/bundle/source/delete"', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/03/27 09:27:53', N'1396/11/26 17:54:12', N'1396/11/26 17:54:12', CAST(N'2017-06-17T04:57:53.277' AS DateTime), CAST(N'2018-02-15T14:24:12.663' AS DateTime), CAST(N'2018-02-15T14:24:12.663' AS DateTime), 1, N'', N'', N'22ce62b2de724a91afcfa223360a4d00', 55, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (56, N'ایجاد و ویرایش فایل', N'/fa/admin/fms/file-add-or-modify', NULL, N'', NULL, 0, N'  <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">ایجاد و ویرایش فایل</h4>
</div>
<div class="modal-body">
   <form id="frmAddOrUpdateFile" role="form" class="container-fluid">
          <div class="form-group">
        <label for="txtFileName" class="control-label"> نام فایل</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtFileName" id="txtFileName" style="direction:ltr" >
        </div>
    </div>
    <br>
<div class="row">
        <label for="drpEditorNames" class="control-label" style="float: right"> انتخاب ویرایشگر</label>
    <br />

        <div id="drpEditorNames" name="drpEditorNames" style="float: left;">
    </div>
</div>


    <br />
    <div id="fileEditor_container">
        <label class="control-label">محتوا</label>
    <div id="fileEditor" name="fileEditor" style="height: 300px">

    </div>

    </div>

        <div class="form-group text-center">
        <div>
            <span id="btnSave" class="btn btn-primary"> ذخیره</span>
            <span id="btnCancel" class="btn btn-primary">انصراف</span>
        </div>
  
    </div>

</form>


                  </div>
<div class="modal-footer">

<div id="editorToolbar" class="text-center" style="position:relative;bottom:0;width:100%;background-color: white;">
         <label class="control-label" style="float: right;;margin-top: 10px;">ویرایشگر فعال : </label>
        <span id="lblEditor" class="control-label" style="float: right;margin-top: 10px;"> </span>
   <input id="btnNext" type="button" class="btn btn-default" value=" < "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان بعدی در ویرایشگر"/>
           
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value="پیدا و جایگزینی" />
       <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="Comment/UnComment" />
      <input id="btnPrev" type="button" class="btn btn-default" value=" > "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان قبلی در ویرایشگر"/>
</div>
    <!-- Modal -->
 <div id="winFind">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title" style="display: -webkit-box;">پیدا و جایگزین کردن</h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="txtFind" class="control-label" style="display: -webkit-box;">جستجو</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="txtFind" placeholder="متن مورد جستجو">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtReplace" class="control-label" style="display: -webkit-box;">جایگزین</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="txtReplace" required class="form-control" name="txtReplace" placeholder="متن جایگزین">
                </div>
         
        </div>
 
    </form>
    <div style="direction: ltr;">
<div style="direction: rtl;display: -webkit-box;display: -ms-flexbox;display: flex;">
             <span id="btnFindNext" class="btn btn-primary">بعدی</span>
  <span id="btnFindPrev" class="btn btn-primary">قبلی</span>
</div>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="کل متن با هم">
            <input id="chkFindWhole" name="chkFindWhole" type="checkbox" />
            <label for="chkFindWhole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="حساس به حروف کوچک و بزرگ">
            <input id="chkFindCase" name="chkFindCase" type="checkbox" />
            <label for="chkFindCase" class="label-default as-label">  </label>
          </div>
             </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="chkFindExp" name="chkFindExp" type="checkbox" />
            <label for="chkFindExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="انتخابی">
            <input id="chkFindSelect" name="chkFindSelect" type="checkbox" />
            <label for="chkFindSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div style="direction: rtl;display: -webkit-box;display: -ms-flexbox;display: flex;">
                <span id="btnReplace" class="btn btn-primary">جایگزین</span>
  <span id="btnReplaceAll" class="btn btn-primary">جایگزین همه</span>
       </div>
       <p></p>
    </div>

</div>
  
</div>', NULL, N'cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",fms_get:"/fms/Get/@path",fms_save:"/fms/save"', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/04/31 03:56:59', N'1396/11/10 12:58:01', N'1396/11/10 12:58:01', CAST(N'2017-07-22T11:26:59.940' AS DateTime), CAST(N'2018-01-30T09:28:01.723' AS DateTime), CAST(N'2018-01-30T09:28:01.723' AS DateTime), 1, N'', N'', N'5b624478a6e14df0b88d9d64def89839', 68, N'[{"url":"asDropdown.js"},{"url":"asDropdown.css"},{"url":"asValidate.js"},{"url":"asValidate.css"},{"url":"asCodeEditor.js"},{"url":"asWindow.js"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (57, N'کدهای تحت SqlServer', N'/fa/admin/develop/codes/database/sqlserver', NULL, N'', NULL, 0, N'<form id="frmCode" role="form" class="container-fluid">
                <br />
    <label class="control-label" style="float: right">  نوع ارتباط</label>
    <br />
    <div class="container">
        <div id="drpConnection" style="float: left;">
        </div>
    </div>

        <br />
    <label class="control-label" style="float: right"> انتخاب کد</label>
    <br />
    <div id="divCode" class="container">
          <input id="btnTranslator" type="button" style="float: left;margin-top: 6px;" class="btn btn-default disabled" value="ترجمه" />
        <div id="drpCodes" style="float: left;margin-top: 10px;">
        </div>
    </div>
                           <br/>
      
        <label class="control-label">جدید</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>
                  <br/>
      
        <label class="control-label"> برگ هست ؟</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkIsLeaf" name="chkIsLeaf" type="checkbox"/>
            <label for="chkIsLeaf" class="label-default as-label ">  </label>
          </div>
     </div>
   <br />
            <label for="txtUrl" class="control-label">    مسیر فیزیکی</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtUrl" id="txtUrl" style="direction:ltr">
                <span class="input-group-btn divSelectDir" >
                <button id="btnSelectDir" class="btn btn-default" type="button">...</button>
               </span>
        </div>
    <br>
    <div class="form-group">
        <label for="txtName" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName" data-localize="title" placeholder="">
        </div>

    </div>
    
     <br>
                        <div class="form-group">
        <label for="txtCodeId" class="control-label">  شناسه کد</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtCodeId" id="txtCodeId" style="direction: ltr;"  placeholder=" شناسه کد">
        </div>
    </div>
         <br />
    <div class="form-group">
        <label for="txtCode" class="control-label">کد</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtCode" id="txtCode"  style="direction: ltr;"  placeholder="کد">
        </div>

    </div>

    <br />
   
            <div class="form-group">
        <label for="txtDescription" class="control-label">شرح</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>
 <br>
                        <div class="form-group">
        <label for="txtId" class="control-label">  Guid</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtId" id="txtId" style="direction: ltr;"  placeholder="Guid">
        </div>
    </div>
   

    <br>
                    <div class="form-group">
        <label for="txtVersion" class="control-label"> ورژن</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" readonly="true" class="form-control" name="txtVersion" id="txtVersion" style="direction: ltr;"  placeholder="ورژن">
        </div>
    

    </div>
    <br/>
        <div class="form-group">
        <label for="txtOrder" class="control-label" >ترتیب</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtOrder" id="txtOrder"  placeholder="1">
        </div>

    </div>
    <br/>
    
       
      
         <label class="control-label">اجرای سریع از حافظه</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCache" name="chkCache" type="checkbox" />
            <label for="chkCache" class="label-default as-label">  </label>
          </div>
     </div>
  <br />
<fieldset id="divSlidingExpirationTimeInMinutes" disabled>
    <div class="form-group">
        <label for="txtSlidingExpirationTimeInMinutes" class="control-label" >زمان عدم دسترسی قبل ازحذف نسخه ذخیره شده در حافظه</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtSlidingExpirationTimeInMinutes" id="txtSlidingExpirationTimeInMinutes"   placeholder="0">
        </div>

    </div>
    </fieldset>
        <br />
   <div id="divRoles">
        <label for="drpViewRole" class="control-label" style="float: right">نقش مشاهده</label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />

    <label for="drpAccessRole" class="control-label" style="float: right">نقش اعطای دسترسی</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label" style="float: right">نقش ویرایش</label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>
  <div id="divEditor">
    <div id="edrCode_container">
        <label class="control-label"> ویرایشگر</label>
    <div id="edrCode" name="edrCode" style="height: 300px">

    </div>
            <br />
                <label class="control-label">اعمال تغییرات بر روی فایل اصلی</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCheckIn" name="chkCheckIn" type="checkbox" />
            <label for="chkCheckIn" class="label-default as-label">  </label>
          </div>
     </div>
               <br />
            <div class="form-group">
        <label for="txtComment" class="control-label" >توضیحات مرتبط با تغییرات این ورژن</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtComment" id="txtComment" >
        </div>

    </div>
     <br />
            <div class="text-center">
                    <input id="btnSaveCode" type="button" class="btn btn-default" data-localize="save" />
                     <input id="btnSelectFile" type="button" class="btn btn-default" value=" انتخاب فایل" />
             <input id="btnManageCode" type="button" class="btn btn-default" value="مدیریت کدها" />
                                        <div class="btn-group dropup">
          <button id="btnExec" type="button" class="btn btn-default dropdown-toggle" data-loading-text=" در حال اجرا ..."  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
           اجرا <span class="caret"></span>
          </button>
          <ul class="dropdown-menu" style="cursor: pointer;">
            <li><a id="btnExecuteQuery"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+E" > اجرای کوئری  </a></li>
            <li><a id="btnExecuteNoneQuery"> اجرای دستور </a></li>
          </ul>
        </div>
             </div>
    </div>
  </div>
      
        <label class="control-label">در حال ویرایش</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkEditeMode" name="chkEditeMode" type="checkbox" />
            <label for="chkEditeMode" class="label-default as-label">  </label>
          </div>
     </div>
           <br/>
      
        <label class="control-label">فعال</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>

              <br />
        
            <label class="control-label">آخرین تغییر دهنده</label>
        <div class="container">
               <div id="divLastModifiUser" style="float: left;">
           
            
          </div>
     </div>
        <br />
        
                   <label class="control-label">آخرین زمان تغییرات</label>
        <div class="container">
               <div id="divLastModifiLocalDataTime" style="float: left;">
           
            
          </div>
     </div>
        <br />
        <div class="text-center">
            
            <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
            
             <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>

   <div class="text-center" id="divResult">
       

   </div>

<div id="editorToolbar" class="text-center" style="position:fixed;bottom:0;width:100%;z-index:1060;background-color: white;">
         <label class="control-label" style="float: right;;margin-top: 10px;">ویرایشگر فعال : </label>
        <span id="lblEditor" class="control-label" style="float: right;margin-top: 10px;"> </span>
    <input id="btnNext" type="button" class="btn btn-default" value=" < "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان بعدی در ویرایشگر"/>
            <input id="btnEditorResize" type="button"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+L" class="btn btn-default" value="تفییر ابعاد" />
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value="پیدا و جایگزینی" />
             <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="Comment/UnComment" />
              <input id="btnRecovery" type="button" class="btn btn-default" value="بازیابی آخرین ویرایش" />
              <input id="btnSourceControl" type="button" class="btn btn-default" value="  سورس کنترل" />
      <input id="btnPrev" type="button" class="btn btn-default" value=" > "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان قبلی در ویرایشگر"/>
</div>
    <!-- Modal -->
  
      <div id="divFind">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title">پیدا و جایگزین کردن</h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="txtFind" class="control-label">جستجو</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="txtFind" placeholder="متن مورد جستجو">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtReplace" class="control-label">جایگزین</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="txtReplace" required class="form-control" name="txtReplace" placeholder="متن جایگزین">
                </div>
         
        </div>
 
    </form>
    <div>
         <span id="btnFindNext" class="btn btn-primary">بعدی</span>
  <span id="btnFindPrev" class="btn btn-primary">قبلی</span>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="کل متن با هم">
            <input id="chkFindWhole" name="chkFindWhole" type="checkbox" />
            <label for="chkFindWhole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="حساس به حروف کوچک و بزرگ">
            <input id="chkFindCase" name="chkFindCase" type="checkbox" />
            <label for="chkFindCase" class="label-default as-label">  </label>
          </div>
          </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="chkFindExp" name="chkFindExp" type="checkbox" />
            <label for="chkFindExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="انتخابی">
            <input id="chkFindSelect" name="chkFindSelect" type="checkbox" />
            <label for="chkFindSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div>
                <span id="btnReplace" class="btn btn-primary">جایگزین</span>
  <span id="btnReplaceAll" class="btn btn-primary">جایگزین همه</span>
       </div>
       <p></p>
    </div>


    <div style="display: none">
           
 
  <div id="winRestorEditor">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">بازیابی ویرایشگرهای قبلی</h4>
            </div>
        
    <div class="modal-body">
         <span id="btnRestorPerviousEditors" class="btn btn-primary">بازیابی</span>
  <span id="btnCancelRestor" class="btn btn-primary">انصراف</span>
        
    </div>
       
 </div>
    </div>
  ', NULL, N'cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",develop_code_database_sqlserver_connections:"/develop/code/database/sqlserver/connections",develop_code_database_sqlserver_save:"/develop/code/database/sqlserver/Save",develop_code_database_sqlserver_delete:"/develop/code/database/sqlserver/delete",develop_code_database_sqlserver_exec:"/develop/code/database/sqlserver/Exec",develop_code_database_sqlserver_get:"/develop/code/database/sqlserver/get/@id",develop_code_database_sqlserver_getCodeContent:"/develop/code/database/sqlserver/GetCodeContent/@path/@id",develop_code_database_sqlserver_file_save:"/develop/code/database/sqlserver/file/Save",develop_code_database_sqlserver_getChanges:"/develop/code/database/sqlserver/GetChanges/@codePath/@codeName/@orderBy/@skip/@take/@comment/@user/@fromDateTime/@toDateTime",develop_code_database_sqlserver_getChange:"/develop/code/database/sqlserver/GetChange/@changeId/@path/@codeId"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/05/05 01:49:23', N'1396/12/11 00:00:17', N'1396/12/11 00:00:17', CAST(N'2017-07-27T09:19:23.773' AS DateTime), CAST(N'2018-03-01T20:30:17.460' AS DateTime), CAST(N'2018-03-01T20:30:17.460' AS DateTime), 1, N'', N'', N'628a0938bab84f11826e8fc880d87788', 83, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asCodeEditor.js?minversion=8"},{"url":"asWindow.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (58, N'تاریخچه خطاها', N'/fa/admin/develop/reports/error-log', NULL, N'', NULL, 0, N'
        <br/>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
<div class="col-lg-4">
      <label for="fromDateInput" class="control-label" style="float: right">&nbsp;&nbsp;از تاریخ&nbsp;</label>
<div id="fromDateInput"></div>
</div>
<div class="col-lg-4">
      <label for="toDateInput" class="control-label" style="float: right">&nbsp;&nbsp;تا تاریخ&nbsp;</label>
<div id="toDateInput"></div>
</div>
<div class="col-lg-4">
    
    
                    <div class="form-group">
        <label for="txtUser" class="control-label" >کاربر</label>

        <div class="input-group" style="float:left;width:65%">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input type="text" class="form-control" name="txtUser" id="txtUser" >
        </div>

    </div>
</div>
</div>
        </div>
     <br/>
   <div class="row">
       <div class="col-lg-12">
<div class="col-lg-4">
      <label for="fromTimeInput" class="control-label" style="float: right">&nbsp;از ساعت&nbsp;</label>
<div id="fromTimeInput"></div>
</div>
<div class="col-lg-4">
      <label for="toTimeInput" class="control-label" style="float: right">&nbsp;تا ساعت&nbsp;</label>
<div id="toTimeInput"></div>
</div>
<div class="col-lg-4">
    
    
                    <div class="form-group">
        <label for="txtTypeOrSourceOrMessage" class="control-label" >نوع یا منبع یا پیام</label>

        <div class="input-group" style="float:left;width:65%">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtTypeOrSourceOrMessage" id="txtTypeOrSourceOrMessage" >
        </div>

    </div>
</div>
</div>
   </div>


          <div class="text-center">
                    
       <br/>
       <input id="btnSearch" type="button" class="btn btn-success" value="   جستجو  " />
       <input id="btnRemoveFilte" type="button" class="btn btn-default" value="   حذف شریط جستجو  " />
            
        </div>
  
</div>
                                 <br/>
     <table id="grvLog" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
               <th data-header-align="right" data-align = "right" data-column-id="Id"  data-identifier="true" class="col-lg-1">کلید</th>
            
           <th data-header-align="center" data-align = "center" data-column-id="Type"  data-css-class="ltr">نوع</th>
                   <th data-header-align="center" data-align = "center" data-column-id="Source">منبع</th>
                   
                     <th data-header-align="center" data-align = "center" data-column-id="Message" >پیام</th>
                      <th data-header-align="center" data-align = "center" data-column-id="User" >کاربر</th>
                     <th data-header-align="center" data-align = "center" data-column-id="LocalDateTime" data-order="desc" >تاریخ و ساعت</th>
                       <th data-header-align="center" data-align = "center" data-column-id="StatusCode" data-visible="false"> کد وضعیت</th>

        </tr>
    </thead>
</table>
    

            <br>
        <div class="text-center">
                    
      
            <input id="btnDetail" type="button" class="btn btn-default" value="   جزئیات  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text=" در حال اجرا ... "   data-localize="remove" />
        </div>
    
        
        
    <div style="display: none">
        
                    <div id="winDetail">
                                          <div class="modal-header as-handle">
                             <h4 class="modal-title">جزئیات </h4>
                        </div>
                    
                <div class="modal-body">
                  <form role="form" class="container-fluid">
                       <br/>
                                  <label class="control-label">  برنامه</label>
                        
                  <br/>
                  <div id="divAppDomain" style="overflow: auto;" class="ltr"></div>
                  
                    
                                          <br/>
                                  <label class="control-label">  نوع</label>
                        
                  <br/>
                  <div id="divType" style="overflow: auto;" class="ltr"></div>
                  
                    
                                <br>
                                  <label class="control-label">  پیام</label>
                        
                  <br/>
                  <div id="divMessage" style="overflow: auto;" class="ltr"></div>
                  
                    
                                <br>
                      
                    <label class="control-label" >  جزئیات</label>
      
                <br>
                        <div id="divDetail" style="overflow: auto;" class="ltr">
                            
                        </div>
                         
                       
                     
                                                      <br>
                 
                    <label class="control-label" >  میزبان</label>
     
                <br>
                <div id="divHostName" style="overflow: auto;" class="ltr"></div>
                  <br>
                   <label class="control-label">کوکی ها</label>
                     <br>
                <div id="divCookies" style="overflow: auto;" class="ltr"></div>
                     <br />
                          <label class="control-label"> اطلاعات فرم</label>
                     <br>
                <div id="divForm" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                      <label class="control-label">   اطلاعات کوئری استرینگ</label>
                     <br>
                <div id="divQueryString" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                      
                      <label class="control-label">   متغییر های سرور  </label>
                     <br>
                <div id="divServerVariables" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                       <label class="control-label">     پیام Html میزبان وب  </label>
                     <br>
                <div id="divWebHostHtmlMessage" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                            <label class="control-label">   کاربر موبایل هست ؟  </label>
                     <br>
                <div id="divIsMobileMode" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                            <label class="control-label">     کاربر در حالت دیباگ هست ؟  </label>
                     <br>
                <div id="divIsDebugMode" style="overflow: auto;" class="ltr"></div>
                     <br/>
                                  <label class="control-label">  تاریخ و ساعت</label>
                        
                  <br/>
                  <div id="divDataTime" style="overflow: auto;" class="ltr"></div>
                     <br />
                       <label class="control-label"> خطای داخلی  </label>
                     <br>
                <div id="divException" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                           </form>
                <div class="modal-footer">
                <div class="form-group pull-right">
                    <div>
                        <span id="btnCancel" class="btn btn-primary">انصراف</span>
                    </div>
              
                </div>
                   </div>
             </div>
                    </div>
                       
        </div>  
        
        ', NULL, N'develop_reports_ErrorLog_GetByPagination:"/develop/reports/ErrorLog/GetByPagination/@orderBy/@skip/@take/@typeOrSourceOrMessage/@user/@fromDateTime/@toDateTime",develop_reports_ErrorLog_GetById:"/develop/reports/ErrorLog/GetById/@id",develop_reports_ErrorLog_Delete:"/develop/reports/ErrorLog/delete"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/05/16 02:23:43', N'1396/11/28 11:15:23', N'1396/11/28 11:15:23', CAST(N'2017-08-07T09:53:43.003' AS DateTime), CAST(N'2018-02-17T07:45:23.823' AS DateTime), CAST(N'2018-02-17T07:45:23.823' AS DateTime), 1, N'', N'loadScriptAndStyle:{urls:[{url:$.asGetStylePath() + ''calendar/theme/public.css?local=3''}]}', N'0965065f233845d39f1bccfda8a6ac41', 91, N'[{"url":"asDateTimeInput.css?minversion=21"},{"url":"asDateTimeInput.js?minversion=21"},{"url":"asCalendar.css?minversion=9"},{"url":"asCalendar.js?minversion=9"},{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (61, N'صفحه مورد نظر پیدا نشد', N'/fa/admin/develop/error-pages/404', NULL, N'', NULL, 0, N'صفحه مورد نظر پیدا نشد', NULL, N'', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 6, 5, 5, N'1396/06/13 04:07:30', N'1396/11/10 13:08:35', N'1396/11/10 13:08:35', CAST(N'2017-09-04T11:37:30.117' AS DateTime), CAST(N'2018-01-30T09:38:35.447' AS DateTime), CAST(N'2018-01-30T09:38:35.447' AS DateTime), 1, N'', N'', N'f29a53784fb34da1806c6ce945790dc4', 3, N'[]', 0, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (62, N'صفحه مورد نظر پیدا نشد', N'/fa/admin/develop/error-pages/404', NULL, N'', NULL, 0, N'
    <div class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">صفحه مورد نظر یافت نشد</h4>
</div>
<div class="modal-body">
   صفحه مورد نظر پیدا نشد
</div>
<div class="modal-footer">
</div>
</div>

', NULL, N'', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 6, 5, 5, N'1396/06/13 04:10:58', N'1396/11/10 13:08:47', N'1396/11/10 13:08:47', CAST(N'2017-09-04T11:40:58.093' AS DateTime), CAST(N'2018-01-30T09:38:47.277' AS DateTime), CAST(N'2018-01-30T09:38:47.277' AS DateTime), 1, N'', N'', N'd12fdde6bef242399426347828bdd163', 3, N'[]', 0, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (64, N'Page Not Found', N'/en/admin/develop/error-pages/404', NULL, N'', NULL, 0, N'Page Not Found', NULL, N'', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 6, 5, 5, N'1396/06/13 04:20:40', N'1396/11/10 13:13:20', N'1396/11/10 13:13:20', CAST(N'2017-09-04T11:50:40.043' AS DateTime), CAST(N'2018-01-30T09:43:20.343' AS DateTime), CAST(N'2018-01-30T09:43:20.343' AS DateTime), 1, N'', N'', N'35f278107c6c41329cb83a6f0a665191', 3, N'[]', 0, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (65, N'Page Not Found', N'/en/admin/develop/error-pages/404', NULL, N'', NULL, 0, N'
    <div class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">Page Not Found</h4>
</div>
<div class="modal-body">
Page Not Found
</div>
<div class="modal-footer">
</div>
</div>

', NULL, N'', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 6, 5, 5, N'1396/06/13 04:21:42', N'1396/11/10 13:13:32', N'1396/11/10 13:13:32', CAST(N'2017-09-04T11:51:42.763' AS DateTime), CAST(N'2018-01-30T09:43:32.740' AS DateTime), CAST(N'2018-01-30T09:43:32.740' AS DateTime), 1, N'', N'', N'7ad54f18ed5645e3879beb323a505f9a', 3, N'[]', 0, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (70, N'صفحه به طور موقت از دسترس خارج می باشد', N'/fa/admin/develop/error-pages/307', NULL, N'', NULL, 0, N'صفحه به طور موقت از دسترس خارج می باشد', NULL, N'', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 6, 5, 5, N'1396/06/14 04:41:40', N'1396/11/10 13:08:09', N'1396/11/10 13:08:09', CAST(N'2017-09-05T12:11:40.493' AS DateTime), CAST(N'2018-01-30T09:38:09.867' AS DateTime), CAST(N'2018-01-30T09:38:09.867' AS DateTime), 1, N'', N'', N'2e03aadbd0d94080877a84795117c403', 3, N'[]', 0, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (71, N'صفحه به طور موقت از دسترس خارج می باشد', N'/fa/admin/develop/error-pages/307', NULL, N'', NULL, 0, N'
    <div class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title"> صفحه به طور موقت از دسترس خارج می باشد</h4>
</div>
<div class="modal-body">
صفحه به طور موقت از دسترس خارج می باشد
</div>
<div class="modal-footer">
</div>
</div>

', NULL, N'', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 6, 5, 5, N'1396/06/14 04:42:10', N'1396/11/10 13:08:23', N'1396/11/10 13:08:23', CAST(N'2017-09-05T12:12:10.447' AS DateTime), CAST(N'2018-01-30T09:38:23.297' AS DateTime), CAST(N'2018-01-30T09:38:23.297' AS DateTime), 1, N'', N'', N'cb07ed76d93c41b38645ba03dd24d55e', 3, N'[]', 0, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (72, N'Page Temporarily Unavailable', N'/en/admin/develop/error-pages/307', NULL, N'', NULL, 0, N'Page Temporarily Unavailable', NULL, N'', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 6, 5, 5, N'1396/06/22 04:46:54', N'1396/11/10 13:13:46', N'1396/11/10 13:13:46', CAST(N'2017-09-13T12:16:54.130' AS DateTime), CAST(N'2018-01-30T09:43:46.347' AS DateTime), CAST(N'2018-01-30T09:43:46.347' AS DateTime), 1, N'', N'', N'f1e43894315b4d6b97346181dffc16e2', 2, N'[]', 0, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (73, N'Page Temporarily Unavailable', N'/en/admin/develop/error-pages/307', NULL, N'', NULL, 0, N'
    <div class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">Page Temporarily Unavailable</h4>
</div>
<div class="modal-body">
Page Temporarily Unavailable
</div>
<div class="modal-footer">
</div>
</div>

', NULL, N'', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 6, 5, 5, N'1396/06/22 04:47:51', N'1396/11/10 13:13:58', N'1396/11/10 13:13:58', CAST(N'2017-09-13T12:17:51.953' AS DateTime), CAST(N'2018-01-30T09:43:58.343' AS DateTime), CAST(N'2018-01-30T09:43:58.343' AS DateTime), 1, N'', N'', N'0e919cfd05664d518764d2c9c3209246', 2, N'[]', 0, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (74, N'تاریخچه رویدادها', N'/fa/admin/develop/reports/action-log', NULL, N'', NULL, 0, N'    <br/>
    <div class="container-fluid">
<div class="col-lg-12">
<div class="col-lg-4">
      <label for="fromDateInput" class="control-label" style="float: right">&nbsp;&nbsp;از تاریخ&nbsp;</label>
<div id="fromDateInput"></div>
</div>
<div class="col-lg-4">
      <label for="toDateInput" class="control-label" style="float: right">&nbsp;&nbsp;تا تاریخ&nbsp;</label>
<div id="toDateInput"></div>
</div>
<div class="col-lg-4">
  <label for="drpService" class="control-label" style="float: right">سرویس </label>
<div id="drpService" style="float: left;">&nbsp;</div>
</div>
</div>
     <br/>
<div class="col-lg-12">
<div class="col-lg-4">
      <label for="fromTimeInput" class="control-label" style="float: right">&nbsp;از ساعت&nbsp;</label>
<div id="fromTimeInput"></div>
</div>
<div class="col-lg-4">
      <label for="toTimeInput" class="control-label" style="float: right">&nbsp;تا ساعت&nbsp;</label>
<div id="toTimeInput"></div>
</div>
<div class="col-lg-4">
    
                <div class="form-group">
        <label for="txtNameOrUrlOrUser" class="control-label" >نام یا آدرس یا کاربر</label>

        <div class="input-group" style="float:left;width:65%">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtNameOrUrlOrUser" id="txtNameOrUrlOrUser" >
        </div>

    </div>
    
</div>
</div>
<div class="col-lg-12">
          <div class="text-center">
                    
       <br/>
       <input id="btnSearch" type="button" class="btn btn-success" value="   جستجو  " />
       <input id="btnRemoveFilte" type="button" class="btn btn-default" value="   حذف شریط جستجو  " />
            
        </div>
    </div>
</div>
                                 <br/>
     <table id="grvLog" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
               <th data-header-align="right" data-align = "right" data-column-id="Id"   data-identifier="true" class="col-lg-1">کلید</th>
            
          
                   <th data-header-align="center" data-align = "center" data-column-id="Name">نام</th>
                          <th data-header-align="center" data-align = "center" data-column-id="Url" data-css-class="ltr"> آدرس </th>
                     <th data-header-align="center" data-align = "center" data-column-id="ServiceUrl" data-css-class="ltr">سرویس</th>
                      <th data-header-align="center" data-align = "center" data-column-id="User" >کاربر</th>
                      <th data-header-align="center" data-align = "center" data-column-id="Type"  data-css-class="ltr">نوع</th>
                      <th data-header-align="center" data-align = "center" data-column-id="ExecutionTimeInMilliseconds"  data-css-class="ltr">(Ms) زمان اجرا</th>
                     <th data-header-align="center" data-align = "center" data-column-id="LocalDateTime" data-css-class="ltr" data-order="desc">تاریخ و ساعت</th>
                
                 
        </tr>
    </thead>
</table>
    

            <br>
        <div class="text-center">
                    
      
            <input id="btnDetail" type="button" class="btn btn-default" value="   جزئیات  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text=" در حال اجرا ... "   data-localize="remove" />
        </div>
    
        
        
    <div style="display: none">
        
                    <div id="winDetail">
                                          <div class="modal-header as-handle">
                             <h4 class="modal-title">جزئیات </h4>
                        </div>
                    
                <div class="modal-body">
                  <form role="form" class="container-fluid">
                       <br/>
                                  <label class="control-label">  نام</label>
                        
                  <br/>
                  <div id="divName" style="overflow: auto;" ></div>
                  
                    
                                          <br/>
                                  <label class="control-label">  نوع</label>
                        
                  <br/>
                  <div id="divType" style="overflow: auto;" class="ltr"></div>
                  
                    
                    
                                <br>
                      
                    <label class="control-label" >  آدرس یا ادرس مراجعه</label>
      
                <br>
                        <div id="divUrlReferrer" style="overflow: auto;" class="ltr">
                            
                        </div>
                         
                       
                     
                                                      <br>
                 
                    <label class="control-label" >  پارامتر ها</label>
     
                <br>
                <div id="divParameters" style="overflow: auto;" class="ltr"></div>
                  <br>
                   <label class="control-label">کوکی ها</label>
                     <br>
                <div id="divCookies" style="overflow: auto;" class="ltr"></div>
                     <br />
                          <label class="control-label"> اطلاعات درخواست</label>
                     <br>
                <div id="divRequest" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                      <label class="control-label">     IP</label>
                     <br>
                <div id="divIp" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                     
                            <label class="control-label">   کاربر موبایل هست ؟  </label>
                     <br>
                <div id="divIsMobileMode" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                            <label class="control-label">     کاربر در حالت دیباگ هست ؟  </label>
                     <br>
                <div id="divIsDebugMode" style="overflow: auto;" class="ltr"></div>
                     <br />
                       <label class="control-label"> اجرای موفق ؟  </label>
                     <br>
                <div id="divIsSuccessed" style="overflow: auto;" class="ltr"></div>
                     <br />
                       <label class="control-label">  تاریخ و ساعت</label>
                        
                  <br/>
                  <div id="divDataTime" style="overflow: auto;" class="ltr"></div>
                     <br />
                           </form>
                <div class="modal-footer">
                <div class="form-group pull-right">
                    <div>
                        <span id="btnCancel" class="btn btn-primary">انصراف</span>
                    </div>
              
                </div>
                   </div>
             </div>
                    </div>
                       
        </div>  
        
        ', NULL, N'cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",develop_reports_ActionLog_GetByPagination:"/develop/reports/ActionLog/GetByPagination/@orderBy/@skip/@take/@serviceUrl/@nameOrUrlOrUser/@fromDateTime/@toDateTime",develop_reports_ActionLog_GetById:"/develop/reports/ActionLog/GetById/@id",develop_reports_ActionLog_Delete:"/develop/reports/ActionLog/delete"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/06/28 06:53:26', N'1396/11/28 11:12:44', N'1396/11/28 11:12:44', CAST(N'2017-09-19T14:23:26.003' AS DateTime), CAST(N'2018-02-17T07:42:44.673' AS DateTime), CAST(N'2018-02-17T07:42:44.673' AS DateTime), 1, N'', N'loadScriptAndStyle:{urls:[{url:$.asGetStylePath() + ''calendar/theme/public.css?local=3''}]}', N'bcfbbde2bb014691834417c11e2865e2', 124, N'[{"url":"asDateTimeInput.css?minversion=21"},{"url":"asDateTimeInput.js?minversion=21"},{"url":"asCalendar.css?minversion=9"},{"url":"asCalendar.js?minversion=9"},{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (75, N'تاریخچه رویدادها بر اساس سرویس', N'/fa/admin/develop/reports/action-log-by-service', NULL, N'', NULL, 0, N'
         <br/>
    <div class="container-fluid">
<div class="col-lg-12">
<div class="col-lg-4">
      <label for="fromDateInput" class="control-label" style="float: right">&nbsp;&nbsp;از تاریخ&nbsp;</label>
<div id="fromDateInput"></div>
</div>
<div class="col-lg-4">
      <label for="toDateInput" class="control-label" style="float: right">&nbsp;&nbsp;تا تاریخ&nbsp;</label>
<div id="toDateInput"></div>
</div>
<div class="col-lg-4">
  <label for="drpService" class="control-label" style="float: right">سرویس </label>
<div id="drpService" style="float: left;">&nbsp;</div>
</div>
</div>
     <br/>
<div class="col-lg-12">
<div class="col-lg-4">
      <label for="fromTimeInput" class="control-label" style="float: right">&nbsp;از ساعت&nbsp;</label>
<div id="fromTimeInput"></div>
</div>
<div class="col-lg-4">
      <label for="toTimeInput" class="control-label" style="float: right">&nbsp;تا ساعت&nbsp;</label>
<div id="toTimeInput"></div>
</div>
<div class="col-lg-4">
            <div class="form-group">
        <label for="txtUser" class="control-label" >کاربر</label>

        <div class="input-group" style="float:left;width:75%">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input type="text" class="form-control" name="txtUser" id="txtUser" >
        </div>

    </div>
</div>
</div>
<div class="col-lg-12">
          <div class="text-center">
                    
       <br/>
       <input id="btnSearch" type="button" class="btn btn-success" value="   جستجو  " />
       <input id="btnRemoveFilte" type="button" class="btn btn-default" value="   حذف شریط جستجو  " />
            
        </div>
    </div>
</div>
                                 <br/>
     <table id="grvLog" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
               <th data-header-align="right" data-align = "right" data-column-id="Id"  data-identifier="true" class="col-lg-1">کلید</th>
            
          
                   <th data-header-align="center" data-align = "center" data-column-id="Name">نام</th>
                          <th data-header-align="center" data-align = "center" data-column-id="Url" data-css-class="ltr"> آدرس </th>
                     <th data-header-align="center" data-align = "center" data-column-id="ServiceUrl" data-css-class="ltr">سرویس</th>
                      <th data-header-align="center" data-align = "center" data-column-id="User" >کاربر</th>
                      <th data-header-align="center" data-align = "center" data-column-id="Type"  data-css-class="ltr">نوع</th>
                      <th data-header-align="center" data-align = "center" data-column-id="ExecutionTimeInMilliseconds"  data-css-class="ltr">(Ms) زمان اجرا</th>
                     <th data-header-align="center" data-align = "center" data-column-id="LocalDateTime" data-css-class="ltr" data-order="desc" >تاریخ و ساعت</th>
                
                 
        </tr>
    </thead>
</table>
    

            <br>
        <div class="text-center">
                    
      
            <input id="btnDetail" type="button" class="btn btn-default" value="   جزئیات  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text=" در حال اجرا ... "   data-localize="remove" />
        </div>
    
        
        
    <div style="display: none">
        
                    <div id="winDetail">
                                          <div class="modal-header as-handle">
                             <h4 class="modal-title">جزئیات </h4>
                        </div>
                    
                <div class="modal-body">
                  <form role="form" class="container-fluid">
                       <br/>
                                  <label class="control-label">  نام</label>
                        
                  <br/>
                  <div id="divName" style="overflow: auto;" ></div>
                  
                    
                                          <br/>
                                  <label class="control-label">  نوع</label>
                        
                  <br/>
                  <div id="divType" style="overflow: auto;" class="ltr"></div>
                  
                    
                    
                                <br>
                      
                    <label class="control-label" >  آدرس یا ادرس مراجعه</label>
      
                <br>
                        <div id="divUrlReferrer" style="overflow: auto;" class="ltr">
                            
                        </div>
                         
                       
                     
                                                      <br>
                 
                    <label class="control-label" >  پارامتر ها</label>
     
                <br>
                <div id="divParameters" style="overflow: auto;" class="ltr"></div>
                  <br>
                   <label class="control-label">کوکی ها</label>
                     <br>
                <div id="divCookies" style="overflow: auto;" class="ltr"></div>
                     <br />
                          <label class="control-label"> اطلاعات درخواست</label>
                     <br>
                <div id="divRequest" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                      <label class="control-label">     IP</label>
                     <br>
                <div id="divIp" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                     
                            <label class="control-label">   کاربر موبایل هست ؟  </label>
                     <br>
                <div id="divIsDebugMode" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                            <label class="control-label">     کاربر در حالت دیباگ هست ؟  </label>
                     <br>
                <div id="divIsMobileMode" style="overflow: auto;" class="ltr"></div>
                     <br />
                       <label class="control-label"> اجرای موفق ؟  </label>
                     <br>
                <div id="divIsSuccessed" style="overflow: auto;" class="ltr"></div>
                      <br />
                       <label class="control-label">  تاریخ و ساعت</label>
                        
                  <br/>
                  <div id="divDataTime" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                           </form>
                <div class="modal-footer">
                <div class="form-group pull-right">
                    <div>
                        <span id="btnCancel" class="btn btn-primary">انصراف</span>
                    </div>
              
                </div>
                   </div>
             </div>
                    </div>
                       
        </div>  
        
        ', NULL, N'cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",develop_reports_ActionLog_GetById:"/develop/reports/ActionLog/GetById/@id",develop_reports_ActionLog_Delete:"/develop/reports/ActionLog/delete",develop_reports_ActionLog_GetByServiceIdAndPagination:"/develop/reports/ActionLog/GetByServiceIdAndPagination/@orderBy/@skip/@take/@serviceId/@user/@fromDateTime/@toDateTime"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/07/01 07:14:49', N'1396/11/28 11:52:05', N'1396/11/28 11:52:05', CAST(N'2017-09-23T15:44:49.763' AS DateTime), CAST(N'2018-02-17T08:22:05.357' AS DateTime), CAST(N'2018-02-17T08:22:05.357' AS DateTime), 1, N'', N'loadScriptAndStyle:{urls:[{url:$.asGetStylePath() + ''calendar/theme/public.css?local=3''}]}', N'3a8ef7fe324e4e90a5f6d66f512a455d', 22, N'[{"url":"asDateTimeInput.css?minversion=21"},{"url":"asDateTimeInput.js?minversion=21"},{"url":"asCalendar.css?minversion=9"},{"url":"asCalendar.js?minversion=9"},{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (76, N'مدیریت گزارشات', N'/fa/admin/develop/reports/manager', NULL, N'', NULL, 0, N'<div class="col-lg-12">

<div class="as-material-switch" style="margin-top: 10px;">
<div><label class="control-label">  وضعیت ثبت وقایع رویدادها </label> <input id="chkStatus" name="chkStatus" type="checkbox" /> <label class="label-default as-label" for="chkStatus"> </label></div>
</div>


</div>
  <br>
 <div class="text-center">
   <input id="btnToggleEnableLog" class="btn  btn-primary" type="button" value="فعال / غیر فعال  (موقتی)  " data-loading-text=" در حال اجرا ..." />
</div>

<p></p>
<hr>
 <div class="text-center">
   <input id="btnBackUpActionLog" class="btn  btn-primary" type="button" value="   پشتیبان گیریی و ساخت مجدد دیتابیس رویدادها  " data-loading-text=" در حال اجرا ..." />
</div>
<p></p>
<hr>
 <div class="text-center">
   <input id="btnBackUpErrorLog" class="btn btn-primary" type="button" value="  پشتیبان گیریی و ساخت مجدد دیتابیس خطاها  " data-loading-text=" در حال اجرا ..." />
</div>', NULL, N'develop_reports_ActionLog_ToggleEnableLog:"/develop/reports/ActionLog/ToggleEnableLog",develop_reports_ActionLog_BackUp:"/develop/reports/ActionLog/BackUp",develop_reports_ErrorLog_BackUp:"/develop/reports/ErrorLog/BackUp",develop_reports_ActionLog_LogStatus:"/develop/reports/ActionLog/LogStatus"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/07/02 09:28:39', N'1396/11/10 13:07:52', N'1396/11/10 13:07:52', CAST(N'2017-09-24T17:58:39.110' AS DateTime), CAST(N'2018-01-30T09:37:52.507' AS DateTime), CAST(N'2018-01-30T09:37:52.507' AS DateTime), 1, N'', N'', N'bccfce0435954df5b48bc3b0bf2b980d', 20, N'[]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (77, N'مدیریت گزارشات', N'/fa/admin/develop/reports/manager', NULL, N'', NULL, 0, N'
    <div class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title"> مدیریت گزارشات</h4>
</div>
<div class="modal-body">
    <div style="direction: ltr;">
          <br />
           <label class="control-label" style="position: absolute;right: 10px;"> وضعیت ثبت وقایع رویدادها</label>
        <div class="as-material-switch">
               <div style="float:left">
            <input id="chkStatusLog" name="chkStatus" type="checkbox" />
            <label for="chkStatusLog" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
    </div>
    <br>
     <div class="text-center">
   <input id="btnToggleEnableLog" class="btn btn-primary" type="button" value="فعال / غیر فعال  (موقتی)  " data-loading-text=" در حال اجرا ..." />
</div>

<p></p>
<hr>
 <div class="text-center">
   <input id="btnBackUpActionLog" class="btn btn-primary" type="button" value="   پشتیبان گیریی و ساخت مجدد دیتابیس رویدادها  " data-loading-text=" در حال اجرا ..." />
</div>
<p></p>
<hr>
 <div class="text-center">
   <input id="btnBackUpErrorLog" class="btn btn-primary" type="button" value="  پشتیبان گیریی و ساخت مجدد دیتابیس خطاها  " data-loading-text=" در حال اجرا ..." />
</div>
</div>
<div class="modal-footer">
    <div class="form-group pull-right">
        <div>
            <span id="btnCancel" class="btn btn-primary">انصراف</span>
        </div>
  
    </div>
  
   
</div>
</div>

', NULL, N'develop_reports_ActionLog_ToggleEnableLog:"/develop/reports/ActionLog/ToggleEnableLog",develop_reports_ActionLog_BackUp:"/develop/reports/ActionLog/BackUp",develop_reports_ErrorLog_BackUp:"/develop/reports/ErrorLog/BackUp",develop_reports_ActionLog_LogStatus:"/develop/reports/ActionLog/LogStatus"', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/07/02 09:41:30', N'1396/12/15 18:00:40', N'1396/12/15 18:00:40', CAST(N'2017-09-24T18:11:30.623' AS DateTime), CAST(N'2018-03-06T14:30:40.393' AS DateTime), CAST(N'2018-03-06T14:30:40.393' AS DateTime), 1, N'', N'', N'2204aed7f2954d6589d00ba3369aedc7', 19, N'[{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (78, N'مدیریت منابع', N'/fa/admin/develop/codes/source-control/manager', NULL, N'', NULL, 0, N'<div id="win" class="modal-content">
<div class="modal-header"><button class="close" type="button" data-dismiss="modal">&times;</button>
<h4 class="modal-title">مدیریت منابع</h4>
</div>
<div class="modal-body">
    <br/>
    <div class="container-fluid">

<div class="col-lg-12" style="padding-bottom:10px">
<div class="col-lg-6">
      <label for="fromDateInput" class="control-label" style="float: right">&nbsp;&nbsp;از تاریخ&nbsp;</label>
<div id="fromDateInput"></div>
</div>
<div class="col-lg-6">
      <label for="toDateInput" class="control-label" style="float: right">&nbsp;&nbsp;تا تاریخ&nbsp;</label>
<div id="toDateInput"></div>
</div>
</div>
<div class="col-lg-12" style="padding-bottom:10px">
<div class="col-lg-6">
      <label for="fromTimeInput" class="control-label" style="float: right">&nbsp;از ساعت&nbsp;</label>
<div id="fromTimeInput"></div>
</div>
<div class="col-lg-6">
      <label for="toTimeInput" class="control-label" style="float: right">&nbsp;تا ساعت&nbsp;</label>
<div id="toTimeInput"></div>
</div>

</div>
<div class="col-lg-12">
    <div class="col-lg-1">
        </div>
    <div class="col-lg-5">
        
                    <div class="form-group">

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input type="text" class="form-control" name="txtUser" id="txtUser" placeholder="کاربر" style="width:90%">
        </div>

    </div>
</div>
 <div class="col-lg-1">
        </div>
<div class="col-lg-5">
            <div class="form-group">
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-comment"></i></span>
            <input type="text" class="form-control" name="txtComment" id="txtComment" placeholder="توضیحات" style="width:90%">  
            </div>

    </div>
</div>
</div>
<div class="col-lg-12">
          <div class="text-center">
                    
       <br/>
       <input id="btnSearch" type="button" class="btn btn-success" value="   جستجو  " />
       <input id="btnRemoveFilte" type="button" class="btn btn-default" value="   حذف شریط جستجو  " />
            
        </div>
    </div>
</div>
                                 <br/>
<table id="grvChanges" class="table table-condensed table-hover table-striped table-responsive">
<thead>
<tr>
<th data-header-align="right" data-align="right" data-column-id="Id"  data-identifier="true" data-visible="false">ردیف</th>
<th data-header-align="center" data-align="center" data-column-id="Comment">توضیحات</th>
<th data-header-align="center" data-align="center" data-column-id="LocalDateTime" data-order="desc" >تاریخ و ساعت</th>
<th data-header-align="center" data-align="center" data-column-id="User">کاربر</th>
<th data-header-align="center" data-align="center" data-column-id="Version" >ورژن</th>
</tr>
</thead>
</table>
<div style="display: none;">



</div>
</div>
<div class="modal-footer" style="text-align: center;">

<input id="btnSelect" class="btn btn-default" type="button" value="  انتخاب  " data-loading-text=" در حال اجرا ..." />

<input id="btnCompare" class="btn btn-default" type="button" value="   مقایسه  " />

</div>
</div>', NULL, N'', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/07/07 17:12:43', N'1396/11/10 13:04:19', N'1396/11/10 13:04:19', CAST(N'2017-09-29T13:42:43.440' AS DateTime), CAST(N'2018-01-30T09:34:19.983' AS DateTime), CAST(N'2018-01-30T09:34:19.983' AS DateTime), 1, N'', N'loadScriptAndStyle:{urls:[{url:$.asGetStylePath() + ''calendar/theme/public.css?local=4''}]}', N'0365ec3d059d4405a01aaf2ab4858bf6', 50, N'[{"url":"asDateTimeInput.css?minversion=20"},{"url":"asDateTimeInput.js?minversion=20"},{"url":"asCalendar.js"},{"url":"asCalendar.css"},{"url":"asBootGrid.css?minversion=13"},{"url":"asBootGrid.js?minversion=13"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (79, N'مقایسه منابع', N'/fa/admin/develop/codes/source-control/compare', NULL, N'', NULL, 0, N'  <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">مقایسه منابع</h4>
</div>
<div class="modal-body">
   <form id="frmAddOrUpdateFile" role="form" class="container-fluid">
          <div class="form-group">
        <label for="txtFileName" class="control-label"> نام فایل</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtFileName" id="txtFileName" style="direction:ltr" >
        </div>
    </div>
    <br>
<div class="row">
        <label for="drpEditorNames" class="control-label" style="float: right">  ویرایشگر</label>
    <br />

        <div id="drpEditorNames" name="drpEditorNames" style="float: left;">
    </div>
</div>
 <br />
    <div class="col-lg-6">
            <div id="fileEditor_container">
        <label class="control-label">کد سورس کنترل</label>
    <div id="fileEditor" name="fileEditor" style="height: 300px">

    </div>

    </div>
    </div>
      <div class="col-lg-6">
              <div id="editorsCodeEditor_container">
        <label class="control-label">کد ویرایشگر</label>
    <div id="editorsCodeEditor" name="editorsCodeEditor" style="height: 300px">

    </div>

    </div>
      </div>
   


        <div class="form-group text-center">
        <div>
            <span id="btnCancel" class="btn btn-primary">انصراف</span>
        </div>
  
    </div>

</form>


                  </div>
<div class="modal-footer">

<div id="editorToolbar" class="text-center" style="position:relative;bottom:0;width:100%;background-color: white;">
         <label class="control-label" style="float: right;;margin-top: 10px;">ویرایشگر فعال : </label>
        <span id="lblEditor" class="control-label" style="float: right;margin-top: 10px;"> </span>
   <input id="btnNext" type="button" class="btn btn-default" value=" < "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان بعدی در ویرایشگر"/>
           
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value="پیدا و جایگزینی" />
       <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="Comment/UnComment" />
      <input id="btnPrev" type="button" class="btn btn-default" value=" > "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان قبلی در ویرایشگر"/>
</div>
    <!-- Modal -->
   <div id="winFind">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title" style="display: -webkit-box;">پیدا و جایگزین کردن</h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="txtFind" class="control-label" style="display: -webkit-box;">جستجو</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="txtFind" placeholder="متن مورد جستجو">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtReplace" class="control-label" style="display: -webkit-box;">جایگزین</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="txtReplace" required class="form-control" name="txtReplace" placeholder="متن جایگزین">
                </div>
         
        </div>
 
    </form>
    <div style="direction: ltr;">
<div style="direction: rtl;display: -webkit-box;display: -ms-flexbox;display: flex;">
             <span id="btnFindNext" class="btn btn-primary">بعدی</span>
  <span id="btnFindPrev" class="btn btn-primary">قبلی</span>
</div>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="کل متن با هم">
            <input id="chkFindWhole" name="chkFindWhole" type="checkbox" />
            <label for="chkFindWhole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="حساس به حروف کوچک و بزرگ">
            <input id="chkFindCase" name="chkFindCase" type="checkbox" />
            <label for="chkFindCase" class="label-default as-label">  </label>
          </div>
          </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="chkFindExp" name="chkFindExp" type="checkbox" />
            <label for="chkFindExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="انتخابی">
            <input id="chkFindSelect" name="chkFindSelect" type="checkbox" />
            <label for="chkFindSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div style="direction: rtl;display: -webkit-box;display: -ms-flexbox;display: flex;">
                <span id="btnReplace" class="btn btn-primary">جایگزین</span>
  <span id="btnReplaceAll" class="btn btn-primary">جایگزین همه</span>
       </div>
       <p></p>
    </div>
 </div>


  
</div>', NULL, N'cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue"', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/07/13 18:44:28', N'1396/11/10 13:04:32', N'1396/11/10 13:04:32', CAST(N'2017-10-05T15:14:28.467' AS DateTime), CAST(N'2018-01-30T09:34:32.403' AS DateTime), CAST(N'2018-01-30T09:34:32.403' AS DateTime), 1, N'', N'', N'b2630cadc92e435d8ae0ee3bff8f1c22', 31, N'[{"url":"asDropdown.js"},{"url":"asDropdown.css"},{"url":"asCodeEditor.js"},{"url":"asWindow.js"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (80, N'Source Manager', N'/en/admin/develop/codes/source-control/manager', NULL, N'', NULL, 0, N'<div id="win" class="modal-content">
<div class="modal-header"><button class="close" type="button" data-dismiss="modal">&times;</button>
<h4 class="modal-title">Source Manager</h4>
</div>
<div class="modal-body">
    <br/>
    <div class="container-fluid">

<div class="col-lg-12" style="padding-bottom:10px">
<div class="col-lg-6">
      <label for="fromDateInput" class="control-label" >&nbsp;&nbsp; From Date&nbsp;</label>
<div id="fromDateInput"></div>
</div>
<div class="col-lg-6">
      <label for="toDateInput" class="control-label" >&nbsp;&nbsp; To Date&nbsp;</label>
<div id="toDateInput"></div>
</div>
</div>
<div class="col-lg-12" style="padding-bottom:25px">
<div class="col-lg-6">
      <label for="fromTimeInput" class="control-label" >&nbsp;From Time&nbsp;</label>
<div id="fromTimeInput"></div>
</div>
<div class="col-lg-6">
      <label for="toTimeInput" class="control-label" >&nbsp; To Time&nbsp;</label>
<div id="toTimeInput"></div>
</div>

</div>
<div class="col-lg-12">

    <div class="col-lg-5">
        
                    <div class="form-group">

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input type="text" class="form-control" name="txtUser" id="txtUser" placeholder="User" style="width:90%">
        </div>

    </div>
</div>
 <div class="col-lg-1">
        </div>
<div class="col-lg-5">
            <div class="form-group">
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-comment"></i></span>
            <input type="text" class="form-control" name="txtComment" id="txtComment" placeholder="Comment" style="width:90%">  
            </div>

    </div>
</div>
    <div class="col-lg-1">
        </div>
</div>
<div class="col-lg-12">
          <div class="text-center">
                    
       <br/>
       <input id="btnSearch" type="button" class="btn btn-success" value="   Search  " />
       <input id="btnRemoveFilte" type="button" class="btn btn-default" value="   Remove Filters    " />
            
        </div>
    </div>
</div>
                                 <br/>
<table id="grvChanges" class="table table-condensed table-hover table-striped table-responsive">
<thead>
<tr>
<th data-header-align="right" data-align="right" data-column-id="Id"  data-identifier="true" data-visible="false">Id</th>
<th data-header-align="center" data-align="center" data-column-id="Comment">Comment</th>
<th data-header-align="center" data-align="center" data-column-id="LocalDateTime" data-order="desc" > DateAndTime </th>
<th data-header-align="center" data-align="center" data-column-id="User">User</th>
<th data-header-align="center" data-align="center" data-column-id="Version" >Version</th>
</tr>
</thead>
</table>
<div style="display: none;">



</div>
</div>
<div class="modal-footer" style="text-align: center;">

<input id="btnSelect" class="btn btn-default" type="button" value="  Select  " />

<input id="btnCompare" class="btn btn-default" type="button" value="   Compare  " />

</div>
</div>', NULL, N'', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/07/15 20:22:32', N'1396/11/10 13:14:25', N'1396/11/10 13:14:25', CAST(N'2017-10-07T16:52:32.540' AS DateTime), CAST(N'2018-01-30T09:44:25.833' AS DateTime), CAST(N'2018-01-30T09:44:25.833' AS DateTime), 1, N'', N'loadScriptAndStyle:{urls:[{url:$.asGetStylePath() + ''calendar/theme/public.css?local=4''}]}', N'f25239ece41c459680c4b8c6f02cc2ec', 9, N'[{"url":"asDateTimeInput.css?minversion=20"},{"url":"asDateTimeInput.js?minversion=20"},{"url":"asCalendar.js"},{"url":"asCalendar.css"},{"url":"asBootGrid.css?minversion=13"},{"url":"asBootGrid.js?minversion=13"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (81, N'Source Compare', N'/en/admin/develop/codes/source-control/compare', NULL, N'', NULL, 0, N'  <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">Source Compare</h4>
</div>
<div class="modal-body">
   <form id="frmAddOrUpdateFile" role="form" class="container-fluid">
          <div class="form-group">
        <label for="txtFileName" class="control-label"> File Name</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtFileName" id="txtFileName" style="direction:ltr" >
        </div>
    </div>
    <br>
<div class="row">
        <label for="drpEditorNames" class="control-label" style="float: right">  Editor</label>
    <br />

        <div id="drpEditorNames" name="drpEditorNames" style="float: left;">
    </div>
</div>
 <br />
    <div class="col-lg-6">
            <div id="fileEditor_container">
        <label class="control-label">Source Control Code</label>
    <div id="fileEditor" name="fileEditor" style="height: 300px">

    </div>

    </div>
    </div>
      <div class="col-lg-6">
              <div id="editorsCodeEditor_container">
        <label class="control-label">Editor Code </label>
    <div id="editorsCodeEditor" name="editorsCodeEditor" style="height: 300px">

    </div>

    </div>
      </div>
   


        <div class="form-group text-center">
        <div>
            <span id="btnCancel" class="btn btn-primary">Cancel</span>
        </div>
  
    </div>

</form>


                  </div>
<div class="modal-footer">

<div id="editorToolbar" class="text-center" style="position:relative;bottom:0;width:100%;height:45px;background-color: white;">
         <label class="control-label" style="float: right;;margin-top: 10px;">  : Active Editor</label>
        <span id="lblEditor" class="control-label" style="float: right;margin-top: 10px;"> </span>
   <input id="btnNext" type="button" class="btn btn-default" value=" < "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Next Position In Editor"/>
           
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value=" Find And Replace " />
       <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="Comment/UnComment" />
      <input id="btnPrev" type="button" class="btn btn-default" value=" > "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Previous Position In Editor"/>
</div>
    <!-- Modal -->
   <div id="winFind">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title" style="display: -webkit-box;display: -ms-flexbox;display: flex;"> Find And Replace</h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="txtFind" class="control-label" style="display: -webkit-box;display: -ms-flexbox;display: flex;">Search</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="txtFind" placeholder="  Search Term">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtReplace" class="control-label" style="display: -webkit-box;display: -ms-flexbox;display: flex;">Replace</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="txtReplace" required class="form-control" name="txtReplace" placeholder="Replace Text ">
                </div>
         
        </div>
 
    </form>
    <div style="direction: ltr;">
<div style="direction: ltr;display: -webkit-box;display: -ms-flexbox;display: flex;">
             <span id="btnFindNext" class="btn btn-primary">Next</span>
  <span id="btnFindPrev" class="btn btn-primary">Previous</span>
</div>
         <div style="direction: rtl;display: -webkit-box;display: -ms-flexbox;display: flex;">
             <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Whole Word">
            <input id="chkFindWhole" name="chkFindWhole" type="checkbox" />
            <label for="chkFindWhole" class="label-default as-label">  </label>
          </div>
     </div>
       
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Case">
            <input id="chkFindCase" name="chkFindCase" type="checkbox" />
            <label for="chkFindCase" class="label-default as-label">  </label>
          </div>
          </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="chkFindExp" name="chkFindExp" type="checkbox" />
            <label for="chkFindExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Selection">
            <input id="chkFindSelect" name="chkFindSelect" type="checkbox" />
            <label for="chkFindSelect" class="label-default as-label">  </label>
          </div>
     </div>
       </div>
</div>
<br/>
      <div style="direction: ltr;display: -webkit-box;display: -ms-flexbox;display: flex;">
                <span id="btnReplace" class="btn btn-primary">Replace</span>
  <span id="btnReplaceAll" class="btn btn-primary"> Replace All</span>
       </div>
       <p></p>
    </div>
 </div>

</div>
  
', NULL, N'cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName"', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/07/15 20:37:40', N'1396/11/10 13:14:38', N'1396/11/10 13:14:38', CAST(N'2017-10-07T17:07:40.767' AS DateTime), CAST(N'2018-01-30T09:44:38.777' AS DateTime), CAST(N'2018-01-30T09:44:38.777' AS DateTime), 1, N'', N'', N'ebe4dd0614554bfa853b745c1c45dc15', 9, N'[{"url":"asDropdown.js"},{"url":"asDropdown.css"},{"url":"asCodeEditor.js"},{"url":"asWindow.js"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (90, N'مدیریت اسمبلی ها', N'/fa/admin/develop/codes/os/dotnet/dll-manager', NULL, N'', NULL, 0, N'<form id="frmDotNet" role="form" class="container-fluid">
        <br />
    <label class="control-label" style="float: right">انتخاب کد</label>
    <br />
    <div class="container">
          <input id="btnTranslator" type="button" style="float: left;margin-top: 6px;" class="btn btn-default disabled" disabled="disabled" value="ترجمه" />
        <div id="drpCodes" style="float: left;">
        </div>
    </div>
                             <br />
                                     <label class="control-label">جدید</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>
                  <br/>
                  
       <label class="control-label">پوشه هست ؟</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkIsDirectory" name="chkIsDirectory" type="checkbox" />
            <label for="chkIsDirectory" class="label-default as-label">  </label>
          </div>
     </div>
                  <br/>
      <div id="divType">
              <label for="drpType" class="control-label" style="float: right"> نوع  </label>
    <br />
    <div class="container">

        <div id="drpType" name="drpType" style="float: left;">
        </div>
    </div>
    <br />
      </div>

      

<!--      <div id="divIsLeaf">-->
<!--        <label class="control-label">برگ هست ؟</label>-->
<!--        <div class="as-material-switch container">-->
<!--               <div style="float: left;">-->
<!--            <input id="chkIsLeaf" name="chkIsLeaf" type="checkbox" />-->
<!--            <label for="chkIsLeaf" class="label-default as-label">  </label>-->
<!--          </div>-->
<!--     </div>-->
<!--</div>-->
      <br />
    <div class="form-group">
        <label for="txtName" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName" data-localize="title" placeholder="">
        </div>

    </div>
    
     <br>
                        <div class="form-group">
        <label for="txtCodeId" class="control-label"> شناسه کد</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtCodeId" id="txtCodeId" style="direction: ltr;"  placeholder=" شناسه کد">
        </div>
    </div>
         <br />
    <div class="form-group">
        <label for="txtCode" class="control-label">کد</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtCode" id="txtCode"  style="direction: ltr;"  placeholder="کد">
        </div>

    </div>
             <br>

         
    <div id="divPlaceHolder" class="form-group">
        <label for="txtPlaceHolder" class="control-label">نشانه جایگذاری در کد پدر</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtPlaceHolder" id="txtPlaceHolder"  style="direction: ltr;"  placeholder="نشانه جایگذاری در کد پدر">
        </div>

    </div>

    <br />
   
            <div class="form-group">
        <label for="txtDescription" class="control-label">شرح</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>
 <br>
                        <div class="form-group">
        <label for="txtId" class="control-label">شناسه کد</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtId" id="txtId" style="direction: ltr;"  placeholder="شناسه کد">
        </div>
    </div>
   

    <br>
                    <div class="form-group">
        <label for="txtVersion" class="control-label"> ورژن</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" readonly="true" class="form-control" name="txtVersion" id="txtVersion" style="direction: ltr;"  placeholder="ورژن">
        </div>
    

    </div>
    <br/>
        <div class="form-group">
        <label for="txtOrder" class="control-label" >ترتیب</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtOrder" id="txtOrder"  placeholder="1">
        </div>

    </div>
    <br/>

   <div id="divRoles">
        <label for="drpViewRole" class="control-label" style="float: right">نقش مشاهده</label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />

    <label for="drpAccessRole" class="control-label" style="float: right">نقش اعطای دسترسی</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label" style="float: right">نقش ویرایش</label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>

                                <br />
      
<div id="divDll">
            <label for="drpDllStorPlace" class="control-label" style="float: right">  مکان ذخیره  </label>
    <br />
    <div class="container">

        <div id="drpDllStorPlace" name="drpDllStorPlace" style="float: left;">
        </div>
    </div>
    <br />
        <label for="drpDependency" class="control-label" style="float: right"> وابستگی ها  </label>
    <br />
    <div class="container">

        <div id="drpDependency" name="drpDependency" style="float: left;">
        </div>
    </div>
    
<div id=divVersion>
               <br />
                   <label for="drpVersion" class="control-label" style="float: right">  نگارش قابل انتشار   </label>
    <br />
    <div class="container">

        <div id="drpVersion" name="drpVersion" style="float: left;">
        </div>
    </div>
</div>
    <br />
      
      
    <label for="drpEditors" class="control-label" style="float: right"> زبان  </label>
    <br />
    <div class="container">

        <div id="drpEditors" name="drpEditors" style="float: left;">
        </div>
    </div>
    <br />
</div>
<div id="divEditor">
        <div id="edrDotNet_container">
        <label class="control-label">کد دات نت </label>
    <div id="edrDotNet" name="edrDotNet" style="height: 300px">

    </div>
    </div>
    
            
                            <br />
                <label class="control-label">اعمال تغییرات بر روی فایل اصلی</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCheckIn" name="chkCheckIn" type="checkbox" />
            <label for="chkCheckIn" class="label-default as-label">  </label>
          </div>
     </div>
                    <br />
            <div class="form-group">
        <label for="txtComment" class="control-label" >توضیحات مرتبط با تغییرات این ورژن</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtComment" id="txtComment" >
        </div>

    </div>
</div>
        


     <br />
      

      
        <label class="control-label">در حال ویرایش</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkEditeMode" name="chkEditeMode" type="checkbox" />
            <label for="chkEditeMode" class="label-default as-label">  </label>
          </div>
     </div>
           <br/>
      
        <label class="control-label">فعال</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
              <br />
              
                    
        <label class="control-label">بستن تغییرات</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkChangeClose" name="chkStatus" type="checkbox" />
            <label for="chkChangeClose" class="label-default as-label">  </label>
          </div>
     </div>
              <br />
        
            <label class="control-label">آخرین تغییر دهنده</label>
        <div class="container">
               <div id="divLastModifiUser" style="float: left;">
           
            
          </div>
     </div>
        <br />
        
                   <label class="control-label">آخرین زمان تغییرات</label>
        <div class="container">
               <div id="divLastModifiLocalDataTime" style="float: left;">
           
            
          </div>
     </div>
  
     
        <br />
        <div class="text-center">
                       <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
                        <div class="btn-group dropup"><button id="btnDebugMain" class="btn btn-default dropdown-toggle" type="button" data-loading-text=" در حال اجرا ..." data-toggle="dropdown">Code Genrator
                <span class="caret"></span>  </button>
            <ul class="dropdown-menu" style="cursor: pointer;">
         <li id="btnWcfManager"><a > WCF Metadata Generator</a> </li>
            <li id="btnEfMigrationGenerator"><a > Entity Framework Migration Generator</a> </li>
            </ul>
            </div>

            
                        
     
               <input id="btnManageCode" type="button" class="btn btn-default" value="مدیریت کدها" />
             <input id="btnOutputManager" type="button" class="btn btn-default" value="مدیریت خروجی ها" />
            
            
            <div class="btn-group dropup"><button id="btnCompileMain" class="btn btn-default dropdown-toggle" type="button" data-loading-text=" در حال اجرا ..." data-toggle="dropdown">کامپایل
                <span class="caret"></span>  </button>
            <ul class="dropdown-menu" style="cursor: pointer;">
         <li id="btnCompileWhitoutDependemcy"><a >بدون ساخت وابستگی ها   </a></li>
            <li id="btnCompileByDependemcy"><a >  با ساخت وابستگی ها</a> </li>
            </ul>
            </div>
            
            

            

             <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>

    

            <br>
<div id="editorToolbar" class="text-center" style="position:fixed;bottom:0;width:100%;z-index:1060;background-color: white;">
         <label class="control-label" style="float: right;;margin-top: 10px;">ویرایشگر فعال : </label>
        <span id="lblEditor" class="control-label" style="float: right;margin-top: 10px;"> </span>
    <input id="btnNext" type="button" class="btn btn-default" value=" < "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان بعدی در ویرایشگر"/>
            <input id="btnEditorResize" type="button"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+L" class="btn btn-default" value="تفییر ابعاد" />
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value="پیدا و جایگزینی" />
             <div class="btn-group dropup"><button id="btnDebugMain" class="btn btn-default dropdown-toggle" type="button" data-loading-text=" در حال اجرا ..." data-toggle="dropdown">خطایابی
                <span class="caret"></span>  </button>
            <ul class="dropdown-menu" style="cursor: pointer;">
         <li id="btnDebug"><a >اجرای خطایابی</a> </li>
            <li id="btnKhodkarBreakpoint"><a >Breakpoint خودکار</a> </li>
             <li id="btnVsBreakpoint"><a >Breakpoint ویژوال استدیو</a> </li>
             <li id="btnDebugManager"><a >مدیریت خطایابی</a> </li>
            </ul>
            </div>
            
             <div class="btn-group dropup"><button id="btnSnippetMain" class="btn btn-default dropdown-toggle" type="button" data-loading-text=" در حال اجرا ..." data-toggle="dropdown">Snippet Code
                <span class="caret"></span>  </button>
            <ul class="dropdown-menu" style="cursor: pointer;">
         <li id="btnSnippetInstanceWcfService"><a >نمونه گیری از یک وبسرویس WCF</a> </li>
         <li id="btnSnippetConfigurationMigration"><a >ایجاد یک کلاس Configuration Migration</a> </li>
            </ul>
            </div>
            
             <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="Comment/UnComment" />
              <input id="btnRecovery" type="button" class="btn btn-default" value="بازیابی آخرین ویرایش" />
               <input id="btnSourceControl" type="button" class="btn btn-default" value="  سورس کنترل" />
     <input id="btnPrev" type="button" class="btn btn-default" value=" > "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان قبلی در ویرایشگر"/>
</div>
    <!-- Modal -->
          
    <div style="display:none;">
          <div id="winWcfManager">

        </div>
         <div id="winEfMigrationGenerator">

        </div>
          <div id="winOutputManager">

        </div>
          <div id="winDebugManager">

        </div>
    </div>
         <div id="divFind">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title">پیدا و جایگزین کردن</h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="txtFind" class="control-label">جستجو</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="txtFind" placeholder="متن مورد جستجو">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtReplace" class="control-label">جایگزین</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="txtReplace" required class="form-control" name="txtReplace" placeholder="متن جایگزین">
                </div>
         
        </div>
 
    </form>
    <div>
         <span id="btnFindNext" class="btn btn-primary">بعدی</span>
  <span id="btnFindPrev" class="btn btn-primary">قبلی</span>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="کل متن با هم">
            <input id="chkFindWhole" name="chkFindWhole" type="checkbox" />
            <label for="chkFindWhole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="حساس به حروف کوچک و بزرگ">
            <input id="chkFindCase" name="chkFindCase" type="checkbox" />
            <label for="chkFindCase" class="label-default as-label">  </label>
          </div>
           </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="chkFindExp" name="chkFindExp" type="checkbox" />
            <label for="chkFindExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="انتخابی">
            <input id="chkFindSelect" name="chkFindSelect" type="checkbox" />
            <label for="chkFindSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div>
                <span id="btnReplace" class="btn btn-primary">جایگزین</span>
  <span id="btnReplaceAll" class="btn btn-primary">جایگزین همه</span>
       </div>
       <p></p>
    </div>

 
  <div id="winRestorEditor">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">بازیابی ویرایشگرهای قبلی</h4>
            </div>
        
    <div class="modal-body">
         <span id="btnRestorPerviousEditors" class="btn btn-primary">بازیابی</span>
  <span id="btnCancelRestor" class="btn btn-primary">انصراف</span>
        
    </div>
       
 </div>

  ', NULL, N'cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeIdAndParentId:"/odata/cms/MasterDataKeyValues?$filter=(TypeId%20eq%20@typeIdd)%20and%20(ParentId%20eq%20@idd)&$select=Id%2CParentId%2CCode%2COrder%2CName",develop_code_os_dotNet_getDll:"/odata/cms/MasterDataKeyValues?$filter=((((ForeignKey1%20eq%20null)%20or%20(ForeignKey1%20eq%20756d))%20or%20(ForeignKey1%20eq%20757d))%20or%20(ForeignKey1%20eq%20758d))%20and%20(TypeId%20eq%201041d)&$select=Id%2CParentId%2CPathOrUrl%2CName%2CCode%2COrder",develop_code_os_dotNet_get:"/develop/code/os/dotnet/Get/@id",develop_code_os_dotNet_save:"/develop/code/os/dotnet/Save",develop_code_os_dotNet_dell:"/develop/code/os/dotnet/delete",develop_code_os_dotNet_getChanges:"/develop/code/os/dotnet/GetChanges/@codeId/@orderBy/@skip/@take/@comment/@user/@fromDateTime/@toDateTime",develop_code_os_dotNet_getChange:"/develop/code/os/dotnet/GetChange/@changeId/@codeId",develop_code_os_dotNet_dllCompile:"/develop/code/os/dotnet/dllCcompile",develop_code_os_dotNet_getOutputVersions:"/develop/code/os/dotnet/GetOutputVersions/@codeId",develop_code_os_dotNet_debugCode:"/develop/code/os/dotnet/debugCode"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/08/20 20:32:35', N'1396/12/10 23:57:07', N'1396/12/10 23:57:07', CAST(N'2017-11-11T17:02:35.367' AS DateTime), CAST(N'2018-03-01T20:27:07.087' AS DateTime), CAST(N'2018-03-01T20:27:07.087' AS DateTime), 1, N'', N'', N'd52586a8d61447ba88d3c736c9c9cc3a', 110, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asCodeEditor.js?minversion=8"},{"url":"asWindow.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (91, N'مدیریت خروجی ها', N'/fa/admin/develop/codes/os/dotnet/output-manager', NULL, N'', NULL, 0, N' <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">   مدیریت خروجی ها</h4>
</div>
<div class="modal-body">
   <table id="grvOutputs" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
<th class="col-lg-1" data-header-align="right" data-align="right" data-column-id="Id" data-type="numeric">ردیف</th>
 <th data-header-align="center" data-identifier="true" data-align = "left" data-column-id="Name" data-css-class="ltr-text" data-header-css-class="col-lg-4 col-md-4 col-sm-6" data-order="desc">نام</th>
       <th data-header-align="center" data-align="center" data-column-id="Size">حجم</th>
<th data-header-align="center" data-align="center" data-column-id="ModifieLocalDateTime">تاریخ آخرین تغییرات</th>
        </tr>
    </thead>
</table>
 

        
  
</div>
<div class="modal-footer">
  
           <div id="divBtn" class="text-center">
               <input id="btnPublish" type="button" class="btn btn-warning"  value=" انتشار " />
      
            <input id="btnNew" type="button" class="btn btn-default" value="   افزودن خروجی  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text=" در حال اجرا ... "  value="  حذف  "  />
                <input id="btnViewLog" type="button" class="btn btn-default"  value=" مشاهده گزارش ساخت " />
        </div>
        <br/>
        
            <div style="display: none">
        
                    <div id="winLog">
                                          <div class="modal-header as-handle">
                             <h4 class="modal-title">گزارش ساخت </h4>
                        </div>
                    
                <div class="modal-body">
                  <form role="form" class="container-fluid">

                                <br>
               
                        <textarea  class="form-control ltr" name="txtLog" id="txtLog"  style="height: 500px;direction: ltr;"> </textarea>
                    
                                <br>
                   
                           </form>
                <div class="modal-footer">
                <div class="form-group pull-right">
                    <div>
                        <span id="btnCancel" class="btn btn-primary">انصراف</span>
                    </div>
              
                </div>
                   </div>
             </div>
                    </div>
                       
        </div>  
</div>
  
</div>

 ', NULL, N'develop_code_os_dotNet_publishDll:"/develop/code/os/dotnet/publishDll",develop_code_os_dotNet_dellOutputDll:"/develop/code/os/dotnet/dellOutputDll",develop_code_os_dotNet_getOutputs:"/develop/code/os/dotnet/GetetOutputs/@codeId/@orderBy/@skip/@take",develop_code_os_dotNet_addOutputDll:"/develop/code/os/dotnet/addOutputDll",develop_code_os_dotNet_viewDllBuildLog:"/develop/code/os/dotnet/ViewDllBuildLog/@name/@codeId"', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/08/20 20:47:27', N'1396/11/10 13:05:00', N'1396/11/10 13:05:00', CAST(N'2017-11-11T17:17:27.097' AS DateTime), CAST(N'2018-01-30T09:35:00.850' AS DateTime), CAST(N'2018-01-30T09:35:00.850' AS DateTime), 1, N'', N'', N'b6f38fb84c974befbce68c5736add4f0', 31, N'[{"url":"asBootGrid.css?minversion=13"},{"url":"asBootGrid.js?minversion=13"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (92, N'مدیریت خطایابی ها', N'/fa/admin/develop/codes/os/dotnet/debug-manager', NULL, N'', NULL, 0, N'<div id="win" class="modal-content">
<div class="modal-header"><button class="close" type="button" data-dismiss="modal">&times;</button>
<h4 class="modal-title">مدیریت خطایابی ها</h4>
</div>
<div class="modal-body">
    <br/>
    <div class="container-fluid">

<div class="col-lg-12" style="padding-bottom:10px">
<div class="col-lg-6">
      <label for="fromDateInput" class="control-label" style="float: right">&nbsp;&nbsp;از تاریخ&nbsp;</label>
<div id="fromDateInput"></div>
</div>
<div class="col-lg-6">
      <label for="toDateInput" class="control-label" style="float: right">&nbsp;&nbsp;تا تاریخ&nbsp;</label>
<div id="toDateInput"></div>
</div>
</div>
<div class="col-lg-12" style="padding-bottom:10px">
<div class="col-lg-6">
      <label for="fromTimeInput" class="control-label" style="float: right">&nbsp;از ساعت&nbsp;</label>
<div id="fromTimeInput"></div>
</div>
<div class="col-lg-6">
      <label for="toTimeInput" class="control-label" style="float: right">&nbsp;تا ساعت&nbsp;</label>
<div id="toTimeInput"></div>
</div>

</div>
<div class="col-lg-12">
    <div class="col-lg-1">
        </div>
    <div class="col-lg-5">
        
                    <div class="form-group">

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-comment"></i></span>
            <input type="text" class="form-control" name="txtIntegerValue" id="txtIntegerValue" placeholder="عدد صحیح" style="width:90%">
        </div>

    </div>
</div>
 <div class="col-lg-1">
        </div>
<div class="col-lg-5">
            <div class="form-group">
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-sound-5-1"></i></span>
            <input type="text" class="form-control" name="txtDecimal" id="txtDecimal" placeholder="عدد اعشار" style="width:90%">  
            </div>

    </div>
</div>
</div>
<div class="col-lg-12">
    <div class="col-lg-1">
        </div>
    <div class="col-lg-11">
        
                    <div class="form-group">

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
            <input type="text" class="form-control" name="txtData" id="txtData" placeholder="اطلاعات">
        </div>

    </div>
</div>
  <!--<div class="col-lg-1">-->
  <!--      </div>-->
</div>
<div class="col-lg-12">
          <div class="text-center">
                    
       <br/>
       <input id="btnSearch" type="button" class="btn btn-success" value="   جستجو  " />
       <input id="btnRemoveFilte" type="button" class="btn btn-default" value="   حذف شریط جستجو  " />
            
        </div>
    </div>
</div>
                                 <br/>
<table id="grvDebugs" class="table table-condensed table-hover table-striped table-responsive">
<thead>
<tr>
<th data-header-align="right" data-align="right" data-column-id="Id"  data-identifier="true" data-visible="false" data-type="numeric">ردیف</th>
<th data-header-align="center" data-align="center" data-column-id="Data">اطلاعات</th>
<th data-header-align="center" data-align="center" data-column-id="IntegerValue">عدد صحیح</th>
<th data-header-align="center" data-align="center" data-column-id="DecimalValue" >عدد اعشار</th>
<th data-header-align="center" data-align="center" data-column-id="IsOk">درست هست</th>
<th data-header-align="center" data-align="center" data-column-id="DateTime" >تاریخ و ساعت</th>
<th data-header-align="center" data-align="center" data-column-id="CreateDateTime" data-order="desc" >تاریخ و ساعت ایجاد</th>

</tr>
</thead>
</table>
    <div style="display: none">
        
                    <div id="winAddOrEdit">
                                          <div class="modal-header as-handle">
                             <h4 class="modal-title">ایجاد و ویرایش </h4>
                        </div>
                    
                <div class="modal-body">
                  <form id="frmDebug" role="form" class="container-fluid">
                       <br/>
                                  <label class="control-label">درست هست ؟</label>
                    <div class="as-material-switch">
                           <div style="float: left;">
                        <input id="chkIsOk" name="chkIsOk" type="checkbox" />
                        <label for="chkIsOk" class="label-default as-label">  </label>
                      </div>
                 </div>
                  <br/>
                    
                    <div class="form-group">
                    <label for="txtDataModal" class="control-label" >  اطلاعات</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
                           <textarea  class="form-control" name="txtDataModal" id="txtDataModal" style="direction:ltr">
                </textarea>
                    </div>
                    </div>
                <br>
                     <div class="form-group">
                    <label for="txtIntegerValueModal" class="control-label" >  عدد صحیح</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
                        <input type="text" class="form-control" name="txtIntegerValueModal" id="txtIntegerValueModal"  style="direction:ltr" />
                    </div>
                <br>
                            
                           
                        </div>
                 <br>
                   <div class="form-group">
                    <label for="txtDecimalValueModal" class="control-label" >  عدد اعشار</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
                        <input type="text" class="form-control" name="txtDecimalValueModal" id="txtDecimalValueModal"  style="direction:ltr" />
                    </div>
                <br>
                            
                           
                        </div>
                     <br />
                        <div class="form-group">
                    <label for="txtDateTime" class="control-label" >   تاریخ و ساعت</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
                        <input type="text" class="form-control" name="txtDateTime" id="txtDateTime"  style="direction:ltr" />
                    </div>
                <br>
                        </div>
                     <br />

                        </form>
                        </div>
                        
                <div class="modal-footer">
                <div class="form-group pull-right">
                    <div>
                        <span id="btnExecute" class="btn btn-primary">اجرا</span>
                        <span id="btnCancel" class="btn btn-primary">انصراف</span>
                    </div>
              
                </div>
                   </div>
             </div>
                    </div>
                       
        </div>  

<div class="modal-footer" style="text-align: center;">
            <br>
        <div id="divButtons" class="text-center">
  
                    <input id="btnEdit" type="button" class="btn btn-default"  value=" ویرایش " />
      
            <input id="btnNew" type="button" class="btn btn-default" value="   جدید  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text=" در حال اجرا ... "   data-localize="remove" />
        </div>

</div>
</div>', NULL, N'develop_code_os_dotNet_addOrUpdateDebugInfo:"/develop/code/os/dotnet/addOrUpdateDebugInfo",develop_code_os_dotNet_deleteDebugInfo:"/develop/code/os/dotnet/deleteDebugInfo",develop_code_os_dotNet_GetDebugInfos:"/develop/code/os/dotnet/GetDebugInfos/@orderBy/@skip/@take/@codeId/@data/@integerValue/@decimalValue/@fromDateTime/@toDateTime"', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/08/27 20:35:40', N'1396/11/10 13:05:15', N'1396/11/10 13:05:15', CAST(N'2017-11-18T17:05:40.147' AS DateTime), CAST(N'2018-01-30T09:35:15.787' AS DateTime), CAST(N'2018-01-30T09:35:15.787' AS DateTime), 1, N'', N'loadScriptAndStyle:{urls:[{url:$.asGetStylePath() + ''calendar/theme/public.css?local=4''}]}', N'633dda51685a4f6bae4794cc31242de3', 26, N'[{"url":"asDateTimeInput.css?minversion=20"},{"url":"asDateTimeInput.js?minversion=20"},{"url":"asCalendar.js"},{"url":"asCalendar.css"},{"url":"asBootGrid.css?minversion=13"},{"url":"asBootGrid.js?minversion=13"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (93, N'مدیریت وبسرویس های WCF', N'/fa/admin/develop/codes/os/dotnet/wcf-manager', NULL, N'', NULL, 0, N'  <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title"> مدیریت وبسرویس های WCF  </h4>
</div>
<div class="modal-body">
   <form id="frmWcf" role="form" class="container-fluid">
          <div class="form-group">
        <label for="txtUrl" class="control-label">  آدرس WSDL</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
            <input type="text" class="form-control  as-validate-valid" name="txtUrl" id="txtUrl" style="direction:ltr" >
        </div>
    </div>
   
    <div class="form-group">
            <label for="txtWcfUsername" class="control-label"> نام کاربری</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" class="form-control" name="txtWcfUsername" id="txtWcfUsername" placeholder="نام کاربری">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtWcfPassword" class="control-label">گذر واژه</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password" class="form-control" id="txtWcfPassword" name="txtWcfPassword" placeholder="گذر واژه">
                </div>
         
        </div>

 <div class="form-group">
            <label for="txtWcfDomain" class="control-label"> دامنه </label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-unchecked"></i></span>
                    <input type="text" class="form-control as-validate-valid" name="txtWcfDomain" id="txtWcfDomain" placeholder="YourDomain.Com" aria-required="true" aria-invalid="false">
                </div>
         
        </div>
        
         <div class="form-group">
            <label for="txtWcfProxy" class="control-label"> آدرس پروکسی </label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-random"></i></span>
                    <input type="text" class="form-control as-validate-valid" name="txtWcfProxy" id="txtWcfProxy" placeholder="Proxy.YourDomain.Com" aria-required="true" aria-invalid="false">
                </div>
         
        </div>

<div class="row">
        <label for="drpEditorNames" class="control-label" style="float: right"> انتخاب زبان</label>
    <br />

        <div id="drpEditorNames" name="drpEditorNames" style="float: left;">
    </div>
</div>

                <div class="form-group text-center">
            <span id="btnSave" class="btn btn-primary"> ساخت کد WCF</span>
  
    </div>


    <br />
    <div id="wcfCodeEditor_container" style="display:none">
        <label class="control-label">کد WCF</label>
    <div id="wcfCodeEditor" name="wcfCodeEditor" style="height: 300px">

    </div>

    </div>

</form>


                  </div>
<div class="modal-footer">

<div id="editorToolbar" class="text-center" style="position:relative;bottom:0;width:100%;background-color: white;">
   
  
   <input id="btnNext" type="button" class="btn btn-default" value="<"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان بعدی در ویرایشگر"/>
           
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value="پیداوجایگزینی" />
       <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="ToggleComment" />
      <input id="btnPrev" type="button" class="btn btn-default" value=">"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان قبلی در ویرایشگر"/>
</div>
    <!-- Modal -->
 <div id="winFind">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title" style="display: -webkit-box;">پیدا و جایگزین کردن</h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="txtFind" class="control-label" style="display: -webkit-box;">جستجو</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="txtFind" placeholder="متن مورد جستجو">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtReplace" class="control-label" style="display: -webkit-box;">جایگزین</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="txtReplace" required class="form-control" name="txtReplace" placeholder="متن جایگزین">
                </div>
         
        </div>
 
    </form>
    <div style="direction: ltr;">
<div style="direction: rtl;display: -webkit-box;display: -ms-flexbox;display: flex;">
             <span id="btnFindNext" class="btn btn-primary">بعدی</span>
  <span id="btnFindPrev" class="btn btn-primary">قبلی</span>
</div>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="کل متن با هم">
            <input id="chkFindWhole" name="chkFindWhole" type="checkbox" />
            <label for="chkFindWhole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="حساس به حروف کوچک و بزرگ">
            <input id="chkFindCase" name="chkFindCase" type="checkbox" />
            <label for="chkFindCase" class="label-default as-label">  </label>
          </div>
             </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="chkFindExp" name="chkFindExp" type="checkbox" />
            <label for="chkFindExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="انتخابی">
            <input id="chkFindSelect" name="chkFindSelect" type="checkbox" />
            <label for="chkFindSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div style="direction: rtl;display: -webkit-box;display: -ms-flexbox;display: flex;">
                <span id="btnReplace" class="btn btn-primary">جایگزین</span>
  <span id="btnReplaceAll" class="btn btn-primary">جایگزین همه</span>
       </div>
       <p></p>
    </div>

</div>
  
</div>', NULL, N'cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeIdAndParentId:"/odata/cms/MasterDataKeyValues?$filter=(TypeId%20eq%20@typeIdd)%20and%20(ParentId%20eq%20@idd)&$select=Id%2CParentId%2CCode%2COrder%2CName",develop_code_os_dotNet_getWcfGenreatedCode:"/develop/code/os/dotnet/GetWcfGenreatedCode"', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/09/01 14:29:52', N'1396/11/25 13:10:54', N'1396/11/25 13:10:54', CAST(N'2017-11-22T10:59:52.840' AS DateTime), CAST(N'2018-02-14T09:40:54.950' AS DateTime), CAST(N'2018-02-14T09:40:54.950' AS DateTime), 1, N'', N'', N'bf36ac466ffa4f60af777dade9a0d175', 28, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asCodeEditor.js?minversion=7"},{"url":"asWindow.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (94, N'Entity Framework Migration Generator', N'/fa/admin/develop/codes/os/dotnet/ef-migration-generator', NULL, N'', NULL, 0, N'  <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">Entity Framework Migration Generator  </h4>
</div>
<div class="modal-body">
   <form id="frmMigration" role="form" class="container-fluid">
       <br>
       
              <div class="row">
        <label for="drpAction" class="control-label" style="float: right">   نوع عملیات</label>
    <br />

        <div id="drpAction" name="drpAction" style="float: left;">
    </div>
</div>

       <div class="row">
        <label for="drpConnection" class="control-label" style="float: right">  نوع ارتباط</label>
    <br />

        <div id="drpConnection" name="drpConnection" style="float: left;">
    </div>
</div>

<div class="row">
        <label for="drpDllVersion" class="control-label" style="float: right">  انتخاب نگارش</label>
    <br />

        <div id="drpDllVersion" name="drpVersion" style="float: left;">
    </div>
</div>
<div class="row">
        <label for="drpClass" class="control-label" style="float: right">  انتخاب کلاس از نوع DbMigrationsConfiguratin</label>
    <br />

        <div id="drpClass" name="drpClass" style="float: left;">
    </div>
</div>

<div id="divMigrations">
    <div id="divRunMigrations">
    <div  class="row">
        <label for="drpMigrations" class="control-label" style="float: right">   انتخاب Migration</label>
    <br />

        <div id="drpMigrations" name="drpMigrations" style="float: left;">
    </div>
</div>
</div>
<div id="divScript">
        <div  class="row">
        <label for="drpSourceMigration" class="control-label" style="float: right">    Migration منبع </label>
    <br />

        <div id="drpSourceMigration" name="drpSourceMigration" style="float: left;">
    </div>
</div>
    <div  class="row">
        <label for="drpTargetMigration" class="control-label" style="float: right">   Migration مقصد </label>
    <br />

        <div id="drpTargetMigration" name="drpTargetMigration" style="float: left;">
    </div>
</div>
</div>
</div>

<div class="row">
        <label for="drpEditorNames" class="control-label" style="float: right"> انتخاب زبان</label>
    <br />

        <div id="drpEditorNames" name="drpEditorNames" style="float: left;">
    </div>
</div>
   
<div id="divNewMigration">
    
        <div class="form-group">
            <label for="txtRootNamespace" class="control-label">  فضای نام ریشه اسمبلی</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" class="form-control" name="txtRootNamespace" id="txtRootNamespace" style="direction:ltr">
                </div>
         
        </div>
        
            <div class="form-group">
            <label for="txtMigration" class="control-label">   نام Migration</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" class="form-control" name="txtMigration" id="txtMigration" style="direction:ltr">
                </div>
         
        </div>
    
</div>
      <br>
    <div class="container-fluid">
                    
                <label class="control-label">Force</label>
        <div class="as-material-switch">
               <div style="float: left;">
            <input id="chkForce" name="chkForce" type="checkbox" />
            <label for="chkForce" class="label-default as-label">  </label>
          </div>
     </div>
    </div>
                <div class="form-group text-center">
            <span id="btnExecute" class="btn btn-primary"> اجرا</span>
  
    </div>


    <br />
    <div id="migCodeEditor_container" style="display:none">
        <label class="control-label">کد </label>
    <div id="migCodeEditor" name="migCodeEditor" style="height: 300px">

    </div>

    </div>

</form>


                  </div>
<div class="modal-footer">

<div id="editorToolbar" class="text-center" style="position:relative;bottom:0;width:100%;background-color: white;">
   
  
   <input id="btnNext" type="button" class="btn btn-default" value="<"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان بعدی در ویرایشگر"/>
           
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value="پیداوجایگزینی" />
       <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="ToggleComment" />
      <input id="btnPrev" type="button" class="btn btn-default" value=">"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان قبلی در ویرایشگر"/>
</div>
    <!-- Modal -->
 <div id="winFind">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title" style="display: -webkit-box;">پیدا و جایگزین کردن</h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="txtFind" class="control-label" style="display: -webkit-box;">جستجو</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="txtFind" placeholder="متن مورد جستجو">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtReplace" class="control-label" style="display: -webkit-box;">جایگزین</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="txtReplace" required class="form-control" name="txtReplace" placeholder="متن جایگزین">
                </div>
         
        </div>
 
    </form>
    <div style="direction: ltr;">
<div style="direction: rtl;display: -webkit-box;display: -ms-flexbox;display: flex;">
             <span id="btnFindNext" class="btn btn-primary">بعدی</span>
  <span id="btnFindPrev" class="btn btn-primary">قبلی</span>
</div>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="کل متن با هم">
            <input id="chkFindWhole" name="chkFindWhole" type="checkbox" />
            <label for="chkFindWhole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="حساس به حروف کوچک و بزرگ">
            <input id="chkFindCase" name="chkFindCase" type="checkbox" />
            <label for="chkFindCase" class="label-default as-label">  </label>
          </div>
             </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="chkFindExp" name="chkFindExp" type="checkbox" />
            <label for="chkFindExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="انتخابی">
            <input id="chkFindSelect" name="chkFindSelect" type="checkbox" />
            <label for="chkFindSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div style="direction: rtl;display: -webkit-box;display: -ms-flexbox;display: flex;">
                <span id="btnReplace" class="btn btn-primary">جایگزین</span>
  <span id="btnReplaceAll" class="btn btn-primary">جایگزین همه</span>
       </div>
       <p></p>
    </div>

</div>
  
</div>', NULL, N'cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeIdAndParentId:"/odata/cms/MasterDataKeyValues?$filter=(TypeId%20eq%20@typeIdd)%20and%20(ParentId%20eq%20@idd)&$select=Id%2CParentId%2CCode%2COrder%2CName",develop_code_database_sqlserver_connections:"/develop/code/database/sqlserver/connections",develop_code_os_dotNet_generateMigration:"/develop/code/os/dotnet/GenerateMigration",develop_code_os_dotNet_getOutputVersionNumbers:"/develop/code/os/dotnet/GetOutputVersionNumbers/@codeId",develop_code_os_dotNet_getNamespaceAndClassesByDllId:"/odata/cms/MasterDataKeyValues?$filter=(((ForeignKey1%20eq%20752d)%20or%20(ForeignKey1%20eq%20753d))%20and%20(TypeId%20eq%201041d))%20and%20(ForeignKey2%20eq%20@dllIdd)&$select=Id%2CParentId%2CPathOrUrl%2CName%2CCode%2COrder",develop_code_os_dotNet_getDbMigrationClasses:"/develop/code/os/dotnet/GetDbMigrationClasses/@dllVersion/@configurationClassId",develop_code_os_dotNet_runMigration:"/develop/code/os/dotnet/RunMigration",develop_code_os_dotNet_getMigrationScript:"/develop/code/os/dotnet/GetMigrationScript"', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/09/19 21:14:23', N'1396/11/25 13:29:20', N'1396/11/25 13:29:20', CAST(N'2017-12-10T17:44:23.153' AS DateTime), CAST(N'2018-02-14T09:59:20.317' AS DateTime), CAST(N'2018-02-14T09:59:20.317' AS DateTime), 1, N'', N'', N'02b53808dddc4907b14506814f3c2801', 64, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asCodeEditor.js?minversion=7"},{"url":"asWindow.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (95, N'اجرای یک Unit Test', N'/fa/admin/develop/codes/os/dotnet/unit-test-runner', NULL, N'', NULL, 0, N'  <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">اجرای یک Unit Test  </h4>
</div>
<div class="modal-body">
   <form id="frmUnitTest" role="form" class="container-fluid">
       <br>

       <div class="row">
        <label for="drpUnitTestDll" class="control-label" style="float: right">  انتخاب اسمبلی تست </label>
    <br />

        <div id="drpUnitTestDll" name="drpUnitTestDll" style="float: left;">
    </div>
</div>
<div id="divDllCodes">
<div class="row">
        <label for="drpDllCodes" class="control-label" style="float: right"> انتخاب کد </label>
    <br />

        <div id="drpDllCodes" name="drpDllCodes" style="float: left;">
    </div>
</div>
</div>
<div id="divDllVersions">
<div class="row">
        <label for="drpDllVersion" class="control-label" style="float: right">  انتخاب نگارش</label>
    <br />

        <div id="drpDllVersion" name="drpVersion" style="float: left;">
    </div>
</div>
</div>
<div id="divMethods">
<div class="row">
        <label for="drpMethods" class="control-label" style="float: right">  انتخاب متد </label>
    <br />

        <div id="drpMethods" name="drpMethods" style="float: left;">
    </div>
</div>
</div>

        <div class="form-group">
            <label for="txtParameterValue" class="control-label">  مقدار پارامتر</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                    <input type="text" class="form-control" name="txtParameterValue" id="txtParameterValue" style="direction:ltr">
                </div>
         
        </div>
      <br>

                <div class="form-group text-center">
            <span id="btnExecute" class="btn btn-primary"> اجرا</span>
  
    </div>

</form>


                  </div>
<div class="modal-footer">

</div>
  
</div>', NULL, N'develop_code_os_dotNet_getOutputVersionNumbers:"/develop/code/os/dotnet/GetOutputVersionNumbers/@codeId",develop_code_os_dotNet_getDllByTypeId:"/odata/cms/MasterDataKeyValues?$filter=((ForeignKey1%20eq%20null)%20or%20(ForeignKey1%20eq%20@typeIdd))%20and%20(TypeId%20eq%201041d)&$select=Id%2CParentId%2CPathOrUrl%2CName%2CCode%2COrder",develop_code_os_dotNet_getNamespaceAndClassesAndMethodsByDllId:"/odata/cms/MasterDataKeyValues?$filter=((((ForeignKey1%20eq%20752d)%20or%20(ForeignKey1%20eq%20753d))%20or%20(ForeignKey1%20eq%20754d))%20and%20(TypeId%20eq%201041d))%20and%20(ForeignKey2%20eq%20@dllIdd)&$select=Id%2CParentId%2CPathOrUrl%2CName%2CCode%2COrder",develop_code_os_dotNet_runUnitTestMethod:"/develop/code/os/dotnet/RunUnitTestMethod",develop_code_os_dotNet_getUnitTestMethods:"/develop/code/os/dotnet/GetUnitTestMethods/@dllId/@dllVersion/@codeId"', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/10/02 21:34:42', N'1396/11/10 13:06:06', N'1396/11/10 13:06:06', CAST(N'2017-12-23T18:04:42.407' AS DateTime), CAST(N'2018-01-30T09:36:06.130' AS DateTime), CAST(N'2018-01-30T09:36:06.130' AS DateTime), 1, N'', N'', N'2a7ac14b25504f7fa764929ac4b4dc8b', 20, N'[{"url":"asDropdown.js"},{"url":"asDropdown.css"},{"url":"asValidate.js"},{"url":"asValidate.css"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (96, N'مدیریت دانلودها از آدرس راه دور', N'/fa/admin/fms/remote-download-manager', NULL, N'', NULL, 0, N'  <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">مدیریت دانلودها از آدرس راه دور  </h4>
</div>
<div class="modal-body">
   <form id="frmRemoteDownloadManager" role="form" class="container-fluid">
       <br>

       <div class="row">
        <label for="drpBaseUrl" class="control-label" style="float: right">    آدرس پایه </label>
    <br />

        <div id="drpBaseUrl" name="drpBaseUrl" style="float: left;">
    </div>
</div>

        <div class="form-group">
            <label for="txtUrl" class="control-label">   آدرس نسبی</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
                    <input type="text" class="form-control" name="txtUrl" id="txtUrl" style="direction:ltr">
                </div>
         
        </div>
      <br>
       <div class="form-group">
            <label for="txtFileName" class="control-label">    نام فایل برای ذخیره</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
                    <input type="text" class="form-control" name="txtFileName" id="txtFileName" style="direction:ltr">
                </div>
         
        </div>
      <br>

                <div class="form-group text-center">
            <span id="btnExecute" class="btn btn-primary"> اجرا</span>
  
    </div>

</form>


                  </div>
<div class="modal-footer">

</div>
  
</div>', NULL, N'cms_masterDataKeyValue_GetByDefaultsLanguageAndTypeId:"/odata/cms/MasterDataKeyValues?$filter=TypeId%20eq%20@typeIdd&$select=Id%2CParentId%2CCode%2CPathOrUrl%2COrder%2CName%2CIsLeaf%2CKey%2CValue",cms_masterDataKeyValue_GetByDefaultsLanguageAndParentId:"/odata/cms/MasterDataKeyValues?$filter=ParentId%20eq%20@parentIdd&$select=Id%2CParentId%2CCode%2COrder%2CName",fms_downlodFromUrl:"/fms/DownlodFromUrl"', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/10/14 14:58:51', N'1396/11/10 12:58:19', N'1396/11/10 12:58:19', CAST(N'2018-01-04T11:28:51.173' AS DateTime), CAST(N'2018-01-30T09:28:19.777' AS DateTime), CAST(N'2018-01-30T09:28:19.777' AS DateTime), 1, N'', N'', N'6fc3c92fefe8465c970955feeaf6e1fe', 21, N'[{"url":"asDropdown.js"},{"url":"asDropdown.css"},{"url":"asValidate.js"},{"url":"asValidate.css"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (97, N'مدیریت بارگذاری فایل ها', N'/fa/admin/fms/upload-manager', NULL, N'', NULL, 0, N'  <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">مدیریت بارگذاری فایل ها</h4>
</div>
<div class="modal-body">
    <span id="checker"></span>
   <form id="frmUploadManager" role="form" class="container-fluid" style="overflow: auto;" action="fms/upload" method="POST" enctype="multipart/form-data">
            <!-- Redirect browsers with JavaScript disabled to the origin page -->
            <!--<noscript>-->
            <!--    <input type="hidden" name="redirect" value="https://blueimp.github.io/jQuery-File-Upload/">-->
            <!--</noscript>-->
            <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
            <div class="row fileupload-buttonbar">
                <div class="col-lg-7">
                    <!-- The fileinput-button span is used to style the file input field as button -->
                    <span class="btn btn-success fileinput-button">
                        <i class="glyphicon glyphicon-plus"></i>
                        <span>Add files...</span>
                        <input type="file" name="files[]" multiple="multiple">
                    </span>
                    <button type="submit" class="btn btn-primary start">
                        <i class="glyphicon glyphicon-upload"></i>
                        <span>Start upload</span>
                    </button>
                    <button type="reset" class="btn btn-warning cancel">
                        <i class="glyphicon glyphicon-ban-circle"></i>
                        <span>Cancel upload</span>
                    </button>
             
                    <!-- The global file processing state -->
                    <span class="fileupload-process"></span>
                </div>
                <!-- The global progress state -->
                <div class="col-lg-5 fileupload-progress fade">
                    <!-- The global progress bar -->
                    <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                        <div class="progress-bar progress-bar-success" style="width: 0%;"></div>
                    </div>
                    <!-- The extended global progress state -->
                    <div class="progress-extended">&nbsp;</div>
                </div>
            </div>
            
            
       
            
            <!-- The table listing the files available for upload/download -->
            <table id="tblUpload" role="presentation" class="table table-striped">
                <tbody class="files">
                </tbody>
            </table>
        </form>
   
   
    <!-- The template to display files available for upload -->
<!--    <script id="template-upload" type="text/x-tmpl">-->
<!--{% for (var i=0, file; file=o.files[i]; i++) { %}-->
<!--    <tr class="template-upload fade">-->
<!--        <td>-->
<!--            <span class="preview"></span>-->
<!--        </td>-->
<!--        <td>-->
<!--            <p class="name">{%=file.name%}</p>-->
<!--            <strong class="error text-danger"></strong>-->
<!--        </td>-->
<!--        <td>-->
<!--            <p class="size">Processing...</p>-->
<!--            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>-->
<!--        </td>-->
<!--        <td>-->
<!--            {% if (!i && !o.options.autoUpload) { %}-->
<!--                <button class="btn btn-primary start" disabled>-->
<!--                    <i class="glyphicon glyphicon-upload"></i>-->
<!--                    <span>Start</span>-->
<!--                </button>-->
<!--            {% } %}-->
<!--            {% if (!i) { %}-->
<!--                <button class="btn btn-warning cancel">-->
<!--                    <i class="glyphicon glyphicon-ban-circle"></i>-->
<!--                    <span>Cancel</span>-->
<!--                </button>-->
<!--            {% } %}-->
<!--        </td>-->
<!--    </tr>-->
<!--{% } %}-->
<!--    </script>-->


   
    </div>


                
                  

                  
<div class="modal-footer">

</div>
  
</div>', NULL, N'fms_upload:"/fms/upload"', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/10/18 20:33:31', N'1396/11/10 12:58:34', N'1396/11/10 12:58:34', CAST(N'2018-01-08T17:03:31.447' AS DateTime), CAST(N'2018-01-30T09:28:34.277' AS DateTime), CAST(N'2018-01-30T09:28:34.277' AS DateTime), 1, N'', N'', N'c04c5ba6abc04708b3b00cdbb736444c', 96, N'[{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"},{"url":"fileupload.css?minversion=18"},{"url":"fileupload.js?minversion=18"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (98, N'مدیریت نقش ها', N'/fa/admin/security/roles', NULL, N'', NULL, 0, N'<form id="frmRoles" role="form" class="container-fluid">
     <br/>
        <div id="divRoles">
    <label class="control-label" style="float: right"> نقش ها</label>
    <br />
     
    <div class="container">
    <input id="btnTranslator" type="button" style="float: left;margin-top: 6px;" disabled="disabled" class="btn btn-default disabled" value="ترجمه" />
        <div id="drpRoles" style="float: left;">
        </div>
   
    </div>
     
                           <br/>
      
        <label class="control-label">جدید</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>
                  <br/>
      
        <label class="control-label"> برگ هست ؟</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkIsLeaf" name="chkIsLeaf" type="checkbox" />
            <label for="chkIsLeaf" class="label-default as-label">  </label>
          </div>
     </div>

      <br />
      
    <div class="form-group">
        <label for="txtName" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName" data-localize="title" placeholder="">
        </div>

    </div>
    
     <br>
           <div class="form-group">
        <label for="txtParentId" class="control-label"> شناسه پدر</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtParentId" id="txtParentId" style="direction: ltr;"  placeholder=" شناسه پدر">
        </div>
    </div>
         <br />
                        <div class="form-group">
        <label for="txtRoleId" class="control-label">   شناسه نقش</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtRoleId" id="txtRoleId" style="direction: ltr;"  placeholder="   شناسه نقش">
        </div>
    </div>


    <br />
   
            <div class="form-group">
        <label for="txtDescription" class="control-label">شرح</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>
    <br>

        <div class="form-group">
        <label for="txtOrder" class="control-label" >ترتیب</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtOrder" id="txtOrder"  placeholder="1">
        </div>

    </div>
    <br/>
 

        <br />

        <label for="drpViewRole" class="control-label" style="float: right">نقش مشاهده</label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />
        <br />
    <label for="drpAccessRole" class="control-label" style="float: right">نقش اعطای دسترسی</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label" style="float: right">نقش ویرایش</label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>
           <br/>
      
        <label class="control-label">فعال</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
        <div class="text-center">
            <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
              <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>


  ', NULL, N'security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",security_Role_get:"/odata/security/Roles?$filter=Id%20eq%20@idd&$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription%2CStatus%2CViewRoleId%2CModifyRoleId%2CAccessRoleId",security_Role_save:"/security/role/save",security_Role_delete:"/security/role/delete"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/10/28 16:11:42', N'1396/11/28 22:01:27', N'1396/11/28 22:01:27', CAST(N'2018-01-18T12:41:42.437' AS DateTime), CAST(N'2018-02-17T18:31:27.897' AS DateTime), CAST(N'2018-02-17T18:31:27.897' AS DateTime), 1, N'', N'', N'3d793b51f61a4a1faf501da4c4e8c8d9', 28, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (99, N'مدیریت گروه ها', N'/fa/admin/security/groups', NULL, N'', NULL, 0, N'<form id="frmRoles" role="form" class="container-fluid">
     <br/>
    <label class="control-label" style="float: right">  گروه ها</label>
    <br />
     
    <div class="container">
    <input id="btnTranslator" type="button" style="float: left;margin-top: 6px;" disabled="disabled" class="btn btn-default disabled" value="ترجمه" />
        <div id="drpGroups" style="float: left;">
        </div>
   
    </div>
     
                           <br/>
      
        <label class="control-label">جدید</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>
                  <br/>
      
        <label class="control-label"> برگ هست ؟</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkIsLeaf" name="chkIsLeaf" type="checkbox" />
            <label for="chkIsLeaf" class="label-default as-label">  </label>
          </div>
     </div>

      <br />
      
    <div class="form-group">
        <label for="txtName" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName" data-localize="title" placeholder="">
        </div>

    </div>
    
     <br>
           <div class="form-group">
        <label for="txtParentId" class="control-label"> شناسه پدر</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtParentId" id="txtParentId" style="direction: ltr;"  placeholder=" شناسه پدر">
        </div>
    </div>
         <br />
                        <div class="form-group">
        <label for="txtGroupId" class="control-label">شناسه گروه</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtGroupId" id="txtGroupId" style="direction: ltr;"  placeholder="شناسه گروه">
        </div>
    </div>


    <br />
   
            <div class="form-group">
        <label for="txtDescription" class="control-label">شرح</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>

   

    <br>

        <div class="form-group">
        <label for="txtOrder" class="control-label" >ترتیب</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtOrder" id="txtOrder"  placeholder="1">
        </div>

    </div>
     <div id="divGroupRoles">
    <br/>
         <label for="drpRoles" class="control-label" style="float: right"> نقش ها</label>
    <br />
    <div class="container">

        <div id="drpRoles" name="drpRoles" style="float: left;">
        </div>
    </div>
    </div>
    <br />
   <div id="divRoles">
        <label for="drpViewRole" class="control-label" style="float: right">نقش مشاهده</label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />
        <br />
    <label for="drpAccessRole" class="control-label" style="float: right">نقش اعطای دسترسی</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label" style="float: right">نقش ویرایش</label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>
           <br/>
      
        <label class="control-label">فعال</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
        <div class="text-center">
            <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
              <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>


  ', NULL, N'security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",security_Group_getAllByDefaultsLanguage:"/odata/security/Groups?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",security_Group_save:"/security/group/save",security_Group_delete:"/security/group/delete",security_GroupRoles_getByGroupId:"/odata/security/GroupRoles?$filter=GroupId%20eq%20@groupIdd&$select=RoleId",security_Group_get:"/odata/security/Groups?$filter=Id%20eq%20@idd&$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription%2CStatus%2CViewRoleId%2CModifyRoleId%2CAccessRoleId"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/11/01 13:21:02', N'1396/11/10 13:09:30', N'1396/11/10 13:09:30', CAST(N'2018-01-21T09:51:02.857' AS DateTime), CAST(N'2018-01-30T09:39:30.757' AS DateTime), CAST(N'2018-01-30T09:39:30.757' AS DateTime), 1, N'', N'', N'7796be45eeb64b4b93fb977235f1a275', 24, N'[{"url":"asDropdown.js"},{"url":"asDropdown.css"},{"url":"asValidate.js"},{"url":"asValidate.css"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (100, N'ایجاد و ویرایش کاربران', N'/fa/admin/security/users-manager/users', NULL, N'', NULL, 0, N' 
 
     
       <div class="col-lg-12" >
         <div class="col-lg-2" style="float: left;" id="divGroups">
            <div id="drpGroups" style="float: left;">
                
            </div>
        </div>
      </div>

       <br/>
     <table id="grvUsers" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
            
               <th data-header-align="right" data-align = "right" data-column-id="Id" data-identifier="true" data-type="numeric" class="col-lg-1">ردیف</th>
                   <th data-header-align="center" data-align = "center" data-column-id="FirstName">نام</th>
                   <th data-header-align="center" data-align = "center" data-column-id="LastName">نام خانوادگی</th>
                <th data-header-align="center" data-align = "center" data-column-id="UserName"  data-order="desc">نام کاربری</th>
                 <th data-header-align="center" data-align = "center" data-column-id="Status" data-formatter="Status" data-css-class="" style="">وضعیت</th>
        </tr>
    </thead>
</table>
  
<div class="text-center">
        <input id="btnEdit" type="button" class="btn btn-default"  value=" ویرایش " />
      
            <input id="btnNew" type="button" class="btn btn-default" value="   جدید  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text=" در حال اجرا ... "  value="  حذف  "  />
</div>
     <div style="display: none">
    
              <div id="winAddOrEdit">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">ایجاد و ویرایش </h4>
            </div>
        
    <div class="modal-body">
        <form id="frm" role="form" class="container-fluid">
             <div class="form-group">
            <label for="txtUserName" class="control-label"> نام کاربری</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" class="form-control as-validate-valid" name="txtUserName" id="txtUserName" placeholder="نام کاربری" aria-required="true" aria-invalid="false">
                </div>
         
        </div>
             <div class="form-group">
            <label for="txtMail" class="control-label">آدرس ایمیل </label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" class="form-control as-validate-valid" name="txtMail" id="txtMail" placeholder="آدرس ایمیل " aria-required="true" aria-invalid="false">
                </div>
         
        </div>
        <div class="form-group">
        <label for="txtFirstName" class="control-label" > نام </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
            <input type="text" class="form-control" name="txtFirstName" id="txtFirstName" >
        </div>
    </div>
       <br>
      <div class="form-group">
        <label for="txtLastName" class="control-label" > نام خانوادگی </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
            <input type="text" class="form-control" name="txtLastName" id="txtLastName" >
        </div>
    </div>
       <br />
        <div class="form-group">
        <label for="txtAliasName" class="control-label" >  نام مستعار </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
            <input type="text" class="form-control" name="txtAliasName" id="txtAliasName">
        </div>
    </div>
             <br />
   <div>
               <label class="control-label">  تغییر گذر واژه</label>
        <div class="as-material-switch">
               <div style="float: left;">
            <input id="chkChangePass" name="chkChangePass" type="checkbox" />
            <label for="chkChangePass" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
  </div>
<div id="divPass">
                   <div class="form-group">
        <label for="txtPassword" class="control-label" >    گذر واژه </label>
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password"  class="form-control as-validate-valid" id="txtPassword" name="txtPassword" placeholder="گذر واژه" aria-required="true" aria-invalid="false">
                </div>
    </div>
       <br />
     <div class="form-group">
        <label for="txtPasswordAgain" class="control-label" >   تکرار گذر واژه </label>
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password"  class="form-control as-validate-valid" id="txtPasswordAgain" name="txtPasswordAgain" placeholder=" تکرار گذر واژه" aria-required="true" aria-invalid="false">
                </div>
    </div>
</div>
       <br />
       <div class="row">
            <label for="drpGroupsAddUpdate" class="control-label" style="float: right">  گروه ها</label>
    <br />

        <div id="drpGroupsAddUpdate" name="drpGroupsAddUpdate" style="float: left;">
        </div>
</div>
    <br />
   <div id="divRoles">
<div class="row">
            <label for="drpViewRole" class="control-label" style="float: right">نقش مشاهده</label>
    <br />

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
</div>
    <br />

<div class="row">
        <label for="drpAccessRole" class="control-label" style="float: right">نقش اعطای دسترسی</label>
    <br />
        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
</div>
      <br />    
  <div class="row">
                <label for="drpModifyRole" class="control-label" style="float: right">نقش ویرایش</label>
    <br />

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
  </div>
        
   </div>
       <br />
   <div>
               <label class="control-label">  فعال</label>
        <div class="as-material-switch">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
  </div>
    </form>
    </div>
    
    <div class="modal-footer">
    <div class="form-group pull-right">
        <div>
            <span id="btnExecute" class="btn btn-primary">اجرا</span>
            <span id="btnCancel" class="btn btn-primary">انصراف</span>
        </div>
  
    </div>
       
 </div>
 
    </div>
    
    </div>

    ', NULL, N'security_Role_getAllByDefaultsLanguage:"/odata/security/Roles?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",security_Group_getAllByDefaultsLanguage:"/odata/security/Groups?$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription",security_User_GetUsersByPaging:"/security/user/GetUsersByPagination/@groupId/@orderby/@skip/@take",security_User_Save:"/security/user/Save",security_User_Dell:"/security/user/delete"', 0, 0, 0, 16, 0, 0, 0, N'fa', 1, 1, 0, 5, 5, 5, N'1396/11/04 13:48:06', N'1396/11/10 13:09:43', N'1396/11/10 13:09:43', CAST(N'2018-01-24T10:18:06.817' AS DateTime), CAST(N'2018-01-30T09:39:43.977' AS DateTime), CAST(N'2018-01-30T09:39:43.977' AS DateTime), 1, N'', N'', N'920851729844434da47bb02221e8e808', 37, N'[{"url":"asBootGrid.css?minversion=13"},{"url":"asBootGrid.js?minversion=13"},{"url":"asDropdown.js"},{"url":"asDropdown.css"},{"url":"asValidate.js"},{"url":"asValidate.css"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (101, N'تغییر رمز عبور', N'/fa/admin/security/change-password', NULL, N'', NULL, 0, N'<div class="modal-content">
<div class="modal-header"><button class="close" type="button" data-dismiss="modal">&times;</button>
<h4 class="modal-title">تغییر رمز عبور</h4>
</div>
<div class="modal-body"><form id="frmChangePass">

        <div class="form-group">
            <label for="txtOldPassword" class="control-label"> گذر واژه قدیمی</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password" required="" class="form-control as-validate-valid" id="txtOldPassword" name="txtOldPassword" placeholder=" گذر واژه قدیمی" aria-required="true" aria-invalid="false">
                </div>
         
        </div>
        
        <div class="form-group">
            <label for="txtPassword" class="control-label"> گذر وازه جدید</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password" required="" class="form-control as-validate-valid" id="txtPassword" name="txtPassword" placeholder=" گذر واژه جدید" aria-required="true" aria-invalid="false">
                </div>
         
        </div>
        
                <div class="form-group">
            <label for="txtPasswordAgain" class="control-label">  تکرار گذر واژه جدید </label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password" required="" class="form-control as-validate-valid" id="txtPasswordAgain" name="txtPasswordAgain" placeholder="تکرار گذر واژه جدید" aria-required="true" aria-invalid="false">
                </div>
         
        </div>

</form></div>
<div class="modal-footer">
<div class="form-group pull-right">
<div><span id="btnChange" class="btn btn-primary">تغییر</span>
<span id="btnCancel" class="btn btn-primary">انصراف</span></div>
</div>
</div>
</div>', NULL, N'security_User_ChangePassword:"/security/user/changePassword"', 0, 0, 0, 20, 0, 0, 0, N'fa', 1, 1, 0, 7, 5, 5, N'1396/11/07 20:24:14', N'1396/11/10 13:10:00', N'1396/11/10 13:10:00', CAST(N'2018-01-27T16:54:14.417' AS DateTime), CAST(N'2018-01-30T09:40:00.143' AS DateTime), CAST(N'2018-01-30T09:40:00.143' AS DateTime), 1, N'', N'', N'84466be7bd1b4b97abf9a7cda2f8213f', 9, N'[{"url":"asValidate.js"},{"url":"asValidate.css"},{"url":"asModal.css?minversion=46"},{"url":"asModal.js?minversion=46"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (102, N'Links Management', N'/en/admin/cms/linkmanager', NULL, N'', NULL, 0, N'<form id="frmLink" class="container-fluid">
                 <br />
                 
                  <div class="form-group">
            <label class="control-label">Country</label>
         
             <div id="drpLanguge"></div>
         
        </div>
          <br>
    <label class="control-label"> Link</label>
    <br />
    <div class="container">
        <div id="drpLink" style="float: left;">
        </div>
    </div>
                            <br/>
      
        <label class="control-label">New</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>
               <br />
               
    <label for="drpLinkType" class="control-label">Link Type</label>
    <br />
    <div class="container">
        <div id="drpLinkType" name="drpLinkType" style="float: left;">
        </div>
    </div>
                       <br />
             <label class="control-label">Is Leaf ?</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkIsLeaf" name="chkIsLeaf" type="checkbox" />
            <label for="chkIsLeaf" class="label-default as-label">  </label>
          </div>
     </div>
         <br />
                   <br />
             <label class="control-label">Is Mobile Mode ?</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkMobile" name="chkMobile" type="checkbox" />
            <label for="chkMobile" class="label-default as-label">  </label>
          </div>
     </div>
         <br />
                         <div class="form-group">
        <label for="txtName" class="control-label"> Name</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName"  placeholder="Name">
        </div>
    

    </div>



                           <br/>
                    <div class="form-group">
        <label for="txtIconPath" class="control-label">Icon Url</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtIconPath" id="txtIconPath" style="direction: ltr;"  placeholder="Icon Url">
        </div>
    

    </div>
    <br />

                    <div class="form-group">
        <label for="txtHtml" class="control-label"> Html</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtHtml" id="txtHtml" style="direction: ltr;"  placeholder="Html">
        </div>
    

    </div>
    <br/>
  
    <br />
                    <div class="form-group">
        <label for="txtUrl" class="control-label"> Url</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtUrl" id="txtUrl" style="direction: ltr;"  placeholder="Url">
        </div>
    

    </div>
        <br />
                    <div class="form-group">
        <label for="txtAction" class="control-label"> Opration</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtAction" id="txtAction" style="direction: ltr;"  placeholder="Opratio">
        </div>
    

    </div>
            <br />
                    <div class="form-group">
        <label for="txtCode" class="control-label">  Exec Code</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtCode" id="txtCode" style="direction: ltr;"  placeholder="Exec Code">
        </div>
    

    </div>
    <br/>
        <div class="form-group">
        <label for="txtOrder" class="control-label" >Order</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtOrder" id="txtOrder"  placeholder="1">
        </div>

    </div>
    <br/>
    <div id="divRoles">
        <label for="drpViewRole" class="control-label"> View Role</label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />

    <label for="drpAccessRole" class="control-label">Access Role</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label"> Edit Role</label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>

    <br />

        <label class="control-label">Active</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
     <br />
            <label class="control-label">Show In Search Engine</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkShowToSerachEngin" name="chkShowToSerachEngin" type="checkbox" />
            <label for="chkShowToSerachEngin" class="label-default as-label">  </label>
          </div>
     </div>
         <br />
        <div class="text-center">
            <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
              <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>
</form>', NULL, N'cms_link_getByLanguage:"/odata/cms/Links?$filter=Language%20eq%20''@lang''&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf",cms_link_save:"/cms/link/save",cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",cms_languageAndCulture_public_getAll:"/cms/languageAndCulture/public/getAll",security_Role_getAllByOtherLanguage:"/odata/security/LocalRoles?$filter=(Language%20eq%20''@lang'')&$expand=Role&$select=Role%2FId%2CRole%2FParentId%2CRole%2FName%2CRole%2FOrder%2CRole%2FIsLeaf%2CName",cms_link_get:"/odata/cms/Links?$filter=Id%20eq%20@idd&$select=Id%2CText%2CHtml%2CTypeId%2CIconPath%2CIsLeaf%2CUrl%2COrder%2CParentId%2CShowToSearchEngine%2CViewRoleId%2CModifyRoleId%2CAccessRoleId%2CAction%2CTransactionCode%2CIsMobile%2CRowVersion%2CStatus",cms_link_delete:"/cms/link/delete"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/19 17:02:43', N'1396/11/23 21:56:37', N'1396/11/23 21:56:37', CAST(N'2018-02-08T13:32:43.113' AS DateTime), CAST(N'2018-02-12T18:26:37.750' AS DateTime), CAST(N'2018-02-12T18:26:37.750' AS DateTime), 1, N'', N'', N'f3de24cb216c47f596df06da63a82e80', 11, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asFlexSelect.css?minversion=41"},{"url":"asFlexSelect.js?minversion=41"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (103, N'Data Translator', N'/en/admin/cms/languageandculture-manager/data-translator', NULL, N'', NULL, 0, N'
    <div class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title"> Data Translator</h4>
</div>
<div class="modal-body">
    <form  id="frmTranslator" role="form" >
         
          
          
                  <div class="form-group">
            <label class="control-label">Country</label>
         
             <div id="drpLanguge"></div>
         
        </div>
          <br>
           <div class="form-group">
            <label for="txtLang" class="control-label"> Languge</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-font"></i></span>
                    <input type="text" readonly="readonly" class="form-control" name="txtLang" id="txtLang" placeholder=" Languge">
                </div>
         
        </div>
 
    <br />
               <div class="form-group">
            <label for="txtCulture" class="control-label"> Culture</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
                    <input type="text" readonly="readonly" class="form-control" name="txtCulture" id="txtCulture" placeholder=" Culture">
                </div>
         
        </div>
 
    <br />
        <div class="form-group">
            <label for="txtName" class="control-label"> Name</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
                    <input type="text" class="form-control" name="txtName" id="txtName" placeholder="Name">
                </div>
         
        </div>
 
    <br />
   
            <div class="form-group">
        <label for="txtDescription" class="control-label">Description</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-comment"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>
     
     
                      <br />
    <div style="direction: ltr;">
          <br />
           <label class="control-label" style="position: absolute;right: 10px;">Active</label>
        <div class="as-material-switch">
               <div style="float:left">
            <input id="chkStatusTrans" name="chkStatusTrans" type="checkbox" />
            <label for="chkStatusTrans" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
    </div>


    </form>
</div>
<div class="modal-footer">
    <div class="form-group pull-right">
        <div>
            <span id="btnTranslate" class="btn btn-primary">Translate</span>
            <span id="btnCancel" class="btn btn-primary">Cancel</span>
        </div>
  
    </div>
  
   
</div>
</div>

', NULL, N'cms_masterDataLocalKeyValue_get:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValueId%20eq%20@idd)%20and%20(Language%20eq%20''@lang'')&$select=Id%2CName%2CDescription%2CRowVersion%2CStatus",cms_masterDataLocalKeyValue_save:"/cms/masterdatalocalkeyvalue/save",cms_languageAndCulture_public_getAll:"/cms/languageAndCulture/public/getAll",cms_localFilePath_save:"/cms/localfilepath/Save",cms_localFilePath_get:"/odata/cms/LocalFilePaths?$filter=(FilePathId%20eq%20@idd)%20and%20(Language%20eq%20''@lang'')&$select=Id%2CName%2CDescription%2CRowVersion%2CStatus",cms_localFile_get:"/odata/cms/LocalFiles?$filter=(FileId%20eq%20@idd)%20and%20(Language%20eq%20''@lang'')&$select=Id%2CName%2CDescription%2CRowVersion%2CStatus",cms_localFile_save:"/cms/localfile/Save",security_LocalRole_save:"/security/localrole/save",security_LocalRole_get:"/odata/security/LocalRoles?$filter=(RoleId%20eq%20@idd)%20and%20(Language%20eq%20''@lang'')&$select=Id%2CName%2CDescription%2CRowVersion%2CStatus",security_LocalGroup_get:"/odata/security/LocalGroups?$filter=(GroupId%20eq%20@idd)%20and%20(Language%20eq%20''@lang'')&$select=Id%2CName%2CDescription%2CRowVersion%2CStatus",security_LocalGroup_save:"/security/localgroup/save"', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/19 18:03:23', N'1396/11/19 18:03:23', N'1396/11/19 18:03:23', CAST(N'2018-02-08T14:33:23.407' AS DateTime), CAST(N'2018-02-08T14:33:23.407' AS DateTime), CAST(N'2018-02-08T14:33:23.407' AS DateTime), 1, N'', N'', N'7cc477d5bdce4398bf0958ededada970', 1, N'[{"url":"asFlexSelect.css?minversion=41"},{"url":"asFlexSelect.js?minversion=41"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (104, N'Add or Updatet languages and cultures', N'/en/admin/cms/languageandculture-manager/editor', NULL, N'', NULL, 0, N'
<form id="frmLang" role="form" class="container-fluid">
        <br />
        <div class="row">
                <div class="form-group">
    
                
       
               <div class="col-lg-1">     <label class="control-label">Language and culture</label></div>
       <div id="drpLanguge" class="col-lg-1"></div>
            
        </div>
        </div>
                  <br>
                          <label class="control-label">New</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>

    <br/>
                  <div class="row">
                 <div class="form-group">
          <div class="col-lg-1">    <label for="txtLang" class="control-label"> Flag</label></div>
         
                <div class="col-lg-1" id="imgFlag">
                </div>
                   <input id="btnPathSelector" type="button" class="btn btn-default" value="Choose Image" />
        </div>
         </div>
                  <br>
                 <div class="form-group">
            <label for="txtCountry" class="control-label"> Country</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-font"></i></span>
                    <input type="text" class="form-control" name="txtCountry" id="txtCountry" placeholder="Country">
                </div>
         
        </div>
          <br>
                 <div class="form-group">
            <label for="txtLang" class="control-label"> Language</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-font"></i></span>
                    <input type="text" class="form-control" name="txtLang" id="txtLang" placeholder="Language">
                </div>
         
        </div>
 
    <br />
               <div class="form-group">
            <label for="txtCulture" class="control-label">Culture</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
                    <input type="text" class="form-control" name="txtCulture" id="txtCulture" placeholder="Culture">
                </div>
         
        </div>
 
    <br />

       
      
         <label class="control-label">Default language</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkDefaultsLang" name="chkDefaultsLang" type="checkbox" />
            <label for="chkDefaultsLang" class="label-default as-label">  </label>
          </div>
     </div>
  <br />
         
      
         <label class="control-label">Is Right to left language</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkIsRightToLeft" name="chkIsRightToLeft" type="checkbox" />
            <label for="chkIsRightToLeft" class="label-default as-label">  </label>
          </div>
     </div>
  <br />

   <div id="divRoles">
        <label for="drpViewRole" class="control-label" style="float: right"> View Role</label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />

    <label for="drpAccessRole" class="control-label" style="float: right">Access Role</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label" style="float: right">Edite Role</label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>

    <br />
    <div id="edrJavascript_container">
        <label class="control-label">Translation</label>
    <div id="edrJavascript" name="edrJavascript" style="height: 300px">

    </div>
    </div>


              <br/>
      
        <label class="control-label">Active</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
                   <br/>
      
        <label class="control-label">Publiah</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkPublish" name="chkPublish" type="checkbox" />
            <label for="chkPublish" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
        <div class="text-center">
            <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
              <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>

<div id="editorToolbar" class="text-center" style="position:fixed;bottom:0;width:100%;z-index:1060;background-color: white;">
         <label class="control-label" style="float: right;;margin-top: 10px;"> Active Editor : </label>
        <span id="lblEditor" class="control-label" style="float: right;margin-top: 10px;"> </span>
        <input id="btnPrev" type="button" class="btn btn-default" value=" < "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Previous Positon In Editor "/>
 
            <input id="btnEditorResize" type="button"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+L" class="btn btn-default" value="Resize" />
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value="Find And Replace" />
             <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="Comment/UnComment" />
              <input id="btnRecovery" type="button" class="btn btn-default" value="Recover Last Edition" />
      <input id="btnNext" type="button" class="btn btn-default" value=" > "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Next Location In Editor"/>
</div>


    <!-- Modal -->
   <div id="divFind">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title"> Find And Replace  </h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="txtFind" class="control-label">Search</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="txtFind" placeholder="Text To Search">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtReplace" class="control-label">Replace</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="txtReplace" required class="form-control" name="txtReplace" placeholder="Text To Replace">
                </div>
         
        </div>
 
    </form>
    <div>
         <span id="btnFindNext" class="btn btn-primary">Next</span>
  <span id="btnFindPrev" class="btn btn-primary">Previous</span>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Whole Word">
            <input id="chkFindHole" name="chkFindHole" type="checkbox" />
            <label for="chkFindHole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Case">
            <input id="chkFindCase" name="chkFindCase" type="checkbox" />
            <label for="chkFindCase" class="label-default as-label">  </label>
          </div>
          
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="chkFindExp" name="chkFindExp" type="checkbox" />
            <label for="chkFindExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Selection">
            <input id="chkFindSelect" name="chkFindSelect" type="checkbox" />
            <label for="chkFindSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div>
                <span id="btnReplace" class="btn btn-primary">Replace</span>
  <span id="btnReplaceAll" class="btn btn-primary">Replace All</span>
       </div>
       <p></p>
    </div>
 </div>
    <div style="display: none">
      
 
  <div id="winRestorEditor">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">Recover Editor</h4>
            </div>
        
    <div class="modal-body">
          <span id="btnCancelRestor" class="btn btn-primary">Cancel</span>
         <span id="btnRestorPerviousEditors" class="btn btn-primary">Recover</span>
        
    </div>
       
 </div>

    </div>
', NULL, N'cms_languageAndCulture_save:"/cms/languageAndCulture/save",cms_languageAndCulture_public_getAll:"/cms/languageAndCulture/public/getAll",security_Role_getAllByOtherLanguage:"/odata/security/LocalRoles?$filter=(Language%20eq%20''@lang'')&$expand=Role&$select=Role%2FId%2CRole%2FParentId%2CRole%2FName%2CRole%2FOrder%2CRole%2FIsLeaf%2CName",cms_languageAndCulture_byJsFile_get:"/cms/languageAndCulture/Get/@id",cms_languageAndCulture_delete:"/cms/languageAndCulture/delete"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/19 18:24:19', N'1396/11/22 14:25:21', N'1396/11/22 14:25:21', CAST(N'2018-02-08T14:54:19.617' AS DateTime), CAST(N'2018-02-11T10:55:21.060' AS DateTime), CAST(N'2018-02-11T10:55:21.060' AS DateTime), 1, N'', N'', N'23cd2e374f1e4b189a2e5a9ad8c76da3', 6, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asCodeEditor.js?minversion=7"},{"url":"asFlexSelect.css?minversion=41"},{"url":"asFlexSelect.js?minversion=41"},{"url":"asWindow.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (105, N'Group Manager', N'/en/admin/cms/group-manager', NULL, N'', NULL, 0, N'<form id="frmGroups" role="form" class="container-fluid">
        <br />
            <label for="drpGroup" class="control-label" >Group</label>
    <br />
     
    <div class="container">
        <div id="drpGroup" name="drpGroup" style="float: left;margin-top: 10px;">
        </div>
   
    </div>
     
                           <br/>
    <label class="control-label" >Master Data Type</label>
    <br />
    <div class="container">

        <div id="drpMasterDataType" style="float: left;">
        </div>
    </div>
                           <br/>
    <label class="control-label" style="float: right"> Master Data</label>
    <br />
     
    <div id="masterdata" class="container">
        <div id="drpMasterData" style="float: left;margin-top: 10px;">
        </div>
   
    </div>
     
                           <br/>
                           <div class="text-center">
     <input id="btnMasterDataToGroup" type="button"  class="btn btn-default" value="Edit"/>
     </div>
                <br />
                 
                  <div class="form-group">
            <label class="control-label">Country</label>
         
             <div id="drpLanguge"></div>
         
        </div>
          <br>
    <label class="control-label"> Menu</label>
    <br />
    <div id="link" class="container">
        <div id="drpLink" style="float: left;">
        </div>
    </div>
                            <br/>
                              <div class="text-center">
                              <input id="btnLinkToGroup" type="button" class="btn btn-default" value="Edit" />
                                </div>
       
</form>


  ', NULL, N'cms_link_getByLanguage:"/odata/cms/Links?$filter=Language%20eq%20''@lang''&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf",cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",cms_languageAndCulture_public_getAll:"/cms/languageAndCulture/public/getAll",cms_entityGroup_get:"/odata/cms/EntityGroups?$filter=GroupId%20eq%20@groupIdd&$select=Id%2CLinkId%2CMasterDataKeyValueId%2CCommentId%2CEntityTypeId",cms_entityGroup_save:"/cms/entityGroup/save",cms_masterDataKeyValue_getTypeByOtherLanguages:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FIsType%20eq%20true)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentTypeId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FTypeId%2CName"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/21 14:04:52', N'1396/11/22 14:34:58', N'1396/11/22 14:34:58', CAST(N'2018-02-10T10:34:52.983' AS DateTime), CAST(N'2018-02-11T11:04:58.173' AS DateTime), CAST(N'2018-02-11T11:04:58.173' AS DateTime), 1, N'', N'', N'aa1028a02226443b9b25cb0672a418e7', 8, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asFlexSelect.css?minversion=41"},{"url":"asFlexSelect.js?minversion=41"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (106, N'Service Management', N'/en/admin/develop/servicemanagment', NULL, N'', NULL, 0, N'<form id="frmQuery" role="form" class="container-fluid">
        <br />
    <label class="control-label"> Service</label>
    <br />
    <div class="container">
        
        <div id="drpService" style="float: left;">
        </div>
          <input id="btnTranslator" type="button" style="float: left;margin-top: 6px;" class="btn btn-default disabled" disabled="disabled" value="Translate" />
    </div>
                           <br/>
      
        <label class="control-label">New</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>
                  <br/>
      
        <label class="control-label">Is Service ?</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkService" name="chkService" type="checkbox" />
            <label for="chkService" class="label-default as-label">  </label>
          </div>
     </div>

      <br />
    <div class="form-group">
        <label for="txtName" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName" data-localize="title" placeholder="">
        </div>

    </div>
    
     <br>
                        <div class="form-group">
        <label for="txtServiceId" class="control-label">  Service ID</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtServiceId" id="txtServiceId" style="direction: ltr;"  placeholder=" Service ID">
        </div>
    </div>
         <br />
    <div class="form-group">
        <label for="txtCode" class="control-label">Code</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtCode" id="txtCode"  style="direction: ltr;"  placeholder="Code">
        </div>

    </div>
          <br />
    <div class="form-group">
        <label for="txtUrl" class="control-label">Url</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtUrl" id="txtUrl"  style="direction: ltr;"  placeholder="Url">
        </div>

    </div>

    <br />
        <div class="form-group">
        <label for="txtCompiledUrl" class="control-label">Compiled Url  </label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtCompiledUrl" id="txtCompiledUrl"  style="direction: ltr;"  placeholder="Compiled Url">
        </div>

    </div>

    <br />
   
            <div class="form-group">
        <label for="txtDescription" class="control-label">Description</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>
 <br>
                        <div class="form-group">
        <label for="txtId" class="control-label"> Code ID</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtId" id="txtId" style="direction: ltr;"  placeholder="Code ID">
        </div>
    </div>
   

    <br>
                    <div class="form-group">
        <label for="txtVersion" class="control-label">Version</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" readonly="true" class="form-control" name="txtVersion" id="txtVersion" style="direction: ltr;"  placeholder="Vesrsion">
        </div>
    

    </div>
    <br/>
        <div class="form-group">
        <label for="txtOrder" class="control-label" >Order</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtOrder" id="txtOrder"  placeholder="1">
        </div>

    </div>
    <br/>
    
       
      
  <div id="divCache">
             <label class="control-label"> Run From Memory</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCache" name="chkCache" type="checkbox" />
            <label for="chkCache" class="label-default as-label">  </label>
          </div>
     </div>
  <br />
<fieldset id="divSlidingExpirationTimeInMinutes" disabled>
    <div class="form-group">
        <label for="txtSlidingExpirationTimeInMinutes" class="control-label" >Sliding Expiration Time In Minutes</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtSlidingExpirationTimeInMinutes" id="txtSlidingExpirationTimeInMinutes"   placeholder="0">
        </div>

    </div>
    </fieldset>
        <br />
  </div>
   <div id="divRoles">
        <label for="drpViewRole" class="control-label"> View Role</label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />

    <label for="drpAccessRole" class="control-label">Access Role</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label">Edite Role </label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>

    <br />
           <br />
    <label for="drpContexts" class="control-label" style="float: right"> Odata Contexts MetaData</label>
    <br />
    <div class="container">

        <div id="drpContexts" name="drpContexts" style="float: left;">
        </div>
    </div>
        <br />
        <div class="text-center">
            <input id="btnGetMetaData" type="button" class="btn btn-default" value="Get Meta Data" />
        </div>
    <br />
<div id="divEditor">
        <div id="edrJavascript_container">
        <label class="control-label">Java Script </label>
    <div id="edrJavascript" name="edrJavascript" style="height: 300px">

    </div>
    </div>
</div>
        
        
                            <br />
                <label class="control-label"> Write Changes On Main File</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCheckIn" name="chkCheckIn" type="checkbox" />
            <label for="chkCheckIn" class="label-default as-label">  </label>
          </div>
     </div>
               <br />
            <div class="form-group">
        <label for="txtComment" class="control-label" >ChangSet Comment  </label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtComment" id="txtComment" >
        </div>

    </div>
     <br />
      
 <div id="divIsLogOnService">
            <label class="control-label">    Service Log</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkIsLogOnService" name="chkIsLogOnService" type="checkbox" />
            <label for="chkIsLogOnService" class="label-default as-label">  </label>
          </div>
     </div>

              <br/>
 </div>
      
        <label class="control-label">CheckOut</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkEditeMode" name="chkEditeMode" type="checkbox" />
            <label for="chkEditeMode" class="label-default as-label">  </label>
          </div>
     </div>
           <br/>
      
        <label class="control-label">Active</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
              <br />
        
            <label class="control-label">  Last Modified User</label>
        <div class="container">
               <div id="divLastModifiUser" style="float: left;">
           
            
          </div>
     </div>
        <br />
        
                   <label class="control-label">Last Modifi Local DateTime</label>
        <div class="container">
               <div id="divLastModifiLocalDataTime" style="float: left;">
           
            
          </div>
     </div>
        <br />
        <div class="text-center">
            <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
             <input id="btnCompile" type="button" class="btn btn-default" data-loading-text="Loading ..."  value="Compile" />
             <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>
 <br>
   <div class="text-center" id="divResult">
       

   </div>
    

            <br>
<div id="editorToolbar" class="text-center" style="position:fixed;bottom:0;width:100%;z-index:1060;background-color: white;">
     
              <label class="control-label" style="float: right;;margin-top: 10px;"> Active Editor : </label>
        <span id="lblEditor" class="control-label" style="float: right;margin-top: 10px;"> </span>
        <input id="btnPrev" type="button" class="btn btn-default" value=" < "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Previous Positon In Editor "/>
 
            <input id="btnEditorResize" type="button"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+L" class="btn btn-default" value="Resize" />
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value="Find And Replace" />
             <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="Comment/UnComment" />
              <input id="btnRecovery" type="button" class="btn btn-default" value="Recover Last Edition" />
         <input id="btnSourceControl" type="button" class="btn btn-default" value="Source Control" />
      <input id="btnNext" type="button" class="btn btn-default" value=" > "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Next Location In Editor"/>
</div>
    <!-- Modal -->
  
         <div id="divFind">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title">Find And Replace </h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="txtFind" class="control-label">Search</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="txtFind" placeholder="Text To Search">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtReplace" class="control-label">Replace</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="txtReplace" required class="form-control" name="txtReplace" placeholder="Text To Replace">
                </div>
         
        </div>
 
    </form>
    <div>
         <span id="btnFindNext" class="btn btn-primary">Next</span>
  <span id="btnFindPrev" class="btn btn-primary">Previous</span>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Whole Word">
            <input id="chkFindWhole" name="chkFindWhole" type="checkbox" />
            <label for="chkFindWhole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Case">
            <input id="chkFindCase" name="chkFindCase" type="checkbox" />
            <label for="chkFindCase" class="label-default as-label">  </label>
          </div>
           </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="chkFindExp" name="chkFindExp" type="checkbox" />
            <label for="chkFindExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Selection">
            <input id="chkFindSelect" name="chkFindSelect" type="checkbox" />
            <label for="chkFindSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div>
                <span id="btnReplace" class="btn btn-primary">Replace</span>
  <span id="btnReplaceAll" class="btn btn-primary"> Replace All</span>
       </div>
       <p></p>
    </div>

 
  <div id="winRestorEditor">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">Recover Editor</h4>
            </div>
        
    <div class="modal-body">
          <span id="btnCancelRestor" class="btn btn-primary">Cancel</span>
         <span id="btnRestorPerviousEditors" class="btn btn-primary">Recover</span>

        
    </div>
       
 </div>

  ', NULL, N'cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",develop_service_get:"/develop/service/get/@id",develop_service_save:"/develop/service/save",security_Role_getAllByOtherLanguage:"/odata/security/LocalRoles?$filter=(Language%20eq%20''@lang'')&$expand=Role&$select=Role%2FId%2CRole%2FParentId%2CRole%2FName%2CRole%2FOrder%2CRole%2FIsLeaf%2CName",develop_service_delete:"/develop/service/delete",develop_service_getChanges:"/develop/service/GetChanges/@codeGuid/@orderBy/@skip/@take/@comment/@user/@fromDateTime/@toDateTime",develop_service_getChange:"/develop/service/GetChange/@changeId/@codeId"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/21 21:02:36', N'1396/11/28 22:12:03', N'1396/11/28 22:12:03', CAST(N'2018-02-10T17:32:36.983' AS DateTime), CAST(N'2018-02-17T18:42:03.647' AS DateTime), CAST(N'2018-02-17T18:42:03.647' AS DateTime), 1, N'', N'', N'b929ac36ced14db88fdb654721c7f817', 4, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asCodeEditor.js?minversion=7"},{"url":"asWindow.js?minversion=5"},{"url":"asOdataQueryBuilder.js"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (108, N'Path Selector', N'/en/admin/cms/file-and-path-manager/path-selector', NULL, N'', NULL, 0, N' <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">Path Selector</h4>
</div>
<div class="modal-body">
   <table id="grvPath" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
            
               <th data-header-align="left" data-align = "left" data-column-id="FilePath.Id" data-formatter="Id" data-identifier="true" data-type="numeric" class="col-lg-1">Id</th>

                   <th data-header-align="center" data-align = "center" data-column-id="Name"  data-order="desc">Name</th>
                        <th data-header-align="center" data-align = "center" data-column-id="Description" >Description</th>
                     <th data-header-align="center" data-align = "center" data-column-id="FilePath.Url" data-formatter="Url" >Image</th>
                 
        </tr>
    </thead>
</table>
</div>
<div class="modal-footer">
    <div class="form-group pull-right">
        <div>
            <span id="btnCancel" class="btn btn-primary">Cancel</span>
            <span id="btnSelect" class="btn btn-primary">Select</span>
        </div>
  
    </div>
  
   
</div>
</div>', NULL, N'cms_localFilePath_GetByOtherLanguagesAndTypeCodeByPaging:"/odata/cms/LocalFilePaths?$filter=(FilePath%2FTypeCode%20eq%20@typeCoded)%20and%20(Language%20eq%20''@lang'')&$orderby=@orderby&$skip=@skip&$top=@top&$expand=FilePath&$select=FilePath%2FId%2CName%2CDescription%2CFilePath%2FUrl%2CFilePath%2FGuid%2CFilePath%2FStatus%2CFilePath%2FSize&$inlinecount=allpages"', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/21 22:49:42', N'1396/11/26 18:45:14', N'1396/11/26 18:45:14', CAST(N'2018-02-10T19:19:42.800' AS DateTime), CAST(N'2018-02-15T15:15:14.233' AS DateTime), CAST(N'2018-02-15T15:15:14.233' AS DateTime), 1, N'', N'', N'7e4e4c8fc91c4d3fa7b8b59212f26668', 23, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (109, N'Paths Manager', N'/en/admin/cms/file-and-path-manager/paths', NULL, N'', NULL, 0, N' 
 
     
       <div class="col-lg-12" >
               <div class="col-lg-2" style="float: left;" >        <div id="drpPath" style="float: left;">
            
        </div></div>
                 <div class="col-lg-2" style="float: left;" id="divFileType">        <div id="drpFileType" style="float: left;">
            
        </div></div>
       </div>
        <br/>
     <table id="grvFile" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
            
               <th data-header-align="left" data-align = "left" data-column-id="FilePath.Id" data-formatter="Id" data-identifier="true" data-type="numeric" class="col-lg-1">Id</th>
            
        
                   <th data-header-align="center" data-align = "center" data-column-id="Name" data-order="desc">Name</th>
                   <th data-header-align="center" data-align = "center" data-column-id="FilePath.Url" data-formatter="Url">Path</th>
                     <th data-header-align="center" data-align = "center" data-column-id="FilePath.Size" data-formatter="Size" >Size</th>
                   <th data-header-align="center" data-align = "center" data-column-id="FilePath.Status" data-formatter="Status" data-css-class="" style="">Status</th>
        </tr>
    </thead>
</table>
  
<div class="text-center">
     <input id="btnTranslator" type="button" class="btn btn-default" value="   Translate  " />
        <input id="btnEdit" type="button" class="btn btn-default"  value=" Edit " />
      
            <input id="btnNew" type="button" class="btn btn-default" value="   New  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text="Loading ..."  value=" Delete "  />
</div>
     <div style="display: none">
    
              <div id="winAddOrEdit">
            <div class="modal-header as-handle">
                 <h4 class="modal-title"> Add or Update  </h4>
            </div>
        
    <div class="modal-body">
        <form id="frm" role="form" class="container-fluid">
        <div class="form-group">
        <label for="txtName" class="control-label" > Name </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName"  style="direction:ltr">
        </div>
    <br>

    </div>

        <div class="form-group">
        <label for="txtPath" class="control-label"> Path </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
            <input type="text" class="form-control" name="txtPath" id="txtPath" style="direction:ltr">
                <span class="input-group-btn">
                <button id="btnSelectFile" class="btn btn-default" type="button">...</button>
               </span>
        </div>
        </div>
    <br>
    
        <div id="divGuid" class="form-group">
        <label for="txtGuId" class="control-label"> Guid </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tower"></i></span>
            <input type="text" class="form-control" name="txtGuId" id="txtGuId" style="direction:ltr">
        </div>
    <br>

    </div>
            <div class="form-group">
        <label for="txtDescription" class="control-label">Description</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>

       <br />
       <div class="row">
            <label for="drpFileTypeAddUpdate" class="control-label" >  File Type</label>
    <br />

        <div id="drpFileTypeAddUpdate" name="drpFileTypeAddUpdate" style="float: left;">
        </div>
</div>
    <br />
   <div id="divRoles">
<div class="row">
            <label for="drpViewRole" class="control-label"> View Role</label>
    <br />

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
</div>
    <br />

<div class="row">
        <label for="drpAccessRole" class="control-label" >Access Role  </label>
    <br />
        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
</div>
      <br />    
  <div class="row">
                <label for="drpModifyRole" class="control-label" >Edit Role </label>
    <br />

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
  </div>
        
   </div>
       <br />
   <div>
               <label class="control-label">  Active</label>
        <div class="as-material-switch">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
  </div>
    </form>
    </div>
    
    <div class="modal-footer">
    <div class="form-group pull-right">
        <div>
            <span id="btnCancel" class="btn btn-primary">Cancel</span>
            <span id="btnExecute" class="btn btn-primary">Excute</span>
        </div>
  
    </div>
       
 </div>
 
    </div>
    
    </div>

    ', NULL, N'cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",security_Role_getAllByOtherLanguage:"/odata/security/LocalRoles?$filter=(Language%20eq%20''@lang'')&$expand=Role&$select=Role%2FId%2CRole%2FParentId%2CRole%2FName%2CRole%2FOrder%2CRole%2FIsLeaf%2CName",cms_filePath_save:"/cms/filepath/Save",cms_filePath_getById:"/odata/cms/FilePaths?$filter=Id%20eq%20@idd&$select=Id%2CName%2CDescription%2CUrl%2CGuid%2CStatus%2CSize%2CViewRoleId%2CTypeCode%2CAccessRoleId%2CModifyRoleId%2CRowVersion",cms_filePath_delete:"/cms/filepath/delete",cms_localFilePath_GetByOtherLanguagesAndTypeCodeByPaging:"/odata/cms/LocalFilePaths?$filter=(FilePath%2FTypeCode%20eq%20@typeCoded)%20and%20(Language%20eq%20''@lang'')&$orderby=@orderby&$skip=@skip&$top=@top&$expand=FilePath&$select=FilePath%2FId%2CName%2CDescription%2CFilePath%2FUrl%2CFilePath%2FGuid%2CFilePath%2FStatus%2CFilePath%2FSize&$inlinecount=allpages"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/22 15:26:43', N'1396/11/26 18:47:18', N'1396/11/26 18:47:18', CAST(N'2018-02-11T11:56:43.937' AS DateTime), CAST(N'2018-02-15T15:17:18.547' AS DateTime), CAST(N'2018-02-15T15:17:18.547' AS DateTime), 1, N'', N'', N'19c3593a33a4467789b187146da01162', 8, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (110, N'File Manager', N'/en/admin/cms/file-and-path-manager/files', NULL, N'', NULL, 0, N' 
 
     
       <div class="col-lg-12" >
                          <div class="col-lg-2" style="float: left;" >        <div id="drpPath" style="float: left;">
            
        </div></div>
                 <div class="col-lg-2" style="float: left;" id="divFileType">        <div id="drpFileType" style="float: left;">
            
        </div></div>
       </div>
<div class="col-lg-12">
       <div id="divPath" style="direction:ltr;height:8px;margin:5px"></div>
</div>
                           <br/>
     <table id="grvFile" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
            
               <th data-header-align="left" data-align = "left" data-column-id="File.Id" data-identifier="true" data-formatter="Id" data-type="numeric" class="col-lg-1">Id</th>
            
        
                   <th data-header-align="center" data-align = "center" data-column-id="Name" data-order="desc">Name</th>
                     <th data-header-align="center" data-align = "center" data-column-id="File.Size" data-formatter="Size" >Size</th>
                                             <th data-header-align="center" data-align = "center" data-column-id="File.Status" data-formatter="Status" data-css-class="" style="">Status</th>
        </tr>
    </thead>
</table>
  
<div class="text-center">
     <input id="btnTranslator" type="button" class="btn btn-default" value="   Translate  " />
        <input id="btnEdit" type="button" class="btn btn-default"  value=" Edit " />
      
            <input id="btnNew" type="button" class="btn btn-default" value="   New  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text="Loading ..."  value="  Delete  "  />
</div>
     <div style="display: none">
    
              <div id="winAddOrEdit">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">Add or Update </h4>
            </div>
        
    <div class="modal-body">
        <form id="frm" role="form" class="container-fluid">
        <div class="form-group">
        <label for="txtName" class="control-label" > Name </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName"  style="direction:ltr">
        </div>
    <br>

    </div>

        <div class="form-group">
        <label for="txtPath" class="control-label"> Path </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
            <input type="text" class="form-control" name="txtPath" id="txtPath" style="direction:ltr">
                <span class="input-group-btn">
                <button id="btnSelectFile" class="btn btn-default" type="button">...</button>
               </span>
        </div>
        </div>
    <br>
    
        <div id="divGuid" class="form-group">
        <label for="txtGuId" class="control-label"> Guid </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tower"></i></span>
            <input type="text" class="form-control" name="txtGuId" id="txtGuId" style="direction:ltr">
        </div>
    <br>

    </div>
            <div class="form-group">
        <label for="txtDescription" class="control-label">Description</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>

       <br />
       <div class="row">
            <label for="drpFileTypeAddUpdate" class="control-label" >File Type</label>
    <br />

        <div id="drpFileTypeAddUpdate" name="drpFileTypeAddUpdate" style="float: left;">
        </div>
</div>
    <br />
   <div id="divRoles">
<div class="row">
            <label for="drpViewRole" class="control-label" > View Role</label>
    <br />

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
</div>
    <br />

<div class="row">
        <label for="drpAccessRole" class="control-label" >Access Role   </label>
    <br />
        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
</div>
      <br />    
  <div class="row">
                <label for="drpModifyRole" class="control-label" > Edit Role</label>
    <br />

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
  </div>
        
   </div>
       <br />
   <div>
               <label class="control-label">  Active</label>
        <div class="as-material-switch">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
  </div>
    </form>
    </div>
    
    <div class="modal-footer">
    <div class="form-group pull-right">
        <div>
            <span id="btnCancel" class="btn btn-primary">Cancel</span>
            <span id="btnExecute" class="btn btn-primary">Excute</span>
        </div>
  
    </div>
       
 </div>
 
    </div>
    
    </div>

    ', NULL, N'cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",security_Role_getAllByOtherLanguage:"/odata/security/LocalRoles?$filter=(Language%20eq%20''@lang'')&$expand=Role&$select=Role%2FId%2CRole%2FParentId%2CRole%2FName%2CRole%2FOrder%2CRole%2FIsLeaf%2CName",cms_file_save:"/cms/file/Save",cms_file_delete:"/cms/file/delete",cms_file_getById:"/odata/cms/Files?$filter=Id%20eq%20@idd&$select=Id%2CName%2CDescription%2CUrl%2CGuid%2CStatus%2CSize%2CViewRoleId%2CTypeCode%2CAccessRoleId%2CModifyRoleId%2CRowVersion",cms_localFile_GetByOtherLanguagesAndTypeCodeByPaging:"/odata/cms/LocalFiles?$filter=(File%2FTypeCode%20eq%20@typeCoded)%20and%20(Language%20eq%20''@lang'')&$orderby=@orderby&$skip=@skip&$top=@top&$expand=File&$select=File%2FId%2CName%2CDescription%2CFile%2FStatus%2CFile%2FTypeCode%2CFile%2FSize&$inlinecount=allpages"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/22 16:28:18', N'1396/11/26 18:50:29', N'1396/11/26 18:50:29', CAST(N'2018-02-11T12:58:18.560' AS DateTime), CAST(N'2018-02-15T15:20:29.563' AS DateTime), CAST(N'2018-02-15T15:20:29.563' AS DateTime), 1, N'', N'', N'32b00e4c07754ab0841e48d3d5c14a41', 6, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (111, N'File Selector', N'/en/admin/fms/file-selector', NULL, N'', NULL, 0, N' <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">File Selector</h4>
</div>
<div class="modal-body">
    <div class="col-lg-12">
       <div id="divPath" style="direction:ltr;height:8px;margin:5px"></div>
</div>
   <table id="grvFile" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
            
               <th data-header-align="left" data-align = "left" data-column-id="Id" data-identifier="true" data-type="numeric" class="col-lg-1">Id</th>
            
            
                   <th data-header-align="center" data-align = "left" data-column-id="Name" data-order="desc" data-formatter="Name">Name</th>
                        <th data-header-align="center" data-align = "center" data-column-id="Size" >Size</th>
                     <th data-header-align="center" data-align = "center" data-column-id="ModifieLocalDateTime"  > Last Modifie DateTime</th>
     
        </tr>
    </thead>
</table>
</div>
<div class="modal-footer">
    <div class="form-group pull-right">
        <div>
            <span id="btnCancel" class="btn btn-primary">Cancel</span>
            <span id="btnSelect" class="btn btn-primary">Select</span>
        </div>
  
    </div>
  
   
</div>
</div>', NULL, N'fms_GetFileAndFoldersOfPathByPaging:"/fms/GetByPagination/@path/@orderby/@skip/@take/@createThumbnail"', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/22 19:13:16', N'1396/11/23 19:41:00', N'1396/11/23 19:41:00', CAST(N'2018-02-11T15:43:16.253' AS DateTime), CAST(N'2018-02-12T16:11:00.847' AS DateTime), CAST(N'2018-02-12T16:11:00.847' AS DateTime), 1, N'', N'', N'832a240cd4194e74a61ab30a4138a5be', 2, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (112, N'Files and Directories Manager', N'/en/admin/fms/files-folders-manager', NULL, N'', NULL, 0, N'<div class="col-lg-12">
    <div class="col-lg-6">
<div id="drpPath" style="float: left;">&nbsp;</div>
</div>
<div style="float: right;">
<div class="as-material-switch" style="margin-top: 10px;">
<div><label class="control-label"> Thumbnail creation</label> <input id="chkTumbnail" name="chkTumbnail" type="checkbox" /> <label class="label-default as-label" for="chkTumbnail"> </label></div>
</div>
</div>
</div>
<div class="col-lg-12">  <div id="divPath" style="direction:ltr;height:8px;margin:5px"></div></div>
<p>&nbsp;</p>
<table id="grvFile" class="table table-condensed table-hover table-striped table-responsive">
<thead>
<tr>
<th class="col-lg-1" data-header-align="left" data-align="left" data-column-id="Id" data-identifier="true" data-type="numeric">Id</th>
<th data-header-align="center" data-align="left" data-column-id="Name" data-order="desc" data-formatter="Name">Name</th>
<th data-header-align="center" data-align="center" data-column-id="Size">Size</th>
<th data-header-align="center" data-align="center" data-column-id="ModifieLocalDateTime">Last Modifie DateTime</th>
<th data-header-align="center" data-align="center" data-column-id="IsFolder" data-visible="false">IsFolder</th>
</tr>
</thead>
</table>
 <div class="text-center">
<div class="btn-group dropup"><button id="btnZip" class="btn btn-default dropdown-toggle" type="button" data-loading-text="Loading ..." data-toggle="dropdown"> Zip 
 <span class="caret"></span> </button>
<ul class="dropdown-menu" style="cursor: pointer;">
<li id="btnZipView"><a ></a>View</li>
<li id="btnZipAddOrUpdate"><a ></a> Add or Update </li>
<li id="btnUnZip"><a ></a>Open</li>
</ul>
</div>
<input id="btnMove" class="btn btn-default" type="button" value="Move" data-loading-text="Loading ..." />
<div class="btn-group dropup"><button id="btnCopyMain" class="btn btn-default dropdown-toggle" type="button" data-loading-text="Loading ..." data-toggle="dropdown"> Copy
 <span class="caret"></span> </button>
<ul class="dropdown-menu" style="cursor: pointer;">
<li id="btnCopyByReplace"><a ></a>By Replace </li>
<li id="btnCopy"><a ></a>Whith out Replace </li>
</ul>
</div>
<input id="btnRename" class="btn btn-default" type="button" value="Rename  " />
<input id="btnDell" class="btn btn-default" type="button" value="  Delete  " data-loading-text="Loading ..." /> 
<input id="btnCreateDir" class="btn btn-default" type="button" value="Create Directory" />
<div class="btn-group dropup"><button id="btnFile" class="btn btn-default dropdown-toggle" type="button" data-loading-text="Loading ..." data-toggle="dropdown"> File
 <span class="caret"></span> </button>
<ul class="dropdown-menu" style="cursor: pointer;">
<li id="btnUploadFromDisk"><a ></a>  Upload From Disk</li>
<li id="btnUploadFromUrl"><a ></a>  Upload From Url </li>
<li id="btnAddOrUpdateFile"><a ></a> Add or Update</li>
</ul>
</div>
</div>
<div style="display: none;">
<div id="winZipViewer">&nbsp;</div>
<div id="winAction">
<div class="modal-header as-handle">&nbsp;</div>
<div class="modal-body"><form id="frmAction" class="container-fluid">
<div class="form-group"><label class="control-label" for="txtName"> Name</label>
<div class="input-group"><input id="txtName" class="form-control" name="txtName" type="text" /></div>
</div>
</form></div>
<div class="modal-footer">
<div class="form-group pull-right">
<div>
    <span id="btnCancelAction" class="btn btn-primary">Cancel</span>
    <span id="btnExecAction" class="btn btn-primary"> Execute</span> 

</div>
</div>
</div>
</div>
<div id="winZipOption">
<div class="modal-header as-handle">
<h4 class="modal-title"> Zip Setting</h4>
</div>
<div class="modal-body"><form id="frmZip" class="container-fluid">
<div class="form-group zip"><label class="control-label">New</label>
<div class="as-material-switch">
<div style="float: left;"><input id="chkNew" name="chkNew" type="checkbox" /> <label class="label-default as-label" for="chkNew"> </label></div>
</div>
</div>
<br />
<div class="form-group"><label class="control-label" for="txtNameZip">  Zip Name</label>
<div class="input-group"><input id="txtNameZip" class="form-control" style="direction: ltr;" name="txtNameZip" type="text" /> 
<span class="input-group-btn"> <button id="btnSelectZip" class="btn btn-default" type="button">...</button> </span></div>
</div>
<div id="divZipDir" class="form-group"><label id="lblNameZipDir" class="control-label" for="txtNameZipDir">Destination Path For UnZip</label>
<div class="input-group"><input id="txtNameZipDir" class="form-control" style="direction: ltr;" name="txtNameZipDir" type="text" />
<span class="input-group-btn"> <button id="btnSelectZipDir" class="btn btn-default" type="button">...</button> </span></div>
</div>

        <div class="form-group">
            <label for="txtPassword" class="control-label">Zip Password</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password" class="form-control" name="txtPassword" id="txtPassword" style="direction:ltr">
                </div>
         
        </div>
<div class="zip">
<div class="row">
        <label for="drpEncryption" class="control-label" >Encryption </label>
    <br />

        <div id="drpEncryption" name="drpEncryption" style="float: left;">
    </div>
</div>
<br />



<div class="row">
        <label for="drpCompression" class="control-label" >Compression  </label>
    <br />

        <div id="drpCompression" name="drpCompression" style="float: left;">
    </div>
</div>
<br />
</div>
<div class="unzip">
<div class="row">
        <label for="drpReplace" class="control-label" >Replace State</label>
    <br />

        <div id="drpReplace" name="drpReplace" style="float: left;">
    </div>
</div>
<br />
</div>
<div class="zip">
<div id="divReplace"><label class="control-label">  If Exist Replace</label>
<div class="as-material-switch">
<div style="float: left;"><input id="chkReplaceZip" name="chkReplaceZip" type="checkbox" /> <label class="label-default as-label" for="chkReplaceZip"> </label></div>
</div>
</div>
</div>
</form></div>
<div class="modal-footer">
<div class="form-group pull-right">
    <span id="btnCancelZip" class="btn btn-primary">Cancel</span></div>
<div><span id="btnExecute" class="btn btn-primary">Execute</span>

</div>
</div>
</div>
</div>', NULL, N'cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",fms_GetFileAndFoldersOfPathByPaging:"/fms/GetByPagination/@path/@orderby/@skip/@take/@createThumbnail",fms_move:"/fms/move",fms_copy:"/fms/copy",fms_zip_openByPaging:"/fms/openzip/@zipFullName/@orderBy/@skip/@take",fms_zip_extract:"/fms/unzip",fms_zip_addOrUpdate:"/fms/zip/add-update",fms_rename:"/fms/rename",fms_delete:"/fms/delete",fms_createDir:"/fms/createdir",fms_get:"/fms/Get/@path",fms_save:"/fms/save"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/22 19:43:58', N'1396/11/23 19:39:38', N'1396/11/23 19:39:38', CAST(N'2018-02-11T16:13:58.847' AS DateTime), CAST(N'2018-02-12T16:09:38.693' AS DateTime), CAST(N'2018-02-12T16:09:38.693' AS DateTime), 1, N'', N'', N'8f519cd8ef5643e8b94946d1df76aca5', 9, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (113, N'Directory Selector', N'/en/admin/fms/folder-selector', NULL, N'', NULL, 0, N' <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">Directory Selector</h4>
</div>
<div class="modal-body">
    <div class="col-lg-12">
       <div id="divPath" style="direction:ltr;height:8px;margin:5px"></div>
</div>
   <table id="grvFolder" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
            
               <th data-header-align="left" data-align = "left" data-column-id="Id" data-identifier="true" data-type="numeric" class="col-lg-1">Id</th>
            
            
                   <th data-header-align="center" data-align = "left" data-column-id="Name" data-order="desc" data-formatter="Name">Name</th>
                     <th data-header-align="center" data-align = "center" data-column-id="ModifieLocalDateTime"  >Last Modifie DateTime</th>
     
        </tr>
    </thead>
</table>
</div>
<div class="modal-footer">
    <div class="form-group pull-right">
        <div>
          <span id="btnCancel" class="btn btn-primary">Cancel</span>
            <span id="btnSelect" class="btn btn-primary">Select</span>
        </div>
  
    </div>
  
   
</div>
</div>', NULL, N'fms_GetFoldersOfPathByPaging:"/fms/GetFoldersByPagination/@path/@orderby/@skip/@take"', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/22 21:42:41', N'1396/11/22 21:42:41', N'1396/11/22 21:42:41', CAST(N'2018-02-11T18:12:41.767' AS DateTime), CAST(N'2018-02-11T18:12:41.767' AS DateTime), CAST(N'2018-02-11T18:12:41.767' AS DateTime), 1, N'', N'', N'7964a0cff56c47a39b32f37a5d85d9c4', 1, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (114, N'View Zip Content', N'/en/admin/fms/zip-view', NULL, N'', NULL, 0, N' <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">Zip Content</h4>
</div>
<div class="modal-body">
   <table id="grvZip" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
            
               <th data-header-align="left" data-align = "left" data-column-id="Id" data-identifier="true" data-type="numeric" >Id</th>
            
            
                   <th data-header-align="center" data-align = "left" data-column-id="FileName" data-order="desc"  data-header-css-class="col-lg-6 col-md-6 col-sm-6">Name</th>
                       
                           <th data-header-align="center" data-align = "center" data-column-id="UncompressedSize" >  Uncompressed Size </th>
                             
                              <th data-header-align="center" data-align = "center" data-column-id="UsesEncryption" data-formatter="UsesEncryption">  Uses Encryption</th>
                  
     
        </tr>
    </thead>
</table>
</div>
<div class="modal-footer">
  
   
</div>
</div>', NULL, N'fms_zip_openByPaging:"/fms/openzip/@zipFullName/@orderBy/@skip/@take"', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/22 21:51:53', N'1396/11/22 21:51:53', N'1396/11/22 21:51:53', CAST(N'2018-02-11T18:21:53.537' AS DateTime), CAST(N'2018-02-11T18:21:53.537' AS DateTime), CAST(N'2018-02-11T18:21:53.537' AS DateTime), 1, N'', N'', N'ee3051b2bcce4ff89e50a4f4505b4b03', 1, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (115, N'Manage files and directories of a specified path', N'/en/admin/fms/files-folders-manager-for-a-path', NULL, N'', NULL, 0, N'<div id="win" class="modal-content">
<div class="modal-header"><button class="close" type="button" data-dismiss="modal">&times;</button>
<h4 class="modal-title">Manage files and directories</h4>
</div>
<div class="modal-body">
<div class="col-lg-12">  <div id="divPath" style="direction:ltr;height:8px;margin:5px"></div></div>
<div class="col-lg-12">&nbsp;</div>
<br />
<table id="grvFile" class="table table-condensed table-hover table-striped table-responsive">
<thead>
<tr>
<th class="col-lg-1" data-header-align="left" data-align="left" data-column-id="Id" data-identifier="true" data-type="numeric">Id</th>
<th data-header-align="center" data-align="left" data-column-id="Name" data-order="desc" data-formatter="Name">Name</th>
<th data-header-align="center" data-align="center" data-column-id="Size">Size</th>
<th data-header-align="center" data-align="center" data-column-id="ModifieLocalDateTime">Last Modifie DateTime</th>
<th data-header-align="center" data-align="center" data-column-id="IsFolder" data-visible="false">IsFolder</th>
</tr>
</thead>
</table>
<div style="display: none;">
<div id="winZipViewer">&nbsp;</div>
<div id="winAction">
<div class="modal-header as-handle">&nbsp;</div>
<div class="modal-body"><form id="frmAction" class="container-fluid">
<div class="form-group"><label class="control-label" for="txtName"> Name</label>
<div class="input-group"><input id="txtName" class="form-control" name="txtName" type="text" /></div>
</div>
</form></div>
<div class="modal-footer">
<div class="form-group pull-right">
<div><span id="btnExecAction" class="btn btn-primary"> Execute</span> <span id="btnCancelAction" class="btn btn-primary">Cancel</span></div>
</div>
</div>
</div>
<div id="winZipOption">
<div class="modal-header as-handle">
<h4 class="modal-title"> Zip Option</h4>
</div>
<div class="modal-body"><form id="frmZip" class="container-fluid">
<div class="form-group zip"><label class="control-label">New</label>
<div class="as-material-switch">
<div style="float: left;"><input id="chkNewZip" name="chkNewZip" type="checkbox" /> <label class="label-default as-label" for="chkNewZip"> </label></div>
</div>
</div>
<br />
<div class="form-group"><label class="control-label" for="txtNameZip">  Zip Name</label>
<div class="input-group"><input id="txtNameZip" class="form-control" style="direction: ltr;" name="txtNameZip" type="text" /> <span class="input-group-btn"> <button id="btnSelectZip" class="btn btn-default" type="button">...</button> </span></div>
</div>
<div id="divZipDir" class="form-group"><label id="lblNameZipDir" class="control-label" for="txtNameZipDir">  UnZip Path</label>
<div class="input-group"><input id="txtNameZipDir" class="form-control" style="direction: ltr;" name="txtNameZipDir" type="text" /> <span class="input-group-btn"> <button id="btnSelectZipDir" class="btn btn-default" type="button">...</button> </span></div>
</div>



        <div class="form-group">
            <label for="txtPassword" class="control-label">Zip Password</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password" class="form-control" name="txtPassword" id="txtPassword" style="direction:ltr">
                </div>
         
        </div>



<div class="zip">
<div class="row">
        <label for="drpEncryption" class="control-label" > Encryption  </label>
    <br />

        <div id="drpEncryption" name="drpEncryption" style="float: left;">
    </div>
</div>
<br />



<div class="row">
        <label for="drpCompression" class="control-label" >  Compression</label>
    <br />

        <div id="drpCompression" name="drpCompression" style="float: left;">
    </div>
</div>
<br />
</div>
<div class="unzip">
<div class="row">
        <label for="drpReplace" class="control-label" > Replace Type</label>
    <br />

        <div id="drpReplace" name="drpReplace" style="float: left;">
    </div>
</div>
<br />
</div>

<div class="zip">
<div id="divReplace"><label class="control-label"> If Exist Replace </label>
<div class="as-material-switch">
<div style="float: left;"><input id="chkReplaceZip" name="chkReplaceZip" type="checkbox" /> <label class="label-default as-label" for="chkReplaceZip"> </label></div>
</div>
</div>
</div>
</form></div>
<div class="modal-footer">
<div class="form-group pull-right">
    <span id="btnCancelZip" class="btn btn-primary">Cancel</span></div>
<div><span id="btnExecute" class="btn btn-primary">Execute</span>

</div>
</div>
</div>
</div>
</div>
<div class="modal-footer" style="text-align: center;">
<div class="btn-group dropup"><button id="btnZip" class="btn btn-default dropdown-toggle" type="button" data-loading-text="Loading ..." data-toggle="dropdown"> Zip 
 <span class="caret"></span> </button>
<ul class="dropdown-menu" style="cursor: pointer;">
<li id="btnZipView"><a ></a>View</li>
<li id="btnZipAddOrUpdate"><a></a>  Add or Update</li>
<li id="btnUnZip"><a ></a>UnZip</li>
</ul>
</div>
<input id="btnMove" class="btn btn-default" type="button" value="  Move  " data-loading-text=" Loading ..." />
<div class="btn-group dropup"><button id="btnCopyMain" class="btn btn-default dropdown-toggle" type="button" data-loading-text="Loading ..." data-toggle="dropdown"> Copy
 <span class="caret"></span> </button>
<ul class="dropdown-menu" style="cursor: pointer;">
<li id="btnCopyByReplace"><a ></a>By Replace </li>
<li id="btnCopy"><a ></a> Whith out Replace</li>
</ul>
</div>
<input id="btnRename" class="btn btn-default" type="button" value="Rename" />
<input id="btnDell" class="btn btn-default" type="button" value="Delete" data-loading-text="Loading ..." />
<input id="btnCreateDir" class="btn btn-default" type="button" value="  Create Directory  " />
<div class="btn-group dropup"><button id="btnFile" class="btn btn-default dropdown-toggle" type="button" data-loading-text=" Loading ..." data-toggle="dropdown"> File
 <span class="caret"></span> </button>
<ul class="dropdown-menu" style="cursor: pointer;">
<li id="btnUploadFromDisk"><a ></a> Upload From Disk</li>
<li id="btnUploadFromUrl"><a ></a>Upload From Url</li>
<li id="btnAddOrUpdateFile"><a ></a> Add or Update</li>
</ul>
</div>
</div>
</div>', NULL, N'cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",fms_GetFileAndFoldersOfPathByPaging:"/fms/GetByPagination/@path/@orderby/@skip/@take/@createThumbnail",fms_move:"/fms/move",fms_copy:"/fms/copy",fms_zip_extract:"/fms/unzip",fms_zip_addOrUpdate:"/fms/zip/add-update",fms_rename:"/fms/rename",fms_delete:"/fms/delete",fms_createDir:"/fms/createdir"', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/23 13:55:11', N'1396/11/23 19:41:37', N'1396/11/23 19:41:37', CAST(N'2018-02-12T10:25:11.807' AS DateTime), CAST(N'2018-02-12T16:11:37.997' AS DateTime), CAST(N'2018-02-12T16:11:37.997' AS DateTime), 1, N'', N'', N'6f7fe0d103d04482b940f2dd6ecd9f28', 2, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (116, N'Add or Update File', N'/en/admin/fms/file-add-or-modify', NULL, N'', NULL, 0, N'  <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">Add or Update File</h4>
</div>
<div class="modal-body">
   <form id="frmAddOrUpdateFile" role="form" class="container-fluid">
          <div class="form-group">
        <label for="txtFileName" class="control-label">  File Name</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtFileName" id="txtFileName" style="direction:ltr" >
        </div>
    </div>
    <br>
<div class="row">
        <label for="drpEditorNames" class="control-label" style="float: right">  Editor</label>
    <br />

        <div id="drpEditorNames" name="drpEditorNames" style="float: left;">
    </div>
</div>


    <br />
    <div id="fileEditor_container">
        <label class="control-label">Content</label>
    <div id="fileEditor" name="fileEditor" style="height: 300px">

    </div>

    </div>

        <div class="form-group text-center">
        <div>
            <span id="btnSave" class="btn btn-primary"> Save</span>
            <span id="btnCancel" class="btn btn-primary">Cancel</span>
        </div>
  
    </div>

</form>


                  </div>
<div class="modal-footer">

<div id="editorToolbar" class="text-center" style="position:relative;bottom:0;width:100%;background-color: white;">
         <label class="control-label" style="float: right;;margin-top: 10px;">ویرایشگر فعال : </label>
        <span id="lblEditor" class="control-label" style="float: right;margin-top: 10px;"> </span>
   <input id="btnNext" type="button" class="btn btn-default" value=" < "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان بعدی در ویرایشگر"/>
           
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value="پیدا و جایگزینی" />
       <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="Comment/UnComment" />
      <input id="btnPrev" type="button" class="btn btn-default" value=" > "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="مکان قبلی در ویرایشگر"/>
</div>
    <!-- Modal -->
 <div id="winFind">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title" style="display: -webkit-box;">پیدا و جایگزین کردن</h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="txtFind" class="control-label" style="display: -webkit-box;">جستجو</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="txtFind" placeholder="متن مورد جستجو">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtReplace" class="control-label" style="display: -webkit-box;">جایگزین</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="txtReplace" required class="form-control" name="txtReplace" placeholder="متن جایگزین">
                </div>
         
        </div>
 
    </form>
    <div style="direction: ltr;">
<div style="direction: rtl;display: -webkit-box;display: -ms-flexbox;display: flex;">
             <span id="btnFindNext" class="btn btn-primary">بعدی</span>
  <span id="btnFindPrev" class="btn btn-primary">قبلی</span>
</div>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="کل متن با هم">
            <input id="chkFindWhole" name="chkFindWhole" type="checkbox" />
            <label for="chkFindWhole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="حساس به حروف کوچک و بزرگ">
            <input id="chkFindCase" name="chkFindCase" type="checkbox" />
            <label for="chkFindCase" class="label-default as-label">  </label>
          </div>
             </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="chkFindExp" name="chkFindExp" type="checkbox" />
            <label for="chkFindExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="انتخابی">
            <input id="chkFindSelect" name="chkFindSelect" type="checkbox" />
            <label for="chkFindSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div style="direction: rtl;display: -webkit-box;display: -ms-flexbox;display: flex;">
                <span id="btnReplace" class="btn btn-primary">جایگزین</span>
  <span id="btnReplaceAll" class="btn btn-primary">جایگزین همه</span>
       </div>
       <p></p>
    </div>

</div>
  
</div>', NULL, N'cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",fms_get:"/fms/Get/@path",fms_save:"/fms/save"', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/23 14:25:42', N'1396/11/23 19:33:59', N'1396/11/23 19:33:59', CAST(N'2018-02-12T10:55:42.943' AS DateTime), CAST(N'2018-02-12T16:03:59.983' AS DateTime), CAST(N'2018-02-12T16:03:59.983' AS DateTime), 1, N'', N'', N'e4556c40dfb541ef972e04c828aa6904', 3, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asCodeEditor.js?minversion=7"},{"url":"asWindow.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (117, N'Remote download manager', N'/en/admin/fms/remote-download-manager', NULL, N'', NULL, 0, N'  <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title"> Remote download manager  </h4>
</div>
<div class="modal-body">
   <form id="frmRemoteDownloadManager" role="form" class="container-fluid">
       <br>

       <div class="row">
        <label for="drpBaseUrl" class="control-label">Base Url </label>
    <br />

        <div id="drpBaseUrl" name="drpBaseUrl" style="float: left;">
    </div>
</div>

        <div class="form-group">
            <label for="txtUrl" class="control-label"> Url</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
                    <input type="text" class="form-control" name="txtUrl" id="txtUrl" style="direction:ltr">
                </div>
         
        </div>
      <br>
       <div class="form-group">
            <label for="txtFileName" class="control-label">File Name For Storing</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
                    <input type="text" class="form-control" name="txtFileName" id="txtFileName" style="direction:ltr">
                </div>
         
        </div>
      <br>

                <div class="form-group text-center">
            <span id="btnExecute" class="btn btn-primary"> Execute</span>
  
    </div>

</form>


                  </div>
<div class="modal-footer">

</div>
  
</div>', NULL, N'cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",fms_downlodFromUrl:"/fms/DownlodFromUrl",cms_masterDataKeyValue_GetByOtherLanguageAndParentId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FParentId%20eq%20@parentIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CName"', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/23 14:32:13', N'1396/11/23 19:35:17', N'1396/11/23 19:35:17', CAST(N'2018-02-12T11:02:13.697' AS DateTime), CAST(N'2018-02-12T16:05:17.387' AS DateTime), CAST(N'2018-02-12T16:05:17.387' AS DateTime), 1, N'', N'', N'afebde185a7440a2af6e7d118dcd42e7', 6, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (118, N'Upload Manager', N'/en/admin/fms/upload-manager', NULL, N'', NULL, 0, N'  <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">Upload Manager</h4>
</div>
<div class="modal-body">
    <span id="checker"></span>
   <form id="frmUploadManager" role="form" class="container-fluid" style="overflow: auto;" action="fms/upload" method="POST" enctype="multipart/form-data">
            <!-- Redirect browsers with JavaScript disabled to the origin page -->
            <!--<noscript>-->
            <!--    <input type="hidden" name="redirect" value="https://blueimp.github.io/jQuery-File-Upload/">-->
            <!--</noscript>-->
            <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
            <div class="row fileupload-buttonbar">
                <div class="col-lg-7">
                    <!-- The fileinput-button span is used to style the file input field as button -->
                    <span class="btn btn-success fileinput-button">
                        <i class="glyphicon glyphicon-plus"></i>
                        <span>Add files...</span>
                        <input type="file" name="files[]" multiple="multiple">
                    </span>
                    <button type="submit" class="btn btn-primary start">
                        <i class="glyphicon glyphicon-upload"></i>
                        <span>Start upload</span>
                    </button>
                    <button type="reset" class="btn btn-warning cancel">
                        <i class="glyphicon glyphicon-ban-circle"></i>
                        <span>Cancel upload</span>
                    </button>
             
                    <!-- The global file processing state -->
                    <span class="fileupload-process"></span>
                </div>
                <!-- The global progress state -->
                <div class="col-lg-5 fileupload-progress fade">
                    <!-- The global progress bar -->
                    <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                        <div class="progress-bar progress-bar-success" style="width: 0%;"></div>
                    </div>
                    <!-- The extended global progress state -->
                    <div class="progress-extended">&nbsp;</div>
                </div>
            </div>
            
            
       
            
            <!-- The table listing the files available for upload/download -->
            <table id="tblUpload" role="presentation" class="table table-striped">
                <tbody class="files">
                </tbody>
            </table>
        </form>
   
   
    <!-- The template to display files available for upload -->
<!--    <script id="template-upload" type="text/x-tmpl">-->
<!--{% for (var i=0, file; file=o.files[i]; i++) { %}-->
<!--    <tr class="template-upload fade">-->
<!--        <td>-->
<!--            <span class="preview"></span>-->
<!--        </td>-->
<!--        <td>-->
<!--            <p class="name">{%=file.name%}</p>-->
<!--            <strong class="error text-danger"></strong>-->
<!--        </td>-->
<!--        <td>-->
<!--            <p class="size">Processing...</p>-->
<!--            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>-->
<!--        </td>-->
<!--        <td>-->
<!--            {% if (!i && !o.options.autoUpload) { %}-->
<!--                <button class="btn btn-primary start" disabled>-->
<!--                    <i class="glyphicon glyphicon-upload"></i>-->
<!--                    <span>Start</span>-->
<!--                </button>-->
<!--            {% } %}-->
<!--            {% if (!i) { %}-->
<!--                <button class="btn btn-warning cancel">-->
<!--                    <i class="glyphicon glyphicon-ban-circle"></i>-->
<!--                    <span>Cancel</span>-->
<!--                </button>-->
<!--            {% } %}-->
<!--        </td>-->
<!--    </tr>-->
<!--{% } %}-->
<!--    </script>-->


   
    </div>


                
                  

                  
<div class="modal-footer">

</div>
  
</div>', NULL, N'fms_upload:"/fms/upload"', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/23 14:47:46', N'1396/11/23 14:47:46', N'1396/11/23 14:47:46', CAST(N'2018-02-12T11:17:46.380' AS DateTime), CAST(N'2018-02-12T11:17:46.380' AS DateTime), CAST(N'2018-02-12T11:17:46.380' AS DateTime), 1, N'', N'', N'536c4aec4a3440aeb205a8b99d6829ca', 1, N'[{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"},{"url":"fileupload.css?minversion=18"},{"url":"fileupload.js?minversion=18"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (119, N'Master Data management', N'/en/admin/cms/masterdata', NULL, N'', NULL, 0, N'<form id="frmMasterData" role="form" class="container-fluid">
        <br />
    <label class="control-label" >MasterData Type</label>
    <br />
    <div class="container">

        <div id="drpMasterDataType" style="float: left;">
        </div>
    </div>
                           <br/>
    <label class="control-label" > MasterData</label>
    <br />
     
    <div class="container">
   
        <div id="drpMasterData" style="float: left;margin-top: 10px;">
        </div>
    <input id="btnTranslator" type="button" style="float: left;margin-top: 6px;" disabled="disabled" class="btn btn-default disabled" value="Translate" />
    </div>
     
                           <br/>
      
        <label class="control-label">New</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>
                  <br/>
      
        <label class="control-label">Is Leaf ?</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkIsLeaf" name="chkIsLeaf" type="checkbox" />
            <label for="chkIsLeaf" class="label-default as-label">  </label>
          </div>
     </div>
        
      <br />
      
         <label class="control-label">Is Type ?</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkType" name="chkType" type="checkbox" />
            <label for="chkType" class="label-default as-label">  </label>
          </div>
     </div>

      <br />
      
    <div class="form-group">
        <label for="txtName" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName" data-localize="title" placeholder="">
        </div>

    </div>
    
     <br>
           <div class="form-group">
        <label for="txtParentId" class="control-label">  Parent Id</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtParentId" id="txtParentId" style="direction: ltr;"  placeholder="Parent Id">
        </div>
    </div>
         <br />
                        <div class="form-group">
        <label for="txtMasterDataId" class="control-label">   MasterData Id</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtMasterDataId" id="txtMasterDataId" style="direction: ltr;"  placeholder=" MasterData Id">
        </div>
    </div>
         <br />
    <div class="form-group">
        <label for="txtCode" class="control-label">Code</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtCode" id="txtCode"  style="direction: ltr;"  placeholder="Code">
        </div>

    </div>
          <br />
          
              <div class="form-group">
        <label for="txtSecondCode" class="control-label">Second Code </label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtSecondCode" id="txtSecondCode"  style="direction: ltr;"  placeholder="Second Code">
        </div>

    </div>
          <br />
        
        <label for="txtTypeId" class="control-label">  Type Id</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtTypeId" id="txtTypeId"  style="direction: ltr;"  placeholder=" Type Id">
        </div>

  
          <br />
              <label for="txtParentTypeId" class="control-label">Parent Type Id </label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtParentTypeId" id="txtParentTypeId"  style="direction: ltr;"  placeholder="Parent Type Id">
        </div>

                        <br />
    <label class="control-label" > Protocol</label>
    <br />
    <div class="container">

        <div id="drpProtocolsPathOrUrl" style="float: left;">
        </div>
    </div>
                           <br/>
    <div class="form-group">
        <label for="txtUrl" class="control-label">Path Or Url</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtUrl" id="txtUrl"  style="direction: ltr;"  placeholder="Path Or Url">
        </div>

    </div>
     <br />
    <label class="control-label">Protocol </label>
    <br />
    <div class="container">

        <div id="drpProtocolsSecondPathOrUrl" style="float: left;">
        </div>
    </div>
                           <br/>
    <div class="form-group">
        <label for="txtSecondPathOrUrl" class="control-label">   Second Path Or Url</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtSecondPathOrUrl" id="txtSecondPathOrUrl"  style="direction: ltr;"  placeholder="Second Path Or Url">
        </div>

    </div>

    <br />
   
            <div class="form-group">
        <label for="txtDescription" class="control-label">Description</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>
 <br>
 
    <div class="form-group">
        <label for="txtData" class="control-label"> More Data</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtData" id="txtData">
                </textarea>
        </div>

    </div>
 <br>
                        <div class="form-group">
        <label for="txtId" class="control-label"> Guid</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtId" id="txtId" style="direction: ltr;"  placeholder="Guid">
        </div>
    </div>
   

    <br>
                    <div class="form-group">
        <label for="txtVersion" class="control-label"> Version</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" readonly="true" class="form-control" name="txtVersion" id="txtVersion" style="direction: ltr;"  placeholder="Version">
        </div>
    

    </div>
    <br/>
        <div class="form-group">
        <label for="txtOrder" class="control-label" >Order</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtOrder" id="txtOrder"  placeholder="1">
        </div>

    </div>
    <br/>
    
            <div class="form-group">
        <label for="txtKey" class="control-label" >Key</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtKey" id="txtKey"  placeholder="1">
        </div>

    </div>
    <br/>
    
            <div class="form-group">
        <label for="txtValue" class="control-label" >Value</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtValue" id="txtValue"  placeholder="1">
        </div>

    </div>
    <br/>
    
        
            <div class="form-group">
        <label for="txtForeignKey1" class="control-label" > Foreign Key 1</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtForeignKey1" id="txtForeignKey1"  placeholder="1">
        </div>

    </div>
    <br/>
    
        
            <div class="form-group">
        <label for="txtForeignKey2" class="control-label" >Foreign Key 2</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtForeignKey2" id="txtForeignKey2"  placeholder="1">
        </div>

    </div>
    <br/>
    
        
            <div class="form-group">
        <label for="txtForeignKey3" class="control-label" >Foreign Key 3</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtForeignKey3" id="txtForeignKey3"  placeholder="1">
        </div>

    </div>
    <br/>
    
       
      
         <label class="control-label"> Run From Memory</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCache" name="chkCache" type="checkbox" />
            <label for="chkCache" class="label-default as-label">  </label>
          </div>
     </div>
  <br />
<fieldset id="divSlidingExpirationTimeInMinutes" disabled>
    <div class="form-group">
        <label for="txtSlidingExpirationTimeInMinutes" class="control-label" >Sliding Expiration Time In Minutes</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtSlidingExpirationTimeInMinutes" id="txtSlidingExpirationTimeInMinutes"   placeholder="0">
        </div>

    </div>
    </fieldset>
        <br />
   <div id="divRoles">
        <label for="drpViewRole" class="control-label" style="float: right"> View Role</label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />
        <br />
    <label for="drpAccessRole" class="control-label" style="float: right">Access Role</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label" style="float: right"> Modify Role</label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>


              <br/>
      
        <label class="control-label">Check Out</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkEditeMode" name="chkEditeMode" type="checkbox" />
            <label for="chkEditeMode" class="label-default as-label">  </label>
          </div>
     </div>
           <br/>
      
        <label class="control-label">Active</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
        <div class="text-center">
            <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
              <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>


  ', NULL, N'cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",cms_masterDataKeyValue_get:"/cms/masterdatakeyvalue/get/@id",cms_masterDataKeyValue_save:"/cms/masterdatakeyvalue/save",security_Role_getAllByOtherLanguage:"/odata/security/LocalRoles?$filter=(Language%20eq%20''@lang'')&$expand=Role&$select=Role%2FId%2CRole%2FParentId%2CRole%2FName%2CRole%2FOrder%2CRole%2FIsLeaf%2CName",cms_masterDataKeyValue_delete:"/cms/masterdatakeyvalue/delete",cms_masterDataKeyValue_getTypeByOtherLanguages:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FIsType%20eq%20true)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentTypeId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FTypeId%2CName"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/23 20:16:45', N'1396/11/28 22:12:46', N'1396/11/28 22:12:46', CAST(N'2018-02-12T16:46:45.573' AS DateTime), CAST(N'2018-02-17T18:42:46.133' AS DateTime), CAST(N'2018-02-17T18:42:46.133' AS DateTime), 1, N'', N'', N'd5131e601c254c11915037efcbf39e33', 7, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (120, N'Test WebPage', N'/en/mobile/admin/develop/test/testpage', NULL, N'', NULL, 0, N'Mobile Content', NULL, N'', 0, 0, 1, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/24 13:40:22', N'1396/11/24 15:27:02', N'1396/11/24 15:27:02', CAST(N'2018-02-13T10:10:22.087' AS DateTime), CAST(N'2018-02-13T11:57:02.230' AS DateTime), CAST(N'2018-02-13T11:57:02.230' AS DateTime), 1, N'', N'', N'ba6d3c5c6d8847fea539eb68b35f4cdd', 6, N'[]', 0, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (121, N'Assembly Management', N'/en/admin/develop/codes/os/dotnet/dll-manager', NULL, N'', NULL, 0, N'<form id="frmDotNet" role="form" class="container-fluid">
        <br />
    <label class="control-label"> Code</label>
    <br />
    <div class="container">
         
        <div id="drpCodes" style="float: left;">
        </div>
         <input id="btnTranslator" type="button" style="float: left;margin-top: 6px;" class="btn btn-default disabled" disabled="disabled" value="Translate" />
    </div>
      <br />
       <label class="control-label">New</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>
                  <br/>
                  
       <label class="control-label">Is Folder ?</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkIsDirectory" name="chkIsDirectory" type="checkbox" />
            <label for="chkIsDirectory" class="label-default as-label">  </label>
          </div>
     </div>
                  <br/>
      <div id="divType">
              <label for="drpType" class="control-label" > Kind  </label>
    <br />
    <div class="container">

        <div id="drpType" name="drpType" style="float: left;">
        </div>
    </div>
    <br />
      </div>


      <br />
    <div class="form-group">
        <label for="txtName" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName" data-localize="title" placeholder="">
        </div>

    </div>
    
     <br>
                        <div class="form-group">
        <label for="txtCodeId" class="control-label">Code Id</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtCodeId" id="txtCodeId" style="direction: ltr;"  placeholder="Code Id">
        </div>
    </div>
         <br />
    <div class="form-group">
        <label for="txtCode" class="control-label">Code</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtCode" id="txtCode"  style="direction: ltr;"  placeholder="Code">
        </div>

    </div>
             <br>

         
    <div id="divPlaceHolder" class="form-group">
        <label for="txtPlaceHolder" class="control-label">Place Holder In Parent Code</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtPlaceHolder" id="txtPlaceHolder"  style="direction: ltr;"  placeholder="Place Holder In Parent Code">
        </div>

    </div>

    <br />
   
            <div class="form-group">
        <label for="txtDescription" class="control-label">Description</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>
 <br>
                        <div class="form-group">
        <label for="txtId" class="control-label">Code Guid</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtId" id="txtId" style="direction: ltr;"  placeholder="Code Guid">
        </div>
    </div>
   

    <br>
                    <div class="form-group">
        <label for="txtVersion" class="control-label"> Version</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" readonly="true" class="form-control" name="txtVersion" id="txtVersion" style="direction: ltr;"  placeholder="Version">
        </div>
    

    </div>
    <br/>
        <div class="form-group">
        <label for="txtOrder" class="control-label" >Order</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtOrder" id="txtOrder"  placeholder="1">
        </div>

    </div>
    <br/>

   <div id="divRoles">
        <label for="drpViewRole" class="control-label"> View Role</label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />

    <label for="drpAccessRole" class="control-label">Access Role</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label" > Modify Role</label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>

                                <br />
      
<div id="divDll">
            <label for="drpDllStorPlace" class="control-label">  Stor Place  </label>
    <br />
    <div class="container">

        <div id="drpDllStorPlace" name="drpDllStorPlace" style="float: left;">
        </div>
    </div>
    <br />
        <label for="drpDependency" class="control-label" >  Dependencies  </label>
    <br />
    <div class="container">

        <div id="drpDependency" name="drpDependency" style="float: left;">
        </div>
    </div>
    
<div id=divVersion>
               <br />
                   <label for="drpVersion" class="control-label" > Publishable Version</label>
    <br />
    <div class="container">

        <div id="drpVersion" name="drpVersion" style="float: left;">
        </div>
    </div>
</div>
    <br />
      
      
    <label for="drpEditors" class="control-label" > Editor  </label>
    <br />
    <div class="container">

        <div id="drpEditors" name="drpEditors" style="float: left;">
        </div>
    </div>
    <br />
</div>
<div id="divEditor">
        <div id="edrDotNet_container">
        <label class="control-label">  .Net Code </label>
    <div id="edrDotNet" name="edrDotNet" style="height: 300px">

    </div>
    </div>
    
            
                            <br />
                <label class="control-label">  CheckIn</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCheckIn" name="chkCheckIn" type="checkbox" />
            <label for="chkCheckIn" class="label-default as-label">  </label>
          </div>
     </div>
                    <br />
            <div class="form-group">
        <label for="txtComment" class="control-label" > ChangSet Comment </label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtComment" id="txtComment" >
        </div>

    </div>
</div>
        


     <br />
      

      
        <label class="control-label">Edite Mode  </label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkEditeMode" name="chkEditeMode" type="checkbox" />
            <label for="chkEditeMode" class="label-default as-label">  </label>
          </div>
     </div>
           <br/>
      
        <label class="control-label">Active</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
              <br />
              
                    
        <label class="control-label">  Check Out</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkChangeClose" name="chkStatus" type="checkbox" />
            <label for="chkChangeClose" class="label-default as-label">  </label>
          </div>
     </div>
              <br />
        
            <label class="control-label">Last Modifi User </label>
        <div class="container">
               <div id="divLastModifiUser" style="float: left;">
           
            
          </div>
     </div>
        <br />
        
                   <label class="control-label">  Last Modifi Local DateTime</label>
        <div class="container">
               <div id="divLastModifiLocalDataTime" style="float: left;">
           
            
          </div>
     </div>
  
     
        <br />
        <div class="text-center">
                       <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
                        <div class="btn-group dropup"><button id="btnDebugMain" class="btn btn-default dropdown-toggle" type="button" data-loading-text="Loading ..." data-toggle="dropdown">Code Genrator
                <span class="caret"></span>  </button>
            <ul class="dropdown-menu" style="cursor: pointer;">
         <li id="btnWcfManager"><a > WCF Metadata Generator</a> </li>
            <li id="btnEfMigrationGenerator"><a > Entity Framework Migration Generator</a> </li>
            </ul>
            </div>

            
                        
     
               <input id="btnManageCode" type="button" class="btn btn-default" value=" Codes Management" />
             <input id="btnOutputManager" type="button" class="btn btn-default" value=" Outputs Management " />
            
            
            <div class="btn-group dropup"><button id="btnCompileMain" class="btn btn-default dropdown-toggle" type="button" data-loading-text="Loading ..." data-toggle="dropdown">Compile
                <span class="caret"></span>  </button>
            <ul class="dropdown-menu" style="cursor: pointer;">
         <li id="btnCompileWhitoutDependemcy"><a >Without making dependencies </a></li>
            <li id="btnCompileByDependemcy"><a > By making dependencies</a> </li>
            </ul>
            </div>
            
            

            

             <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>

    

            <br>
<div id="editorToolbar" class="text-center" style="position:fixed;bottom:0;width:100%;z-index:1060;background-color: white;">
         <label class="control-label" style="float: right;;margin-top: 10px;"> Active Editor : </label>
        <span id="lblEditor" class="control-label" style="float: right;margin-top: 10px;"> </span>
   <input id="btnPrev" type="button" class="btn btn-default" value=" < "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Previous Positon In Editor"/>
            <input id="btnEditorResize" type="button"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+L" class="btn btn-default" value=" Resize" />
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value=" Find And Replace " />
             <div class="btn-group dropup"><button id="btnDebugMain" class="btn btn-default dropdown-toggle" type="button" data-loading-text="Loading ..." data-toggle="dropdown">Debug
                <span class="caret"></span>  </button>
            <ul class="dropdown-menu" style="cursor: pointer;">
         <li id="btnDebug"><a > Run Debug</a> </li>
            <li id="btnKhodkarBreakpoint"><a >Khodkar Breakpoint </a> </li>
             <li id="btnVsBreakpoint"><a >Visual Sudio Breakpoint</a> </li>
             <li id="btnDebugManager"><a > Debug Management</a> </li>
            </ul>
            </div>
            
             <div class="btn-group dropup"><button id="btnSnippetMain" class="btn btn-default dropdown-toggle" type="button" data-loading-text="Loading ..." data-toggle="dropdown">Snippet Code
                <span class="caret"></span>  </button>
            <ul class="dropdown-menu" style="cursor: pointer;">
         <li id="btnSnippetInstanceWcfService"><a > Get Instance of a WCF</a> </li>
         <li id="btnSnippetConfigurationMigration"><a >  Create a Configuration Migration Class</a> </li>
            </ul>
            </div>
            
             <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="Comment/UnComment" />
              <input id="btnRecovery" type="button" class="btn btn-default" value="Recover Last Edition" />
               <input id="btnSourceControl" type="button" class="btn btn-default" value="   Source Control" />
    
       <input id="btnNext" type="button" class="btn btn-default" value=" > "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Next Position In Editor"/>
</div>
    <!-- Modal -->
          
    <div style="display:none;">
          <div id="winWcfManager">

        </div>
         <div id="winEfMigrationGenerator">

        </div>
          <div id="winOutputManager">

        </div>
          <div id="winDebugManager">

        </div>
    </div>
         <div id="divFind">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title"> Find And Replace</h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="txtFind" class="control-label">Search</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="txtFind" placeholder="Text To Search">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtReplace" class="control-label">Replace</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="txtReplace" required class="form-control" name="txtReplace" placeholder="Text to Replace">
                </div>
         
        </div>
 
    </form>
    <div>
         <span id="btnFindNext" class="btn btn-primary">Next</span>
  <span id="btnFindPrev" class="btn btn-primary">Previouse</span>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Whole Word">
            <input id="chkFindWhole" name="chkFindWhole" type="checkbox" />
            <label for="chkFindWhole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Case">
            <input id="chkFindCase" name="chkFindCase" type="checkbox" />
            <label for="chkFindCase" class="label-default as-label">  </label>
          </div>
           </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="chkFindExp" name="chkFindExp" type="checkbox" />
            <label for="chkFindExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Selection">
            <input id="chkFindSelect" name="chkFindSelect" type="checkbox" />
            <label for="chkFindSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div>
                <span id="btnReplace" class="btn btn-primary">Replace</span>
  <span id="btnReplaceAll" class="btn btn-primary">Replace All</span>
       </div>
       <p></p>
    </div>

 
  <div id="winRestorEditor">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">Recover Editor</h4>
            </div>
        
    <div class="modal-body">
          <span id="btnCancelRestor" class="btn btn-primary">Cancel</span>
         <span id="btnRestorPerviousEditors" class="btn btn-primary">Recover</span>
        
    </div>
       
 </div>

  ', NULL, N'cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",security_Role_getAllByOtherLanguage:"/odata/security/LocalRoles?$filter=(Language%20eq%20''@lang'')&$expand=Role&$select=Role%2FId%2CRole%2FParentId%2CRole%2FName%2CRole%2FOrder%2CRole%2FIsLeaf%2CName",develop_code_os_dotNet_getDll:"/odata/cms/MasterDataKeyValues?$filter=((((ForeignKey1%20eq%20null)%20or%20(ForeignKey1%20eq%20756d))%20or%20(ForeignKey1%20eq%20757d))%20or%20(ForeignKey1%20eq%20758d))%20and%20(TypeId%20eq%201041d)&$select=Id%2CParentId%2CPathOrUrl%2CName%2CCode%2COrder",develop_code_os_dotNet_get:"/develop/code/os/dotnet/Get/@id",develop_code_os_dotNet_save:"/develop/code/os/dotnet/Save",develop_code_os_dotNet_dell:"/develop/code/os/dotnet/delete",develop_code_os_dotNet_getChanges:"/develop/code/os/dotnet/GetChanges/@codeId/@orderBy/@skip/@take/@comment/@user/@fromDateTime/@toDateTime",develop_code_os_dotNet_getChange:"/develop/code/os/dotnet/GetChange/@changeId/@codeId",develop_code_os_dotNet_dllCompile:"/develop/code/os/dotnet/dllCcompile",develop_code_os_dotNet_getOutputVersions:"/develop/code/os/dotnet/GetOutputVersions/@codeId",develop_code_os_dotNet_debugCode:"/develop/code/os/dotnet/debugCode",cms_masterDataKeyValue_GetByOtherLanguageAndTypeIdAndParentId:"/odata/cms/MasterDataLocalKeyValues?$filter=((MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(MasterDataKeyValue%2FParentId%20eq%20@idd))%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CName"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/24 21:17:07', N'1396/11/28 22:10:35', N'1396/11/28 22:10:35', CAST(N'2018-02-13T17:47:07.077' AS DateTime), CAST(N'2018-02-17T18:40:35.040' AS DateTime), CAST(N'2018-02-17T18:40:35.040' AS DateTime), 1, N'', N'', N'adbc1d7908004822940da0680d9f0120', 6, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asCodeEditor.js?minversion=7"},{"url":"asWindow.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (122, N'Output Management', N'/en/admin/develop/codes/os/dotnet/output-manager', NULL, N'', NULL, 0, N' <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">   Output Managementا</h4>
</div>
<div class="modal-body">
   <table id="grvOutputs" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
<th class="col-lg-1" data-header-align="left" data-align="left" data-column-id="Id" data-type="numeric">Id</th>
 <th data-header-align="center" data-identifier="true" data-align = "left" data-column-id="Name" data-css-class="ltr-text" data-header-css-class="col-lg-4 col-md-4 col-sm-6" data-order="desc">Name</th>
       <th data-header-align="center" data-align="center" data-column-id="Size">Size</th>
<th data-header-align="center" data-align="center" data-column-id="ModifieLocalDateTime">  Last Modifi Local DateTime</th>
        </tr>
    </thead>
</table>
 

        
  
</div>
<div class="modal-footer">
  
           <div id="divBtn" class="text-center">
               <input id="btnPublish" type="button" class="btn btn-warning"  value=" Publish " />
      
            <input id="btnNew" type="button" class="btn btn-default" value="    Add Output  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text="Loading ..."  value="  Delete  "  />
                <input id="btnViewLog" type="button" class="btn btn-default"  value="   View Build Report " />
        </div>
        <br/>
        
            <div style="display: none">
        
                    <div id="winLog">
                                          <div class="modal-header as-handle">
                             <h4 class="modal-title"> Build Report </h4>
                        </div>
                    
                <div class="modal-body">
                  <form role="form" class="container-fluid">

                                <br>
               
                        <textarea  class="form-control ltr" name="txtLog" id="txtLog"  style="height: 500px;direction: ltr;"> </textarea>
                    
                                <br>
                   
                           </form>
                <div class="modal-footer">
                <div class="form-group pull-right">
                    <div>
                        <span id="btnCancel" class="btn btn-primary">Cancel</span>
                    </div>
              
                </div>
                   </div>
             </div>
                    </div>
                       
        </div>  
</div>
  
</div>

 ', NULL, N'develop_code_os_dotNet_publishDll:"/develop/code/os/dotnet/publishDll",develop_code_os_dotNet_dellOutputDll:"/develop/code/os/dotnet/dellOutputDll",develop_code_os_dotNet_getOutputs:"/develop/code/os/dotnet/GetetOutputs/@codeId/@orderBy/@skip/@take",develop_code_os_dotNet_addOutputDll:"/develop/code/os/dotnet/addOutputDll",develop_code_os_dotNet_viewDllBuildLog:"/develop/code/os/dotnet/ViewDllBuildLog/@name/@codeId"', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/25 10:54:29', N'1396/11/25 11:51:01', N'1396/11/25 11:51:01', CAST(N'2018-02-14T07:24:29.573' AS DateTime), CAST(N'2018-02-14T08:21:01.570' AS DateTime), CAST(N'2018-02-14T08:21:01.570' AS DateTime), 1, N'', N'', N'af26bbce21214cd6b3fd21eba4d0596a', 2, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (123, N'Debug Management', N'/en/admin/develop/codes/os/dotnet/debug-manager', NULL, N'', NULL, 0, N'<div id="win" class="modal-content">
<div class="modal-header"><button class="close" type="button" data-dismiss="modal">&times;</button>
<h4 class="modal-title">  Debug Management</h4>
</div>
<div class="modal-body">
    <br/>
    <div class="container-fluid">

<div class="col-lg-12" style="padding-bottom:10px">
<div class="col-lg-6">
      <label for="fromDateInput" class="control-label" >&nbsp; From Date&nbsp;</label>
<div id="fromDateInput"></div>
</div>
<div class="col-lg-6">
      <label for="toDateInput" class="control-label" >&nbsp;To Date &nbsp;</label>
<div id="toDateInput"></div>
</div>
</div>
<div class="col-lg-12" style="padding-bottom:10px">
<div class="col-lg-6">
      <label for="fromTimeInput" class="control-label" >&nbsp;Frome Time &nbsp;</label>
<div id="fromTimeInput"></div>
</div>
<div class="col-lg-6">
      <label for="toTimeInput" class="control-label">&nbsp; To Time&nbsp;</label>
<div id="toTimeInput"></div>
</div>

</div>
<div class="col-lg-12">

    <div class="col-lg-5">
        
                    <div class="form-group">

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-comment"></i></span>
            <input type="text" class="form-control" name="txtIntegerValue" id="txtIntegerValue" placeholder=" Integer" style="width:90%">
        </div>

    </div>
</div>
 <div class="col-lg-1">
        </div>
<div class="col-lg-5">
            <div class="form-group">
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-sound-5-1"></i></span>
            <input type="text" class="form-control" name="txtDecimal" id="txtDecimal" placeholder="  Decimal" style="width:90%">  
            </div>

    </div>
</div>
    <div class="col-lg-1">
        </div>
</div>
<div class="col-lg-12">

    <div class="col-lg-11">
        
                    <div class="form-group">

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
            <input type="text" class="form-control" name="txtData" id="txtData" placeholder="Data">
        </div>

    </div>
</div>
    <div class="col-lg-1">
        </div>
</div>
<div class="col-lg-12">
          <div class="text-center">
                    
       <br/>
       <input id="btnSearch" type="button" class="btn btn-success" value="   Serch  " />
       <input id="btnRemoveFilte" type="button" class="btn btn-default" value="     Clear Search Condition  " />
            
        </div>
    </div>
</div>
                                 <br/>
<table id="grvDebugs" class="table table-condensed table-hover table-striped table-responsive">
<thead>
<tr>
<th data-header-align="left" data-align="left" data-column-id="Id"  data-identifier="true" data-visible="false" data-type="numeric">Id</th>
<th data-header-align="center" data-align="center" data-column-id="Data">Data</th>
<th data-header-align="center" data-align="center" data-column-id="IntegerValue">Integer </th>
<th data-header-align="center" data-align="center" data-column-id="DecimalValue" > Decimal</th>
<th data-header-align="center" data-align="center" data-column-id="IsOk"> Is Ok</th>
<th data-header-align="center" data-align="center" data-column-id="DateTime" >  DateTime</th>
<th data-header-align="center" data-align="center" data-column-id="CreateDateTime" data-order="desc" >CreateDateTime</th>

</tr>
</thead>
</table>
    <div style="display: none">
        
                    <div id="winAddOrEdit">
                                          <div class="modal-header as-handle">
                             <h4 class="modal-title">Add or Update </h4>
                        </div>
                    
                <div class="modal-body">
                  <form id="frmDebug" role="form" class="container-fluid">
                       <br/>
                                  <label class="control-label">Is Ok ?</label>
                    <div class="as-material-switch">
                           <div style="float: left;">
                        <input id="chkIsOk" name="chkIsOk" type="checkbox" />
                        <label for="chkIsOk" class="label-default as-label">  </label>
                      </div>
                 </div>
                  <br/>
                    
                    <div class="form-group">
                    <label for="txtDataModal" class="control-label" >  Data</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
                           <textarea  class="form-control" name="txtDataModal" id="txtDataModal" style="direction:ltr">
                </textarea>
                    </div>
                    </div>
                <br>
                     <div class="form-group">
                    <label for="txtIntegerValueModal" class="control-label" >   Integer</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
                        <input type="text" class="form-control" name="txtIntegerValueModal" id="txtIntegerValueModal"  style="direction:ltr" />
                    </div>
                <br>
                            
                           
                        </div>
                 <br>
                   <div class="form-group">
                    <label for="txtDecimalValueModal" class="control-label" >  Decimal </label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
                        <input type="text" class="form-control" name="txtDecimalValueModal" id="txtDecimalValueModal"  style="direction:ltr" />
                    </div>
                <br>
                            
                           
                        </div>
                     <br />
                        <div class="form-group">
                    <label for="txtDateTime" class="control-label" >DateTime</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
                        <input type="text" class="form-control" name="txtDateTime" id="txtDateTime"  style="direction:ltr" />
                    </div>
                <br>
                        </div>
                     <br />

                        </form>
                        </div>
                        
                <div class="modal-footer">
                <div class="form-group pull-right">
                    <div>
                        <span id="btnExecute" class="btn btn-primary">Execute</span>
                        <span id="btnCancel" class="btn btn-primary">Cancel</span>
                    </div>
              
                </div>
                   </div>
             </div>
                    </div>
                       
        </div>  

<div class="modal-footer" style="text-align: center;">
            <br>
        <div id="divButtons" class="text-center">
  
                    <input id="btnEdit" type="button" class="btn btn-default"  value=" Edite " />
      
            <input id="btnNew" type="button" class="btn btn-default" value="   New  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text="Loading ..."   data-localize="remove" />
        </div>

</div>
</div>', NULL, N'develop_code_os_dotNet_addOrUpdateDebugInfo:"/develop/code/os/dotnet/addOrUpdateDebugInfo",develop_code_os_dotNet_deleteDebugInfo:"/develop/code/os/dotnet/deleteDebugInfo",develop_code_os_dotNet_GetDebugInfos:"/develop/code/os/dotnet/GetDebugInfos/@orderBy/@skip/@take/@codeId/@data/@integerValue/@decimalValue/@fromDateTime/@toDateTime"', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/25 11:49:07', N'1396/11/25 14:25:16', N'1396/11/25 14:25:16', CAST(N'2018-02-14T08:19:07.170' AS DateTime), CAST(N'2018-02-14T10:55:16.970' AS DateTime), CAST(N'2018-02-14T10:55:16.970' AS DateTime), 1, N'', N'loadScriptAndStyle:{urls:[{url:$.asGetStylePath() + ''calendar/theme/public.css?local=4''}]}', N'85ef1cb9c6074076993e086ac99e2456', 4, N'[{"url":"asDateTimeInput.css?minversion=21"},{"url":"asDateTimeInput.js?minversion=21"},{"url":"asCalendar.css?minversion=9"},{"url":"asCalendar.js?minversion=9"},{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (124, N'WCF Management', N'/en/admin/develop/codes/os/dotnet/wcf-manager', NULL, N'', NULL, 0, N'  <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">WCF Management</h4>
</div>
<div class="modal-body">
   <form id="frmWcf" role="form" class="container-fluid">
          <div class="form-group">
        <label for="txtUrl" class="control-label">WSDL Url</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
            <input type="text" class="form-control  as-validate-valid" name="txtUrl" id="txtUrl" style="direction:ltr" >
        </div>
    </div>
   
    <div class="form-group">
            <label for="txtWcfUsername" class="control-label">  UserName</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" class="form-control" name="txtWcfUsername" id="txtWcfUsername" placeholder="UserName">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtWcfPassword" class="control-label"> Password</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password" class="form-control" id="txtWcfPassword" name="txtWcfPassword" placeholder=" Password">
                </div>
         
        </div>

 <div class="form-group">
            <label for="txtWcfDomain" class="control-label"> Domain </label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-unchecked"></i></span>
                    <input type="text" class="form-control as-validate-valid" name="txtWcfDomain" id="txtWcfDomain" placeholder="YourDomain.Com" aria-required="true" aria-invalid="false">
                </div>
         
        </div>
        
         <div class="form-group">
            <label for="txtWcfProxy" class="control-label">  Proxy Address </label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-random"></i></span>
                    <input type="text" class="form-control as-validate-valid" name="txtWcfProxy" id="txtWcfProxy" placeholder="Proxy.YourDomain.Com" aria-required="true" aria-invalid="false">
                </div>
         
        </div>

<div class="row">
        <label for="drpEditorNames" class="control-label" >  Language</label>
    <br />

        <div id="drpEditorNames" name="drpEditorNames" style="float: left;">
    </div>
</div>

                <div class="form-group text-center">
            <span id="btnSave" class="btn btn-primary">Create WCF Code</span>
  
    </div>


    <br />
    <div id="wcfCodeEditor_container" style="display:none">
        <label class="control-label"> WCF Code</label>
    <div id="wcfCodeEditor" name="wcfCodeEditor" style="height: 300px">

    </div>

    </div>

</form>


                  </div>
<div class="modal-footer">

<div id="editorToolbar" class="text-center" style="position:relative;bottom:0;width:100%;background-color: white;">
   
  
  
         <input id="btnPrev" type="button" class="btn btn-default" value="<"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Previous Positon In Editor"/>   
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value="Find And Replace" />
       <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="ToggleComment" />
      <input id="btnNext" type="button" class="btn btn-default" value=">"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Next Position In Editor"/>
</div>
    <!-- Modal -->
 <div id="winFind">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title" style="display: -webkit-box;">Find And Replace</h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="txtFind" class="control-label" style="display: -webkit-box;">Search</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="txtFind" placeholder="Text To Search">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtReplace" class="control-label" style="display: -webkit-box;">Replace</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="txtReplace" required class="form-control" name="txtReplace" placeholder="Text to Replace">
                </div>
         
        </div>
 
    </form>
    <div style="direction: ltr;">
<div style="direction: rtl;display: -webkit-box;display: -ms-flexbox;display: flex;">
             <span id="btnFindNext" class="btn btn-primary">Next</span>
  <span id="btnFindPrev" class="btn btn-primary">Previouse</span>
</div>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Whole Word">
            <input id="chkFindWhole" name="chkFindWhole" type="checkbox" />
            <label for="chkFindWhole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Case">
            <input id="chkFindCase" name="chkFindCase" type="checkbox" />
            <label for="chkFindCase" class="label-default as-label">  </label>
          </div>
             </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="chkFindExp" name="chkFindExp" type="checkbox" />
            <label for="chkFindExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Selection">
            <input id="chkFindSelect" name="chkFindSelect" type="checkbox" />
            <label for="chkFindSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div style="direction: rtl;display: -webkit-box;display: -ms-flexbox;display: flex;">
                <span id="btnReplace" class="btn btn-primary">Replace</span>
  <span id="btnReplaceAll" class="btn btn-primary">Replace All</span>
       </div>
       <p></p>
    </div>

</div>
  
</div>', NULL, N'develop_code_os_dotNet_getWcfGenreatedCode:"/develop/code/os/dotnet/GetWcfGenreatedCode",cms_masterDataKeyValue_GetByOtherLanguageAndTypeIdAndParentId:"/odata/cms/MasterDataLocalKeyValues?$filter=((MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(MasterDataKeyValue%2FParentId%20eq%20@idd))%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CName"', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/25 13:11:52', N'1396/11/25 13:11:52', N'1396/11/25 13:11:52', CAST(N'2018-02-14T09:41:52.037' AS DateTime), CAST(N'2018-02-14T09:41:52.037' AS DateTime), CAST(N'2018-02-14T09:41:52.037' AS DateTime), 1, N'', N'', N'df042de9f0f940a2b3f56d72ac2ed131', 1, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asCodeEditor.js?minversion=7"},{"url":"asWindow.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (125, N'Entity Framework Migration Generator', N'/en/admin/develop/codes/os/dotnet/ef-migration-generator', NULL, N'', NULL, 0, N'  <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">Entity Framework Migration Generator  </h4>
</div>
<div class="modal-body">
   <form id="frmMigration" role="form" class="container-fluid">
       <br>
       
              <div class="row">
        <label for="drpAction" class="control-label" >   Opration </label>
    <br />

        <div id="drpAction" name="drpAction" style="float: left;">
    </div>
</div>

       <div class="row">
        <label for="drpConnection" class="control-label" >   Connection</label>
    <br />

        <div id="drpConnection" name="drpConnection" style="float: left;">
    </div>
</div>

<div class="row">
        <label for="drpDllVersion" class="control-label" >   Version</label>
    <br />

        <div id="drpDllVersion" name="drpVersion" style="float: left;">
    </div>
</div>
<div class="row">
        <label for="drpClass" class="control-label" >   DbMigrationsConfiguratin Class</label>
    <br />

        <div id="drpClass" name="drpClass" style="float: left;">
    </div>
</div>

<div id="divMigrations">
    <div id="divRunMigrations">
    <div  class="row">
        <label for="drpMigrations" class="control-label" >    Migration</label>
    <br />

        <div id="drpMigrations" name="drpMigrations" style="float: left;">
    </div>
</div>
</div>
<div id="divScript">
        <div  class="row">
        <label for="drpSourceMigration" class="control-label" >  Source Migration  </label>
    <br />

        <div id="drpSourceMigration" name="drpSourceMigration" style="float: left;">
    </div>
</div>
    <div  class="row">
        <label for="drpTargetMigration" class="control-label" >  Target Migration  </label>
    <br />

        <div id="drpTargetMigration" name="drpTargetMigration" style="float: left;">
    </div>
</div>
</div>
</div>

<div class="row">
        <label for="drpEditorNames" class="control-label" >  Language</label>
    <br />

        <div id="drpEditorNames" name="drpEditorNames" style="float: left;">
    </div>
</div>
   
<div id="divNewMigration">
    
        <div class="form-group">
            <label for="txtRootNamespace" class="control-label">  Assembly root namespace</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" class="form-control" name="txtRootNamespace" id="txtRootNamespace" style="direction:ltr">
                </div>
         
        </div>
        
            <div class="form-group">
            <label for="txtMigration" class="control-label"> Migration Name</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" class="form-control" name="txtMigration" id="txtMigration" style="direction:ltr">
                </div>
         
        </div>
    
</div>
      <br>
    <div class="container-fluid">
                    
                <label class="control-label">Force</label>
        <div class="as-material-switch">
               <div style="float: left;">
            <input id="chkForce" name="chkForce" type="checkbox" />
            <label for="chkForce" class="label-default as-label">  </label>
          </div>
     </div>
    </div>
                <div class="form-group text-center">
            <span id="btnExecute" class="btn btn-primary"> Run</span>
  
    </div>


    <br />
    <div id="migCodeEditor_container" style="display:none">
        <label class="control-label">Code </label>
    <div id="migCodeEditor" name="migCodeEditor" style="height: 300px">

    </div>

    </div>

</form>


                  </div>
<div class="modal-footer">

<div id="editorToolbar" class="text-center" style="position:relative;bottom:0;width:100%;background-color: white;">
   
  
   
        <input id="btnPrev" type="button" class="btn btn-default" value="<"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Previous Positon In Editor"/>    
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value=" Find And Replace" />
       <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="ToggleComment" />
     <input id="btnNext" type="button" class="btn btn-default" value=">"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Next Position In Editor"/>
</div>
    <!-- Modal -->
 <div id="winFind">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title" style="display: -webkit-box;"> Find And Replace</h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="txtFind" class="control-label" style="display: -webkit-box;">Search</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="txtFind" placeholder="Text To Search">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtReplace" class="control-label" style="display: -webkit-box;">Replace</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="txtReplace" required class="form-control" name="txtReplace" placeholder="Text to Replace">
                </div>
         
        </div>
 
    </form>
    <div style="direction: ltr;">
<div style="direction: rtl;display: -webkit-box;display: -ms-flexbox;display: flex;">
             <span id="btnFindNext" class="btn btn-primary">Next</span>
  <span id="btnFindPrev" class="btn btn-primary">Previouse</span>
</div>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Whole Word">
            <input id="chkFindWhole" name="chkFindWhole" type="checkbox" />
            <label for="chkFindWhole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Case">
            <input id="chkFindCase" name="chkFindCase" type="checkbox" />
            <label for="chkFindCase" class="label-default as-label">  </label>
          </div>
             </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="chkFindExp" name="chkFindExp" type="checkbox" />
            <label for="chkFindExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Selection">
            <input id="chkFindSelect" name="chkFindSelect" type="checkbox" />
            <label for="chkFindSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div style="direction: rtl;display: -webkit-box;display: -ms-flexbox;display: flex;">
                <span id="btnReplace" class="btn btn-primary">Replace</span>
  <span id="btnReplaceAll" class="btn btn-primary">Replace All</span>
       </div>
       <p></p>
    </div>

</div>
  
</div>', NULL, N'develop_code_os_dotNet_generateMigration:"/develop/code/os/dotnet/GenerateMigration",develop_code_os_dotNet_getOutputVersionNumbers:"/develop/code/os/dotnet/GetOutputVersionNumbers/@codeId",develop_code_os_dotNet_getNamespaceAndClassesByDllId:"/odata/cms/MasterDataKeyValues?$filter=(((ForeignKey1%20eq%20752d)%20or%20(ForeignKey1%20eq%20753d))%20and%20(TypeId%20eq%201041d))%20and%20(ForeignKey2%20eq%20@dllIdd)&$select=Id%2CParentId%2CPathOrUrl%2CName%2CCode%2COrder",develop_code_os_dotNet_getDbMigrationClasses:"/develop/code/os/dotnet/GetDbMigrationClasses/@dllVersion/@configurationClassId",develop_code_os_dotNet_runMigration:"/develop/code/os/dotnet/RunMigration",develop_code_os_dotNet_getMigrationScript:"/develop/code/os/dotnet/GetMigrationScript",cms_masterDataKeyValue_GetByOtherLanguageAndTypeIdAndParentId:"/odata/cms/MasterDataLocalKeyValues?$filter=((MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(MasterDataKeyValue%2FParentId%20eq%20@idd))%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CName",develop_code_database_sqlserver_connectionsByOtherLanguage:"/develop/code/database/sqlserver/connectionsByOtherLanguage/@lang"', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/25 13:29:30', N'1396/11/25 17:58:36', N'1396/11/25 17:58:36', CAST(N'2018-02-14T09:59:30.090' AS DateTime), CAST(N'2018-02-14T14:28:36.963' AS DateTime), CAST(N'2018-02-14T14:28:36.963' AS DateTime), 1, N'', N'', N'c2407882bdae4c4abb22dc668bb16f6c', 2, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asCodeEditor.js?minversion=7"},{"url":"asWindow.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (126, N'Run a Unit Test', N'/en/admin/develop/codes/os/dotnet/unit-test-runner', NULL, N'', NULL, 0, N'  <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">Run a Unit Test</h4>
</div>
<div class="modal-body">
   <form id="frmUnitTest" role="form" class="container-fluid">
       <br>

       <div class="row">
        <label for="drpUnitTestDll" class="control-label" >Test Assembly </label>
    <br />

        <div id="drpUnitTestDll" name="drpUnitTestDll" style="float: left;">
    </div>
</div>
<div id="divDllCodes">
<div class="row">
        <label for="drpDllCodes" class="control-label" >  Code </label>
    <br />

        <div id="drpDllCodes" name="drpDllCodes" style="float: left;">
    </div>
</div>
</div>
<div id="divDllVersions">
<div class="row">
        <label for="drpDllVersion" class="control-label" >   Version</label>
    <br />

        <div id="drpDllVersion" name="drpVersion" style="float: left;">
    </div>
</div>
</div>
<div id="divMethods">
<div class="row">
        <label for="drpMethods" class="control-label" >Method </label>
    <br />

        <div id="drpMethods" name="drpMethods" style="float: left;">
    </div>
</div>
</div>

        <div class="form-group">
            <label for="txtParameterValue" class="control-label"> Parameter Value</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                    <input type="text" class="form-control" name="txtParameterValue" id="txtParameterValue" style="direction:ltr">
                </div>
         
        </div>
      <br>

                <div class="form-group text-center">
            <span id="btnExecute" class="btn btn-primary"> Run</span>
  
    </div>

</form>


                  </div>
<div class="modal-footer">

</div>
  
</div>', NULL, N'develop_code_os_dotNet_getOutputVersionNumbers:"/develop/code/os/dotnet/GetOutputVersionNumbers/@codeId",develop_code_os_dotNet_getDllByTypeId:"/odata/cms/MasterDataKeyValues?$filter=((ForeignKey1%20eq%20null)%20or%20(ForeignKey1%20eq%20@typeIdd))%20and%20(TypeId%20eq%201041d)&$select=Id%2CParentId%2CPathOrUrl%2CName%2CCode%2COrder",develop_code_os_dotNet_getNamespaceAndClassesAndMethodsByDllId:"/odata/cms/MasterDataKeyValues?$filter=((((ForeignKey1%20eq%20752d)%20or%20(ForeignKey1%20eq%20753d))%20or%20(ForeignKey1%20eq%20754d))%20and%20(TypeId%20eq%201041d))%20and%20(ForeignKey2%20eq%20@dllIdd)&$select=Id%2CParentId%2CPathOrUrl%2CName%2CCode%2COrder",develop_code_os_dotNet_runUnitTestMethod:"/develop/code/os/dotnet/RunUnitTestMethod",develop_code_os_dotNet_getUnitTestMethods:"/develop/code/os/dotnet/GetUnitTestMethods/@dllId/@dllVersion/@codeId"', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/25 13:35:38', N'1396/11/25 13:35:38', N'1396/11/25 13:35:38', CAST(N'2018-02-14T10:05:38.710' AS DateTime), CAST(N'2018-02-14T10:05:38.710' AS DateTime), CAST(N'2018-02-14T10:05:38.710' AS DateTime), 1, N'', N'', N'e1e04ca7f8d4413c8bc5dee233b6444f', 1, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (127, N'SqlServer Codes', N'/en/admin/develop/codes/database/sqlserver', NULL, N'', NULL, 0, N'<form id="frmCode" role="form" class="container-fluid">
                <br />
    <label class="control-label" >Connection</label>
    <br />
    <div class="container">
        <div id="drpConnection" style="float: left;">
        </div>
    </div>

        <br />
    <label class="control-label" style="float: right">  Code</label>
    <br />
    <div id="divCode" class="container">
        
        <div id="drpCodes" style="float: left;margin-top: 10px;">
        </div>
          <input id="btnTranslator" type="button" style="float: left;margin-top: 6px;" class="btn btn-default disabled" value="Translate" />
    </div>
                           <br/>
      
        <label class="control-label">New</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>
                  <br/>
      
        <label class="control-label">Is Leaf ?</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkIsLeaf" name="chkIsLeaf" type="checkbox"/>
            <label for="chkIsLeaf" class="label-default as-label ">  </label>
          </div>
     </div>
   <br />
            <label for="txtUrl" class="control-label"> Physical path</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtUrl" id="txtUrl" style="direction:ltr">
                <span class="input-group-btn divSelectDir" >
                <button id="btnSelectDir" class="btn btn-default" type="button">...</button>
               </span>
        </div>
    <br>
    <div class="form-group">
        <label for="txtName" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName" data-localize="title" placeholder="">
        </div>

    </div>
    
     <br>
                        <div class="form-group">
        <label for="txtCodeId" class="control-label">   Code Id</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtCodeId" id="txtCodeId" style="direction: ltr;"  placeholder=" شناسه کد">
        </div>
    </div>
         <br />
    <div class="form-group">
        <label for="txtCode" class="control-label">Code</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtCode" id="txtCode"  style="direction: ltr;"  placeholder="Code">
        </div>

    </div>

    <br />
   
            <div class="form-group">
        <label for="txtDescription" class="control-label">Description</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>
 <br>
                        <div class="form-group">
        <label for="txtId" class="control-label"> Guid</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtId" id="txtId" style="direction: ltr;"  placeholder="Guid">
        </div>
    </div>
   

    <br>
                    <div class="form-group">
        <label for="txtVersion" class="control-label"> Version</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" readonly="true" class="form-control" name="txtVersion" id="txtVersion" style="direction: ltr;"  placeholder="Version">
        </div>
    

    </div>
    <br/>
        <div class="form-group">
        <label for="txtOrder" class="control-label" >Order</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtOrder" id="txtOrder"  placeholder="1">
        </div>

    </div>
    <br/>
    
       
      
         <label class="control-label">Run From Memory</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCache" name="chkCache" type="checkbox" />
            <label for="chkCache" class="label-default as-label">  </label>
          </div>
     </div>
  <br />
<fieldset id="divSlidingExpirationTimeInMinutes" disabled>
    <div class="form-group">
        <label for="txtSlidingExpirationTimeInMinutes" class="control-label" >Sliding Expiration Time In Minutes</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtSlidingExpirationTimeInMinutes" id="txtSlidingExpirationTimeInMinutes"   placeholder="0">
        </div>

    </div>
    </fieldset>
        <br />
   <div id="divRoles">
        <label for="drpViewRole" class="control-label" > View Role</label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />

    <label for="drpAccessRole" class="control-label">  Access Role</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label" > Modify Role</label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>
  <div id="divEditor">
    <div id="edrCode_container">
        <label class="control-label"> Editor</label>
    <div id="edrCode" name="edrCode" style="height: 300px">

    </div>
            <br />
                <label class="control-label">Check In</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCheckIn" name="chkCheckIn" type="checkbox" />
            <label for="chkCheckIn" class="label-default as-label">  </label>
          </div>
     </div>
               <br />
            <div class="form-group">
        <label for="txtComment" class="control-label" > ChangSet Comment</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtComment" id="txtComment" >
        </div>

    </div>
     <br />
            <div class="text-center">
                    <input id="btnSaveCode" type="button" class="btn btn-default" data-localize="save" />
                     <input id="btnSelectFile" type="button" class="btn btn-default" value="Select File" />
             <input id="btnManageCode" type="button" class="btn btn-default" value="Code Management" />
                                        <div class="btn-group dropup">
          <button id="btnExec" type="button" class="btn btn-default dropdown-toggle" data-loading-text="Loading ..."  data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
           Execute <span class="caret"></span>
          </button>
          <ul class="dropdown-menu" style="cursor: pointer;">
            <li><a id="btnExecuteQuery"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+E" >Execute Query</a></li>
            <li><a id="btnExecuteNoneQuery"> Execute None Query  </a></li>
          </ul>
        </div>
             </div>
    </div>
  </div>
      
        <label class="control-label">Check Out</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkEditeMode" name="chkEditeMode" type="checkbox" />
            <label for="chkEditeMode" class="label-default as-label">  </label>
          </div>
     </div>
           <br/>
      
        <label class="control-label">Active</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>

              <br />
        
            <label class="control-label">  Last Modifi User</label>
        <div class="container">
               <div id="divLastModifiUser" style="float: left;">
           
            
          </div>
     </div>
        <br />
        
                   <label class="control-label">Last Modifi Local DateTime </label>
        <div class="container">
               <div id="divLastModifiLocalDataTime" style="float: left;">
           
            
          </div>
     </div>
        <br />
        <div class="text-center">
            
            <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
            
             <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>

   <div class="text-center" id="divResult">
       

   </div>

<div id="editorToolbar" class="text-center" style="position:fixed;bottom:0;width:100%;z-index:1060;background-color: white;">
         <label class="control-label" style="float: right;;margin-top: 10px;">Active Editor : </label>
        <span id="lblEditor" class="control-label" style="float: right;margin-top: 10px;"> </span>
     <input id="btnPrev" type="button" class="btn btn-default" value=" < "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Previous Positon In Editor"/>
            <input id="btnEditorResize" type="button"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+L" class="btn btn-default" value="Resize" />
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value="Find And Replace" />
             <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="Comment/UnComment" />
              <input id="btnRecovery" type="button" class="btn btn-default" value="Recover Last Edition" />
              <input id="btnSourceControl" type="button" class="btn btn-default" value="Source Control" />
              <input id="btnNext" type="button" class="btn btn-default" value=" > "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Next Position In Editor"/>
     
</div>
    <!-- Modal -->
  
       <div id="divFind">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title"> Find And Replace</h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="txtFind" class="control-label">Search</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="txtFind" placeholder="Text To Search">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtReplace" class="control-label">Replace</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="txtReplace" required class="form-control" name="txtReplace" placeholder="Text to Replace">
                </div>
         
        </div>
 
    </form>
    <div>
         <span id="btnFindNext" class="btn btn-primary">Next</span>
  <span id="btnFindPrev" class="btn btn-primary">Previouse</span>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Whole Word">
            <input id="chkFindWhole" name="chkFindWhole" type="checkbox" />
            <label for="chkFindWhole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Case">
            <input id="chkFindCase" name="chkFindCase" type="checkbox" />
            <label for="chkFindCase" class="label-default as-label">  </label>
          </div>
           </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="chkFindExp" name="chkFindExp" type="checkbox" />
            <label for="chkFindExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Selection">
            <input id="chkFindSelect" name="chkFindSelect" type="checkbox" />
            <label for="chkFindSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div>
                <span id="btnReplace" class="btn btn-primary">Replace</span>
  <span id="btnReplaceAll" class="btn btn-primary">Replace All</span>
       </div>
       <p></p>
    </div>


    <div style="display: none">
           
 
  <div id="winRestorEditor">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">Recover Editor</h4>
            </div>
        
    <div class="modal-body">
          <span id="btnCancelRestor" class="btn btn-primary">Cancel</span>
         <span id="btnRestorPerviousEditors" class="btn btn-primary">Recover</span>
        
    </div>
       
 </div>
    </div>
  ', NULL, N'cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",security_Role_getAllByOtherLanguage:"/odata/security/LocalRoles?$filter=(Language%20eq%20''@lang'')&$expand=Role&$select=Role%2FId%2CRole%2FParentId%2CRole%2FName%2CRole%2FOrder%2CRole%2FIsLeaf%2CName",develop_code_database_sqlserver_save:"/develop/code/database/sqlserver/Save",develop_code_database_sqlserver_delete:"/develop/code/database/sqlserver/delete",develop_code_database_sqlserver_exec:"/develop/code/database/sqlserver/Exec",develop_code_database_sqlserver_get:"/develop/code/database/sqlserver/get/@id",develop_code_database_sqlserver_getCodeContent:"/develop/code/database/sqlserver/GetCodeContent/@path/@id",develop_code_database_sqlserver_file_save:"/develop/code/database/sqlserver/file/Save",develop_code_database_sqlserver_getChanges:"/develop/code/database/sqlserver/GetChanges/@codePath/@codeName/@orderBy/@skip/@take/@comment/@user/@fromDateTime/@toDateTime",develop_code_database_sqlserver_getChange:"/develop/code/database/sqlserver/GetChange/@changeId/@path/@codeId",develop_code_database_sqlserver_connectionsByOtherLanguage:"/develop/code/database/sqlserver/connectionsByOtherLanguage/@lang"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/25 15:06:06', N'1396/11/28 22:11:06', N'1396/11/28 22:11:06', CAST(N'2018-02-14T11:36:06.293' AS DateTime), CAST(N'2018-02-17T18:41:06.770' AS DateTime), CAST(N'2018-02-17T18:41:06.770' AS DateTime), 1, N'', N'', N'6d9cd4e917434e609fa45416cd713d85', 5, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asCodeEditor.js?minversion=7"},{"url":"asWindow.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (128, N'Browser Codes Management', N'/en/admin/develop/codes/browsers/management', NULL, N'', NULL, 0, N'<form id="frmCode" role="form" class="container-fluid">
            <br />
    <label class="control-label" style="float: right">  Code Type</label>
    <br />
    <div class="container">
        <div id="drpCodeType" style="float: left;">
        </div>
    </div>
                           <br/>
        <br />
    <label class="control-label" style="float: right">  Code</label>
    <br />
    <div id="divCode" class="container">
          
        <div id="drpCodes" style="float: left;margin-top: 10px;">
        </div>
        <input id="btnTranslator" type="button" style="float: left;margin-top: 6px;" class="btn btn-default disabled" disabled="disabled" value="Translate" />
    </div>
                           <br/>
      
        <label class="control-label">New</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>
                  <br/>
      
        <label class="control-label"> Is Leaf ?</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkIsLeaf" name="chkIsLeaf" type="checkbox"/>
            <label for="chkIsLeaf" class="label-default as-label ">  </label>
          </div>
     </div>
   <br />
            <label for="txtUrl" class="control-label">    Physical path</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" class="form-control" name="txtUrl" id="txtUrl" style="direction:ltr">
                <span class="input-group-btn divSelectDir" >
                <button id="btnSelectDir" class="btn btn-default" type="button">...</button>
               </span>
        </div>
    <br>
    <div class="form-group">
        <label for="txtName" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName" data-localize="title" placeholder="">
        </div>

    </div>
    
     <br>
                        <div class="form-group">
        <label for="txtCodeId" class="control-label">Code Id</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtCodeId" id="txtCodeId" style="direction: ltr;"  placeholder="Code Id">
        </div>
    </div>
         <br />
    <div class="form-group">
        <label for="txtCode" class="control-label">Code</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtCode" id="txtCode"  style="direction: ltr;"  placeholder="Code">
        </div>

    </div>

    <br />
   
            <div class="form-group">
        <label for="txtDescription" class="control-label">Description</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>
 <br>
                        <div class="form-group">
        <label for="txtId" class="control-label">Code Guid</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtId" id="txtId" style="direction: ltr;"  placeholder="Code Guid">
        </div>
    </div>
   

    <br>
                    <div class="form-group">
        <label for="txtVersion" class="control-label"> Version</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" readonly="true" class="form-control" name="txtVersion" id="txtVersion" style="direction: ltr;"  placeholder="Version">
        </div>
    

    </div>
    <br/>
        <div class="form-group">
        <label for="txtOrder" class="control-label" >Order</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtOrder" id="txtOrder"  placeholder="1">
        </div>

    </div>
    <br/>
    
       
      
         <label class="control-label">Run From Memory </label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCache" name="chkCache" type="checkbox" />
            <label for="chkCache" class="label-default as-label">  </label>
          </div>
     </div>
  <br />
<fieldset id="divSlidingExpirationTimeInMinutes" disabled>
    <div class="form-group">
        <label for="txtSlidingExpirationTimeInMinutes" class="control-label" >Sliding Expiration Time In Minutes</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtSlidingExpirationTimeInMinutes" id="txtSlidingExpirationTimeInMinutes"   placeholder="0">
        </div>

    </div>
    </fieldset>
        <br />
   <div id="divRoles">
        <label for="drpViewRole" class="control-label">View Role</label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />

    <label for="drpAccessRole" class="control-label" > Access Role</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label" > Modify Role</label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>
  <div id="divEditor">
       <br />
    <label for="drpEditors" class="control-label">  Editor</label>
    <br />
    <div class="container">

        <div id="drpEditors" name="drpEditors" style="float: left;">
        </div>
    </div>


    <br />
    <div id="edrCode_container">
        <label class="control-label"> Editor Content</label>
    <div id="edrCode" name="edrCode" style="height: 300px">

    </div>
            <br />
                <label class="control-label"> Check In</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCheckIn" name="chkCheckIn" type="checkbox" />
            <label for="chkCheckIn" class="label-default as-label">  </label>
          </div>
     </div>
                    <br />
            <div class="form-group">
        <label for="txtComment" class="control-label" > ChangSet Comment</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtComment" id="txtComment" >
        </div>

    </div>
     <br />
            <div class="text-center">
                   <input id="btnCheckJavaScriptCode" type="button" class="btn btn-default" value="Check code more" />
                    <input id="btnSaveCode" type="button" class="btn btn-default" data-localize="save" />
                     <input id="btnSelectFile" type="button" class="btn btn-default" value="File Select" />
             <input id="btnManageCode" type="button" class="btn btn-default" value="Code Management" />
             <input id="btnManageBundle" type="button" class="btn btn-default" value="Bundle Management" />
             </div>
    </div>
  </div>
      
        <label class="control-label">Check Out </label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkEditeMode" name="chkEditeMode" type="checkbox" />
            <label for="chkEditeMode" class="label-default as-label">  </label>
          </div>
     </div>
           <br/>
      
        <label class="control-label">Active</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>

        <br />
        
            <label class="control-label">Last Modifi User</label>
        <div class="container">
               <div id="divLastModifiUser" style="float: left;">
           
            
          </div>
     </div>
        <br />
        
                   <label class="control-label">Last Modifi Local DateTime</label>
        <div class="container">
               <div id="divLastModifiLocalDataTime" style="float: left;">
           
            
          </div>
     </div>
        <br />
        <div class="text-center">
            
            <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
            
             <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>

<div id="editorToolbar" class="text-center" style="position:fixed;bottom:0;width:100%;z-index:1060;background-color: white;">
         <label class="control-label" style="float: right;;margin-top: 10px;">Active Editor : </label>
        <span id="lblEditor" class="control-label" style="float: right;margin-top: 10px;"> </span>
     <input id="btnPrev" type="button" class="btn btn-default" value=" < "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Previous Positon In Editor"/>
            <input id="btnEditorResize" type="button"  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+L" class="btn btn-default" value="Resize" />
            <input id="btnFindWindow" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+F" value="Find And Replace" />
             <input id="btnToggleComment" type="button" class="btn btn-default" data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Control+K" value="Comment/UnComment" />
              <input id="btnRecovery" type="button" class="btn btn-default" value="Recover Last Edition" />
              <input id="btnSourceControl" type="button" class="btn btn-default" value="Source Control" />
              <input id="btnNext" type="button" class="btn btn-default" value=" > "  data-toggle="popover" data-placement="top" data-trigger="hover" data-content="Next Position In Editor"/>
     
</div>
    <!-- Modal -->
  
      <div id="divFind">
            <div class="modal-header as-handle">
                     <button type="button" class="close" aria-hidden="true">&times;</button>
                 <h4 class="modal-title"> Find And Replace</h4>
            
            </div>
          <form role="form" >
        <div class="form-group">
            <label for="txtFind" class="control-label">Search</label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                    <input type="text" class="form-control"  id="txtFind" placeholder="Text To Search">
                </div>
         
        </div>
   

        <div class="form-group">
            <label for="txtReplace" class="control-label">Replace</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-refresh"></i></span>
                    <input type="text" id="txtReplace" required class="form-control" name="txtReplace" placeholder="Text to Replace">
                </div>
         
        </div>
 
    </form>
    <div>
         <span id="btnFindNext" class="btn btn-primary">Next</span>
  <span id="btnFindPrev" class="btn btn-primary">Previouse</span>
         <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Whole Word">
            <input id="chkFindWhole" name="chkFindWhole" type="checkbox" />
            <label for="chkFindWhole" class="label-default as-label">  </label>
          </div>
     </div>
     
           <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Match Case">
            <input id="chkFindCase" name="chkFindCase" type="checkbox" />
            <label for="chkFindCase" class="label-default as-label">  </label>
          </div>
           </div>
               <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Regular Expression">
            <input id="chkFindExp" name="chkFindExp" type="checkbox" />
            <label for="chkFindExp" class="label-default as-label">  </label>
          </div>
     </div>
     
                 <div class="as-material-switch">
               <div style="float: left;"  data-toggle="popover" data-placement="bottom" data-trigger="hover" data-content="Selection">
            <input id="chkFindSelect" name="chkFindSelect" type="checkbox" />
            <label for="chkFindSelect" class="label-default as-label">  </label>
          </div>
     </div>
</div>
<br/>
      <div>
                <span id="btnReplace" class="btn btn-primary">Replace</span>
  <span id="btnReplaceAll" class="btn btn-primary">Replace All</span>
       </div>
       <p></p>
    </div>


    <div style="display: none">
           
 
  <div id="winRestorEditor">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">Recover Editor</h4>
            </div>
        
    <div class="modal-body">
          <span id="btnCancelRestor" class="btn btn-primary">Cancel</span>
         <span id="btnRestorPerviousEditors" class="btn btn-primary">Recover</span>
        
    </div>
       
 </div>
              <div id="winBundleManager">

        </div>
    </div>
  ', NULL, N'cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",security_Role_getAllByOtherLanguage:"/odata/security/LocalRoles?$filter=(Language%20eq%20''@lang'')&$expand=Role&$select=Role%2FId%2CRole%2FParentId%2CRole%2FName%2CRole%2FOrder%2CRole%2FIsLeaf%2CName",develop_code_browser_save:"/develop/code/browser/save",develop_code_browser_delete:"/develop/code/browser/delete",develop_code_browser_get:"/develop/code/browser/get/@id",develop_code_browser_getCodeContent:"/develop/code/browser/GetCodeContent/@path/@id",develop_code_browser_file_save:"/develop/code/browser/file/save",develop_code_browser_checkJavascriptCode:"/develop/code/browser/CheckJavascriptCode",develop_code_browser_getChanges:"/develop/code/browser/GetChanges/@codePath/@codeName/@orderBy/@skip/@take/@comment/@user/@fromDateTime/@toDateTime",develop_code_browser_getChange:"/develop/code/browser/GetChange/@changeId/@path/@codeId",cms_masterDataKeyValue_GetByOtherLanguageAndTypeIdAndParentId:"/odata/cms/MasterDataLocalKeyValues?$filter=((MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(MasterDataKeyValue%2FParentId%20eq%20@idd))%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CName",cms_masterDataKeyValue_GetByOtherLanguageAndParentTypetId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FParentTypeId%20eq%20@parentTypeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CName%2CMasterDataKeyValue%2FTypeId"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/25 18:58:36', N'1396/11/28 22:11:37', N'1396/11/28 22:11:37', CAST(N'2018-02-14T15:28:36.557' AS DateTime), CAST(N'2018-02-17T18:41:37.577' AS DateTime), CAST(N'2018-02-17T18:41:37.577' AS DateTime), 1, N'', N'', N'4cce57abf9694eb09aba495d086025c1', 5, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asCodeEditor.js?minversion=7"},{"url":"asWindow.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (129, N'Bundles Management', N'/en/admin/develop/codes/browsers/bundle', NULL, N'', NULL, 0, N' <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">Bundles Management</h4>
</div>
<div class="modal-body">
   <table id="grvBundles" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
            
               <th data-header-align="left" data-align = "left" data-column-id="MasterDataKeyValue.Id" data-identifier="true" data-formatter="Id" data-type="numeric" data-visible="false" >Id</th>
                  <th data-header-align="center" data-align = "center" data-column-id="Name" data-order="desc"> Name </th>
                   <th data-header-align="center" data-align = "left" data-column-id="MasterDataKeyValue.PathOrUrl" data-formatter="PathOrUrl" data-css-class="ltr-text" data-header-css-class="col-lg-6 col-md-6 col-sm-6">Url</th>
                           <th data-header-align="center" data-align = "center" data-column-id="Description" data-visible=false> Description </th>
                              <th data-header-align="center" data-align = "center" data-column-id="MasterDataKeyValue.Key"  data-formatter="IsCdn"> Has CDN ? </th>
                                <th data-header-align="center" data-align = "center" data-column-id="MasterDataKeyValue.Value"  data-visible=false> Value </th>
                                <th data-header-align="center" data-align = "center" data-column-id="MasterDataKeyValue.SecondCode"  data-visible=false> SecondCode </th>
                                  <th data-header-align="center" data-align = "center" data-column-id="MasterDataKeyValue.Code"  data-visible=false> Code </th>
                         <th data-header-align="center" data-align = "center" data-column-id="MasterDataKeyValue.ViewRoleId" data-visible=false> ViewRoleId </th>
                           <th data-header-align="center" data-align = "center" data-column-id="MasterDataKeyValue.AccessRoleId" data-visible=false> AccessRoleId </th>
                             <th data-header-align="center" data-align = "center" data-column-id="MasterDataKeyValue.ModifyRoleId" data-visible=false> ModifyRoleId </th>
                             <th data-header-align="center" data-align = "center" data-column-id="MasterDataKeyValue.RowVersion" data-visible=false> RowVersion </th>
                             <th data-header-align="center" data-align = "center" data-column-id="MasterDataKeyValue.Description" data-visible=false> RowVersion </th>
                             <th data-header-align="center" data-align = "center" data-column-id="MasterDataKeyValue.Name" data-visible=false> RowVersion </th>
        </tr>
    </thead>
</table>
 
      <br>
    <div class="container-fluid">
                    
                <label class="control-label">Publish</label>
        <div class="as-material-switch">
               <div style="float: left;">
            <input id="chkPublishBundle" name="chkPublishBundle" type="checkbox" />
            <label for="chkPublishBundle" class="label-default as-label">  </label>
          </div>
     </div>
    </div>
        
  
</div>
<div class="modal-footer">

           <div id="divBtn" class="text-center">
             <input id="btnManageSource" type="button" class="btn btn-default" value="Source Management" />
              <input id="btnCompile" type="button" class="btn btn-default" value="Compile" />
               <input id="btnEdit" type="button" class="btn btn-default"  value=" Edit " />
      
            <input id="btnNew" type="button" class="btn btn-default" value="   New  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text="Loading ..."  value="  Delete  "  />
<input id="btnTranslator" type="button" class="btn btn-default" value="Translate" />
        </div>
        <br/>
           <br>
   <div style="display: none">
    
    <div id="winAddOrEdit">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">Add or Update</h4>
            </div>
        
    <div class="modal-body">
        <form id="frmAddOrAupdate" role="form" class="container-fluid">
        <div class="form-group">
        <label for="txtName" class="control-label" > Custom Name </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName">
        </div>
    <br>

    </div>

        <div class="form-group">
        <label for="txtPath" class="control-label">  Full Path </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
            <input type="text" class="form-control" name="txtPath" id="txtPath" style="direction:ltr">
                <span class="input-group-btn">
                <button id="btnSelectPath" class="btn btn-default" type="button">...</button>
               </span>
        </div>
        </div>
    <br>
            <div class="form-group">
        <label for="txtDescription" class="control-label">Description</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>

    <br />
   <div class="row">
            <label for="drpViewRole2" class="control-label" > View Role</label>
    <br />

        <div id="drpViewRole2" name="drpViewRole2" style="float: left;">
        </div>
</div>
    <br />

<div class="row">
        <label for="drpAccessRole2" class="control-label" >  Access Role</label>
    <br />
        <div id="drpAccessRole2" name="drpAccessRole2" style="float: left;">
        </div>
</div>
      <br />    
  <div class="row">
                <label for="drpModifyRole2" class="control-label" >Modify Role </label>
    <br />

        <div id="drpModifyRole2" name="drpModifyRole2" style="float: left;">
        </div>
  </div>

<div id="divDependencyPanel">
         <br />
     <div class="row">
    <label for="drpCodeTypeForDependency" class="control-label" > Type of code for dependency</label>
    <br />
   
        <div id="drpCodeTypeForDependency" name="drpCodeTypeForDependency" style="float: left;">
        </div>

    </div>
                           <br/>
        <br />
    <div class="row">
    <label for="drpCodesDependency" class="control-label" > Choosing the code for dependency</label>
    <br />
   
     
        <div id="drpCodesDependency" name="drpCodesDependency" style="float: left;">
        </div>
  
     </div>
                           <br/>
    <div class="row">
    <label for="drpBundlesDependency" class="control-label" > Select a bundle for dependecy</label>
    <br />
   
     
        <div id="drpBundlesDependency" name="drpBundlesDependency" style="float: left;">
        </div>
  
     </div>
                           <br/>
    <div class="text-center">
          <input id="btnAddDependency" type="button" class="btn btn-default" value="Add to dependencies"/>
    </div>
   <div id="divDependency" class="row">
            <label for="drpDependency" class="control-label" >Add to dependencies</label>
    <br />

        <div id="drpDependency" name="drpDependency" style="float: left;">
        </div>
</div>
    <br />
            <div class="form-group">
        <label for="txtDependencyKey" class="control-label" >  Dependency key </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
            <input type="text" class="form-control" name="txtDependencyKey" id="txtDependencyKey" style="direction:ltr">
        </div>
    <br>

    </div>
</div>
       <br />
   <div>
                         
                <label class="control-label"> Single Bundle</label>
        <div class="as-material-switch">
               <div style="float: left;">
            <input id="chkOneByOneBundle" name="chkOneByOneBundle" type="checkbox" />
            <label for="chkOneByOneBundle" class="label-default as-label">  </label>
          </div>
     </div>
     </div>
    <div class="row">
    <div class="col-lg-12">
    </div>
    </div>
   <div>
               <label class="control-label"> CDN</label>
        <div class="as-material-switch">
               <div style="float: left;">
            <input id="chkCdn" name="chkCdn" type="checkbox" />
            <label for="chkCdn" class="label-default as-label">  </label>
          </div>
     </div>
       
  </div>
   <br />
          <div id="divCdn" class="form-group">
        <label for="txtCdnUrl" class="control-label"> CDN Url </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
            <input type="text" class="form-control" name="txtCdnUrl" id="txtCdnUrl" style="direction:ltr">
        </div>
        </div>

    </form>
    </div>
    
    <div class="modal-footer">
    <div class="form-group pull-right">
        <div>
              <span id="btnCancel" class="btn btn-primary">Cancel</span>
            <span id="btnExecute" class="btn btn-primary">Excute</span>
          
        </div>
  
    </div>
       
 </div>
 
    </div>
        
                     <div id="winBundleSourceManager">

        </div>

    </div>
</div>
  
</div>

 ', NULL, N'cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",develop_code_browser_bundle_compile:"/develop/code/browser/bundle/compile",develop_code_browser_bundle_save:"/develop/code/browser/bundle/Save",develop_code_browser_bundle_Delete:"/develop/code/browser/bundle/delete",develop_code_browser_GetBundlesOfCodeExceptOneByOneBundle:"/odata/cms/MasterDataKeyValues?$filter=((TypeId%20eq%201033d)%20and%20(ParentId%20eq%20@codeIdd))%20and%20(Value%20ne%201d)&$select=Id%2CParentId%2CPathOrUrl",develop_code_browser_getBundledependency:"/develop/code/browser/getbundledependency/@bundleId",cms_masterDataKeyValue_GetByOtherLanguageAndParentTypetId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FParentTypeId%20eq%20@parentTypeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CName%2CMasterDataKeyValue%2FTypeId",develop_code_browser_GetBundlesOfCodeByOtherLanguagesByPaging:"/odata/cms/MasterDataLocalKeyValues?$filter=((MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(MasterDataKeyValue%2FParentId%20eq%20@parentIdd))%20and%20(Language%20eq%20''@lang'')&$orderby=@orderby&$skip=@skip&$top=@top&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CName%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FPathOrUrl%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FSecondCode%2CDescription%2CMasterDataKeyValue%2FDescription%2CMasterDataKeyValue%2FViewRoleId%2CMasterDataKeyValue%2FAccessRoleId%2CMasterDataKeyValue%2FModifyRoleId%2CMasterDataKeyValue%2FRowVersion&$inlinecount=allpages"', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/26 14:51:49', N'1396/11/26 18:33:58', N'1396/11/26 18:33:58', CAST(N'2018-02-15T11:21:49.933' AS DateTime), CAST(N'2018-02-15T15:03:58.010' AS DateTime), CAST(N'2018-02-15T15:03:58.010' AS DateTime), 1, N'', N'', N'3d128364e8244944bbaf992f73c9767f', 25, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (130, N'Bundle Resource Management', N'/en/admin/develop/codes/browsers/bundle/sources', NULL, N'', NULL, 0, N' <div id="win" class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title">Bundle Resource Management</h4>
</div>
<div class="modal-body">
   <table id="grvBundleSources" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
            
               <th data-header-align="right" data-align = "right" data-column-id="MasterDataKeyValue.Id" data-identifier="true" data-formatter="Id" data-type="numeric" data-visible="false" >Id</th>
                   <th data-header-align="center" data-align = "left" data-column-id="MasterDataKeyValue.PathOrUrl" data-css-class="ltr-text" data-formatter="PathOrUrl" data-header-css-class="col-lg-6 col-md-6 col-sm-6" data-order="desc">Path or Url</th>
                           <th data-header-align="center" data-align = "center" data-column-id="Description" data-visible=false> Description </th>
                         <th data-header-align="center" data-align = "center" data-column-id="MasterDataKeyValue.ViewRoleId" data-visible=false> ViewRoleId </th>
                           <th data-header-align="center" data-align = "center" data-column-id="MasterDataKeyValue.AccessRoleId" data-visible=false> AccessRoleId </th>
                             <th data-header-align="center" data-align = "center" data-column-id="MasterDataKeyValue.ModifyRoleId" data-visible=false> ModifyRoleId </th>
                             <th data-header-align="center" data-align = "center" data-column-id="MasterDataKeyValue.RowVersion" data-visible=false> RowVersion </th>
        </tr>
    </thead>
</table>
 

        
  
</div>
<div class="modal-footer">
  
           <div id="divBtn" class="text-center">
               <input id="btnEdit" type="button" class="btn btn-default"  value=" Edit " />
      
            <input id="btnNew" type="button" class="btn btn-default" value="   New  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text="Loading ..."  value="  Delete  "  />
            <input id="btnTranslator" type="button" class="btn btn-default" value="Translate" />
        </div>
        <br/>
          <div style="display: none">
    
              <div id="winAddOrEdit">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">Add or Update</h4>
            </div>
        
    <div class="modal-body">
        <form id="frmAddOrAupdate" role="form" class="container-fluid">

        <div class="form-group">
        <label for="txtPath" class="control-label">  Full Path </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
            <input type="text" class="form-control" name="txtPath" id="txtPath" style="direction:ltr">
                <span class="input-group-btn">
                <button id="btnSelectPath" class="btn btn-default" type="button">...</button>
               </span>
        </div>
        </div>
    <br>
            <div class="form-group">
        <label for="txtDescription" class="control-label">Description</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>

    <br />
   <div class="row">
            <label for="drpViewRole3" class="control-label" > View Role</label>
    <br />

        <div id="drpViewRole3" name="drpViewRole3" style="float: left;">
        </div>
</div>
    <br />

<div class="row">
        <label for="drpAccessRole3" class="control-label" >Access Role  </label>
    <br />
        <div id="drpAccessRole3" name="drpAccessRole3" style="float: left;">
        </div>
</div>
      <br />    
  <div class="row">
                <label for="drpModifyRole3" class="control-label" > Modify Role</label>
    <br />

        <div id="drpModifyRole3" name="drpModifyRole3" style="float: left;">
        </div>
  </div>
       <br />

    </form>
    </div>
    
    <div class="modal-footer">
    <div class="form-group pull-right">
        <div>
            <span id="btnCancel" class="btn btn-primary">Cancel</span>
            <span id="btnExecute" class="btn btn-primary">Execute</span>
        </div>
  
    </div>
       
 </div>
 
    </div>
    
    
    </div>
</div>
  
</div>

 ', NULL, N'develop_code_browser_bundle_source_save:"/develop/code/browser/bundle/source/Save",develop_code_browser_bundle_source_delete:"/develop/code/browser/bundle/source/delete",develop_code_browser_GetBundlesOfCodeByOtherLanguagesByPaging:"/odata/cms/MasterDataLocalKeyValues?$filter=((MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(MasterDataKeyValue%2FParentId%20eq%20@parentIdd))%20and%20(Language%20eq%20''@lang'')&$orderby=@orderby&$skip=@skip&$top=@top&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CName%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FPathOrUrl%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FSecondCode%2CDescription%2CMasterDataKeyValue%2FDescription%2CMasterDataKeyValue%2FViewRoleId%2CMasterDataKeyValue%2FAccessRoleId%2CMasterDataKeyValue%2FModifyRoleId%2CMasterDataKeyValue%2FRowVersion&$inlinecount=allpages"', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/26 18:07:50', N'1396/11/26 18:35:35', N'1396/11/26 18:35:35', CAST(N'2018-02-15T14:37:50.817' AS DateTime), CAST(N'2018-02-15T15:05:35.927' AS DateTime), CAST(N'2018-02-15T15:05:35.927' AS DateTime), 1, N'', N'', N'0c872d5e933145f2a0ba5620710e2cff', 5, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)

INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (131, N'Settings', N'/en/admin/develop/webconfig-managment/sttings', NULL, N'', NULL, 0, N'                                 <br/>
     <table id="grvSettings" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
               <th data-header-align="right" data-align = "right" data-column-id="Key"  data-identifier="true"  class="col-lg-1">Key</th>
            
           <th data-header-align="center" data-align = "center" data-column-id="Value" data-order="desc" data-css-class="ltr">Value</th>
                   <th data-header-align="center" data-align = "center" data-column-id="Description" data-order="desc">Description</th>
                   
                     <th data-header-align="center" data-align = "center" data-column-id="MasterDataKeyValuePropertyName"  data-visible = "false">MasterDataKeyValuePropertyName</th>
                      <th data-header-align="center" data-align = "center" data-column-id="JavaScriptType"  data-visible = "false">JavaScriptType</th>
                     <th data-header-align="center" data-align = "center" data-column-id="MasterDataKeyValueId"  data-visible = "false">MasterDataKeyValueId</th>
                       <th data-header-align="center" data-align = "center" data-column-id="InjectToJavaScript" data-formatter="InjectToJavaScript" data-css-class="" style="">   Inject To JavaScript</th>
                        <th data-header-align="center" data-visible = "false" data-column-id="MasterDataKeyValueTypeId" >MasterDataKeyValue TypeId</th>
        </tr>
    </thead>
</table>
    

            <br>
        <div id="divButtons" class="text-center">
                    <input id="btnEdit" type="button" class="btn btn-default"  value=" Edit " />
      
            <input id="btnNew" type="button" class="btn btn-default" value="   New  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text=" Loading ... "   data-localize="remove" />
        </div>
    
        
        
    <div style="display: none">
        
                    <div id="winAddOrEdit">
                                          <div class="modal-header as-handle">
                             <h4 class="modal-title">Add or Update</h4>
                        </div>
                    
                <div class="modal-body">
                  <form id="frmConfig" role="form" class="container-fluid">
                       <br/>
                                  <label class="control-label">Is MasterdataKeyValue ?</label>
                    <div class="as-material-switch">
                           <div style="float: left;">
                        <input id="chkIsMasterData" name="chkIsMasterData" type="checkbox" />
                        <label for="chkIsMasterData" class="label-default as-label">  </label>
                      </div>
                 </div>
                  <br/>
                        <div id="divMasterData">
                                    <br />
                      <div class="row">
                        <label for="drpMasterDataType" class="control-label" > MasterData Type</label>
                <br />
            
                    <div id="drpMasterDataType" name="drpMasterDataType" style="float: left;">
                    </div>
            </div>
            
                      
                                       <br/>
            
                      <div class="row">
                        <label for="drpMasterData" class="control-label" >  MasterData</label>
                <br />
            
                    <div id="drpMasterData" name="drpMasterData" style="float: left;">
                    </div>
            </div>
            
                                                    <br />
                      <div class="row">
                        <label for="drpMasterDataProperty" class="control-label" >MasterData Property</label>
                        <br />
                    
                            <div id="drpMasterDataProperty" name="drpMasterDataProperty" >
                            </div>
                    </div>
            
                        </div>
                        <div id="divSetting">
                                <br>
                                     <div class="form-group">
                    <label for="txtKey" class="control-label" >  Key</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
                        <input type="text" class="form-control" name="txtKey" id="txtKey"  style="direction:ltr">
                    </div>
                <br>
                     <div class="form-group">
                    <label for="txtValue" class="control-label" >  Value</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
                        <input type="text" class="form-control" name="txtValue" id="txtValue"  style="direction:ltr">
                    </div>
                <br>
                            
                           
                        </div>
                         
                                </div>
                        </div>
                                                      <br>
                     <div class="form-group">
                    <label for="txtDesc" class="control-label" >  Description</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
                        <input type="text" class="form-control" name="txtDesc" id="txtDesc"  style="direction:ltr">
                    </div>
                <br>
                                  <label class="control-label">Inject To JavaScript ?</label>
                    <div class="as-material-switch">
                           <div style="float: left;">
                        <input id="chkInjectToJavaScript" name="chkInjectToJavaScript" type="checkbox" />
                        <label for="chkInjectToJavaScript" class="label-default as-label">  </label>
                      </div>
                 </div>
                     <br />
                      <div class="row" id="divJavaScriptType">
                        <label for="drpJavaScriptType" class="control-label" style="float: right"> JavaScript Type</label>
                        <br />
                    
                            <div id="drpJavaScriptType" name="drpJavaScriptType" >
                            </div>
                    </div>
                     
                        </div>
                           </form>
                <div class="modal-footer">
                <div class="form-group pull-right">
                    <div>
                      <span id="btnCancel" class="btn btn-primary">Cancel</span>
                        <span id="btnExecute" class="btn btn-primary">Execute</span>
                    </div>
              
                </div>
                   </div>
             </div>
                    </div>
                       
        </div>  
        
        ', NULL, N'cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",cms_masterDataKeyValue_get:"/cms/masterdatakeyvalue/get/@id",develop_webConfig_settings_save:"/develop/webconfig/settings/save/",develop_webConfig_settings_dell:"/develop/webconfig/settings/delete/",develop_webConfig_settings_getSettingsByPagination:"/develop/webconfig/settings/GetSettingsByPagination/@orderBy/@skip/@take",develop_webConfig_settings_getMasterDataKeyValuePropertyName:"/develop/webconfig/settings/GetMasterDataKeyValuePropertyName/",cms_masterDataKeyValue_getTypeByOtherLanguages:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FIsType%20eq%20true)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentTypeId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FTypeId%2CName"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/28 09:58:30', N'1396/11/28 10:05:57', N'1396/11/28 10:05:57', CAST(N'2018-02-17T06:28:30.937' AS DateTime), CAST(N'2018-02-17T06:35:57.970' AS DateTime), CAST(N'2018-02-17T06:35:57.970' AS DateTime), 1, N'', N'', N'6eb8061b2718443382366a6fad13265d', 4, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asFlexSelect.css?minversion=41"},{"url":"asFlexSelect.js?minversion=41"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (132, N'Error Log', N'/en/admin/develop/reports/error-log', NULL, N'', NULL, 0, N'
        <br/>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
<div class="col-lg-4">
      <label for="fromDateInput" class="control-label" >&nbsp;&nbsp;From Date &nbsp;</label>
<div id="fromDateInput"></div>
</div>
<div class="col-lg-4">
      <label for="toDateInput" class="control-label" >&nbsp;&nbsp;To Date&nbsp;</label>
<div id="toDateInput"></div>
</div>
<div class="col-lg-4">
    
    
                    <div class="form-group">
        <label for="txtUser" class="control-label" >User</label>

        <div class="input-group" style="width:65%">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input type="text" class="form-control" name="txtUser" id="txtUser" >
        </div>

    </div>
</div>
</div>
        </div>
     <br/>
   <div class="row">
       <div class="col-lg-12">
<div class="col-lg-4">
      <label for="fromTimeInput" class="control-label" >&nbsp;From Time &nbsp;</label>
<div id="fromTimeInput"></div>
</div>
<div class="col-lg-4">
      <label for="toTimeInput" class="control-label" >&nbsp; To Time&nbsp;</label>
<div id="toTimeInput"></div>
</div>
<div class="col-lg-4">
    
    
                    <div class="form-group">
        <label for="txtTypeOrSourceOrMessage" class="control-label" >Type or source or message</label>

        <div class="input-group" style="float:left;width:65%">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtTypeOrSourceOrMessage" id="txtTypeOrSourceOrMessage" >
        </div>

    </div>
</div>
</div>
   </div>


          <div class="text-center">
                    
       <br/>
       <input id="btnSearch" type="button" class="btn btn-success" value="   Search  " />
       <input id="btnRemoveFilte" type="button" class="btn btn-default" value="Remove Filters" />
            
        </div>
  
</div>
                                 <br/>
     <table id="grvLog" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
               <th data-header-align="left" data-align = "left" data-column-id="Id"  data-identifier="true" class="col-lg-1">Key</th>
            
           <th data-header-align="center" data-align = "center" data-column-id="Type"  data-css-class="ltr">Type</th>
                   <th data-header-align="center" data-align = "center" data-column-id="Source">Source</th>
                   
                     <th data-header-align="center" data-align = "center" data-column-id="Message" >Message</th>
                      <th data-header-align="center" data-align = "center" data-column-id="User" >User</th>
                     <th data-header-align="center" data-align = "center" data-column-id="LocalDateTime" data-order="desc" >Local DateTime</th>
                       <th data-header-align="center" data-align = "center" data-column-id="StatusCode" data-visible="false"> Status Code </th>

        </tr>
    </thead>
</table>
    

            <br>
        <div class="text-center">
                    
      
            <input id="btnDetail" type="button" class="btn btn-default" value="   Details  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text="Loading ..."   data-localize="remove" />
        </div>
    
        
        
    <div style="display: none">
        
                    <div id="winDetail">
                                          <div class="modal-header as-handle">
                             <h4 class="modal-title">Details </h4>
                        </div>
                    
                <div class="modal-body">
                  <form role="form" class="container-fluid">
                       <br/>
                                  <label class="control-label">  Application</label>
                        
                  <br/>
                  <div id="divAppDomain" style="overflow: auto;" class="ltr"></div>
                  
                    
                                          <br/>
                                  <label class="control-label">  Type</label>
                        
                  <br/>
                  <div id="divType" style="overflow: auto;" class="ltr"></div>
                  
                    
                                <br>
                                  <label class="control-label">  Message</label>
                        
                  <br/>
                  <div id="divMessage" style="overflow: auto;" class="ltr"></div>
                  
                    
                                <br>
                      
                    <label class="control-label" >  Details</label>
      
                <br>
                        <div id="divDetail" style="overflow: auto;" class="ltr">
                            
                        </div>
                         
                       
                     
                                                      <br>
                 
                    <label class="control-label" >  Host Name</label>
     
                <br>
                <div id="divHostName" style="overflow: auto;" class="ltr"></div>
                  <br>
                   <label class="control-label"> Cookies</label>
                     <br>
                <div id="divCookies" style="overflow: auto;" class="ltr"></div>
                     <br />
                          <label class="control-label">  Form Data</label>
                     <br>
                <div id="divForm" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                      <label class="control-label">Query String </label>
                     <br>
                <div id="divQueryString" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                      
                      <label class="control-label">Server Variables</label>
                     <br>
                <div id="divServerVariables" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                       <label class="control-label">Web Host Html Message</label>
                     <br>
                <div id="divWebHostHtmlMessage" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                            <label class="control-label"> Is Mobile Mode ? </label>
                     <br>
                <div id="divIsMobileMode" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                            <label class="control-label"> Is Debug Mode ?</label>
                     <br>
                <div id="divIsDebugMode" style="overflow: auto;" class="ltr"></div>
                     <br/>
                                  <label class="control-label">  DataTime</label>
                        
                  <br/>
                  <div id="divDataTime" style="overflow: auto;" class="ltr"></div>
                     <br />
                       <label class="control-label">  Inner Exception  </label>
                     <br>
                <div id="divException" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                           </form>
                <div class="modal-footer">
                <div class="form-group pull-right">
                    <div>
                        <span id="btnCancel" class="btn btn-primary">Cancel</span>
                    </div>
              
                </div>
                   </div>
             </div>
                    </div>
                       
        </div>  
        
        ', NULL, N'develop_reports_ErrorLog_GetByPagination:"/develop/reports/ErrorLog/GetByPagination/@orderBy/@skip/@take/@typeOrSourceOrMessage/@user/@fromDateTime/@toDateTime",develop_reports_ErrorLog_GetById:"/develop/reports/ErrorLog/GetById/@id",develop_reports_ErrorLog_Delete:"/develop/reports/ErrorLog/delete"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/28 10:33:14', N'1396/11/28 11:00:36', N'1396/11/28 11:00:36', CAST(N'2018-02-17T07:03:14.340' AS DateTime), CAST(N'2018-02-17T07:30:36.450' AS DateTime), CAST(N'2018-02-17T07:30:36.450' AS DateTime), 1, N'', N'loadScriptAndStyle:{urls:[{url:$.asGetStylePath() + ''calendar/theme/public.css?local=3''}]}', N'0962b734ef1642179e2d14b313ff8f13', 5, N'[{"url":"asDateTimeInput.css?minversion=21"},{"url":"asDateTimeInput.js?minversion=21"},{"url":"asCalendar.css?minversion=9"},{"url":"asCalendar.js?minversion=9"},{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (133, N'Event Log', N'/en/admin/develop/reports/action-log', NULL, N'', NULL, 0, N'    <br/>
    <div class="container-fluid">
<div class="col-lg-12">
<div class="col-lg-4">
      <label for="fromDateInput" class="control-label" >&nbsp;&nbsp; From Date&nbsp;</label>
<div id="fromDateInput"></div>
</div>
<div class="col-lg-4">
      <label for="toDateInput" class="control-label" >&nbsp;&nbsp;To Date &nbsp;</label>
<div id="toDateInput"></div>
</div>
<div class="col-lg-4">
  <label for="drpService" class="control-label" >Service </label>
<div id="drpService" >&nbsp;</div>
</div>
</div>
     <br/>
<div class="col-lg-12">
<div class="col-lg-4">
      <label for="fromTimeInput" class="control-label" >&nbsp; From Time&nbsp;</label>
<div id="fromTimeInput"></div>
</div>
<div class="col-lg-4">
      <label for="toTimeInput" class="control-label" >&nbsp;To Time &nbsp;</label>
<div id="toTimeInput"></div>
</div>
<div class="col-lg-4">
    
                <div class="form-group">
        <label for="txtNameOrUrlOrUser" class="control-label" >Name or address or user</label>

        <div class="input-group" style="width:65%">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtNameOrUrlOrUser" id="txtNameOrUrlOrUser" >
        </div>

    </div>
    
</div>
</div>
<div class="col-lg-12">
          <div class="text-center">
                    
       <br/>
       <input id="btnSearch" type="button" class="btn btn-success" value="   Search  " />
       <input id="btnRemoveFilte" type="button" class="btn btn-default" value="Remove Filters" />
            
        </div>
    </div>
</div>
                                 <br/>
     <table id="grvLog" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
               <th data-header-align="left" data-align = "left" data-column-id="Id"   data-identifier="true" class="col-lg-1">Key</th>
            
          
                   <th data-header-align="center" data-align = "center" data-column-id="Name">Name</th>
                          <th data-header-align="center" data-align = "center" data-column-id="Url" data-css-class="ltr"> Url </th>
                     <th data-header-align="center" data-align = "center" data-column-id="ServiceUrl" data-css-class="ltr">Service</th>
                      <th data-header-align="center" data-align = "center" data-column-id="User" >User</th>
                      <th data-header-align="center" data-align = "center" data-column-id="Type"  data-css-class="ltr">Type</th>
                      <th data-header-align="center" data-align = "center" data-column-id="ExecutionTimeInMilliseconds"  data-css-class="ltr">ExecutionTime (Ms)</th>
                     <th data-header-align="center" data-align = "center" data-column-id="LocalDateTime" data-css-class="ltr" data-order="desc">DateTime</th>
                
                 
        </tr>
    </thead>
</table>
    

            <br>
        <div class="text-center">
                    
      
            <input id="btnDetail" type="button" class="btn btn-default" value="   Details  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text="Loading ..."   data-localize="remove" />
        </div>
    
        
        
    <div style="display: none">
        
                    <div id="winDetail">
                                          <div class="modal-header as-handle">
                             <h4 class="modal-title">Details </h4>
                        </div>
                    
                <div class="modal-body">
                  <form role="form" class="container-fluid">
                       <br/>
                                  <label class="control-label">  Name</label>
                        
                  <br/>
                  <div id="divName" style="overflow: auto;" ></div>
                  
                    
                                          <br/>
                                  <label class="control-label">  Type</label>
                        
                  <br/>
                  <div id="divType" style="overflow: auto;" class="ltr"></div>
                  
                    
                    
                                <br>
                      
                    <label class="control-label" >  Address or referral address</label>
      
                <br>
                        <div id="divUrlReferrer" style="overflow: auto;" class="ltr">
                            
                        </div>
                         
                       
                     
                                                      <br>
                 
                    <label class="control-label" > parameters</label>
     
                <br>
                <div id="divParameters" style="overflow: auto;" class="ltr"></div>
                  <br>
                   <label class="control-label"> Cookies</label>
                     <br>
                <div id="divCookies" style="overflow: auto;" class="ltr"></div>
                     <br />
                          <label class="control-label">  Request Data</label>
                     <br>
                <div id="divRequest" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                      <label class="control-label">     IP</label>
                     <br>
                <div id="divIp" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                     
                            <label class="control-label">Is Mobile Mode ? </label>
                     <br>
                <div id="divIsMobileMode" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                            <label class="control-label"> Is Debug Mode ? </label>
                     <br>
                <div id="divIsDebugMode" style="overflow: auto;" class="ltr"></div>
                     <br />
                       <label class="control-label">Is Successed ?</label>
                     <br>
                <div id="divIsSuccessed" style="overflow: auto;" class="ltr"></div>
                     <br />
                       <label class="control-label">DataTime </label>
                        
                  <br/>
                  <div id="divDataTime" style="overflow: auto;" class="ltr"></div>
                     <br />
                           </form>
                <div class="modal-footer">
                <div class="form-group pull-right">
                    <div>
                        <span id="btnCancel" class="btn btn-primary">Cancel</span>
                    </div>
              
                </div>
                   </div>
             </div>
                    </div>
                       
        </div>  
        
        ', NULL, N'cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",develop_reports_ActionLog_GetByPagination:"/develop/reports/ActionLog/GetByPagination/@orderBy/@skip/@take/@serviceUrl/@nameOrUrlOrUser/@fromDateTime/@toDateTime",develop_reports_ActionLog_GetById:"/develop/reports/ActionLog/GetById/@id",develop_reports_ActionLog_Delete:"/develop/reports/ActionLog/delete"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/28 11:14:46', N'1396/11/28 11:49:07', N'1396/11/28 11:49:07', CAST(N'2018-02-17T07:44:46.727' AS DateTime), CAST(N'2018-02-17T08:19:07.537' AS DateTime), CAST(N'2018-02-17T08:19:07.537' AS DateTime), 1, N'', N'loadScriptAndStyle:{urls:[{url:$.asGetStylePath() + ''calendar/theme/public.css?local=3''}]}', N'062d704b4440447097972571f87e289a', 4, N'[{"url":"asDateTimeInput.css?minversion=21"},{"url":"asDateTimeInput.js?minversion=21"},{"url":"asCalendar.css?minversion=9"},{"url":"asCalendar.js?minversion=9"},{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (134, N'Events history based on service', N'/en/admin/develop/reports/action-log-by-service', NULL, N'', NULL, 0, N'    <br/>
    <div class="container-fluid">
<div class="col-lg-12">
<div class="col-lg-4">
      <label for="fromDateInput" class="control-label" >&nbsp;&nbsp; From Date&nbsp;</label>
<div id="fromDateInput"></div>
</div>
<div class="col-lg-4">
      <label for="toDateInput" class="control-label" >&nbsp;&nbsp;To Date &nbsp;</label>
<div id="toDateInput"></div>
</div>
<div class="col-lg-4">
  <label for="drpService" class="control-label" >Service </label>
<div id="drpService">&nbsp;</div>
</div>
</div>
     <br/>
<div class="col-lg-12">
<div class="col-lg-4">
      <label for="fromTimeInput" class="control-label" >&nbsp; From Time&nbsp;</label>
<div id="fromTimeInput"></div>
</div>
<div class="col-lg-4">
      <label for="toTimeInput" class="control-label" >&nbsp;To Time &nbsp;</label>
<div id="toTimeInput"></div>
</div>
<div class="col-lg-4">
    
                <div class="form-group">
        <label for="txtNameOrUrlOrUser" class="control-label" >Name or address or user</label>

        <div class="input-group" style="width:65%">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtNameOrUrlOrUser" id="txtNameOrUrlOrUser" >
        </div>

    </div>
    
</div>
</div>
<div class="col-lg-12">
          <div class="text-center">
                    
       <br/>
       <input id="btnSearch" type="button" class="btn btn-success" value="   Search  " />
       <input id="btnRemoveFilte" type="button" class="btn btn-default" value="Remove Filters" />
            
        </div>
    </div>
</div>
                                 <br/>
     <table id="grvLog" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
               <th data-header-align="left" data-align = "left" data-column-id="Id"   data-identifier="true" class="col-lg-1">Key</th>
            
          
                   <th data-header-align="center" data-align = "center" data-column-id="Name">Name</th>
                          <th data-header-align="center" data-align = "center" data-column-id="Url" data-css-class="ltr"> Url </th>
                     <th data-header-align="center" data-align = "center" data-column-id="ServiceUrl" data-css-class="ltr">Service</th>
                      <th data-header-align="center" data-align = "center" data-column-id="User" >User</th>
                      <th data-header-align="center" data-align = "center" data-column-id="Type"  data-css-class="ltr">Type</th>
                      <th data-header-align="center" data-align = "center" data-column-id="ExecutionTimeInMilliseconds"  data-css-class="ltr">ExecutionTime (Ms)</th>
                     <th data-header-align="center" data-align = "center" data-column-id="LocalDateTime" data-css-class="ltr" data-order="desc">DateTime</th>
                
                 
        </tr>
    </thead>
</table>
    

            <br>
        <div class="text-center">
                    
      
            <input id="btnDetail" type="button" class="btn btn-default" value="   Details  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text="Loading ..."   data-localize="remove" />
        </div>
    
        
        
    <div style="display: none">
        
                    <div id="winDetail">
                                          <div class="modal-header as-handle">
                             <h4 class="modal-title">Details </h4>
                        </div>
                    
                <div class="modal-body">
                  <form role="form" class="container-fluid">
                       <br/>
                                  <label class="control-label">  Name</label>
                        
                  <br/>
                  <div id="divName" style="overflow: auto;" ></div>
                  
                    
                                          <br/>
                                  <label class="control-label">  Type</label>
                        
                  <br/>
                  <div id="divType" style="overflow: auto;" class="ltr"></div>
                  
                    
                    
                                <br>
                      
                    <label class="control-label" >  Address or referral address</label>
      
                <br>
                        <div id="divUrlReferrer" style="overflow: auto;" class="ltr">
                            
                        </div>
                         
                       
                     
                                                      <br>
                 
                    <label class="control-label" > parameters</label>
     
                <br>
                <div id="divParameters" style="overflow: auto;" class="ltr"></div>
                  <br>
                   <label class="control-label"> Cookies</label>
                     <br>
                <div id="divCookies" style="overflow: auto;" class="ltr"></div>
                     <br />
                          <label class="control-label">  Request Data</label>
                     <br>
                <div id="divRequest" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                      <label class="control-label">     IP</label>
                     <br>
                <div id="divIp" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                     
                            <label class="control-label">Is Mobile Mode ? </label>
                     <br>
                <div id="divIsMobileMode" style="overflow: auto;" class="ltr"></div>
                     <br />
                     
                            <label class="control-label"> Is Debug Mode ? </label>
                     <br>
                <div id="divIsDebugMode" style="overflow: auto;" class="ltr"></div>
                     <br />
                       <label class="control-label">Is Successed ?</label>
                     <br>
                <div id="divIsSuccessed" style="overflow: auto;" class="ltr"></div>
                     <br />
                       <label class="control-label">DataTime </label>
                        
                  <br/>
                  <div id="divDataTime" style="overflow: auto;" class="ltr"></div>
                     <br />
                           </form>
                <div class="modal-footer">
                <div class="form-group pull-right">
                    <div>
                        <span id="btnCancel" class="btn btn-primary">Cancel</span>
                    </div>
              
                </div>
                   </div>
             </div>
                    </div>
                       
        </div>  
        
        ', NULL, N'cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",develop_reports_ActionLog_GetById:"/develop/reports/ActionLog/GetById/@id",develop_reports_ActionLog_Delete:"/develop/reports/ActionLog/delete",develop_reports_ActionLog_GetByServiceIdAndPagination:"/develop/reports/ActionLog/GetByServiceIdAndPagination/@orderBy/@skip/@take/@serviceId/@user/@fromDateTime/@toDateTime"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/28 11:31:32', N'1396/11/28 14:45:50', N'1396/11/28 14:45:50', CAST(N'2018-02-17T08:01:32.840' AS DateTime), CAST(N'2018-02-17T11:15:50.783' AS DateTime), CAST(N'2018-02-17T11:15:50.783' AS DateTime), 1, N'', N'loadScriptAndStyle:{urls:[{url:$.asGetStylePath() + ''calendar/theme/public.css?local=3''}]}', N'8fdd153f29da46818e3be6eded27d705', 10, N'[{"url":"asDateTimeInput.css?minversion=21"},{"url":"asDateTimeInput.js?minversion=21"},{"url":"asCalendar.css?minversion=9"},{"url":"asCalendar.js?minversion=9"},{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (135, N'Report Management', N'/en/admin/develop/reports/manager', NULL, N'', NULL, 0, N'
    <div class="modal-content">
    <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

    <h4 class="modal-title"> Report Management</h4>
</div>
<div class="modal-body">
    <div style="direction: ltr;">
          <br />
           <label class="control-label" style="position: absolute;right: 10px;">Event logging status</label>
        <div class="as-material-switch">
               <div style="float:left">
            <input id="chkStatusLog" name="chkStatus" type="checkbox" />
            <label for="chkStatusLog" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
    </div>
    <br>
     <div class="text-center">
   <input id="btnToggleEnableLog" class="btn btn-primary" type="button" value="Enable/Disable (Temporary)" data-loading-text="Loading ..." />
</div>

<p></p>
<hr>
 <div class="text-center">
   <input id="btnBackUpActionLog" class="btn btn-primary" type="button" value=" Backup and rebuild the event database  " data-loading-text="Loading ..." />
</div>
<p></p>
<hr>
 <div class="text-center">
   <input id="btnBackUpErrorLog" class="btn btn-primary" type="button" value="  Backup and Rebuild the Error Database " data-loading-text="Loading ..." />
</div>
</div>
<div class="modal-footer">
    <div class="form-group pull-right">
        <div>
            <span id="btnCancel" class="btn btn-primary">Cancel</span>
        </div>
  
    </div>
  
   
</div>
</div>

', NULL, N'develop_reports_ActionLog_ToggleEnableLog:"/develop/reports/ActionLog/ToggleEnableLog",develop_reports_ActionLog_BackUp:"/develop/reports/ActionLog/BackUp",develop_reports_ErrorLog_BackUp:"/develop/reports/ErrorLog/BackUp",develop_reports_ActionLog_LogStatus:"/develop/reports/ActionLog/LogStatus"', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/28 14:55:38', N'1396/11/28 14:55:38', N'1396/11/28 14:55:38', CAST(N'2018-02-17T11:25:38.077' AS DateTime), CAST(N'2018-02-17T11:25:38.077' AS DateTime), CAST(N'2018-02-17T11:25:38.077' AS DateTime), 1, N'', N'', N'08c5e99b5da445208fcb1f1f9fab7511', 1, N'[{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (136, N'Report Management', N'/en/admin/develop/reports/manager', NULL, N'', NULL, 0, N'<div class="col-lg-12">

<div class="as-material-switch" style="margin-top: 10px;">
<div><label class="control-label">Event logging status </label> <input id="chkStatus" name="chkStatus" type="checkbox" /> <label class="label-default as-label" for="chkStatus"> </label></div>
</div>


</div>
  <br>
 <div class="text-center">
   <input id="btnToggleEnableLog" class="btn  btn-primary" type="button" value="Enable/Disable (Temporary)" data-loading-text="Loading ..." />
</div>

<p></p>
<hr>
 <div class="text-center">
   <input id="btnBackUpActionLog" class="btn  btn-primary" type="button" value="  Backup and rebuild the event database   " data-loading-text="Loading ..." />
</div>
<p></p>
<hr>
 <div class="text-center">
   <input id="btnBackUpErrorLog" class="btn btn-primary" type="button" value="Backup and Rebuild the Error Database" data-loading-text="Loading ..." />
</div>', NULL, N'develop_reports_ActionLog_ToggleEnableLog:"/develop/reports/ActionLog/ToggleEnableLog",develop_reports_ActionLog_BackUp:"/develop/reports/ActionLog/BackUp",develop_reports_ErrorLog_BackUp:"/develop/reports/ErrorLog/BackUp",develop_reports_ActionLog_LogStatus:"/develop/reports/ActionLog/LogStatus"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/28 15:00:15', N'1396/11/28 15:00:15', N'1396/11/28 15:00:15', CAST(N'2018-02-17T11:30:15.153' AS DateTime), CAST(N'2018-02-17T11:30:15.153' AS DateTime), CAST(N'2018-02-17T11:30:15.153' AS DateTime), 1, N'', N'', N'6ec310a6f5e6431590c4d79083aa8d65', 1, N'[]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (137, N'Manage Operating Permissions', N'/en/admin/security/permission', NULL, N'', NULL, 0, N'<form id="frmQuery" role="form" class="container-fluid">
        <br />
            <label class="control-label" >  Permissions</label>
    <br />
     
    <div class="container">
   
        <div id="drpPermission" style="float: left;">
        </div>
    <input id="btnTranslator" type="button" style="float: left;margin-top: 6px;" class="btn btn-default disabled" disabled="disabled" value="Translate" />
    </div>
     
            
     
                           <br/>
      
        <label class="control-label">New</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>
                  <br/>
      
        <label class="control-label"> Is Permission ?</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkPermission" name="chkPermission" type="checkbox" />
            <label for="chkPermission" class="label-default as-label">  </label>
          </div>
     </div>
     
        <div id="divPermission">
            
                                <br/>
                    
      <label class="control-label" >Opreation</label>
    <br />
     
    <div class="container">
        <div id="drpActions" style="float: left;margin-top: 10px;">
        </div>
   
    </div>

            <br />
    <label for="drpRole" class="control-label" >Role </label>
    <br />
    <div class="container">

        <div id="drpRole" name="drpRole" style="float: left;">
        </div>
    </div>


              <br/>
    <label class="control-label" >MasterData Type</label>
    <br />
    <div class="container">

        <div id="drpMasterDataType" style="float: left;">
        </div>
    </div>
                           <br/>
    <div id="divMasterdata">
            <label class="control-label" > Masterdata</label>
    <br />
     
    <div class="container">
        <div id="drpMasterData" style="float: left;margin-top: 10px;">
        </div>
   
    </div>
    
                          <div id=divVersion>
               <br />
                   <label for="drpVersion" class="control-label" > Publishable Version </label>
    <br />
    <div class="container">

        <div id="drpVersion" name="drpVersion" style="float: left;">
        </div>
    </div>
</div>
    <br />
    </div>
        </div>

      <br />
      
      <div id="divLink" style="display:none">
             <br />
                 
                  <div class="form-group">
            <label class="control-label">Country</label>
         
             <div id="drpLanguge"></div>
         
        </div>
          <br>
    <label class="control-label" > Link</label>
    <br />
    <div class="container">
        <div id="drpLink" style="float: left;">
        </div>
    </div>
                            <br/>
      </div>
      
    <div class="form-group">
        <label for="txtName" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName" data-localize="title" placeholder="">
        </div>

    </div>
    
     <br>
           <div class="form-group">
        <label for="txtParentId" class="control-label">Parent Id</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtParentId" id="txtParentId" style="direction: ltr;"  placeholder="Parent Id">
        </div>
    </div>
         <br />
                        <div class="form-group">
        <label for="txtPermissionId" class="control-label">Permission Id  </label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtPermissionId" id="txtPermissionId" style="direction: ltr;"  placeholder="Permission Id">
        </div>
    </div>
         <br />
    <div class="form-group">
        <label for="txtCode" class="control-label">Code</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtCode" id="txtCode"  style="direction: ltr;"  placeholder="Code">
        </div>

    </div>

                       <br />
        <div id="divForeign">

              <div class="form-group">
        <label for="txtMasterDataCode" class="control-label">MasterData Code</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtMasterDataCode" id="txtMasterDataCode"  style="direction: ltr;"  placeholder="MasterData Code">
        </div>

    </div>
    
              <br />
             <div class="form-group">
        <label for="txtMasterDataUrl" class="control-label">MasterData Url or Path</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
            <input type="text" class="form-control" name="txtMasterDataUrl" id="txtMasterDataUrl"  style="direction: ltr;"  placeholder="MasterData Url or Path">
        </div>

    </div>
        </div>

    <br />
   
            <div class="form-group">
        <label for="txtDescription" class="control-label">Description</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>
 <br>
                        <div class="form-group">
        <label for="txtId" class="control-label">Guid</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtId" id="txtId" style="direction: ltr;"  placeholder="Guid">
        </div>
    </div>
   

    <br>
                    <div class="form-group">
        <label for="txtVersion" class="control-label"> Version</label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-flash"></i></span>
            <input type="text" readonly="true" class="form-control" name="txtVersion" id="txtVersion" style="direction: ltr;"  placeholder="Version">
        </div>
    

    </div>
    <br/>
        <div class="form-group">
        <label for="txtOrder" class="control-label" >Order</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtOrder" id="txtOrder"  placeholder="1">
        </div>

    </div>
    <br/>
<div style="display:none">
        
            <div class="form-group">
        <label for="txtValue" class="control-label" >Value</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtValue" id="txtValue"  placeholder="1">
        </div>

    </div>
    <br/>
    
    
       
      
         <label class="control-label">Run From Memory</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkCache" name="chkCache" type="checkbox" />
            <label for="chkCache" class="label-default as-label">  </label>
          </div>
     </div>
  <br />
<fieldset id="divSlidingExpirationTimeInMinutes" disabled>
    <div class="form-group">
        <label for="txtSlidingExpirationTimeInMinutes" class="control-label" >Sliding Expiration Time In Minutes</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtSlidingExpirationTimeInMinutes" id="txtSlidingExpirationTimeInMinutes"   placeholder="0">
        </div>

    </div>
    </fieldset>
</div>
        <br />
   <div id="divRoles">
        <label for="drpViewRole" class="control-label" >View Role </label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />
        <br />
    <label for="drpAccessRole" class="control-label" >  Access Role</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label" >Modify Role</label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>


              <br/>
      
        <label class="control-label">  In Edit Mode</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkEditeMode" name="chkEditeMode" type="checkbox" />
            <label for="chkEditeMode" class="label-default as-label">  </label>
          </div>
     </div>
           <br/>
      
        <label class="control-label">Active</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
               <br />
        
            <label class="control-label">  Last Modifi User</label>
        <div class="container">
               <div id="divLastModifiUser" style="float: left;">
           
            
          </div>
     </div>
        <br />
        
                   <label class="control-label"> Last Modifi Local DateTime</label>
        <div class="container">
               <div id="divLastModifiLocalDataTime" style="float: left;">
           
            
          </div>
     </div>
        <br />
        <div class="text-center">
            <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
              <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>


  ', NULL, N'cms_link_getByLanguage:"/odata/cms/Links?$filter=Language%20eq%20''@lang''&$select=Id%2CParentId%2CText%2CHtml%2CUrl%2COrder%2CIsLeaf",cms_masterDataKeyValue_GetByOtherLanguagesAndTypeId:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FTypeId%20eq%20@typeIdd)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FPathOrUrl%2CName",cms_masterDataKeyValue_get:"/cms/masterdatakeyvalue/get/@id",cms_languageAndCulture_public_getAll:"/cms/languageAndCulture/public/getAll",security_Role_getAllByOtherLanguage:"/odata/security/LocalRoles?$filter=(Language%20eq%20''@lang'')&$expand=Role&$select=Role%2FId%2CRole%2FParentId%2CRole%2FName%2CRole%2FOrder%2CRole%2FIsLeaf%2CName",cms_link_get:"/odata/cms/Links?$filter=Id%20eq%20@idd&$select=Id%2CText%2CHtml%2CTypeId%2CIconPath%2CIsLeaf%2CUrl%2COrder%2CParentId%2CShowToSearchEngine%2CViewRoleId%2CModifyRoleId%2CAccessRoleId%2CAction%2CTransactionCode%2CIsMobile%2CRowVersion%2CStatus",security_Permission_save:"/security/permission/Save",security_Permission_delete:"/security/permission/delete",develop_code_os_dotNet_getOutputVersions:"/develop/code/os/dotnet/GetOutputVersions/@codeId",develop_code_os_dotNet_getDotNetCodesVersionsById:"/odata/cms/MasterDataKeyValues?$filter=(TypeId%20eq%201041d)%20and%20(Id%20eq%20@idd)&$select=Id%2CVersion%2CName%2CCode%2COrder",cms_masterDataKeyValue_getTypeByOtherLanguages:"/odata/cms/MasterDataLocalKeyValues?$filter=(MasterDataKeyValue%2FIsType%20eq%20true)%20and%20(Language%20eq%20''@lang'')&$expand=MasterDataKeyValue&$select=MasterDataKeyValue%2FId%2CMasterDataKeyValue%2FParentTypeId%2CMasterDataKeyValue%2FCode%2CMasterDataKeyValue%2FOrder%2CMasterDataKeyValue%2FName%2CMasterDataKeyValue%2FKey%2CMasterDataKeyValue%2FValue%2CMasterDataKeyValue%2FIsLeaf%2CMasterDataKeyValue%2FTypeId%2CName"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/28 20:40:03', N'1396/11/28 22:09:22', N'1396/11/28 22:09:22', CAST(N'2018-02-17T17:10:03.067' AS DateTime), CAST(N'2018-02-17T18:39:22.123' AS DateTime), CAST(N'2018-02-17T18:39:22.123' AS DateTime), 1, N'', N'', N'75303eb6f20947e295eaf55e50b4a360', 2, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asFlexSelect.css?minversion=41"},{"url":"asFlexSelect.js?minversion=41"},{"url":"asWindow.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (138, N'Roles Management', N'/en/admin/security/roles', NULL, N'', NULL, 0, N'<form id="frmRoles" role="form" class="container-fluid">
     <br/>
      <div id="divRoles">
    <label class="control-label" >  Roles</label>
    <br />
     
    <div class="container">
   
        <div id="drpRoles" style="float: left;">
        </div>
    <input id="btnTranslator" type="button" style="float: left;margin-top: 6px;" disabled="disabled" class="btn btn-default disabled" value="Translate" />
    </div>
     
                           <br/>
      
        <label class="control-label">New</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>
                  <br/>
      
        <label class="control-label">Is Leadf ?</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkIsLeaf" name="chkIsLeaf" type="checkbox" />
            <label for="chkIsLeaf" class="label-default as-label">  </label>
          </div>
     </div>

      <br />
      
    <div class="form-group">
        <label for="txtName" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName" data-localize="title" placeholder="">
        </div>

    </div>
    
     <br>
           <div class="form-group">
        <label for="txtParentId" class="control-label">Parent Id</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtParentId" id="txtParentId" style="direction: ltr;"  placeholder="Parent Id">
        </div>
    </div>
         <br />
                        <div class="form-group">
        <label for="txtRoleId" class="control-label">Role Id</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtRoleId" id="txtRoleId" style="direction: ltr;"  placeholder="Role Id">
        </div>
    </div>


    <br />
   
            <div class="form-group">
        <label for="txtDescription" class="control-label">Description</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>
    <br>

        <div class="form-group">
        <label for="txtOrder" class="control-label" >Order</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtOrder" id="txtOrder"  placeholder="1">
        </div>

    </div>
    <br/>
 

        <br />
  
        <label for="drpViewRole" class="control-label" > View Role</label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />
        <br />
    <label for="drpAccessRole" class="control-label" >Access Role</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label" >Modify Role </label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>
           <br/>
      
        <label class="control-label">Active</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
        <div class="text-center">
            <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
              <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>


  ', NULL, N'security_Role_getAllByOtherLanguage:"/odata/security/LocalRoles?$filter=(Language%20eq%20''@lang'')&$expand=Role&$select=Role%2FId%2CRole%2FParentId%2CRole%2FName%2CRole%2FOrder%2CRole%2FIsLeaf%2CName",security_Role_get:"/odata/security/Roles?$filter=Id%20eq%20@idd&$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription%2CStatus%2CViewRoleId%2CModifyRoleId%2CAccessRoleId",security_Role_save:"/security/role/save",security_Role_delete:"/security/role/delete"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/28 21:17:18', N'1396/11/28 22:08:54', N'1396/11/28 22:08:54', CAST(N'2018-02-17T17:47:18.343' AS DateTime), CAST(N'2018-02-17T18:38:54.917' AS DateTime), CAST(N'2018-02-17T18:38:54.917' AS DateTime), 1, N'', N'', N'4be1c2f7c59b439da79547d38e5b6744', 3, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (139, N'Groups Management', N'/en/admin/security/groups', NULL, N'', NULL, 0, N'<form id="frmRoles" role="form" class="container-fluid">
     <br/>
    <label class="control-label" >Groups</label>
    <br />
     
    <div class="container">
   
        <div id="drpGroups" style="float: left;">
        </div>
    <input id="btnTranslator" type="button" style="float: left;margin-top: 6px;" disabled="disabled" class="btn btn-default disabled" value="Translate" />
    </div>
     
                           <br/>
      
        <label class="control-label">New</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkNew" name="chkNew" type="checkbox" />
            <label for="chkNew" class="label-default as-label">  </label>
          </div>
     </div>
                  <br/>
      
        <label class="control-label">Is Leaf ?</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkIsLeaf" name="chkIsLeaf" type="checkbox" />
            <label for="chkIsLeaf" class="label-default as-label">  </label>
          </div>
     </div>

      <br />
      
    <div class="form-group">
        <label for="txtName" class="control-label" data-localize="title"></label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="text" class="form-control" name="txtName" id="txtName" data-localize="title" placeholder="">
        </div>

    </div>
    
     <br>
           <div class="form-group">
        <label for="txtParentId" class="control-label">  Parent Id</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtParentId" id="txtParentId" style="direction: ltr;"  placeholder="Parent Id">
        </div>
    </div>
         <br />
                        <div class="form-group">
        <label for="txtGroupId" class="control-label">Group Id </label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-king"></i></span>
            <input type="text" class="form-control" name="txtGroupId" id="txtGroupId" style="direction: ltr;"  placeholder="Group Id">
        </div>
    </div>


    <br />
   
            <div class="form-group">
        <label for="txtDescription" class="control-label">Description</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-cog"></i></span>
            <textarea  class="form-control" name="txtDescription" id="txtDescription">
                </textarea>
        </div>

    </div>

   

    <br>

        <div class="form-group">
        <label for="txtOrder" class="control-label" >Order</label>

        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-tags"></i></span>
            <input type="number" class="form-control" name="txtOrder" id="txtOrder"  placeholder="1">
        </div>

    </div>
     <div id="divGroupRoles">
    <br/>
         <label for="drpRoles" class="control-label">Roles</label>
    <br />
    <div class="container">

        <div id="drpRoles" name="drpRoles" style="float: left;">
        </div>
    </div>
    </div>
    <br />
   <div id="divRoles">
        <label for="drpViewRole" class="control-label" > View Role</label>
    <br />
    <div class="container">

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
    </div>
    <br />
        <br />
    <label for="drpAccessRole" class="control-label" >Access Role</label>
    <br />
    <div class="container">

        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
    </div>
   </div>
       <br />
    <label for="drpModifyRole" class="control-label" >Modify Role</label>
    <br />
    <div class="container">

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
    </div>
           <br/>
      
        <label class="control-label">Active</label>
        <div class="as-material-switch container">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
        <div class="text-center">
            <input id="btnSave" type="button" class="btn btn-default" data-localize="save" />
              <input id="btnDell" type="button" class="btn btn-danger" data-localize="remove" />
        </div>

</form>


  ', NULL, N'security_Role_getAllByOtherLanguage:"/odata/security/LocalRoles?$filter=(Language%20eq%20''@lang'')&$expand=Role&$select=Role%2FId%2CRole%2FParentId%2CRole%2FName%2CRole%2FOrder%2CRole%2FIsLeaf%2CName",security_Group_getAllByOtherLanguage:"/odata/security/LocalGroups?$filter=Language%20eq%20''@lang''&$expand=Group&$select=Group%2FId%2CGroup%2FParentId%2CGroup%2FName%2CGroup%2FOrder%2CGroup%2FIsLeaf%2CName",security_Group_save:"/security/group/save",security_Group_delete:"/security/group/delete",security_GroupRoles_getByGroupId:"/odata/security/GroupRoles?$filter=GroupId%20eq%20@groupIdd&$select=RoleId",security_Group_get:"/odata/security/Groups?$filter=Id%20eq%20@idd&$select=Id%2CParentId%2CName%2COrder%2CIsLeaf%2CDescription%2CStatus%2CViewRoleId%2CModifyRoleId%2CAccessRoleId"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/28 21:51:31', N'1396/11/28 22:07:58', N'1396/11/28 22:07:58', CAST(N'2018-02-17T18:21:31.677' AS DateTime), CAST(N'2018-02-17T18:37:58.250' AS DateTime), CAST(N'2018-02-17T18:37:58.250' AS DateTime), 1, N'', N'', N'3743c7f8b08542c8bfad5f361c87e8cd', 8, N'[{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (140, N'Add or Update User', N'/en/admin/security/users-manager/users', NULL, N'', NULL, 0, N' 
 
     
       <div class="col-lg-12" >
         <div class="col-lg-2" style="float: left;" id="divGroups">
            <div id="drpGroups" style="float: left;">
                
            </div>
        </div>
      </div>

       <br/>
     <table id="grvUsers" class="table table-condensed table-hover table-striped table-responsive">
    <thead>
        <tr>
            
               <th data-header-align="left" data-align = "left" data-column-id="Id" data-identifier="true" data-type="numeric" class="col-lg-1">Id</th>
                   <th data-header-align="center" data-align = "center" data-column-id="FirstName">Name</th>
                   <th data-header-align="center" data-align = "center" data-column-id="LastName"> Family</th>
                <th data-header-align="center" data-align = "center" data-column-id="UserName"  data-order="desc"> UserName</th>
                 <th data-header-align="center" data-align = "center" data-column-id="Status" data-formatter="Status" data-css-class="" style="">Status</th>
        </tr>
    </thead>
</table>
  
<div class="text-center">
        <input id="btnEdit" type="button" class="btn btn-default"  value=" Edit " />
      
            <input id="btnNew" type="button" class="btn btn-default" value="   New  " />
              <input id="btnDell" type="button" class="btn btn-danger" data-loading-text="Loading ... "  value="  Delete  "  />
</div>
     <div style="display: none">
    
              <div id="winAddOrEdit">
            <div class="modal-header as-handle">
                 <h4 class="modal-title">  Add or Update </h4>
            </div>
        
    <div class="modal-body">
        <form id="frm" role="form" class="container-fluid">
             <div class="form-group">
            <label for="txtUserName" class="control-label"> UserName </label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" class="form-control as-validate-valid" name="txtUserName" id="txtUserName" placeholder=" UserName" aria-required="true" aria-invalid="false">
                </div>
         
        </div>
             <div class="form-group">
            <label for="txtMail" class="control-label"> Email </label>
         
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input type="text" class="form-control as-validate-valid" name="txtMail" id="txtMail" placeholder=" Email " aria-required="true" aria-invalid="false">
                </div>
         
        </div>
        <div class="form-group">
        <label for="txtFirstName" class="control-label" > Name </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
            <input type="text" class="form-control" name="txtFirstName" id="txtFirstName" >
        </div>
    </div>
       <br>
      <div class="form-group">
        <label for="txtLastName" class="control-label" >  Family </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
            <input type="text" class="form-control" name="txtLastName" id="txtLastName" >
        </div>
    </div>
       <br />
        <div class="form-group">
        <label for="txtAliasName" class="control-label" >   Alias Name </label>
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span>
            <input type="text" class="form-control" name="txtAliasName" id="txtAliasName">
        </div>
    </div>
             <br />
   <div>
               <label class="control-label">    Change Password</label>
        <div class="as-material-switch">
               <div style="float: left;">
            <input id="chkChangePass" name="chkChangePass" type="checkbox" />
            <label for="chkChangePass" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
  </div>
<div id="divPass">
                   <div class="form-group">
        <label for="txtPassword" class="control-label" >Password </label>
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password"  class="form-control as-validate-valid" id="txtPassword" name="txtPassword" placeholder=" Password" aria-required="true" aria-invalid="false">
                </div>
    </div>
       <br />
     <div class="form-group">
        <label for="txtPasswordAgain" class="control-label" > Password Again </label>
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password"  class="form-control as-validate-valid" id="txtPasswordAgain" name="txtPasswordAgain" placeholder="Password Again" aria-required="true" aria-invalid="false">
                </div>
    </div>
</div>
       <br />
       <div class="row">
            <label for="drpGroupsAddUpdate" class="control-label" >   Groups</label>
    <br />

        <div id="drpGroupsAddUpdate" name="drpGroupsAddUpdate" style="float: left;">
        </div>
</div>
    <br />
   <div id="divRoles">
<div class="row">
            <label for="drpViewRole" class="control-label" > View Role</label>
    <br />

        <div id="drpViewRole" name="drpViewRole" style="float: left;">
        </div>
</div>
    <br />

<div class="row">
        <label for="drpAccessRole" class="control-label" >Access Role  </label>
    <br />
        <div id="drpAccessRole" name="drpAccessRole" style="float: left;">
        </div>
</div>
      <br />    
  <div class="row">
                <label for="drpModifyRole" class="control-label" > Modify Role</label>
    <br />

        <div id="drpModifyRole" name="drpModifyRole" style="float: left;">
        </div>
  </div>
        
   </div>
       <br />
   <div>
               <label class="control-label">  Active</label>
        <div class="as-material-switch">
               <div style="float: left;">
            <input id="chkStatus" name="chkStatus" type="checkbox" />
            <label for="chkStatus" class="label-default as-label">  </label>
          </div>
     </div>
        <br />
  </div>
    </form>
    </div>
    
    <div class="modal-footer">
    <div class="form-group pull-right">
        <div>
             <span id="btnCancel" class="btn btn-primary">Cancel</span>
            <span id="btnExecute" class="btn btn-primary">Execute</span>
  
        </div>
  
    </div>
       
 </div>
 
    </div>
    
    </div>

    ', NULL, N'security_Role_getAllByOtherLanguage:"/odata/security/LocalRoles?$filter=(Language%20eq%20''@lang'')&$expand=Role&$select=Role%2FId%2CRole%2FParentId%2CRole%2FName%2CRole%2FOrder%2CRole%2FIsLeaf%2CName",security_Group_getAllByOtherLanguage:"/odata/security/LocalGroups?$filter=Language%20eq%20''@lang''&$expand=Group&$select=Group%2FId%2CGroup%2FParentId%2CGroup%2FName%2CGroup%2FOrder%2CGroup%2FIsLeaf%2CName",security_User_GetUsersByPaging:"/security/user/GetUsersByPagination/@groupId/@orderby/@skip/@take",security_User_Save:"/security/user/Save",security_User_Dell:"/security/user/delete"', 0, 0, 0, 16, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/29 10:23:52', N'1396/11/29 10:23:52', N'1396/11/29 10:23:52', CAST(N'2018-02-18T06:53:52.427' AS DateTime), CAST(N'2018-02-18T06:53:52.427' AS DateTime), CAST(N'2018-02-18T06:53:52.427' AS DateTime), 1, N'', N'', N'6da76777e0814da8a44a9ef4d18ed70b', 1, N'[{"url":"asBootGrid.css?minversion=19"},{"url":"asBootGrid.js?minversion=19"},{"url":"asDropdown.css?minversion=11"},{"url":"asDropdown.js?minversion=11"},{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 1)
INSERT [ContentManagement].[WebPages] ([Id], [Title], [Url], [CategoryId], [TemplatePatternUrl], [FrameWorkId], [CommentOff], [Html], [Tools], [Services], [EditMode], [EnableCache], [IsMobileVersion], [TypeId], [Like], [DisLike], [CacheSlidingExpirationTimeInMinutes], [Language], [CreateUserId], [ModifieUserId], [ViewCount], [ViewRoleId], [ModifyRoleId], [AccessRoleId], [CreateLocalDateTime], [ModifieLocalDateTime], [AccessLocalDateTime], [CreateDateTime], [ModifieDateTime], [AccessDateTime], [Status], [FrameWorkUrl], [Params], [Guid], [Version], [DependentModules], [HaveScript], [HaveStyle]) VALUES (141, N'Change Password', N'/en/admin/security/change-password', NULL, N'', NULL, 0, N'<div class="modal-content">
<div class="modal-header"><button class="close" type="button" data-dismiss="modal">&times;</button>
<h4 class="modal-title">Change Password</h4>
</div>
<div class="modal-body"><form id="frmChangePass">

        <div class="form-group">
            <label for="txtOldPassword" class="control-label"> Old Password</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password" required="" class="form-control as-validate-valid" id="txtOldPassword" name="txtOldPassword" placeholder="Old Password" aria-required="true" aria-invalid="false">
                </div>
         
        </div>
        
        <div class="form-group">
            <label for="txtPassword" class="control-label">New Password</label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password" required="" class="form-control as-validate-valid" id="txtPassword" name="txtPassword" placeholder="New Password" aria-required="true" aria-invalid="false">
                </div>
         
        </div>
        
                <div class="form-group">
            <label for="txtPasswordAgain" class="control-label">   New Password Again </label>
        
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input type="password" required="" class="form-control as-validate-valid" id="txtPasswordAgain" name="txtPasswordAgain" placeholder=" New Password Again" aria-required="true" aria-invalid="false">
                </div>
         
        </div>

</form></div>
<div class="modal-footer">
<div class="form-group pull-right">
<div>
    <span id="btnCancel" class="btn btn-primary">Cancel</span>
    <span id="btnChange" class="btn btn-primary">Change</span>
</div>
</div>
</div>
</div>', NULL, N'security_User_ChangePassword:"/security/user/changePassword"', 0, 0, 0, 20, 0, 0, 0, N'en', 1, 1, 0, 5, 5, 5, N'1396/11/29 10:32:03', N'1396/11/29 10:32:03', N'1396/11/29 10:32:03', CAST(N'2018-02-18T07:02:03.887' AS DateTime), CAST(N'2018-02-18T07:02:03.887' AS DateTime), CAST(N'2018-02-18T07:02:03.887' AS DateTime), 1, N'', N'', N'ebce1ef7a2c24f69b98ccd8888e365e1', 1, N'[{"url":"asValidate.css?minversion=5"},{"url":"asValidate.js?minversion=5"},{"url":"asModal.css?minversion=47"},{"url":"asModal.js?minversion=47"}]', 1, 0)
SET IDENTITY_INSERT [ContentManagement].[WebPages] OFF
/****** Object:  Index [IX_CreateUserId]    Script Date: 3/29/2018 6:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_CreateUserId] ON [ContentManagement].[WebPages]
(
	[CreateUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

SET ANSI_PADDING ON


/****** Object:  Index [IX_Guid]    Script Date: 3/29/2018 6:51:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Guid] ON [ContentManagement].[WebPages]
(
	[Guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/****** Object:  Index [IX_ModifieUserId]    Script Date: 3/29/2018 6:51:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_ModifieUserId] ON [ContentManagement].[WebPages]
(
	[ModifieUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

ALTER TABLE [ContentManagement].[WebPages] ADD  DEFAULT ((0)) FOR [Version]

ALTER TABLE [ContentManagement].[WebPages] ADD  DEFAULT ((0)) FOR [HaveScript]

ALTER TABLE [ContentManagement].[WebPages] ADD  DEFAULT ((0)) FOR [HaveStyle]

ALTER TABLE [ContentManagement].[WebPages]  WITH CHECK ADD  CONSTRAINT [FK_ContentManagement.WebPages_ContentManagement.Users_CreateUserId] FOREIGN KEY([CreateUserId])
REFERENCES [ContentManagement].[Users] ([Id])

ALTER TABLE [ContentManagement].[WebPages] CHECK CONSTRAINT [FK_ContentManagement.WebPages_ContentManagement.Users_CreateUserId]

ALTER TABLE [ContentManagement].[WebPages]  WITH CHECK ADD  CONSTRAINT [FK_ContentManagement.WebPages_ContentManagement.Users_ModifieUserId] FOREIGN KEY([ModifieUserId])
REFERENCES [ContentManagement].[Users] ([Id])

ALTER TABLE [ContentManagement].[WebPages] CHECK CONSTRAINT [FK_ContentManagement.WebPages_ContentManagement.Users_ModifieUserId]

