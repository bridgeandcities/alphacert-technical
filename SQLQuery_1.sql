CREATE TABLE [dbo].[FizzBuzzResults] (
    N NVARCHAR(8)
);

DECLARE @N INT
SET @N = 1

WHILE @N <= 100
BEGIN
INSERT INTO [dbo].[FizzBuzzResults] (N)
SELECT @N
SET @N = @N + 1
END

UPDATE [dbo].[FizzBuzzResults] SET N = 'FizzBuzz' WHERE ((N % 3 = 0) and (N % 5 = 0))
UPDATE [dbo].[FizzBuzzResults] SET N = 'Fizz' WHERE (N % 3 = 0) and (N != 'FizzBuzz') and (N != 'Buzz')
UPDATE [dbo].[FizzBuzzResults] SET N = 'Buzz' WHERE (N % 5 = 0) and (N != 'FizzBuzz') and (N != 'Fizz')

SELECT * FROM [dbo].[FizzBuzzResults];

--DROP TABLE FizzBuzzResults;