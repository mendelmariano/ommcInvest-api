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

-- Copiando estrutura para tabela public.movements
CREATE TABLE IF NOT EXISTS "movements" (
	"id" UUID NOT NULL DEFAULT gen_random_uuid(),
	"name" VARCHAR(255) NOT NULL,
	"description" VARCHAR(255) NULL DEFAULT NULL,
	"data" TIMESTAMPTZ NOT NULL,
	"type_id" INTEGER NOT NULL,
	"price" NUMERIC(10,2) NULL DEFAULT NULL,
	"category_id" INTEGER NOT NULL,
	"user_id" UUID NOT NULL,
	"created_at" TIMESTAMPTZ NOT NULL,
	"updated_at" TIMESTAMPTZ NOT NULL,
	PRIMARY KEY ("id"),
	CONSTRAINT "movements_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "categories" ("id") ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT "movements_type_id_fkey" FOREIGN KEY ("type_id") REFERENCES "types" ("id") ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT "movements_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users" ("id") ON UPDATE CASCADE ON DELETE CASCADE
);

-- Copiando dados para a tabela public.movements: 55 rows
/*!40000 ALTER TABLE "movements" DISABLE KEYS */;
INSERT INTO "movements" ("id", "name", "description", "data", "type_id", "price", "category_id", "user_id", "created_at", "updated_at") VALUES
	('f9634eb8-1bbc-4fa5-89ca-1f73c8c0685f', 'Salário CooperSystem', 'Salário liquido cooper', '2024-03-01 03:00:00+00', 1, 11556.11, 1, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-03-05 13:12:59.307+00', '2024-03-05 13:12:59.307+00'),
	('7805ac7d-07d5-477e-952d-ede4e2b880d4', 'Salário FAB', NULL, '2024-03-01 03:00:00+00', 1, 5163.06, 1, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-03-05 13:13:24.651+00', '2024-03-05 13:13:24.651+00'),
	('e88e373b-70a2-41ef-ae10-fafda8a0bcae', 'Cartão C6', NULL, '2024-03-04 20:23:36.784+00', 2, 4311.28, 5, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-03-05 13:14:47.847+00', '2024-03-05 13:15:33.468+00'),
	('0da3c461-3c47-4ba9-9285-b191aca8ef27', 'Mercado Pago', NULL, '2024-03-04 20:34:12.216+00', 3, 4000.00, 14, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-03-05 13:24:39.414+00', '2024-03-05 13:24:39.414+00'),
	('f4618ec7-99a6-4ad9-9b10-b436a1a4e43a', '99PAY', '99', '2024-03-04 20:34:49.262+00', 3, 4000.00, 14, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-03-05 13:25:07.978+00', '2024-03-05 13:25:07.978+00'),
	('a5cab0dc-154e-449e-bb3c-d48588d3fc30', 'PIC PAY', '102%', '2024-03-04 20:35:18+00', 3, 3200.00, 14, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-03-05 13:25:35.041+00', '2024-03-05 13:25:35.041+00'),
	('e153af38-f19e-47a9-ad20-701743567873', 'Sofisa', NULL, '2024-03-04 20:35:58.009+00', 3, 700.00, 15, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-03-05 13:25:59.973+00', '2024-03-05 13:25:59.973+00'),
	('8bcdf604-5d2e-4b79-8f97-767ee2f30ccb', 'Inglês', 'Curso de inglês', '2024-03-04 20:36:44.859+00', 2, 380.00, 10, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-03-05 13:30:00.721+00', '2024-03-05 13:30:00.721+00'),
	('48a20b2e-a444-4097-a53f-4575cde35f80', 'Condominio', NULL, '2024-03-05 21:31:20.839+00', 2, 303.10, 6, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-03-06 14:21:28.773+00', '2024-03-06 14:21:28.773+00'),
	('4a978221-9264-4773-9f08-45d134fe090e', 'Salário da FAB', 'teste de sitema', '2024-03-18 23:42:20.031+00', 1, 6000.00, 1, 'be96594f-992b-40ee-ac3c-6a5032d6f822', '2024-03-19 16:48:07.319+00', '2024-03-19 16:48:07.319+00'),
	('5403630b-0030-4912-80d0-678c65c89957', 'Job Nubank', NULL, '2024-03-18 23:42:53.396+00', 1, 15000.00, 1, 'be96594f-992b-40ee-ac3c-6a5032d6f822', '2024-03-19 16:48:29.612+00', '2024-03-19 16:48:29.612+00'),
	('774d5d72-02e5-4c77-8eeb-a1f103c33ac6', 'Cartão de crédito Nubank', NULL, '2024-03-18 23:43:10.481+00', 2, 5000.00, 5, 'be96594f-992b-40ee-ac3c-6a5032d6f822', '2024-03-19 16:48:51.002+00', '2024-03-19 16:48:51.002+00'),
	('10cee1af-3aaf-4642-9e7a-82e890b2f1d7', 'Tesouro direto', NULL, '2024-03-18 23:43:39.234+00', 3, 6000.00, 15, 'be96594f-992b-40ee-ac3c-6a5032d6f822', '2024-03-19 16:49:16.63+00', '2024-03-19 16:49:16.63+00'),
	('b9b755f2-f25e-4417-9ed5-0999ec677fa5', 'Energia', NULL, '2024-03-18 23:44:02.492+00', 2, 200.00, 6, 'be96594f-992b-40ee-ac3c-6a5032d6f822', '2024-03-19 16:49:36+00', '2024-03-19 16:49:36+00'),
	('d2df8648-8e41-4e42-aa82-13812b3dff08', 'Cruso de inglês', NULL, '2024-03-18 23:44:16.237+00', 2, 380.00, 10, 'be96594f-992b-40ee-ac3c-6a5032d6f822', '2024-03-19 16:49:49.753+00', '2024-03-19 16:49:49.753+00'),
	('e30d78ae-504a-4f0a-8828-220c05a7fa6e', 'Fundos imobiliários', NULL, '2024-03-18 23:44:44.179+00', 1, 3000.00, 3, 'be96594f-992b-40ee-ac3c-6a5032d6f822', '2024-03-19 16:50:24.546+00', '2024-03-19 16:50:24.546+00'),
	('671147bf-e8e7-4ccf-b2d4-76c63a813ba1', 'Salário Coopersystem', 'Salário + sobras', '2024-04-01 20:05:45.734+00', 1, 24007.77, 1, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-01 20:02:14.41+00', '2024-04-01 20:02:14.41+00'),
	('9e8222f3-3b6e-4198-a37c-57ec4d4c863d', 'Salário FAB', NULL, '2024-04-01 20:06:45.777+00', 1, 5162.08, 1, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-01 20:02:43.327+00', '2024-04-01 20:02:43.327+00'),
	('e7920fd3-af7d-4b72-92c3-b29946669301', 'Vale Alimentação', NULL, '2024-04-01 20:07:44.042+00', 1, 619.54, 4, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-01 20:03:49.756+00', '2024-04-01 20:03:49.756+00'),
	('4c4b24c0-41ab-4ee8-8030-a1c37e7be79e', 'Vale refeição', NULL, '2024-04-01 20:08:09.124+00', 1, 265.52, 4, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-01 20:04:09.619+00', '2024-04-01 20:04:09.619+00'),
	('e2d59db7-7213-44dd-b940-032263c9594d', 'Caju', NULL, '2024-04-01 20:08:57.514+00', 1, 401.99, 4, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-01 20:04:51.972+00', '2024-04-01 20:04:51.972+00'),
	('915618ad-8c5b-4964-9baa-d342ac04a34c', 'C6 Crédito', ' ', '2024-04-01 20:09:16.842+00', 2, 4047.50, 5, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-01 20:05:50.945+00', '2024-04-01 20:05:50.945+00'),
	('59f7c85b-c906-4aad-8dd8-a7bc5b97732b', '99Pay', NULL, '2024-04-01 20:12:32.493+00', 3, 2910.00, 15, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-01 20:08:30.681+00', '2024-04-01 20:08:30.681+00'),
	('7ea948a7-7718-4ab0-afc3-ba80e6fe4900', '99Pay', NULL, '2024-04-01 20:13:52.349+00', 1, 69.85, 3, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-01 20:09:51.547+00', '2024-04-01 20:09:51.547+00'),
	('35bdb023-591b-4041-a2e4-559e6c78496b', 'Binance', 'Criptomoedas', '2024-04-01 20:15:28.394+00', 1, 11053.27, 3, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-01 20:11:31.624+00', '2024-04-01 20:11:31.624+00'),
	('11779716-06df-4187-b278-15d89b864d03', 'ITI', NULL, '2024-04-01 20:16:59.706+00', 1, 117.75, 3, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-01 20:12:53.86+00', '2024-04-01 20:12:53.86+00'),
	('733665dd-755f-4f52-96a5-e694482d94a9', 'Nubank', NULL, '2024-04-01 20:19:02.464+00', 1, 162.68, 3, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-01 20:15:05.751+00', '2024-04-01 20:15:05.751+00'),
	('5eee6d71-97c6-41e6-9a49-000ffa17dedb', 'PagBank', NULL, '2024-04-01 20:20:35.2+00', 1, 164.91, 3, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-01 20:16:33.536+00', '2024-04-01 20:16:33.536+00'),
	('950cf992-aca3-423a-a013-fd301b3275b1', 'PicPay', NULL, '2024-04-01 20:23:00.891+00', 1, 137.10, 3, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-01 20:18:57.006+00', '2024-04-01 20:18:57.006+00'),
	('354745f3-f439-47e7-a39c-5dcd3e9758fc', 'Sofisa', NULL, '2024-04-01 20:24:44.955+00', 1, 257.62, 3, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-01 20:20:39.041+00', '2024-04-01 20:20:39.041+00'),
	('9cf2aa9e-dc51-43f6-93da-9c50e6f97665', 'Mercado Pago', NULL, '2024-04-02 12:08:55.194+00', 1, 200.22, 3, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-02 12:04:58.074+00', '2024-04-02 12:04:58.074+00'),
	('78a9b24e-7c6a-4f12-8e1e-0976211696ef', 'Inglês', NULL, '2024-04-02 12:17:41.187+00', 2, 380.00, 10, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-02 12:13:37.715+00', '2024-04-02 12:13:37.715+00'),
	('d7147cf6-4ae1-42a4-a972-6e3361542e6b', 'Energia', NULL, '2024-04-02 12:17:55.795+00', 2, 207.79, 6, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-02 12:14:25.494+00', '2024-04-02 12:14:25.494+00'),
	('24d44d46-166e-4bcf-8b77-90c3ce143bf7', 'Gás', NULL, '2024-04-02 12:18:46.951+00', 2, 5.37, 6, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-02 12:15:16.146+00', '2024-04-02 12:15:16.146+00'),
	('82146192-a557-4a95-ab27-9e2b3dfab8b8', 'Pneu', 'Pneu do carro que estragou', '2024-04-02 12:21:13.319+00', 2, 230.00, 8, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-02 12:17:17.425+00', '2024-04-02 12:17:17.425+00'),
	('cbb173c7-1ea5-4059-b420-03c269de8445', 'IPTU', NULL, '2024-04-02 12:21:57.624+00', 2, 1250.00, 6, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-02 12:18:23.548+00', '2024-04-02 12:18:23.548+00'),
	('3cc8ff6b-fc26-448c-bd87-b0e6bbf605f4', 'Condomínio', NULL, '2024-04-02 12:22:57.199+00', 2, 303.00, 6, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-02 12:18:56.47+00', '2024-04-02 12:18:56.47+00'),
	('b63c746d-55c6-45a6-b6ed-781a27b5baf7', 'Água', NULL, '2024-04-02 12:23:46.611+00', 2, 67.47, 6, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-04-02 12:22:09.74+00', '2024-04-02 12:22:09.74+00'),
	('77efa3ce-feee-4a01-9595-3252032a72cb', 'Salário Coopersystem', 'Salário 168h', '2024-05-02 19:22:15.152+00', 1, 11751.12, 1, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-02 20:12:57.478+00', '2024-05-02 20:12:57.478+00'),
	('00bbb61e-893c-4de3-9a6a-2be2cfb2d2ef', 'Salário FAB', NULL, '2024-05-02 19:23:04.693+00', 1, 5161.41, 1, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-02 20:13:19.019+00', '2024-05-02 20:13:19.019+00'),
	('41699083-4b67-41a5-8014-c1cbec305f54', 'Vale Alimentação', NULL, '2024-05-02 19:23:31.782+00', 1, 591.38, 4, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-02 20:14:09.131+00', '2024-05-02 20:14:09.131+00'),
	('b22de94e-c36f-46a1-9497-969ae25d0c80', 'Vale Refeição', NULL, '2024-05-02 19:24:16.515+00', 1, 253.45, 4, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-02 20:14:27.951+00', '2024-05-02 20:14:27.951+00'),
	('c6ddf4b5-725b-42f7-afc0-dc6c76572b72', 'Caju', 'Auxilio coopersystem', '2024-05-02 19:24:57.762+00', 1, 401.99, 4, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-02 20:15:10.775+00', '2024-05-02 20:15:10.775+00'),
	('a0aada9e-27bd-45e7-9d55-37ca9e3cf50c', 'C6', NULL, '2024-05-02 19:25:26.451+00', 2, 2613.09, 5, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-02 20:16:00.996+00', '2024-05-02 20:16:00.996+00'),
	('5940e384-64cc-4942-87e7-60d9fc27a73f', 'Condomínio', NULL, '2024-05-02 19:26:24.026+00', 2, 303.10, 6, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-02 20:16:32.243+00', '2024-05-02 20:16:32.243+00'),
	('a76a3fd0-ffd8-44e4-a188-25a2f3648359', 'Inglês', NULL, '2024-05-02 19:26:40.89+00', 2, 180.00, 10, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-02 20:16:47.612+00', '2024-05-02 20:16:47.612+00'),
	('ea534b85-3e0a-4c37-a881-c58d67cf4e41', 'Claro residêncial', NULL, '2024-05-02 19:26:55.762+00', 2, 64.90, 6, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-02 20:17:23.784+00', '2024-05-02 20:17:23.784+00'),
	('b365df04-a7cf-45c1-90fd-40e36093c1ac', 'Vivare Internet', NULL, '2024-05-02 19:27:30.697+00', 2, 99.00, 6, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-02 20:17:36.097+00', '2024-05-02 20:17:36.097+00'),
	('4e56dc65-867b-4119-8ac9-c7d3ffef250a', 'Energia', NULL, '2024-05-02 19:28:16.696+00', 2, 150.45, 6, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-02 20:18:29.838+00', '2024-05-02 20:18:29.838+00'),
	('c3d85582-d4e6-4e2f-b35c-520f7d4b7e1b', 'Água', NULL, '2024-05-02 19:28:36.647+00', 2, 68.80, 6, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-02 20:18:45.158+00', '2024-05-02 20:18:45.158+00'),
	('e7262dc2-ce2c-447e-bc98-138a913b54fe', 'Cripto Moedas', NULL, '2024-05-02 19:29:12.095+00', 3, 11100.00, 17, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-02 20:19:59.983+00', '2024-05-02 20:19:59.983+00'),
	('79e0a685-00bc-43a2-bf70-12fdf9fcc7a2', 'Fndos imobiliários KNRI11', 'Fundos imobiliários NUBANK', '2024-05-16 12:04:45.945+00', 3, 1639.83, 18, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-16 12:56:43.796+00', '2024-05-16 12:56:43.796+00'),
	('610e922c-f564-4678-b590-db0450f1f872', '99 Pay', NULL, '2024-05-16 12:35:36.326+00', 1, 147.00, 3, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-16 13:25:44.32+00', '2024-05-16 13:25:44.32+00'),
	('12c8082f-b881-4e8a-853f-18b21c2436df', 'Criptomoedas', 'BTC, MKR e outros', '2024-05-16 12:38:31.838+00', 1, 1288.37, 3, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-16 13:27:46.326+00', '2024-05-16 13:27:53.675+00'),
	('bdf3e623-0ead-4e86-b855-f98464ac394f', 'ITI', NULL, '2024-05-16 12:42:21.859+00', 1, 133.16, 3, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-16 13:31:24.236+00', '2024-05-16 13:31:24.236+00'),
	('1c7cdbe8-4533-4805-8a6b-17dc11619154', 'Mercado Pago', NULL, '2024-05-16 12:46:27.385+00', 1, 108.66, 3, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-16 13:35:24.906+00', '2024-05-16 13:35:24.906+00'),
	('9e85dc02-15de-4918-bf26-ee77357acbad', 'PAGBANK', NULL, '2024-05-16 12:49:17.566+00', 1, 191.20, 3, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-16 13:38:27.535+00', '2024-05-16 13:38:27.535+00'),
	('31a8bed1-1f72-4a5d-bb70-79aa9097b48d', 'PICPAY', NULL, '2024-05-16 12:50:26.863+00', 1, 179.54, 3, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-16 13:39:28.336+00', '2024-05-16 13:39:28.336+00'),
	('101ffaf1-5b75-450b-ad7b-d8bd64942c1a', 'SOFISA', NULL, '2024-05-16 12:54:31.693+00', 1, 215.45, 3, 'd2da6d15-79c7-4044-8727-8d028264ebdf', '2024-05-16 13:43:40.606+00', '2024-05-16 13:43:40.606+00');
/*!40000 ALTER TABLE "movements" ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
