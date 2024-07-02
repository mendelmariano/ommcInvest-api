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

-- Copiando estrutura para tabela public.categories
CREATE TABLE IF NOT EXISTS "categories" (
	"id" SERIAL NOT NULL,
	"name" VARCHAR(255) NULL DEFAULT NULL,
	"type_id" INTEGER NOT NULL,
	"created_at" TIMESTAMPTZ NOT NULL,
	"updated_at" TIMESTAMPTZ NOT NULL,
	PRIMARY KEY ("id"),
	CONSTRAINT "categories_type_id_fkey" FOREIGN KEY ("type_id") REFERENCES "types" ("id") ON UPDATE CASCADE ON DELETE CASCADE
);

-- Copiando dados para a tabela public.categories: -1 rows
/*!40000 ALTER TABLE "categories" DISABLE KEYS */;
INSERT INTO "categories" ("id", "name", "type_id", "created_at", "updated_at") VALUES
	(1, 'Salário', 1, '2024-03-04 19:22:11.245+00', '2024-03-04 19:22:11.245+00'),
	(2, 'Renda Extra', 1, '2024-03-04 19:22:11.245+00', '2024-03-04 19:22:11.245+00'),
	(3, 'Investimentos', 1, '2024-03-04 19:22:11.245+00', '2024-03-04 19:22:11.245+00'),
	(4, 'Outros', 1, '2024-03-04 19:22:11.245+00', '2024-03-04 19:22:11.245+00'),
	(5, 'Cartão de Crédito', 2, '2024-03-04 19:22:11.256+00', '2024-03-04 19:22:11.256+00'),
	(6, 'Moradia', 2, '2024-03-04 19:22:11.256+00', '2024-03-04 19:22:11.256+00'),
	(7, 'Alimentação', 2, '2024-03-04 19:22:11.256+00', '2024-03-04 19:22:11.256+00'),
	(8, 'Transporte', 2, '2024-03-04 19:22:11.256+00', '2024-03-04 19:22:11.256+00'),
	(9, 'Saúde', 2, '2024-03-04 19:22:11.256+00', '2024-03-04 19:22:11.256+00'),
	(10, 'Educação', 2, '2024-03-04 19:22:11.256+00', '2024-03-04 19:22:11.256+00'),
	(11, 'Lazer e Entretenimento', 2, '2024-03-04 19:22:11.256+00', '2024-03-04 19:22:11.256+00'),
	(12, 'Vestuário e Acessórios', 2, '2024-03-04 19:22:11.256+00', '2024-03-04 19:22:11.256+00'),
	(13, 'Outros', 2, '2024-03-04 19:22:11.256+00', '2024-03-04 19:22:11.256+00'),
	(14, 'CDI', 3, '2024-03-04 19:22:11.268+00', '2024-03-04 19:22:11.268+00'),
	(15, 'CDB', 3, '2024-03-04 19:22:11.268+00', '2024-03-04 19:22:11.268+00'),
	(16, 'IPCA+', 3, '2024-03-04 19:22:11.268+00', '2024-03-04 19:22:11.268+00'),
	(17, 'Criptomoedas', 3, '2024-03-04 19:22:11.268+00', '2024-03-04 19:22:11.268+00'),
	(18, 'Outros', 3, '2024-03-04 19:22:11.268+00', '2024-03-04 19:22:11.268+00'),
	(19, 'Imóveis', 4, '2024-03-04 19:22:11.28+00', '2024-03-04 19:22:11.28+00'),
	(20, 'Investimentos', 4, '2024-03-04 19:22:11.28+00', '2024-03-04 19:22:11.28+00'),
	(21, 'Veiculos', 4, '2024-03-04 19:22:11.28+00', '2024-03-04 19:22:11.28+00'),
	(22, 'Outros', 4, '2024-03-04 19:22:11.28+00', '2024-03-04 19:22:11.28+00');
/*!40000 ALTER TABLE "categories" ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
