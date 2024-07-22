USE myDatabase
GO

CREATE VIEW MedalRanking

AS

SELECT TOP 100 PERCENT 
	[Country]
	,[Sport]
	,SUM(Gold+Silver+Bronze) as Medals
	,SUM([Gold]) AS Golds
	,SUM([Silver]) AS Silvers
	,SUM([Bronze]) as Bronzes
FROM [dbo].[Athletes]
GROUP BY [Country],[Sport]
ORDER BY SUM([Gold]) DESC,SUM([Silver]) DESC, SUM([Bronze]) DESC;