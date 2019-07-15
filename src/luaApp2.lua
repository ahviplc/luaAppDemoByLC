--[[
require("assert")

local function add(a,b)
    assert(type(a) == "number", "a 不是一个数字")
    assert(type(b) == "number", "b 不是一个数字")
    return a+b
end
add(10)]]

a = 21
b = 10
c = a + b
print("Line 1 - c 的值为 ", c)
c = a - b
print("Line 2 - c 的值为 ", c)
c = a * b
print("Line 3 - c 的值为 ", c)
c = a / b
print("Line 4 - c 的值为 ", c)
c = a % b
print("Line 5 - c 的值为 ", c)
c = a ^ 2
print("Line 6 - c 的值为 ", c)
c = -a
print("Line 7 - c 的值为 ", c)

a = 21
b = 10

if (a == b)
then
    print("Line 1 - a 等于 b")
else
    print("Line 1 - a 不等于 b")
end

if (a ~= b)
then
    print("Line 2 - a 不等于 b")
else
    print("Line 2 - a 等于 b")
end

if (a < b)
then
    print("Line 3 - a 小于 b")
else
    print("Line 3 - a 大于等于 b")
end

if (a > b)
then
    print("Line 4 - a 大于 b")
else
    print("Line 5 - a 小于等于 b")
end

-- 修改 a 和 b 的值
a = 5
b = 20
if (a <= b)
then
    print("Line 5 - a 小于等于  b")
end

if (b >= a)
then
    print("Line 6 - b 大于等于 a")
end

string1 = "Lua"
string2 = "Tutorial"
number1 = 10
number2 = 20
-- 基本字符串格式化
print(string.format("基本格式化 %s %s", string1, string2))
-- 日期格式化
date = 2;
month = 1;
year = 2014
print(string.format("日期格式化 %02d/%02d/%03d", date, month, year))
-- 十进制格式化
print(string.format("%.4f", 1 / 3))

--string.format("%c", 83)                 -- 输出S
--string.format("%+d", 17.0)              -- 输出+17
--string.format("%05d", 17)               -- 输出00017
--string.format("%o", 17)                 -- 输出21
--string.format("%u", 3.14)               -- 输出3
--string.format("%x", 13)                 -- 输出d
--string.format("%X", 13)                 -- 输出D
--string.format("%e", 1000)               -- 输出1.000000e+03
--string.format("%E", 1000)               -- 输出1.000000E+03
--string.format("%6.3f", 13)              -- 输出13.000
--string.format("%q", "One\nTwo")         -- 输出"One\
---- 　　Two"
--string.format("%s", "monkey")           -- 输出monkey
--string.format("%10s", "monkey")         -- 输出    monkey
--string.format("%5.3s", "monkey")        -- 输出  mon

-- 字符转换
-- 转换第一个字符
print(string.byte("Lua-123abcABC-LC"))
-- 转换第三个字符
print(string.byte("Lua-123abcABC-LC", 5)) -- 1对应ASCII码 31 转成10进制为49
-- 转换末尾第一个字符
print(string.byte("Lua-123abcABC-LC", -1))
-- 第二个字符
print(string.byte("Lua-123abcABC-LC", 2))
-- 转换末尾第二个字符
print(string.byte("Lua-123abcABC-LC", -2))

-- 整数 ASCII 码转换为字符
print(string.char(97))

-- 字符串
string1 = "www."
string2 = "oneplusone"
string3 = ".vip"
-- 使用 .. 进行字符串连接
print("连接字符串", string1 .. string2 .. string3)

-- 字符串长度
print("字符串长度 ", string.len(string2))

-- 字符串复制 2 次
repeatedString = string.rep(string2, 2)
print(repeatedString)

--一维数组 数组
array = { "Lua", "Tutorial" }

for i = 0, 2 do
    print(array[i])
end

--一维数组 数组2
array = {}

for i = -2, 2 do
    array[i] = i * 2
end

for i = -2, 2 do
    print(array[i])
end

print('-------------------------------------------------------------------------------------')

-- 多维数组
-- 初始化数组
-- 多维数组即数组中包含数组或一维数组的索引键对应一个数组。
-- 以下是一个三行三列的阵列多维数组：
array = {}
for i = 1, 3 do
    array[i] = {}
    for j = 1, 3 do
        array[i][j] = i * j
    end
end

-- 访问数组
for i = 1, 3 do
    for j = 1, 3 do
        print(array[i][j])
    end
end

