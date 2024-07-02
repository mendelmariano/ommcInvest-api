-- --------------------------------------------------------
-- Servidor:                     10.232.48.40
-- Versão do servidor:           PostgreSQL 16.1 (Debian 16.1-1.pgdg120+1) on x86_64-pc-linux-gnu, compiled by gcc (Debian 12.2.0-14) 12.2.0, 64-bit
-- OS do Servidor:               
-- HeidiSQL Versão:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Copiando estrutura para tabela public.types
CREATE TABLE IF NOT EXISTS "types" (
	"id" SERIAL NOT NULL,
	"name" VARCHAR(255) NOT NULL,
	"created_at" TIMESTAMPTZ NOT NULL,
	"updated_at" TIMESTAMPTZ NOT NULL,
	PRIMARY KEY ("id")
);

-- Copiando dados para a tabela public.types: -1 rows
/*!40000 ALTER TABLE "types" DISABLE KEYS */;
INSERT INTO "types" ("id", "name", "created_at", "updated_at") VALUES
	(1, 'Entry', '2024-03-04 19:22:11.233+00', '2024-03-04 19:22:11.233+00'),
	(2, 'Out', '2024-03-04 19:22:11.233+00', '2024-03-04 19:22:11.233+00'),
	(3, 'Investment', '2024-03-04 19:22:11.233+00', '2024-03-04 19:22:11.233+00'),
	(4, 'Patrimony', '2024-03-04 19:22:11.233+00', '2024-03-04 19:22:11.233+00');
/*!40000 ALTER TABLE "types" ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
