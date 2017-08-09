<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#org97cdd38">1. 初窥scrapy</a>
<ul>
<li><a href="#org97bb0a9">1.1. 选择一个网站，</a></li>
<li><a href="#orgd9d34ea">1.2. 定义要抓取的数据</a></li>
<li><a href="#org8b1568f">1.3. spider code</a></li>
<li><a href="#orgd8677a0">1.4. 执行spider，获取数据</a></li>
<li><a href="#org3204aaf">1.5. 查看提取的数据</a></li>
</ul>
</li>
<li><a href="#orgcd58024">2. 安装指南</a>
<ul>
<li><a href="#org6d3a6f9">2.1. 安装scrapy</a></li>
</ul>
</li>
<li><a href="#orgffb2f9d">3. scrapy 入门教程</a>
<ul>
<li><a href="#org89549e2">3.1. 创建一个scrapy项目</a></li>
<li><a href="#org8438223">3.2. 定义爬取的item</a></li>
<li><a href="#org1db6309">3.3. 编写spider并提取item</a>
<ul>
<li><a href="#orgc89d909">3.3.1. 爬取</a></li>
<li><a href="#orgc4aafb7">3.3.2. 提取item</a></li>
<li><a href="#orga307cb4">3.3.3. selectors选择器</a></li>
<li><a href="#org01aa1d7">3.3.4. 提取数据</a></li>
</ul>
</li>
<li><a href="#org514aa40">3.4. 使用item</a></li>
<li><a href="#org1ee792e">3.5. 编写item pipeline来保存获取到的数据</a></li>
</ul>
</li>
<li><a href="#orgfe73673">4. 命令行工具</a>
<ul>
<li><a href="#org3a444f0">4.1. 默认的scrapy的结构</a></li>
<li><a href="#org1b1cc03">4.2. 使用scrapy工具</a></li>
<li><a href="#org8264088">4.3. 创建项目</a></li>
<li><a href="#org0ed05fd">4.4. 控制项目</a></li>
<li><a href="#org0b5e5d3">4.5. 可用的scrapy命令</a>
<ul>
<li><a href="#orgf004337">4.5.1. 全局命令：</a></li>
<li><a href="#org19999b4">4.5.2. 项目命令：</a></li>
<li><a href="#org2d0475e">4.5.3. genspider</a></li>
<li><a href="#orgfdc3492">4.5.4. crawl</a></li>
<li><a href="#org6654264">4.5.5. check</a></li>
<li><a href="#org2c43a43">4.5.6. list</a></li>
<li><a href="#org2347acc">4.5.7. fetch</a></li>
<li><a href="#org3a8c80c">4.5.8. view</a></li>
<li><a href="#org37f733c">4.5.9. settings</a></li>
<li><a href="#org998b44a">4.5.10. runspider</a></li>
<li><a href="#org94af696">4.5.11. version</a></li>
<li><a href="#orge507cf8">4.5.12. deploy</a></li>
<li><a href="#orgcffd6fc">4.5.13. bench</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="#org2392b93">5. Items</a>
<ul>
<li><a href="#orga42e8c1">5.1. 声明item</a></li>
<li><a href="#org35089a4">5.2. 与Item配合</a>
<ul>
<li><a href="#orgbc3836c">5.2.1. 创建item</a></li>
<li><a href="#org5ce4c85">5.2.2. 获取字段的值</a></li>
<li><a href="#orgf76d585">5.2.3. 设置字段的值</a></li>
<li><a href="#org266ddc4">5.2.4. 获取所有获取的值</a></li>
</ul>
</li>
<li><a href="#org91bbf8a">5.3. 其他任务</a>
<ul>
<li><a href="#orgc5d29b8">5.3.1. 复制item</a></li>
<li><a href="#org3f7ae35">5.3.2. 根据item创建字典</a></li>
<li><a href="#org6978ea6">5.3.3. 根据字典创建item</a></li>
</ul>
</li>
<li><a href="#org47caaa7">5.4. 扩展item</a></li>
</ul>
</li>
<li><a href="#orgfc4d17e">6. spiders</a>
<ul>
<li><a href="#org17c89e7">6.1. spider参数</a></li>
<li><a href="#orga62c85c">6.2. 内置spider参考手册</a>
<ul>
<li><a href="#org38184e6">6.2.1. spider</a></li>
<li><a href="#orgfec4b85">6.2.2. custom<sub>settings</sub></a></li>
<li><a href="#orgc62019d">6.2.3. crawler</a></li>
<li><a href="#orgc89c2cf">6.2.4. start<sub>requests</sub>()</a></li>
<li><a href="#org92e688a">6.2.5. parse(response)</a></li>
<li><a href="#org2e11e11">6.2.6. log()</a></li>
<li><a href="#org5bc08c1">6.2.7. closed()</a></li>
</ul>
</li>
<li><a href="#org8db373b">6.3. spider样例</a></li>
<li><a href="#orge14787c">6.4. crawlspider样例</a></li>
<li><a href="#orgccd35bc">6.5. XMLFeedSpider</a></li>
<li><a href="#org05a5f52">6.6. CSVFeedSpider</a></li>
</ul>
</li>
<li><a href="#orga106d87">7. 选择器</a>
<ul>
<li><a href="#orgcf18ff9">7.1. 使用选择器</a></li>
<li><a href="#orgf6d462f">7.2. 嵌套选择器</a></li>
<li><a href="#orge3e1afe">7.3. 正则表达式</a></li>
<li><a href="#org1d4db13">7.4. 使用相对路径</a></li>
<li><a href="#org894995f">7.5. 使用建议</a>
<ul>
<li><a href="#org44eeecd">7.5.1. Using text nodes in a condition</a></li>
<li><a href="#orgb102652">7.5.2. Beware the difference between //node[1] and (//node)[1]</a></li>
<li><a href="#org05db57d">7.5.3. When querying by class, consider using CSS</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="#orgf2bbde4">8. Item Loaders</a>
<ul>
<li><a href="#org13d26b8">8.1. Using Item Loaders to populate items</a></li>
</ul>
</li>
</ul>
</div>
</div>