print('-------------------------------------------------------------------------------------')
-- 不同索引键的三行三列阵列多维数组：
-- 初始化数组
array = {}
maxRows = 3
maxColumns = 3
for row = 1, maxRows do
    for col = 1, maxColumns do
        array[row * maxColumns + col] = row * col
    end
end

-- 访问数组
for row = 1, maxRows do
    for col = 1, maxColumns do
        print(array[row * maxColumns + col])
    end
end

print('-------------------------------------------------------------------------------------')

--[[
Lua 迭代器
迭代器（iterator）是一种对象，它能够用来遍历标准模板库容器中的部分或全部元素，每个迭代器对象代表容器中的确定的地址。

在 Lua 中迭代器是一种支持指针类型的结构，它可以遍历集合的每一个元素。

]]


-- 泛型 for 迭代器
-- 泛型 for 在自己内部保存迭代函数，实际上它保存三个值：迭代函数、状态常量、控制变量。
-- 泛型 for 迭代器提供了集合的 key/value 对，语法格式如下：
array = { "Google", "LC" }

for key, value in ipairs(array)
do
    print(key, value)
end

print('-------------------------------------------------------------------------------------')

-- 无状态的迭代器
function square(iteratorMaxCount, currentNumber)
    if currentNumber < iteratorMaxCount
    then
        currentNumber = currentNumber + 1
        return currentNumber, currentNumber * currentNumber
    end
end

for i, n in square, 3, 0
do
    print(i, n)
end

print('-------------------------------------------------------------------------------------')

-- 多状态的迭代器

array = { "Google", "LC" }

function elementIterator (collection)
    local index = 0
    local count = #collection
    -- 闭包函数
    return function()
        index = index + 1
        if index <= count
        then
            --  返回迭代器的当前元素
            return collection[index]
        end
    end
end

for element in elementIterator(array)
do
    print(element)
end

print('-------------------------------------------------------------------------------------')

--[[
Lua table(表)
table 是 Lua 的一种数据结构用来帮助我们创建不同的数据类型，如：数组、字典等。

Lua table 使用关联型数组，你可以用任意类型的值来作数组的索引，但这个值不能是 nil。

Lua table 是不固定大小的，你可以根据自己需要进行扩容。

Lua也是通过table来解决模块（module）、包（package）和对象（Object）的。 例如string.format表示使用"format"来索引table string。

table(表)的构造
构造器是创建和初始化表的表达式。表是Lua特有的功能强大的东西。最简单的构造函数是{}，用来创建一个空表。可以直接初始化数组:

-- 初始化表
mytable = {}

-- 指定值
mytable[1]= "Lua"

-- 移除引用
mytable = nil
-- lua 垃圾回收会释放内存
当我们为 table a 并设置元素，然后将 a 赋值给 b，则 a 与 b 都指向同一个内存。如果 a 设置为 nil ，则 b 同样能访问 table 的元素。如果没有指定的变量指向a，Lua的垃圾回收机制会清理相对应的内存。
]]

--以下实例演示了以上的描述情况：
--实例
-- 简单的 table
mytable = {}
print("mytable 的类型是 ", type(mytable))

mytable[1] = "LuaByLC"
mytable["wow"] = "修改前"
print("mytable 索引为 1 的元素是 ", mytable[1])
print("mytable 索引为 wow 的元素是 ", mytable["wow"])

-- alternatetable和mytable的是指同一个 table
alternatetable = mytable

print("alternatetable 索引为 1 的元素是 ", alternatetable[1])
print("mytable 索引为 wow 的元素是 ", alternatetable["wow"])

alternatetable["wow"] = "修改后"

print("mytable 索引为 wow 的元素是 ", mytable["wow"])

-- 释放变量
alternatetable = nil
print("alternatetable 是 ", alternatetable)

-- mytable 仍然可以访问
print("mytable 索引为 wow 的元素是 ", mytable["wow"])

mytable = nil
print("mytable 是 ", mytable)

print('-------------------------------------------------------------------------------------')

-- Table 连接
fruits = { "banana", "orange", "apple" }
-- 返回 table 连接后的字符串
print("连接后的字符串 ", table.concat(fruits))

-- 指定连接字符
print("连接后的字符串 ", table.concat(fruits, ", "))

-- 指定索引来连接 table
print("连接后的字符串 ", table.concat(fruits, ", ", 2, 3))

print('-------------------------------------------------------------------------------------')

-- 插入和移除
fruits = { "banana", "orange", "apple" }

-- 在末尾插入
table.insert(fruits, "mango")
print("索引为 4 的元素为 ", fruits[4])

