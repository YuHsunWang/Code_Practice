-- =============================================
-- CH5 SQL 練習題 (Microsoft SQL Server / T-SQL)
-- 主題：DML 操作 (INSERT / SELECT / UPDATE / DELETE / JOIN / GROUP BY)
-- =============================================

-- =============================================
-- 【環境建置】執行以下程式碼建立練習用資料表與測試資料
-- =============================================

CREATE DATABASE Shop;
GO
USE Shop;
GO

-- 客戶資料表
CREATE TABLE customers (
    c_id    INT PRIMARY KEY IDENTITY(1,1),
    c_name  NVARCHAR(50) NOT NULL,
    c_city  NVARCHAR(50),
    c_age   INT
);

-- 商品資料表
CREATE TABLE products (
    p_id    INT PRIMARY KEY IDENTITY(1,1),
    p_name  NVARCHAR(50) NOT NULL,
    p_price DECIMAL(10,2) NOT NULL,
    p_stock INT DEFAULT 0
);

-- 訂單資料表
CREATE TABLE orders (
    o_id   INT PRIMARY KEY IDENTITY(1,1),
    c_id   INT REFERENCES customers(c_id),
    p_id   INT REFERENCES products(p_id),
    o_qty  INT NOT NULL,
    o_date DATE DEFAULT GETDATE()
);
GO

-- 插入測試資料
INSERT INTO customers (c_name, c_city, c_age) VALUES
    (N'王小明', N'台北', 28),
    (N'李美華', N'台中', 35),
    (N'張志偉', N'高雄', 22),
    (N'陳雅婷', N'台北', 31),
    (N'林建宏', N'新竹', 45);

INSERT INTO products (p_name, p_price, p_stock) VALUES
    (N'筆記型電腦', 35000.00, 10),
    (N'無線滑鼠',      590.00, 50),
    (N'機械鍵盤',    2800.00, 20),
    (N'螢幕',        8500.00, 15),
    (N'USB集線器',    450.00, 80);

INSERT INTO orders (c_id, p_id, o_qty, o_date) VALUES
    (1, 1, 1, '2024-01-05'),
    (1, 2, 2, '2024-01-10'),
    (2, 3, 1, '2024-01-15'),
    (3, 5, 3, '2024-02-01'),
    (4, 4, 1, '2024-02-10'),
    (2, 1, 1, '2024-02-20'),
    (5, 2, 4, '2024-03-01'),
    (3, 3, 2, '2024-03-05');
GO

-- =============================================
-- 【練習題目】在每題的 -- 你的答案寫在這裡 下方填寫 SQL
-- =============================================

-- 題目 1：查詢所有客戶的 c_name 和 c_city，並依 c_name 升冪排序
-- 你的答案寫在這裡：



-- 題目 2：查詢年齡大於 30 歲的客戶，顯示 c_name 和 c_age
-- 你的答案寫在這裡：



-- 題目 3：查詢居住在「台北」的客戶有幾位（顯示一個數字即可）
-- 你的答案寫在這裡：



-- 題目 4：查詢價格在 500 到 9000 之間的商品，顯示 p_name 和 p_price，依價格升冪排序
-- 你的答案寫在這裡：



-- 題目 5：查詢庫存最少的前 3 項商品（顯示 p_name 和 p_stock）
-- 提示：T-SQL 使用 TOP 而非 LIMIT
-- 你的答案寫在這裡：



-- 題目 6：將「USB集線器」的價格改為 480 元
-- 你的答案寫在這裡：



-- 題目 7：將所有庫存數量超過 40 的商品庫存減少 5
-- 你的答案寫在這裡：



-- 題目 8：刪除 c_id = 3 的客戶資料（需先刪除相關訂單）
-- 你的答案寫在這裡：



-- 題目 9：查詢所有訂單，同時顯示客戶姓名(c_name)、商品名稱(p_name)、數量(o_qty)
-- 提示：需要 JOIN 三個資料表
-- 你的答案寫在這裡：



-- 題目 10：查詢每位客戶的訂單總數，顯示 c_name 和訂單數量，依訂單數量降冪排序
-- 你的答案寫在這裡：



-- 題目 11：查詢每項商品的總銷售數量（p_name, 總數量），只顯示總數量超過 2 的商品
-- 提示：使用 GROUP BY + HAVING
-- 你的答案寫在這裡：



-- 題目 12：查詢從未下過訂單的客戶姓名
-- 提示：可使用 LEFT JOIN 或 NOT IN 或 NOT EXISTS
-- 你的答案寫在這裡：



-- 題目 13：計算每個城市的客戶平均年齡，顯示 c_city 和平均年齡（四捨五入至整數）
-- 你的答案寫在這裡：



-- 題目 14：新增一位新客戶：姓名「周怡君」、城市「台南」、年齡 27
-- 你的答案寫在這裡：



-- 題目 15：查詢 2024 年 2 月份的所有訂單，顯示客戶姓名、商品名稱、訂購日期
-- 你的答案寫在這裡：