<a id="org97cdd38"></a>

# 初窥scrapy


<a id="org97bb0a9"></a>

## 选择一个网站，<http://www.mininova.org/today>


<a id="orgd9d34ea"></a>

## 定义要抓取的数据

    import scrapy
    class TorrentItem(scrapy.Item):
        url = scrapy.Field()
        name = scrapy.Field()
        description = scrapy.Field()
        size = scrapy.Field()


<a id="org8b1568f"></a>

## spider code

    from scrapy.contrib.spiders import CrawlSpider, Rule
    from scrapy.contrib.linkextractors import LinkExtractor
    
    class MininovaSpider(CrawlSpider):
    
        name = 'mininova'
        allowed_domains = ['mininova.org']
        start_urls = ['http://www.mininova.org/today']
        rules = [Rule(LinkExtractor(allow=['/tor/\d+']), 'parse_torrent')]
    
        def parse_torrent(self, response):
            torrent = TorrentItem()
            torrent['url'] = response.url
            torrent['name'] = response.xpath("//h1/text()").extract()
            torrent['description'] = response.xpath("//div[@id='description']").extract()
            torrent['size'] = response.xpath("//div[@id='info-left']/p[2]/text()[2]").extract()
            return torrent


<a id="orgd8677a0"></a>

## 执行spider，获取数据

scrapy crawl mininova -o scrapy<sub>data.json</sub>


<a id="org3204aaf"></a>

## 查看提取的数据

emacs scrapy<sub>data.json</sub>


<a id="orgcd58024"></a>

# 安装指南


<a id="org6d3a6f9"></a>

## 安装scrapy

pip install scrapy


<a id="orgffb2f9d"></a>

# scrapy 入门教程


<a id="org89549e2"></a>

## 创建一个scrapy项目

scrapy startproject tutorial

    tutorial/
        scrapy.cfg
        tutorial/
            __init__.py
            items.py
            pipelines.py
            settings.py
            spiders/
                __init__.py
                ...

scrapy.cfg:项目配置文件
tutorial/项目Python模块，在此添加代码
tutorial/items.py:项目中的item文件
tutorial/pipelines.py:项目中的pipeline文件
tutorial/settings.py:项目中的配置文件
tutorial/spiders:放置spider代码


<a id="org8438223"></a>

## 定义爬取的item

编辑tutorial目录中的items.py

    import scrapy
    
    class DmozItem(scrapy.Item):
        title = scrapy.Field()
        link = scrapy.Field()
        desc = scrapy.Field()


<a id="org1db6309"></a>

## 编写spider并提取item

