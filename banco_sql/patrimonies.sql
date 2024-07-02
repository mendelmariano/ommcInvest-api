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

-- Copiando estrutura para tabela public.patrimonies
CREATE TABLE IF NOT EXISTS "patrimonies" (
	"id" SERIAL NOT NULL,
	"name" VARCHAR(255) NULL DEFAULT NULL,
	"description" VARCHAR(255) NULL DEFAULT NULL,
	"type_id" INTEGER NOT NULL,
	"price" NUMERIC(10,2) NULL DEFAULT NULL,
	"data" TIMESTAMPTZ NOT NULL,
	"category_id" INTEGER NOT NULL,
	"user_id" UUID NOT NULL,
	"status" INTEGER NOT NULL DEFAULT 1,
	"created_at" TIMESTAMPTZ NOT NULL,
	"updated_at" TIMESTAMPTZ NOT NULL,
	PRIMARY KEY ("id"),
	CONSTRAINT "patrimonies_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "categories" ("id") ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT "patrimonies_type_id_fkey" FOREIGN KEY ("type_id") REFERENCES "types" ("id") ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT "patrimonies_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users" ("id") ON UPDATE CASCADE ON DELETE CASCADE
);

-- Copiando dados para a tabela public.patrimonies: -1 rows
/*!40000 ALTER TABLE "patrimonies" DISABLE KEYS */;
INSERT INTO "patrimonies" ("id", "name", "description", "type_id", "price", "data", "category_id", "user_id", "status", "created_at", "updated_at") VALUES
	(1, 'Nubank', 'CBD  100% CDI', 3, 27817.60, '2024-03-04 20:26:07.74+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-03-05 13:17:14.683+00', '2024-03-05 13:17:14.683+00'),
	(2, 'Mercado Pago', NULL, 3, 24124.00, '2024-03-04 20:27:25.88+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-03-05 13:18:26.71+00', '2024-03-05 13:18:26.71+00'),
	(3, 'PagBank', NULL, 3, 22201.62, '2024-03-04 20:28:51.271+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-03-05 13:18:58.575+00', '2024-03-05 13:18:58.575+00'),
	(4, 'ITI', 'Metas', 3, 20336.18, '2024-03-04 20:29:27.508+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-03-05 13:19:38.864+00', '2024-03-05 13:19:38.864+00'),
	(5, 'Binance', 'Criptomoedas em geral', 3, 20811.00, '2024-03-01 03:00:00+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-03-05 13:20:28.337+00', '2024-03-05 13:20:28.337+00'),
	(6, '99PAY', NULL, 3, 17039.16, '2024-03-04 20:30:51.185+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-03-05 13:21:01.515+00', '2024-03-05 13:21:01.515+00'),
	(7, 'PIC Pay', '102% do CDI', 3, 24026.21, '2024-03-04 20:31:16.923+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-03-05 13:21:36.267+00', '2024-03-05 13:21:36.267+00'),
	(8, 'Sofisa', 'Investimentos em geral', 3, 30330.30, '2024-03-04 20:32:13.478+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-03-05 13:22:28.026+00', '2024-03-05 13:22:28.026+00'),
	(9, 'HRV', 'Meu carro ultima avaliação', 3, 82000.00, '2024-03-04 20:33:06.918+00', 21, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-03-05 13:23:18.811+00', '2024-03-05 13:23:18.811+00'),
	(10, 'Apartamento', 'Apartamento no condomínio torres do mirante 2/4', 3, 250000.00, '2024-03-04 20:33:28.789+00', 19, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-03-05 13:23:48.818+00', '2024-03-05 13:23:48.818+00'),
	(11, '99PAY', NULL, 3, 20019.01, '2024-04-01 20:14:16.93+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-04-01 20:10:23.36+00', '2024-04-01 20:10:23.36+00'),
	(12, 'Binance', 'Criptomoedas em geral', 3, 31864.27, '2024-04-01 20:15:54.444+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-04-01 20:11:58.587+00', '2024-04-01 20:11:58.587+00'),
	(13, 'ITI', 'Metas', 3, 20453.93, '2024-04-01 20:17:16.489+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-04-01 20:13:15.883+00', '2024-04-01 20:13:15.883+00'),
	(14, 'Nubank', 'CBD  100% CDI', 3, 27980.28, '2024-04-01 20:19:30.587+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-04-01 20:15:25.87+00', '2024-04-01 20:15:25.87+00'),
	(15, 'PagBank', NULL, 3, 22366.53, '2024-04-01 20:20:57.272+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-04-01 20:16:54.072+00', '2024-04-01 20:16:54.072+00'),
	(16, 'PIC Pay', '102% do CDI', 3, 24656.31, '2024-04-01 20:23:20.715+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-04-01 20:19:24.541+00', '2024-04-01 20:19:24.541+00'),
	(17, 'Sofisa', 'Investimentos em geral', 3, 35587.92, '2024-04-01 20:24:59.292+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-04-01 20:20:55.098+00', '2024-04-01 20:20:55.098+00'),
	(18, 'PIC Pay', '102% do CDI', 3, 25170.22, '2024-04-02 12:08:32.107+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-04-02 12:04:33.383+00', '2024-04-02 12:04:33.383+00'),
	(19, 'Mercado Pago (Saldo)', NULL, 3, 13448.11, '2024-04-02 12:27:02.084+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-04-02 12:23:16.405+00', '2024-04-02 12:23:16.405+00'),
	(20, 'Mercado Pago (Saldo)', NULL, 3, 1151.52, '2024-04-16 16:37:20.172+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-04-16 16:37:43.222+00', '2024-04-16 16:37:43.222+00'),
	(21, 'Binance', 'Criptomoedas em geral', 3, 35611.63, '2024-04-16 16:37:49.972+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-04-16 16:38:30.799+00', '2024-04-16 16:38:30.799+00'),
	(22, 'Nubank', NULL, 3, 236.43, '2024-05-16 12:47:25.356+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-05-16 13:36:29.658+00', '2024-05-16 13:36:29.658+00'),
	(23, '99PAY', NULL, 3, 20234.22, '2024-05-16 13:47:15.219+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-05-16 14:36:26.408+00', '2024-05-16 14:36:26.408+00'),
	(24, 'Binance', 'Criptomoedas em geral', 3, 36779.88, '2024-05-16 13:47:46.789+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-05-16 14:37:03.555+00', '2024-05-16 14:37:03.555+00'),
	(25, 'ITI', 'Metas', 3, 20658.11, '2024-05-16 13:48:23.304+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-05-16 14:37:44.377+00', '2024-05-16 14:37:44.377+00'),
	(26, 'Mercado Pago', NULL, 3, 33669.54, '2024-05-16 13:49:05.474+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-05-16 14:38:21.99+00', '2024-05-16 14:38:21.99+00'),
	(27, 'Mercado Pago (Saldo)', NULL, 3, 573.44, '2024-05-16 13:49:43.29+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-05-16 14:38:44.585+00', '2024-05-16 14:38:44.585+00'),
	(28, 'Nubank', NULL, 3, 30108.73, '2024-05-16 13:50:26.021+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-05-16 14:39:35.692+00', '2024-05-16 14:39:35.692+00'),
	(29, 'PagBank', NULL, 3, 27560.45, '2024-05-16 13:50:55.189+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-05-16 14:40:07.994+00', '2024-05-16 14:40:07.994+00'),
	(30, 'PIC Pay', '102% do CDI', 3, 24697.12, '2024-05-16 13:52:38.087+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-05-16 14:41:42.572+00', '2024-05-16 14:41:42.572+00'),
	(31, 'Sofisa', 'Investimentos em geral', 3, 36085.53, '2024-05-16 13:52:59.973+00', 20, 'd2da6d15-79c7-4044-8727-8d028264ebdf', 1, '2024-05-16 14:42:24.869+00', '2024-05-16 14:42:24.869+00');
/*!40000 ALTER TABLE "patrimonies" ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
