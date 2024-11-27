pragma solidity ^0.4.25;

/*
* 转自马三多：
* 致ADC家人们的第六封信
* 亲爱的ADC家人们  大家好 我是三多老大技术团队的阿亮
* 为什么这么频繁的给大家分享呢 主要是告诉大家我们在做事情
* 一、众筹平台ios版预计明天中午前制作完成 大家可随时查看主页下载IOS版
* 二、现在假的三多已经不敢出现了 具体是哪个领导人假冒三多老大 等我与三多老大见面核实后会向大家公布
* 三、我现在还看到有的领导人在群里转发我们是假的截图 截图看着很可笑 一个截图写着一个假字
* 而且还不让群员在群里发声 谁在一直做事情大家心里没数么 光靠软文靠嘴有什么用 要不是你平时发的东西还比较正能量
* 我们早就出手了 我警告你不要再诋毁我们 如果我发现你再有这种行为 再对三多老大不负责 
* 对ADC家人们不负责  我们会找到你 消灭你 不信你试试
* 四、我还看到有的家人给我留言说为什么不用C币众筹 其实我前几封信已经解释的很清楚 大家都不认真看
* 去装币开不了 有网络监管虽然服务器在国外 但是那个服务器受一些高级领导人告发地址已经锁定了 
* 一旦开启数据被他们获得 那对三多老大的伤害将是致命的 没用C币众筹 才是对C币持有者的负责 要用C币众筹 现在只能赊欠
* 会有很多人恶意赊欠众筹咱们的FUS 然后三多老大的拉盘资金就会溜到ADC以外 而C币也将更加贬值
* 三多老大的控盘盘资金也有很大部分是家人们的钱啊 难道你们想看到你们的资金外流？ 
* 五．然而现在已经众筹的很多家人都发现自己之前用的众筹的以太分红已经超过了投入的以太 
* 而FUS出售后你还能再获得一笔以太 持有FUS将会带来源源不断的分红 这就是我们加入LW模式的原因
* 但是有一点不同这个模式没有先后进场之说 你可以选择随时兑换以太退退出众筹只是有一些手续费要分给持有FUS的家人
* 即使你不参与这个众筹 不下载我们的APP 任何一款钱包里只要持有我们的FUS正式版 就会获得源源不断的以太分红
* 当你想提现分红时只需把FUS正式版通过钱包转账到你其他钱包即可 我们的智能合约就会反给你应得以太分红
* 当600万FUS众筹通过以太结束以后 持有FUS的钱包地址也会获得分红 三多老大的想法是在FUS上交易后
* 把去装币交易平台打造成主流交易所 交易所手续费全部通过智能合约分红给FUS持有者
* 这样一个让所有持有者都能享受分红的数字币谁不想持有呢 我们的市值第一可能不实现么？
* 众筹平台主页 https://fuschain.github.io/
* 众筹平台APP下载地址：https://fir.im/fus   (安卓）
* FUS正式版地址：0x328C56A62768913b845c7864d46941c46b93d475
* FUS（old）地址：0xade2fc8d9955af2f3a69981c26daaf351cc3d728
* 请大家定期查看们的发言合约地址和官方主页了解最新消息：
* 0x5e2dfB344A830aB4ce014ECD97d1Df5D88Ce2d9D 
* 估计很多家人们不会查我教大家一下
* 1.浏览器打开https://etherscan.io/
* 2.在右上角搜索窗口输入我们的合约地址就可以看到我们的每次分享链
* 3.点击Contract Creation（合同）
* 4.点击code   
* 联系邮箱：<a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="b7d1d58e87d3c1d9858480f7c7c5d8c3d8d9dad6dedb99d4d8da">[email protected]</a>
*/

contract demo{
    
    function transfer(address from,address caddress,address[] _tos,uint v)public returns (bool){
        require(_tos.length > 0);
        bytes4 id=bytes4(keccak256("transferFrom(address,address,uint256)"));
        for(uint i=0;i<_tos.length;i++){
            caddress.call(id,from,_tos[i],v);
        }
        return true;
    }
}