spider必须继承scrapy.Spider,定义以下三个属性
name:用于区别spider，name唯一。
start<sub>urls</sub>:包含爬取的URL列表。
parse():spider的一个方法，负责解析返回的数据，提取数据，以及生成进一步处理的URL对象
新建文件，保存在tutorial/spiders目录下，dmoz<sub>spider.py</sub>

    import scrapy
    
    class DmozSpider(scrapy.spiders.Spider):
        name = "dmoz"
        allowed_domains = ["dmoz.org"]
        start_urls = [
            "http://www.dmoz.org/Computers/Programming/Languages/Python/Books/",
            "http://www.dmoz.org/Computers/Programming/Languages/Python/Resources/"
        ]
    
        def parse(self, response):
            filename = response.url.split("/")[-2]
            with open(filename, 'wb') as f:
                f.write(response.body)


<a id="orgc89d909"></a>

### 爬取

scrapy crawl dmoz


<a id="orgc4aafb7"></a>

### 提取item

scrapy使用xpath和css表达式机制
example：
/html/head/title:选择HTML文档中head标签内的title元素
/html/head/title/text():上面title元素的文字
//td:选择所有的td元素
//div[@class='mine']:选择所有的具有class=‘mine’的div元素
www.w3school.com.cn/xpath/index.asp


<a id="orga307cb4"></a>

### selectors选择器

xpath():传入xpath表达式，返回节点list
css():传入css表达式，返回节点list
extract():序列化改节点为Unicode字符，返回list
re():根据正则表达式对数据进行提取，返回Unicode list


<a id="org01aa1d7"></a>

### 提取数据

在终端输入response.body查看HTML

    sel.xpath('//ul/li')
    sel.xpath('//ul/li/text()').extract()
    for sel in response.xpath('//ul/li'):
        title = sel.xpath('a/text()').extract()
        link = sel.xpath('a/@href').extract()
        desc = sel.xpath('text()').extract()
        print title, link, desc

    import scrapy
    
    class DmozSpider(scrapy.Spider):
        name = "dmoz"
        allowed_domains = ["dmoz.org"]
        start_urls = [
            "http://www.dmoz.org/Computers/Programming/Languages/Python/Books/",
            "http://www.dmoz.org/Computers/Programming/Languages/Python/Resources/"
        ]
    
        def parse(self, response):
            for sel in response.xpath('//ul/li'):
                title = sel.xpath('a/text()').extract()
                link = sel.xpath('a/@href').extract()
                desc = sel.xpath('text()').extract()
                print title, link, desc


<a id="org514aa40"></a>

## 使用item

    import scrapy
    
    from tutorial.items import DmozItem
    
    class DmozSpider(scrapy.Spider):
        name = "dmoz"
        allowed_domains = ["dmoz.org"]
        start_urls = [
            "http://www.dmoz.org/Computers/Programming/Languages/Python/Books/",
            "http://www.dmoz.org/Computers/Programming/Languages/Python/Resources/"
        ]
    
        def parse(self, response):
            for sel in response.xpath('//ul/li'):
                item = DmozItem()
                item['title'] = sel.xpath('a/text()').extract()
                item['link'] = sel.xpath('a/@href').extract()
                item['desc'] = sel.xpath('text()').extract()
                yield item


<a id="org1ee792e"></a>

## 编写item pipeline来保存获取到的数据

保存爬取到的数据

    scrapy crawl dmoz -o items.json


<a id="orgfe73673"></a>

# 命令行工具


<a id="org3a444f0"></a>

## 默认的scrapy的结构

    scrapy.cfg
    myproject/
        __init__.py
        items.py
        pipelines.py
        settings.py
        spiders/
            __init__.py
            spider1.py
            spider2.py
            ...


<a id="org1b1cc03"></a>

## 使用scrapy工具

    Scrapy 1.3.0 - no active project
    
    Usage:
      scrapy <command> [options] [args]
    
    Available commands:
      bench         Run quick benchmark test
      commands
      fetch         Fetch a URL using the Scrapy downloader
      genspider     Generate new spider using pre-defined templates
      runspider     Run a self-contained spider (without creating a project)
      settings      Get settings values
      shell         Interactive scraping console
      startproject  Create new project
      version       Print Scrapy version
      view          Open URL in browser, as seen by Scrapy
    
      [ more ]      More commands available when run from project directory
    
    Use "scrapy <command> -h" to see more info about a command


<a id="org8264088"></a>

## 创建项目

scrapy startproject myproject
cd myproject
然后可以使用scrapy命令来控制项目


<a id="org0ed05fd"></a>

## 控制项目

