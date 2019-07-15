-- 文件名为 module.lua
-- 定义一个名为 module 的模块
module = {}

-- 定义一个常量
module.constant = "这是一个常量"

-- 定义一个函数
function module.func1()
    io.write("这是一个公有函数！\n")
end

local function func2()
    print("这是一个私有函数！")
end

function module.func3()
    func2()
end

function module.addVersionByLC(a,b)
    print("加法：" .. tostring((a + b))) --字符串连接使用的是 ..
end

-- 阶乘 脚本文件
function module.factorial1(n)
    if n == 0 then
        return 1
    else
        --print(n * module.factorial1(n - 1))
        return n * module.factorial1(n - 1)
    end
end

return module