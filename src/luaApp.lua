print(type("Hello world"))      --> string
print(type(10.4 * 3))             --> number
print(type(print))              --> function
print(type(type))               --> function
print(type(true))               --> boolean
print(type(nil))                --> nil
print(type(type(X)))            --> string


-- panApp.script.lib.lua.module
-- module.lua 文件
-- module 模块为上文提到到 module.lua
require("panApp.script.lib.lua.module")

print(module.constant)

module.func3()

module.addVersionByLC(1, 9) --字符串连接使用的是 ..

print(module.factorial1(4)) --> 24


a = 5               -- 全局变量
local b = 5         -- 局部变量

function joke()
    c = 5           -- 全局变量
    local d = 6     -- 局部变量
end

joke()
print(c, d)          --> 5 nil

do
    local a = 6     -- 局部变量
    b = 6           -- 对局部变量重新赋值
    print(a, b);     --> 6 6
end

print(a, b)      --> 5 6


site = {}
site["keyByLC"] = "www.oneplusone.vip"
print(site["keyByLC"])
print(site.keyByLC)


--[[while( true )
do
    print("循环将永远执行下去")
end]]


--[ 0 为 true ]
if (0)
then
    print("0 为 true")
end


--[[ 函数返回两个值的最大值 --]]
function max(num1, num2)

    if (num1 > num2) then
        result = num1;
    else
        result = num2;
    end

    return result;
end
-- 调用函数
print("两值比较最大值为 ", max(10, 4))
print("两值比较最大值为 ", max(5, 6))

myprint = function(param)
    print("这是打印函数 -   ##", param, "##")
end

function add(num1, num2, functionPrint)
    result = num1 + num2
    -- 调用传递的函数参数
    functionPrint(result)
end
myprint(10)
-- myprint 函数作为参数传递
add(2, 5, myprint)

-- 多返回值-Lua函数中，在return后列出要返回的值的列表即可返回多值
function maximum (a)
    local mi = 1             -- 最大值索引
    local m = a[mi]          -- 最大值
    for i, val in ipairs(a) do
        if val > m then
            mi = i
            m = val
        end
    end
    return m, mi
end

print(maximum({ 8, 10, 23, 12, 5 }))

-- 可变参数
function add(...)
    local s = 0
    for i, v in ipairs { ... } do
        --> {...} 表示一个由所有变长参数构成的数组
        s = s + v
    end
    return s
end
print(add(3, 4, 5, 6, 7))  --->25

-- 可变参数
function average(...)
    result = 0
    local arg = { ... }    --> arg 为一个表，局部变量
    for i, v in ipairs(arg) do
        result = result + v
    end
    print("总共传入 " .. #arg .. " 个数")
    return result / #arg
end

print("平均值为", average(10, 5, 3, 4, 5, 6))

function fwrite(fmt, ...)
    ---> 固定的参数fmt
    return io.write(string.format(fmt, ...))
end

fwrite("ahviplc\n")
--->fmt = "ahviplc", 没有变长参数。
fwrite("%d%d\n", 1, 2)   --->fmt = "%d%d", 变长参数为 1 和 2


do
    function foo(...)
        for i = 1, select('#', ...) do
            -->获取参数总数
            local arg = select(i, ...); -->读取参数
            print("arg", arg);
        end
    end
    foo(1, 2, 3, 4);
end

-- 输出示例:
--[[lua.exe luaApp.lua
string
number
function
    function
    boolean
    nil
    string
    这是一个常量
    这是一个私有函数！
    加法：10
    24
    5	nil
    6	6
    5	6
    www.oneplusone.vip
    www.oneplusone.vip
    0 为 true
    两值比较最大值为 	10
    两值比较最大值为 	6
    这是打印函数 -   ##	10	##
这是打印函数 -   ##	7	##
23	3
    25
    总共传入 6 个数
    平均值为	5.5
    ahviplc
    12
    arg	1
    arg	2
    arg	3
    arg	4]]