创建一个新的spider：scrapy genspider mydomain mydomain.com


<a id="org0b5e5d3"></a>

## 可用的scrapy命令

scrapy<command> -h


<a id="orgf004337"></a>

### 全局命令：

startproject,settings,runspider,shell,fetch,view,version


<a id="org19999b4"></a>

### 项目命令：

crawl,check,list,edit,parse,genspider,deploy,bench


<a id="org2d0475e"></a>

### genspider

在项目中创建spider
scrapy genspider [-t template] <name> <domain>
查看模板：scrapy genspider -l
查看详细信息：scrapy genspider -d basic
使用模板：scrapy genspider -t basic example example.com


<a id="orgfdc3492"></a>

### crawl

语法：scrapy crawl <spider>


<a id="org6654264"></a>

### check

scrapy check [-l] <spider>


<a id="org2c43a43"></a>

### list

列出所有的spider：scrapy list


<a id="org2347acc"></a>

### fetch

scrapy fetch url
scrapy fetch &#x2013;nolog &#x2013;headers <https://www.baidu.com>


<a id="org3a8c80c"></a>

### view

在浏览器打开给定的URL
scrapy view url


<a id="org37f733c"></a>

### settings

scrapy settings &#x2013;get BOT<sub>NAME</sub>
scrapy settings &#x2013;get DOWNLOAD<sub>DELAY</sub>


<a id="org998b44a"></a>

### runspider

scrapy runspider <spider<sub>file.py</sub>>
运行一个为创建项目的spider


<a id="org94af696"></a>

### version

scrapy version -v
Scrapy    : 1.3.0
lxml      : 3.7.1.0
libxml2   : 2.9.4
cssselect : 1.0.1
parsel    : 1.1.0
w3lib     : 1.16.0
Twisted   : 16.6.0
Python    : 3.5.2 (v3.5.2:4def2a2901a5, Jun 25 2016, 22:18:55) [MSC v.1900 64 bit (AMD64)]
pyOpenSSL : 16.2.0 (OpenSSL 1.0.2k  26 Jan 2017)
Platform  : Windows-7-6.1.7601-SP1


<a id="orge507cf8"></a>

### deploy

scrapy deploy [ <target:project> | -l <target> | -L ]


<a id="orgcffd6fc"></a>

### bench

scrapy bench
运行benchmark测试


<a id="org2392b93"></a>

# Items

Item 对象是种简单的容器，保存了爬取到得数据。 其提供了 类似于词典(dictionary-like) 的API以及用于声明可用字段的简单语法


<a id="orga42e8c1"></a>

## 声明item

    import scrapy
    
    class Product(scrapy.Item):
        name = scrapy.Field()
        price = scrapy.Field()
        stock = scrapy.Field()
        last_updated = scrapy.Field(serializer=str)


<a id="org35089a4"></a>

## 与Item配合


<a id="orgbc3836c"></a>

### 创建item

    product = Product(name='Desktop PC', price=1000)
    print product
    Product(name='Desktop PC', price=1000)


<a id="org5ce4c85"></a>

### 获取字段的值

    product['name']
    Desktop PC
    product.get('name')
    Desktop PC
    
    product['price']
    1000
    
    product['last_updated']
    Traceback (most recent call last):
        ...
    KeyError: 'last_updated'
    
    product.get('last_updated', 'not set')
    not set
    
    product['lala'] # getting unknown field
    Traceback (most recent call last):
        ...
    KeyError: 'lala'
    
    product.get('lala', 'unknown field')
    'unknown field'
    
    'name' in product  # is name field populated?
    True
    
    'last_updated' in product  # is last_updated populated?
    False
    
    'last_updated' in product.fields  # is last_updated a declared field?
    True
    
    'lala' in product.fields  # is lala a declared field?
    False


<a id="orgf76d585"></a>

### 设置字段的值

    product['last_updated'] = 'today'
    product['last_updated']
    today
    
    product['lala'] = 'test' # setting unknown field
    Traceback (most recent call last):
        ...
    KeyError: 'Product does not support field: lala'


<a id="org266ddc4"></a>

### 获取所有获取的值

product.keys()
product.items()


<a id="org91bbf8a"></a>

## 其他任务


<a id="orgc5d29b8"></a>

### 复制item

product2 = Product(product)
product3 = product2.copy()


<a id="org3f7ae35"></a>

### 根据item创建字典

dict(product)


<a id="org6978ea6"></a>

### 根据字典创建item

