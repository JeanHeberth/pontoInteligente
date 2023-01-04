/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

CREATE TABLE `empresa` (
  `id` bigint NOT NULL,
  `cnpj` varchar(255) NOT NULL,
  `data_atualizacao` datetime(6) NOT NULL,
  `data_criacao` datetime(6) NOT NULL,
  `razao_social` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `funcionario` (
  `id` bigint NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `data_atualizacao` datetime(6) NOT NULL,
  `data_criacao` datetime(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `perfil` varchar(255) NOT NULL,
  `qtd_horas_almoco` float DEFAULT NULL,
  `qtd_horas_trabalho_dia` float DEFAULT NULL,
  `senha` varchar(255) NOT NULL,
  `valor_hora` decimal(38,2) DEFAULT NULL,
  `empresa_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4cm1kg523jlopyexjbmi6y54j` (`empresa_id`),
  CONSTRAINT `FK4cm1kg523jlopyexjbmi6y54j` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
CREATE TABLE `lancamento` (
  `id` bigint NOT NULL,
  `data` datetime(6) NOT NULL,
  `data_atualizacao` datetime(6) NOT NULL,
  `data_criacao` datetime(6) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `localizacao` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) NOT NULL,
  `funcionario_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK46i4k5vl8wah7feutye9kbpi4` (`funcionario_id`),
  CONSTRAINT `FK46i4k5vl8wah7feutye9kbpi4` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;