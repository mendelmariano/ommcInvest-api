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

-- Copiando estrutura para tabela public.users
CREATE TABLE IF NOT EXISTS "users" (
	"id" UUID NOT NULL DEFAULT gen_random_uuid(),
	"uuid" VARCHAR(255) NULL DEFAULT NULL,
	"name" VARCHAR(255) NOT NULL,
	"whatsapp" VARCHAR(255) NULL DEFAULT NULL,
	"email" VARCHAR(255) NOT NULL,
	"password_hash" VARCHAR(255) NULL DEFAULT NULL,
	"profile_id" INTEGER NOT NULL DEFAULT 1,
	"created_at" TIMESTAMPTZ NOT NULL,
	"updated_at" TIMESTAMPTZ NOT NULL,
	PRIMARY KEY ("id"),
	UNIQUE INDEX "users_email_key" ("email"),
	CONSTRAINT "users_profile_id_fkey" FOREIGN KEY ("profile_id") REFERENCES "profiles" ("id") ON UPDATE CASCADE ON DELETE CASCADE
);

-- Copiando dados para a tabela public.users: -1 rows
/*!40000 ALTER TABLE "users" DISABLE KEYS */;
INSERT INTO "users" ("id", "uuid", "name", "whatsapp", "email", "password_hash", "profile_id", "created_at", "updated_at") VALUES
	('c35aa600-51f0-422c-bdf1-ac12c9bb13ab', NULL, 'Administator', '62992111954', 'mendelbsi@gmail.com', '$2a$08$6cSNgbcNdX.QNC00JeT6tuWAUd8fjL81D6n3FI8pnGZz1a0e1nGB2', 2, '2024-03-04 19:22:11.22+00', '2024-03-04 19:22:11.22+00'),
	('0f8d7a7b-fd77-40d6-9b9f-d63d7d61e7e7', NULL, 'OTOMAR COSTA E SILVA JUNIOR', '69999766126', 'otomarocsj@fab.mil.br', '$2a$08$ip1Dnan8uFF2vSm5w1tCdOLzOaerudy9MmEcazLWGyH1Yow6kZ4ky', 1, '2024-03-07 19:46:19.654+00', '2024-03-07 19:46:19.654+00'),
	('be96594f-992b-40ee-ac3c-6a5032d6f822', NULL, 'teste mendel', '62992111958', 'mendelteste@email.com', '$2a$08$Wc022hrB9EKVAdEazxZ6UelK1x7zSBBIcCw8Mn4k9xi/UJikFulPa', 1, '2024-03-19 16:47:25.291+00', '2024-03-19 16:47:25.291+00'),
	('d2da6d15-79c7-4044-8727-8d028264ebdf', NULL, '2S MENDEL BAAN', NULL, 'mendelmmc@fab.mil.br', '$2a$08$Yn7tAnimtyHhSGbLTdADjuKcb5otlw9bQOau4t8S0/g.KLCjCzzNe', 2, '2024-03-05 12:42:15.44+00', '2024-03-19 17:11:44.715+00'),
	('c0ca561c-59b9-4f9c-8041-6b7660b02c3b', NULL, 'S2 SERGIO GSAU-AN', NULL, 'tp.sergiogsmr@fab.mil.br', '$2a$08$hkKn.z/GOz.jg3nhft1couI8IKtG7hLIbC1MADAkxwiURyrcGBDxa', 1, '2024-04-12 14:27:49.081+00', '2024-04-12 14:27:49.081+00'),
	('c23ee427-dd79-4b3e-9515-00c37385d3d5', NULL, 'RONALDO DA SILVA PAIXÃO', '62999532638', 'TRIMEGISTO77@GMAIL.COM', '$2a$08$n6eR2/7guzuKdB2.tHQMBuJG7RGJRApmQOnAk7iNBPwxLhlo7UCX2', 1, '2024-05-08 13:58:54.806+00', '2024-05-08 13:58:54.806+00'),
	('c001ec6f-ec56-4d0a-a25b-98961b82d430', NULL, 'TC JULIANA PORTO BAAN', NULL, 'julianaportojbp@fab.mil.br', '$2a$08$1RvAZ1RXytvzcDKR22qgZurPmtavqYNwbg7fG4YSbjxnIevXbEICu', 1, '2024-06-13 13:44:59.07+00', '2024-06-13 13:44:59.07+00'),
	('d34c4dc2-80fa-42fa-b1d7-1b28a9ccc6a7', NULL, 'S2 NATHAN FERREIRA 1-GDA', NULL, 'tp.nathanferreiranajf@fab.mil.br', '$2a$08$fy4SH4Mtl7XtKTN.zWiquegTo//5aIjUeIjPEIYDCWS.FHDQFzAUS', 1, '2024-06-25 16:08:26.568+00', '2024-06-25 16:08:26.568+00'),
	('97ca388c-f74b-42d6-9f62-027fba7f8c56', NULL, 'ADRYANNE DE OLIVEIRA CRUZ', '62991269270', 'adryanneocruz@gmail.com', '$2a$08$hDo0AnK8dSJnn4j6gIZTyOlLD1fIY9RTZ5.nKYRQxhNDlUt7VIqxq', 1, '2024-06-25 17:42:36.439+00', '2024-06-25 17:42:36.439+00');
/*!40000 ALTER TABLE "users" ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