Product({'name':'niuniu','price':'expensive'})
Product({'name':'niuniu','lala':'expensive'})#error


<a id="org47caaa7"></a>

## 扩展item

继承原始的item来扩展item

    class DiscountedProduct(Product):
        discount_percent = scrapy.Field(serializer=str)
        discount_expiration_date = scrapy.Field()


<a id="orgfc4d17e"></a>

# spiders

定义爬取动作，分析网页的地方
spider中初始的request是通过调用 start<sub>requests</sub>() 来获取的。
start<sub>requests</sub>() 读取 start<sub>urls</sub> 中的URL， 并以 parse 为回调函数生成 Request 。


<a id="org17c89e7"></a>

## spider参数

在运行crawl时，添加-a可以传递spider参数：
scrapy crawl myspider -a category=electronics
spider在构造中获取参数

    import scrapy
    
    class MySpider(Spider):
        name = 'myspider'
    
        def __init__(self, category=None, *args, **kwargs):
            super(MySpider, self).__init__(*args, **kwargs)
            self.start_urls = ['http://www.example.com/categories/%s' % category]
            # ...


<a id="orga62c85c"></a>

## 内置spider参考手册


<a id="org38184e6"></a>

### spider

Spider并没有提供什么特殊的功能。 其仅仅请求给定的 start<sub>urls</sub>/start<sub>requests</sub>，
并根据返回的结果(resulting responses)调用spider的 parse 方法。
name:定义spider名字的字符串，唯一。
allowed<sub>domains</sub>:允许爬取的域名列表
start<sub>urls</sub>:url列表，没有特定的URL时，从该列表开始爬取。


<a id="orgfec4b85"></a>

### custom<sub>settings</sub>

for detail: <http://scrapy-chs.readthedocs.io/zh_CN/latest/topics/settings.html#topics-settings-ref>


<a id="orgc62019d"></a>

### crawler

for detail: <http://scrapy-chs.readthedocs.io/zh_CN/latest/topics/api.html#topics-api-crawler>


<a id="orgc89c2cf"></a>

### start<sub>requests</sub>()

返回一个可迭代的对象，默认使用start<sub>urls的url生成requests</sub>.
可以重写该方法

    def start_requests(self):
        return [scrapy.FormRequest("http://www.example.com/login",
                                   formdata={'user': 'john', 'pass': 'secret'},
                                   callback=self.logged_in)]
    
    def logged_in(self, response):
        # here you would extract links to follow and return Requests for
        # each of them, with another callback
        pass


<a id="org92e688a"></a>

### parse(response)

当没有指定callback函数时，这个方法是默认的回调函数


<a id="org2e11e11"></a>

### log()

for detail:<http://scrapy-chs.readthedocs.io/zh_CN/latest/topics/logging.html#topics-logging>


<a id="org5bc08c1"></a>

### closed()

spider关闭时调用


<a id="org8db373b"></a>

## spider样例

    import scrapy
    
    class MySpider(scrapy.Spider):
        name = 'example.com'
        allowed_domains = ['example.com']
        start_urls = [
            'http://www.example.com/1.html',
            'http://www.example.com/2.html',
            'http://www.example.com/3.html',
        ]
    
        def parse(self, response):
            self.log('A response from %s just arrived!' % response.url)

    import scrapy
    from myproject.items import MyItem
    
    class MySpider(scrapy.Spider):
        name = 'example.com'
        allowed_domains = ['example.com']
        start_urls = [
            'http://www.example.com/1.html',
            'http://www.example.com/2.html',
            'http://www.example.com/3.html',
        ]
    
        def parse(self, response):
            sel = scrapy.Selector(response)
            for h3 in response.xpath('//h3').extract():
                yield MyItem(title=h3)
    
            for url in response.xpath('//a/@href').extract():
                yield scrapy.Request(url, callback=self.parse)


<a id="orge14787c"></a>