-- 在索引为 2 的键处插入
table.insert(fruits, 2, "grapes")
print("索引为 2 的元素为 ", fruits[2])

print("最后一个元素为 ", fruits[5])
table.remove(fruits)
print("移除后最后一个元素为 ", fruits[5])

print('-------------------------------------------------------------------------------------')

-- Table 排序
fruits = { "banana", "orange", "apple", "grapes" }
print("排序前")
for k, v in ipairs(fruits) do
    print(k, v)
end

table.sort(fruits)
print("排序后")
for k, v in ipairs(fruits) do
    print(k, v)
end

print('-------------------------------------------------------------------------------------')

-- Table 最大值
function table_maxn(t)
    local mn = nil;
    for k, v in pairs(t) do
        if (mn == nil) then
            mn = v
        end
        if mn < v then
            mn = v
        end
    end
    return mn
end
tbl = { [1] = 2, [2] = 6, [3] = 34, [26] = 5 }
print("tbl 最大值：", table_maxn(tbl))
print("tbl 长度 ", #tbl)

--[[
注意：

当我们获取 table 的长度的时候无论是使用 # 还是 table.getn 其都会在索引中断的地方停止计数，而导致无法正确取得 table 的长度。

可以使用以下方法来代替：

function table_leng(t)
  local leng=0
  for k, v in pairs(t) do
    leng=leng+1
  end
  return leng;
end
]]

print('-------------------------------------------------------------------------------------')

--[[
Lua 元表(Metatable)
在 Lua table 中我们可以访问对应的key来得到value值，但是却无法对两个 table 进行操作。

因此 Lua 提供了元表(Metatable)，允许我们改变table的行为，每个行为关联了对应的元方法。

例如，使用元表我们可以定义Lua如何计算两个table的相加操作a+b。

当Lua试图对两个表进行相加时，先检查两者之一是否有元表，之后检查是否有一个叫"__add"的字段，若找到，则调用对应的值。"__add"等即时字段，其对应的值（往往是一个函数或是table）就是"元方法"。

有两个很重要的函数来处理元表：

setmetatable(table,metatable): 对指定 table 设置元表(metatable)，如果元表(metatable)中存在 __metatable 键值，setmetatable 会失败。
getmetatable(table): 返回对象的元表(metatable)。
以下实例演示了如何对指定的表设置元表：

mytable = {}                          -- 普通表
mymetatable = {}                      -- 元表
setmetatable(mytable,mymetatable)     -- 把 mymetatable 设为 mytable 的元表
以上代码也可以直接写成一行：

mytable = setmetatable({},{})
以下为返回对象元表：

getmetatable(mytable)                 -- 这回返回mymetatable
]]

-- __index 元方法

mytable = setmetatable({ key1 = "value1" }, {
    __index = function(mytable, key)
        if key == "key2" then
            return "metatablevalue"
        else
            return nil
        end
    end
})

print(mytable.key1, mytable.key2)

print('-------------------------------------------------------------------------------------')

-- __newindex 元方法

mymetatable = {}
mytable = setmetatable({ key1 = "value1" }, { __newindex = mymetatable })

print(mytable.key1)

mytable.newkey = "新值2"
print(mytable.newkey, mymetatable.newkey)

mytable.key1 = "新值1"
print(mytable.key1, mymetatable.key1)

print('-------------------------------------------------------------------------------------')

mytable = setmetatable({ key1 = "value1" }, {
    __newindex = function(mytable, key, value)
        rawset(mytable, key, "\"" .. value .. "\"")

    end
})

mytable.key1 = "new value"
mytable.key2 = 4

print(mytable.key1, mytable.key2)

print('-------------------------------------------------------------------------------------')

-- 为表添加操作符
-- 计算表中最大值，table.maxn在Lua5.2以上版本中已无法使用
-- 自定义计算表中最大键值函数 table_maxn，即计算表的元素个数
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end

-- 两表相加操作
mytable = setmetatable({ 1, 2, 3 }, {
    __add = function(mytable, newtable)
        for i = 1, table_maxn(newtable) do
            table.insert(mytable, table_maxn(mytable) + 1, newtable[i])
        end
        return mytable
    end
})

secondtable = { 4, 5, 6 }

mytable = mytable + secondtable
for k, v in ipairs(mytable) do
    print(k, v)
end

print('-------------------------------------------------------------------------------------')

-- __call 元方法

-- 计算表中最大值，table.maxn在Lua5.2以上版本中已无法使用
-- 自定义计算表中最大键值函数 table_maxn，即计算表的元素个数
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end

-- 定义元方法__call
mytable = setmetatable({ 10 }, {
    __call = function(mytable, newtable)
        sum = 0
        for i = 1, table_maxn(mytable) do
            sum = sum + mytable[i]
        end
        for i = 1, table_maxn(newtable) do
            sum = sum + newtable[i]
        end
        return sum
    end
})
newtable = { 10, 20, 30 }
print(mytable(newtable))

print('-------------------------------------------------------------------------------------')

-- __tostring 元方法

mytable = setmetatable({ 10, 20, 30 }, {
    __tostring = function(mytable)
        sum = 0
        for k, v in pairs(mytable) do
            sum = sum + v
        end
        return "表所有元素的和为 " .. sum
    end
})
print(mytable)

print('-------------------------------------------------------------------------------------')

--local function add2(a,b)
--    assert(type(a) == "number", "a 不是一个数字")
--    assert(type(b) == "number", "b 不是一个数字")
--    return a+b
--end
--print(add2(10,'a1'))

--[[
lua.exe: luaApp2.lua:544: b 不是一个数字
stack traceback:
	[C]: in function 'assert'
	luaApp2.lua:544: in local 'add2'
	luaApp2.lua:547: in main chunk
	[C]: in ?
]]

print('-------------------------------------------------------------------------------------')

--[[
  Lua 垃圾回收
Lua 采用了自动内存管理。 这意味着你不用操心新创建的对象需要的内存如何分配出来， 也不用考虑在对象不再被使用后怎样释放它们所占用的内存。

Lua 运行了一个垃圾收集器来收集所有死对象 （即在 Lua 中不可能再访问到的对象）来完成自动内存管理的工作。 Lua 中所有用到的内存，如：字符串、表、用户数据、函数、线程、 内部结构等，都服从自动管理。

Lua 实现了一个增量标记-扫描收集器。 它使用这两个数字来控制垃圾收集循环： 垃圾收集器间歇率和垃圾收集器步进倍率。 这两个数字都使用百分数为单位 （例如：值 100 在内部表示 1 ）。

垃圾收集器间歇率控制着收集器需要在开启新的循环前要等待多久。 增大这个值会减少收集器的积极性。 当这个值比 100 小的时候，收集器在开启新的循环前不会有等待。 设置这个值为 200 就会让收集器等到总内存使用量达到 之前的两倍时才开始新的循环。

垃圾收集器步进倍率控制着收集器运作速度相对于内存分配速度的倍率。 增大这个值不仅会让收集器更加积极，还会增加每个增量步骤的长度。 不要把这个值设得小于 100 ， 那样的话收集器就工作的太慢了以至于永远都干不完一个循环。 默认值是 200 ，这表示收集器以内存分配的"两倍"速工作。

如果你把步进倍率设为一个非常大的数字 （比你的程序可能用到的字节数还大 10% ）， 收集器的行为就像一个 stop-the-world 收集器。 接着你若把间歇率设为 200 ， 收集器的行为就和过去的 Lua 版本一样了： 每次 Lua 使用的内存翻倍时，就做一次完整的收集。

垃圾回收器函数:
]]

--Lua 提供了以下函数collectgarbage ([opt [, arg]])用来控制自动内存管理:

--collectgarbage("collect"): 做一次完整的垃圾收集循环。通过参数 opt 它提供了一组不同的功能：

--collectgarbage("count"): 以 K 字节数为单位返回 Lua 使用的总内存数。 这个值有小数部分，所以只需要乘上 1024 就能得到 Lua 使用的准确字节数（除非溢出）。

--collectgarbage("restart"): 重启垃圾收集器的自动运行。

--collectgarbage("setpause"): 将 arg 设为收集器的 间歇率 （参见 §2.5）。 返回 间歇率 的前一个值。

--collectgarbage("setstepmul"): 返回 步进倍率 的前一个值。

--collectgarbage("step"): 单步运行垃圾收集器。 步长"大小"由 arg 控制。 传入 0 时，收集器步进（不可分割的）一步。 传入非 0 值， 收集器收集相当于 Lua 分配这些多（K 字节）内存的工作。 如果收集器结束一个循环将返回 true 。

--collectgarbage("stop"): 停止垃圾收集器的运行。 在调用重启前，收集器只会因显式的调用运行。

mytable = { "apple", "orange", "banana" }

print(collectgarbage("count"))

mytable = nil

print(collectgarbage("count"))

print(collectgarbage("collect"))

print(collectgarbage("count"))

print('-------------------------------------------------------------------------------------')
