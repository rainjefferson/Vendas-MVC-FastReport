/*
SQLyog Ultimate v8.61 
MySQL - 5.7.36 : Database - sistema_vendas
*********************************************************************
*/ 

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sistema_vendas` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sistema_vendas`;

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `Codigo` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Cidade` varchar(100) DEFAULT NULL,
  `UF` char(2) DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `clientes` */

insert  into `clientes`(`Codigo`,`Nome`,`Cidade`,`UF`) values (1,'Maria de Lourdes','Curitiba','PR'),(2,'José Pedro','Curitiba','PR'),(3,'Joana Soares','Curitiba','PR'),(4,'Marcos Araújo','Curitiba','PR'),(5,'Mariana Santos','Curitiba','PR'),(6,'Patrícia Soares','Curitiba','PR'),(7,'Antonio da Silva','Curitiba','PR'),(8,'Rafaela Joaquina','Florianópolis','SC'),(9,'Vanderlei Padilha','Florianópolis','SC'),(10,'Alessandro Antonio','Florianópolis','SC'),(11,'Anderson Oliviera','Florianópolis','SC'),(12,'Rosilda Paminondas','Florianópolis','SC'),(13,'Ronaldo Silvério','Florianópolis','SC'),(14,'Jorge Carneiro','Florianópolis','SC'),(15,'Kelly da Costa','São Paulo','SP'),(16,'Patrick Tomé','São Paulo','SP'),(17,'Luciano Hallick','São Paulo','SP'),(18,'Guilherme Godoy','São Paulo','SP'),(19,'Fabio Fidalgo','São Paulo','SP'),(20,'Fabricio Menin','São Paulo','SP');

/*Table structure for table `pedidos` */

DROP TABLE IF EXISTS `pedidos`;

CREATE TABLE `pedidos` (
  `Numero_Pedido` int(11) NOT NULL,
  `Data_Emiss` date DEFAULT NULL,
  `Codigo_Cliente` int(11) NOT NULL,
  `Valor_Total` float DEFAULT NULL,
  PRIMARY KEY (`Numero_Pedido`),
  KEY `FK_pedidos` (`Codigo_Cliente`),
  CONSTRAINT `FK_pedidos` FOREIGN KEY (`Codigo_Cliente`) REFERENCES `clientes` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pedidos` */

insert  into `pedidos`(`Numero_Pedido`,`Data_Emiss`,`Codigo_Cliente`,`Valor_Total`) values (1,NULL,4,NULL),(2,'2022-11-08',4,1.99),(3,'2022-11-08',4,2.99),(4,'2022-11-08',6,9.98),(6,'2022-11-08',7,12.97),(7,'2022-11-08',6,21),(8,'2022-11-08',9,3.99),(9,'2022-11-08',7,4.99);

/*Table structure for table `pedidos_itens` */

DROP TABLE IF EXISTS `pedidos_itens`;

CREATE TABLE `pedidos_itens` (
  `Sequencial` int(11) NOT NULL AUTO_INCREMENT,
  `Numero_Pedido` int(11) NOT NULL,
  `Codigo_Produto` int(11) NOT NULL,
  `Quantidade` float DEFAULT NULL,
  `Valor_Unitario` float DEFAULT NULL,
  `Valor_Total` float DEFAULT NULL,
  PRIMARY KEY (`Sequencial`),
  KEY `FK_pedidos_itens` (`Numero_Pedido`),
  KEY `FK_pedidos_itens_prod` (`Codigo_Produto`),
  CONSTRAINT `FK_pedidos_itens` FOREIGN KEY (`Numero_Pedido`) REFERENCES `pedidos` (`Numero_Pedido`) ON DELETE CASCADE,
  CONSTRAINT `FK_pedidos_itens_prod` FOREIGN KEY (`Codigo_Produto`) REFERENCES `produtos` (`Codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `pedidos_itens` */

insert  into `pedidos_itens`(`Sequencial`,`Numero_Pedido`,`Codigo_Produto`,`Quantidade`,`Valor_Unitario`,`Valor_Total`) values (3,1,2,1,2.99,NULL),(4,2,1,1,1.99,1.99),(5,3,3,1,2.99,2.99),(6,4,5,1,3.99,3.99),(7,4,7,1,5.99,5.99),(10,6,5,1,3.99,3.99),(11,6,7,1,5.99,5.99),(12,6,4,1,2.99,2.99),(13,7,1,3,7,21),(14,8,5,1,3.99,3.99),(15,9,6,1,4.99,4.99);

/*Table structure for table `produtos` */

DROP TABLE IF EXISTS `produtos`;

CREATE TABLE `produtos` (
  `Codigo` int(11) NOT NULL,
  `Descricao` varchar(100) DEFAULT NULL,
  `Preco_Venda` float DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `produtos` */

insert  into `produtos`(`Codigo`,`Descricao`,`Preco_Venda`) values (1,'Balde Azul',1.99),(2,'Balde Amarelo',2.99),(3,'Balde Vermelho',2.99),(4,'Balde Roxo',2.99),(5,'Balde Branco',3.99),(6,'Balde Verde',4.99),(7,'Balde Rosa',5.99),(8,'Balde Preto',6.99),(9,'Balde Laranja',7.99),(10,'Balde Prata',8.99),(11,'Vassoura Prata',10.99),(12,'Vassoura Preta',13.99),(13,'Vassoura Azul',14.99),(14,'Vassoura Vermelha',15.99),(15,'Vassoura Branca',17.99),(16,'Vassoura Laranja',18.99),(17,'Vassoura Amarela',19.99),(18,'Vassoura Verde',20.99),(19,'Vassoura Roxa',22.99),(20,'Vassoura Rosa',24.99),(21,'Vassoura Ciano',26.99);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
