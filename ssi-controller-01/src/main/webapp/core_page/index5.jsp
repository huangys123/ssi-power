<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="/inc.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<body>
	<div class="right-container">
  <div class="viewFramework-body">
    <div class="viewFramework-content"> 
                <!--首页内容-->
                <div class="p20">
                    <div class="index-top-container">
                        <ul class="clearfix">
                            <li class="ww25">
                                <div class="item-container mh120 tc pt50 item-container-by1">
                                    <div class="icon-i h60 w60 p3 index-pic1-icon va-middle"></div>
                                    <div class="display-ib white va-middle">
                                        <h2 class="f36 tc">
                                            <a class="white link_url" href="/console/account/vipmanage/zhgl/zhList.htm?startTime=2017-05-31&endTime=2017-05-31&zcType=ZC" showObj="ZHGL" data-title="user">0</a>
                                            </h2>

                                        <p>今日新增用户数(人)</p>
                                    </div>
                                </div>
                            </li>
                            <li class="ww25">
                                <div class="item-container mh120 tc pt50 item-container-by2">
                                    <div class="icon-i h60 w60 p3 index-pic2-icon va-middle"></div>
                                    <div class="display-ib white va-middle">
                                        <h2 class="f36 tc">
                                            <span>0</span>
                                        </h2>

                                        <p>今日登录用户数(人)</p>
                                    </div>
                                </div>
                            </li>
                            <li class="ww25">
                                <div class="item-container mh120 tc pt50 item-container-by3">
                                    <div class="icon-i h60 w60 p3 index-pic3-icon va-middle"></div>
                                    <div class="display-ib white va-middle">
                                        <h2 class="f36 tc">
                                            <a class="white link_url"
                                               href="/console/account/vipmanage/zhgl/zhList.htm" showObj="ZHGL" data-title="user">111</a>
                                            </h2>

                                        <p>历史总用户数(人)</p>
                                    </div>
                                </div>
                            </li>
                            <li class="ww25">
                                <div class="item-container mh120 tc pt50 item-container-by4">
                                    <div class="icon-i h60 w60 p3 index-pic4-icon va-middle"></div>
                                    <div class="display-ib white va-middle">
                                        <h2 class="f36 tc">
                                            <a class="white link_url"
                                               href="/console/statistics/yhtj/ptzxyhtj/userOnline.htm" showObj="PTZXYHTJ" data-title="statistics">0</a>
                                            </h2>

                                        <p>当前在线用户数(人)</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>

                <!--代办事项-->
                <div class=" ml40 mr40 main-bg-white">
                    <div class="pr agency-container h400 overflow-h">
                        <div class="agency-left-title tc"><span class="display-b h60 lh60 mt50">待</span><span
                                class="display-b h60 lh60">办</span><span class="display-b h60 lh60">事</span><span
                                class="display-b h60 lh60">项</span><i
                                class="icon-i pa bottom0 left15 w60 h60 agency-icon"></i><i
                                class="icon-i agency-arrow-icon"></i></div>
                        <ul class="clearfix agency-ul-box pt40 ml80">
                            <li>
                                <div class="agency-li-box">
                                    <h3 class="gray3 f36"><a
                                            href="/console/bid/loanmanage/jkgl/loanList.htm?status=DSH" class="link_url" showObj="BDGL" data-title="business">1</a>
                                    </h3>
                                    <p class="gray6 f16">待审核借款项目（个）</p>
                                </div>
                            </li>
                            <li>
                                <div class="agency-li-box">
                                    <h3 class="gray3 f36">
                                        <a href="/console/bid/loanmanage/grjkyx/grjkyxList.htm?loanIntentionState=WCL" class="link_url" showObj="GRJKYX" data-title="business">0</a>
                                        </h3>

                                    <p class="gray6 f16">待处理的个人借款意向（个）</p>
                                </div>
                            </li>
                            <li>
                                <div class="agency-li-box">
                                    <h3 class="gray3 f36">
                                        <a href="/console/bid/loanmanage/jkgl/loanList.htm?status=DFB" class="link_url" showObj="BDGL" data-title="business">1</a>
                                        </h3>

                                    <p class="gray6 f16">待发布的借款项目（个）</p>
                                </div>
                            </li>
                            <li>
                                <div class="agency-li-box">
                                    <h3 class="gray3 f36">
                                        <a href="/console/bid/loanmanage/qyjkyx/qyjkyxList.htm?loanIntentionState=WCL" class="link_url" showObj="QYJKYX" data-title="business">0</a>
                                        </h3>

                                    <p class="gray6 f16">待处理的企业借款意向（个）</p>
                                </div>
                            </li>
                            <li>
                                <div class="agency-li-box">
                                    <h3 class="gray3 f36">
                                        <a href="/console/finance/zjgl/fksh/fkshList.htm?fundStatus=1" class="link_url" showObj="FKGL" data-title="finance">1</a>
                                        </h3>

                                    <p class="gray6 f16">待放款的借款项目（个）</p>
                                </div>
                            </li>
                            <li>
                                <div class="agency-li-box">
                                    <h3 class="gray3 f36">
                                        <a href="/console/account/vipmanage/grxx/grList.htm?dshFlg=DSH" class="link_url" showObj="GRXX" data-title="user">0</a>
                                        </h3>

                                    <p class="gray6 f16">待审核的认证信息（个）</p>
                                </div>
                            </li>
                            <li>
                                <div class="agency-li-box">
                                    <h3 class="gray3 f36">
                                        <a href="/console/finance/zjgl/txgl/txglList.htm" class="link_url" showObj="TXGL" data-title="finance">1</a>
                                        </h3>

                                    <p class="gray6 f16">提现初审（笔）</p>
                                </div>
                            </li>
                            <li>
                                <div class="agency-li-box">
                                    <h3 class="gray3 f36">
                                        <a href="/console/finance/zjgl/txgl/shtg.htm" class="link_url"  showObj="TXGL" data-title="finance">0</a>
                                        </h3>

                                    <p class="gray6 f16">提现复审（笔）</p>
                                </div>
                            </li>
                            <li>
                                <div class="agency-li-box">
                                    <h3 class="gray3 f36">
                                        <a href="/console/finance/zjgl/xxczgl/xxczglList.htm?status=DSH" class="link_url" showObj="XXCZGL" data-title="finance">3</a>
                                        </h3>

                                    <p class="gray6 f16">线下充值审核（笔）</p>
                                </div>
                            </li>
                            <li>
                                <div class="agency-li-box">
                                    <h3 class="gray3 f36">
                                        <a href="/console/bid/lcgl/zqzrgl/transferDshList.htm" class="link_url" showObj="ZQZRGL" data-title="business">0</a>
                                        </h3>

                                    <p class="gray6 f16">债权转让审核（笔）</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>

                <!--首页内容 结束-->
            </div>
        </div>
       
    </div>
    <!--右边内容 结束-->
</body>
</html>