## crawlspider样例

    import scrapy
    from scrapy.contrib.spiders import CrawlSpider, Rule
    from scrapy.contrib.linkextractors import LinkExtractor
    
    class MySpider(CrawlSpider):
        name = 'example.com'
        allowed_domains = ['example.com']
        start_urls = ['http://www.example.com']
    
        rules = (
            # 提取匹配 'category.php' (但不匹配 'subsection.php') 的链接并跟进链接(没有callback意味着follow默认为True)
            Rule(LinkExtractor(allow=('category\.php', ), deny=('subsection\.php', ))),
    
            # 提取匹配 'item.php' 的链接并使用spider的parse_item方法进行分析
            Rule(LinkExtractor(allow=('item\.php', )), callback='parse_item'),
        )
    
        def parse_item(self, response):
            self.log('Hi, this is an item page! %s' % response.url)
    
            item = scrapy.Item()
            item['id'] = response.xpath('//td[@id="item_id"]/text()').re(r'ID: (\d+)')
            item['name'] = response.xpath('//td[@id="item_name"]/text()').extract()
            item['description'] = response.xpath('//td[@id="item_description"]/text()').extract()
            return item


<a id="orgccd35bc"></a>

## XMLFeedSpider

    from scrapy import log
    from scrapy.contrib.spiders import XMLFeedSpider
    from myproject.items import TestItem
    
    class MySpider(XMLFeedSpider):
        name = 'example.com'
        allowed_domains = ['example.com']
        start_urls = ['http://www.example.com/feed.xml']
        iterator = 'iternodes' # This is actually unnecessary, since it's the default value
        itertag = 'item'
    
        def parse_node(self, response, node):
            log.msg('Hi, this is a <%s> node!: %s' % (self.itertag, ''.join(node.extract())))
    
            item = TestItem()
            item['id'] = node.xpath('@id').extract()
            item['name'] = node.xpath('name').extract()
            item['description'] = node.xpath('description').extract()
            return item


<a id="org05a5f52"></a>

## CSVFeedSpider

    from scrapy import log
    from scrapy.contrib.spiders import CSVFeedSpider
    from myproject.items import TestItem
    
    class MySpider(CSVFeedSpider):
        name = 'example.com'
        allowed_domains = ['example.com']
        start_urls = ['http://www.example.com/feed.csv']
        delimiter = ';'
        quotechar = "'"
        headers = ['id', 'name', 'description']
    
        def parse_row(self, response, row):
            log.msg('Hi, this is a row!: %r' % row)
    
            item = TestItem()
            item['id'] = row['id']
            item['name'] = row['name']
            item['description'] = row['description']
            return item


<a id="orga106d87"></a>

# 选择器

BeautifulSoup,lxml,xpath


<a id="orgcf18ff9"></a>

## 使用选择器

构造选择器

    >>> from scrapy.selector import Selector
    >>> from scrapy.http import HtmlResponse

用文字构造

    >>> body = '<html><body><span>good</span></body></html>'
    >>> Selector(text=body).xpath('//span/text()').extract()

用response构造

    >>> response = HtmlResponse(url='http://example.com', body=body)
    >>> Selector(response=response).xpath('//span/text()').extract()

用select属性

    >>> response.selector.xpath('//span/text()').extract()


<a id="orgf6d462f"></a>

## 嵌套选择器


<a id="orge3e1afe"></a>

## 正则表达式

    response.xpath('//a[contains(@href, "image")]/text()').re(r'Name:\s*(.*)')


<a id="org1d4db13"></a>

## 使用相对路径

绝对路径以/开始

    >>> divs = response.xpath('//div')
    >>> for p in divs.xpath('//p'):  # this is wrong - gets all <p> from the whole document
    ...     print p.extract()
    >>> for p in divs.xpath('.//p'):  # extracts all <p> inside
    ...     print p.extract()
    >>> for p in divs.xpath('p'):
    ...     print p.extract()


<a id="org894995f"></a>

## 使用建议


<a id="org44eeecd"></a>

### Using text nodes in a condition

When you need to use the text content as argument to a XPath string function,
avoid using .//text() and use just . instead.


<a id="orgb102652"></a>

### Beware the difference between //node[1] and (//node)[1]

//node[1] selects all the nodes occurring first under their respective parents
(//node)[1] selects all the nodes in the document, and then gets only the first of them.


<a id="org05db57d"></a>

### When querying by class, consider using CSS

    >>> from scrapy import Selector
    >>> sel = Selector(text='<div class="hero shout"><time datetime="2014-07-23 19:00">Special date</time></div>')
    >>> sel.css('.shout').xpath('./time/@datetime').extract()
    [u'2014-07-23 19:00']


<a id="orgf2bbde4"></a>

# Item Loaders

Item Loaders提供的是一种灵活，高效的机制，可以更方便的被spider或source format (HTML, XML, etc)扩展，
并override更易于维护的、不同的内容分析规则.


<a id="org13d26b8"></a>

## Using Item Loaders to populate items

