-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: broadleaf
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blc_additional_offer_info`
--

DROP TABLE IF EXISTS `blc_additional_offer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_additional_offer_info` (
  `BLC_ORDER_ORDER_ID` bigint(20) NOT NULL,
  `OFFER_INFO_ID` bigint(20) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`BLC_ORDER_ORDER_ID`,`OFFER_ID`),
  KEY `FK3BFDBD63B5D9C34D` (`OFFER_INFO_ID`),
  KEY `FK3BFDBD63D5F3FAF4` (`OFFER_ID`),
  KEY `FK3BFDBD631891FF79` (`BLC_ORDER_ORDER_ID`),
  CONSTRAINT `FK3BFDBD631891FF79` FOREIGN KEY (`BLC_ORDER_ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`),
  CONSTRAINT `FK3BFDBD63B5D9C34D` FOREIGN KEY (`OFFER_INFO_ID`) REFERENCES `blc_offer_info` (`OFFER_INFO_ID`),
  CONSTRAINT `FK3BFDBD63D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_additional_offer_info`
--

LOCK TABLES `blc_additional_offer_info` WRITE;
/*!40000 ALTER TABLE `blc_additional_offer_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_additional_offer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_address`
--

DROP TABLE IF EXISTS `blc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_address` (
  `ADDRESS_ID` bigint(20) NOT NULL,
  `ADDRESS_LINE1` varchar(255) NOT NULL,
  `ADDRESS_LINE2` varchar(255) DEFAULT NULL,
  `ADDRESS_LINE3` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) NOT NULL,
  `COMPANY_NAME` varchar(255) DEFAULT NULL,
  `COUNTY` varchar(255) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `FAX` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `FULL_NAME` varchar(255) DEFAULT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `IS_BUSINESS` tinyint(1) DEFAULT NULL,
  `IS_DEFAULT` tinyint(1) DEFAULT NULL,
  `IS_MAILING` tinyint(1) DEFAULT NULL,
  `IS_STREET` tinyint(1) DEFAULT NULL,
  `ISO_COUNTRY_SUB` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `POSTAL_CODE` varchar(255) DEFAULT NULL,
  `PRIMARY_PHONE` varchar(255) DEFAULT NULL,
  `SECONDARY_PHONE` varchar(255) DEFAULT NULL,
  `STANDARDIZED` tinyint(1) DEFAULT NULL,
  `SUB_STATE_PROV_REG` varchar(255) DEFAULT NULL,
  `TOKENIZED_ADDRESS` varchar(255) DEFAULT NULL,
  `VERIFICATION_LEVEL` varchar(255) DEFAULT NULL,
  `ZIP_FOUR` varchar(255) DEFAULT NULL,
  `COUNTRY` varchar(255) DEFAULT NULL,
  `ISO_COUNTRY_ALPHA2` varchar(255) DEFAULT NULL,
  `PHONE_FAX_ID` bigint(20) DEFAULT NULL,
  `PHONE_PRIMARY_ID` bigint(20) DEFAULT NULL,
  `PHONE_SECONDARY_ID` bigint(20) DEFAULT NULL,
  `STATE_PROV_REGION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ADDRESS_ID`),
  KEY `ADDRESS_COUNTRY_INDEX` (`COUNTRY`),
  KEY `ADDRESS_ISO_COUNTRY_IDX` (`ISO_COUNTRY_ALPHA2`),
  KEY `ADDRESS_PHONE_FAX_IDX` (`PHONE_FAX_ID`),
  KEY `ADDRESS_PHONE_PRI_IDX` (`PHONE_PRIMARY_ID`),
  KEY `ADDRESS_PHONE_SEC_IDX` (`PHONE_SECONDARY_ID`),
  KEY `ADDRESS_STATE_INDEX` (`STATE_PROV_REGION`),
  KEY `FK299F86CEA46E16CF` (`COUNTRY`),
  KEY `FK299F86CE3A39A488` (`ISO_COUNTRY_ALPHA2`),
  KEY `FK299F86CEF1A6533F` (`PHONE_FAX_ID`),
  KEY `FK299F86CEBF4449BA` (`PHONE_PRIMARY_ID`),
  KEY `FK299F86CEE12DC0C8` (`PHONE_SECONDARY_ID`),
  KEY `FK299F86CE337C4D50` (`STATE_PROV_REGION`),
  CONSTRAINT `FK299F86CE337C4D50` FOREIGN KEY (`STATE_PROV_REGION`) REFERENCES `blc_state` (`ABBREVIATION`),
  CONSTRAINT `FK299F86CE3A39A488` FOREIGN KEY (`ISO_COUNTRY_ALPHA2`) REFERENCES `blc_iso_country` (`ALPHA_2`),
  CONSTRAINT `FK299F86CEA46E16CF` FOREIGN KEY (`COUNTRY`) REFERENCES `blc_country` (`ABBREVIATION`),
  CONSTRAINT `FK299F86CEBF4449BA` FOREIGN KEY (`PHONE_PRIMARY_ID`) REFERENCES `blc_phone` (`PHONE_ID`),
  CONSTRAINT `FK299F86CEE12DC0C8` FOREIGN KEY (`PHONE_SECONDARY_ID`) REFERENCES `blc_phone` (`PHONE_ID`),
  CONSTRAINT `FK299F86CEF1A6533F` FOREIGN KEY (`PHONE_FAX_ID`) REFERENCES `blc_phone` (`PHONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_address`
--

LOCK TABLES `blc_address` WRITE;
/*!40000 ALTER TABLE `blc_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_module`
--

DROP TABLE IF EXISTS `blc_admin_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_module` (
  `ADMIN_MODULE_ID` bigint(20) NOT NULL,
  `DISPLAY_ORDER` int(11) DEFAULT NULL,
  `ICON` varchar(255) DEFAULT NULL,
  `MODULE_KEY` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ADMIN_MODULE_ID`),
  KEY `ADMINMODULE_NAME_INDEX` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_module`
--

LOCK TABLES `blc_admin_module` WRITE;
/*!40000 ALTER TABLE `blc_admin_module` DISABLE KEYS */;
INSERT INTO `blc_admin_module` VALUES (-9,250,'blc-icon-inventory','BLCInventory','Inventory'),(-8,150,'fa fa-usd','BLCPricing','Pricing'),(-7,500,'blc-icon-site-updates','BLCWorkflow','Site Updates'),(-6,400,'blc-icon-design','BLCDesign','Design'),(-5,700,'blc-icon-settings','BLCModuleConfiguration','Settings'),(-4,600,'blc-icon-security','BLCOpenAdmin','Security'),(-3,550,'blc-icon-customer-care','BLCCustomerCare','Customer Care'),(-2,200,'blc-icon-content','BLCContentManagement','Content'),(-1,100,'blc-icon-catalog','BLCMerchandising','Catalog'),(10000,3000,'blc-icon-search','Boost','Solr Boost');
/*!40000 ALTER TABLE `blc_admin_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_password_token`
--

DROP TABLE IF EXISTS `blc_admin_password_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_password_token` (
  `PASSWORD_TOKEN` varchar(255) NOT NULL,
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `TOKEN_USED_DATE` datetime DEFAULT NULL,
  `TOKEN_USED_FLAG` tinyint(1) NOT NULL,
  PRIMARY KEY (`PASSWORD_TOKEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_password_token`
--

LOCK TABLES `blc_admin_password_token` WRITE;
/*!40000 ALTER TABLE `blc_admin_password_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_admin_password_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_permission`
--

DROP TABLE IF EXISTS `blc_admin_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_permission` (
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `IS_FRIENDLY` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `PERMISSION_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_permission`
--

LOCK TABLES `blc_admin_permission` WRITE;
/*!40000 ALTER TABLE `blc_admin_permission` DISABLE KEYS */;
INSERT INTO `blc_admin_permission` VALUES (-27003,'Maintain Menus',1,'PERMISSION_MENU','ALL'),(-27002,'View Menus',1,'PERMISSION_MENU','READ'),(-27001,'All Menu',NULL,'PERMISSION_ALL_MENU','ALL'),(-27000,'Read Menu',NULL,'PERMISSION_READ_MENU','READ'),(-200,'Read Page Template',0,'PERMISSION_READ_PAGE_TEMPLATE','READ'),(-161,'Maintain Field Definitions',1,'PERMISSION_FLDDEF_ALL','ALL'),(-160,'View Field Definitions',1,'PERMISSION_FLDDEF_VIEW','READ'),(-151,'Maintain Permissions',1,'PERMISSION_PERM_ALL','ALL'),(-150,'View Permissions',1,'PERMISSION_PERM_VIEW','READ'),(-141,'Maintain Roles',1,'PERMISSION_ROLE_ALL','ALL'),(-140,'View Roles',1,'PERMISSION_ROLE_VIEW','READ'),(-131,'Maintain Translations',1,'PERMISSION_TRANSLATION','ALL'),(-130,'View Translations',1,'PERMISSION_TRANSLATION','READ'),(-127,'Maintain Module Configurations',1,'PERMISSION_MODULECONFIGURATION','ALL'),(-126,'View Module Configurations',1,'PERMISSION_MODULECONFIGURATION','READ'),(-121,'Maintain Users',1,'PERMISSION_USER','ALL'),(-120,'View Users',1,'PERMISSION_USER','READ'),(-119,'Maintain Customers',1,'PERMISSION_CUSTOMER','ALL'),(-118,'View Customers',1,'PERMISSION_CUSTOMER','READ'),(-115,'Maintain URL Redirects',1,'PERMISSION_URLREDIRECT','ALL'),(-114,'View URL Redirects',1,'PERMISSION_URLREDIRECT','READ'),(-111,'Maintain Assets',1,'PERMISSION_ASSET','ALL'),(-110,'View Assets',1,'PERMISSION_ASSET','READ'),(-109,'Maintain Pages',1,'PERMISSION_PAGE','ALL'),(-108,'View Pages',1,'PERMISSION_PAGE','READ'),(-107,'Maintain Offers',1,'PERMISSION_OFFER','ALL'),(-106,'View Offers',1,'PERMISSION_OFFER','READ'),(-105,'Maintain Product Options',1,'PERMISSION_PRODUCTOPTIONS','ALL'),(-104,'View Product Options',1,'PERMISSION_PRODUCTOPTIONS','READ'),(-103,'Maintain Products',1,'PERMISSION_PRODUCT','ALL'),(-102,'View Products',1,'PERMISSION_PRODUCT','READ'),(-101,'Maintain Categories',1,'PERMISSION_CATEGORY','ALL'),(-100,'View Categories',1,'PERMISSION_CATEGORY','READ'),(-55,'All ISO COUNTRIES',0,'PERMISSION_ALL_ISO_COUNTRIES','ALL'),(-54,'Read ISO Countries',0,'PERMISSION_READ_ISO_COUNTRIES','READ'),(-53,'All Catalog Permissions',0,'PERMISSION_ALL_CATALOG_PERMS','ALL'),(-52,'Read Catalog Permissions',0,'PERMISSION_READ_CATALOG_PERMS','READ'),(-51,'All Field Definitions',0,'PERMISSION_ALL_FIELD_DEFS','ALL'),(-50,'Read Field Definitions',0,'PERMISSION_READ_FIELD_DEFS','READ'),(-49,'All Admin Permissions',0,'PERMISSION_ALL_ADMIN_PERMS','ALL'),(-48,'Read Admin Permissions',0,'PERMISSION_READ_ADMIN_PERMS','READ'),(-47,'All Admin Roles',0,'PERMISSION_ALL_ADMIN_ROLES','ALL'),(-46,'Read Admin Roles',0,'PERMISSION_READ_ADMIN_ROLES','READ'),(-45,'All System Property',0,'PERMISSION_ALL_SYSTEM_PROPERTY','ALL'),(-44,'Read System Property',0,'PERMISSION_READ_SYSTEM_PROPERTY','READ'),(-43,'All Site Map Gen Configuration',0,'PERMISSION_ALL_SITE_MAP_GEN_CONFIG','ALL'),(-42,'Read Site Map Gen Configuration',0,'PERMISSION_READ_SITE_MAP_GEN_CONFIG','READ'),(-41,'All Translation',0,'PERMISSION_ALL_TRANSLATION','ALL'),(-40,'Read Translation',0,'PERMISSION_READ_TRANSLATION','READ'),(-39,'All Enumeration',0,'PERMISSION_ALL_ENUMERATION','ALL'),(-38,'Read Enumeration',0,'PERMISSION_READ_ENUMERATION','READ'),(-37,'All Configuration',0,'PERMISSION_ALL_MODULECONFIGURATION','ALL'),(-36,'Read Configuration',0,'PERMISSION_READ_MODULECONFIGURATION','READ'),(-35,'All Currency',0,'PERMISSION_ALL_CURRENCY','ALL'),(-34,'Read Currency',0,'PERMISSION_READ_CURRENCY','READ'),(-33,'All SearchFacet',0,'PERMISSION_ALL_SEARCHFACET','ALL'),(-32,'Read SearchFacet',0,'PERMISSION_READ_SEARCHFACET','READ'),(-31,'All SearchRedirect',0,'PERMISSION_ALL_SEARCHREDIRECT','ALL'),(-30,'Read SearchRedirect',0,'PERMISSION_READ_SEARCHREDIRECT','READ'),(-29,'All URLHandler',0,'PERMISSION_ALL_URLHANDLER','ALL'),(-28,'Read URLHandler',0,'PERMISSION_READ_URLHANDLER','READ'),(-27,'All Admin User',0,'PERMISSION_ALL_ADMIN_USER','ALL'),(-26,'Read Admin User',0,'PERMISSION_READ_ADMIN_USER','READ'),(-23,'All Asset',0,'PERMISSION_ALL_ASSET','ALL'),(-22,'Read Asset',0,'PERMISSION_READ_ASSET','READ'),(-21,'All Page',0,'PERMISSION_ALL_PAGE','ALL'),(-20,'Read Page',0,'PERMISSION_READ_PAGE','READ'),(-19,'All Customer',0,'PERMISSION_ALL_CUSTOMER','ALL'),(-18,'Read Customer',0,'PERMISSION_READ_CUSTOMER','READ'),(-17,'All Order Item',0,'PERMISSION_ALL_ORDER_ITEM','ALL'),(-16,'Read Order Item',0,'PERMISSION_READ_ORDER_ITEM','READ'),(-15,'All Fulfillment Group',0,'PERMISSION_ALL_FULFILLMENT_GROUP','ALL'),(-14,'Read Fulfillment Group',0,'PERMISSION_READ_FULFILLMENT_GROUP','READ'),(-13,'All Order',0,'PERMISSION_ALL_ORDER','ALL'),(-12,'Read Order',0,'PERMISSION_READ_ORDER','READ'),(-11,'All Promotion',0,'PERMISSION_ALL_PROMOTION','ALL'),(-10,'Read Promotion',0,'PERMISSION_READ_PROMOTION','READ'),(-9,'All Sku',0,'PERMISSION_ALL_SKU','ALL'),(-8,'Read Sku',0,'PERMISSION_READ_SKU','READ'),(-7,'All Product Option',0,'PERMISSION_ALL_PRODUCT_OPTION','ALL'),(-6,'Read Product Option',0,'PERMISSION_READ_PRODUCT_OPTION','READ'),(-5,'All Product',0,'PERMISSION_ALL_PRODUCT','ALL'),(-4,'Read Product',0,'PERMISSION_READ_PRODUCT','READ'),(-3,'All Category',0,'PERMISSION_ALL_CATEGORY','ALL'),(-2,'Read Category',0,'PERMISSION_READ_CATEGORY','READ'),(-1,'Default Permission',0,'PERMISSION_OTHER_DEFAULT','OTHER'),(32000,'Read Solr boost field value',0,'PERMISSION_READ_SOLR_BOOST_FIELD_VALUE','READ'),(32001,'All Solr boost field value',0,'PERMISSION_ALL_SOLR_BOOST_FIELD_VALUE','ALL'),(32002,'View Solr boost field value',1,'PERMISSION_SOLR_BOOST_FIELD_VALUE_VIEW','READ'),(32003,'Maintain Solr boost field value',1,'PERMISSION_SOLR_BOOST_FIELD_VALUE_ALL','ALL'),(32004,'Read Solr boost values',0,'PERMISSION_READ_SOLR_BOOST_VALUES_CLASS','READ'),(32005,'All solr boost values ',0,'PERMISSION_ALL_SOLR_BOOST_VALUES','ALL'),(32006,'View solr boost values',1,'PERMISSION_SOLR_BOOST_VALUES_VIEW','READ'),(32007,'Maintain solr boost values',1,'PERMISSION_SOLR_BOOST_VALUES_ALL','ALL'),(32008,'Read Solr Boost Details',0,'PERMISSION_READ_SOLR BOOST DETAILS','READ'),(32009,'All Solr Boost Details',0,'PERMISSION_ALL_SOLR BOOST DETAILS','ALL'),(32010,'View Solr Boost Details',1,'PERMISSION_SOLR BOOST DETAILS_VIEW','READ'),(32011,'Maintain Solr Boost Details',1,'PERMISSION_SOLR BOOST DETAILS_ALL','ALL'),(32012,'Read Boost Category',0,'PERMISSION_READ_BOOST_CATEGORY','READ'),(32013,'All Boost Category',0,'PERMISSION_ALL_BOOST_CATEGORY','ALL'),(32014,'View Boost Category',1,'PERMISSION_BOOST_CATEGORY_VIEW','READ'),(32015,'Maintain Boost Category',1,'PERMISSION_BOOST_CATEGORY_ALL','ALL'),(32016,'Read Boost Product',0,'PERMISSION_READ_BOOST_PRODUCT','READ'),(32017,'All Boost Product',0,'PERMISSION_ALL_BOOST_PRODUCT','ALL'),(32018,'View Boost Product',1,'PERMISSION_BOOST_PRODUCT_VIEW','READ'),(32019,'Maintain Boost Product',1,'PERMISSION_BOOST_PRODUCT_ALL','ALL'),(32020,'Read Boost Query',0,'PERMISSION_READ_BOOST_QUERY','READ'),(32021,'All Boost Query',0,'PERMISSION_ALL_BOOST_QUERY','ALL'),(32022,'View Boost Query',1,'PERMISSION_BOOST_QUERY_VIEW','READ'),(32023,'Maintain Boost Query',1,'PERMISSION_BOOST_QUERY_ALL','ALL');
/*!40000 ALTER TABLE `blc_admin_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_permission_entity`
--

DROP TABLE IF EXISTS `blc_admin_permission_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_permission_entity` (
  `ADMIN_PERMISSION_ENTITY_ID` bigint(20) NOT NULL,
  `CEILING_ENTITY` varchar(255) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ENTITY_ID`),
  KEY `FK23C09E3DE88B7D38` (`ADMIN_PERMISSION_ID`),
  CONSTRAINT `FK23C09E3DE88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `blc_admin_permission` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_permission_entity`
--

LOCK TABLES `blc_admin_permission_entity` WRITE;
/*!40000 ALTER TABLE `blc_admin_permission_entity` DISABLE KEYS */;
INSERT INTO `blc_admin_permission_entity` VALUES (-27003,'org.broadleafcommerce.menu.domain.MenuItem',-27001),(-27002,'org.broadleafcommerce.menu.domain.MenuItem',-27000),(-27001,'org.broadleafcommerce.menu.domain.Menu',-27001),(-27000,'org.broadleafcommerce.menu.domain.Menu',-27000),(-1011,'org.broadleafcommerce.common.i18n.domain.ISOCountry',-55),(-1010,'org.broadleafcommerce.common.i18n.domain.ISOCountry',-54),(-1003,'org.broadleafcommerce.common.site.domain.Site',-53),(-1002,'org.broadleafcommerce.common.site.domain.Site',-52),(-1001,'org.broadleafcommerce.common.site.domain.Catalog',-53),(-1000,'org.broadleafcommerce.common.site.domain.Catalog',-52),(-991,'org.broadleafcommerce.cms.field.domain.FieldDefinition',-51),(-990,'org.broadleafcommerce.cms.field.domain.FieldDefinition',-50),(-983,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermissionQualifiedEntity',-48),(-982,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermissionQualifiedEntity',-49),(-981,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermission',-48),(-980,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermission',-49),(-971,'org.broadleafcommerce.openadmin.server.security.domain.AdminRole',-47),(-970,'org.broadleafcommerce.openadmin.server.security.domain.AdminRole',-46),(-961,'org.broadleafcommerce.common.config.domain.SystemProperty',-45),(-960,'org.broadleafcommerce.common.config.domain.SystemProperty',-44),(-953,'org.broadleafcommerce.common.sitemap.domain.SiteMapURLEntry',-43),(-952,'org.broadleafcommerce.common.sitemap.domain.SiteMapURLEntry',-42),(-951,'org.broadleafcommerce.common.sitemap.domain.SiteMapGeneratorConfiguration',-43),(-950,'org.broadleafcommerce.common.sitemap.domain.SiteMapGeneratorConfiguration',-42),(-911,'org.broadleafcommerce.common.i18n.domain.Translation',-41),(-910,'org.broadleafcommerce.common.i18n.domain.Translation',-40),(-903,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumerationValue',-39),(-902,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumerationValue',-38),(-901,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumeration',-39),(-900,'org.broadleafcommerce.common.enumeration.domain.DataDrivenEnumeration',-38),(-881,'org.broadleafcommerce.common.config.domain.ModuleConfiguration',-37),(-880,'org.broadleafcommerce.common.config.domain.ModuleConfiguration',-36),(-851,'org.broadleafcommerce.common.currency.domain.BroadleafCurrency',-35),(-850,'org.broadleafcommerce.common.currency.domain.BroadleafCurrency',-34),(-813,'org.broadleafcommerce.core.search.domain.IndexFieldType',-33),(-812,'org.broadleafcommerce.core.search.domain.IndexFieldType',-32),(-811,'org.broadleafcommerce.core.search.domain.IndexField',-33),(-810,'org.broadleafcommerce.core.search.domain.IndexField',-32),(-809,'org.broadleafcommerce.core.search.domain.CategoryExcludedSearchFacet',-33),(-808,'org.broadleafcommerce.core.search.domain.CategoryExcludedSearchFacet',-32),(-807,'org.broadleafcommerce.core.search.domain.SearchFacetRange',-33),(-806,'org.broadleafcommerce.core.search.domain.SearchFacetRange',-32),(-805,'org.broadleafcommerce.core.search.domain.CategorySearchFacet',-33),(-804,'org.broadleafcommerce.core.search.domain.CategorySearchFacet',-32),(-803,'org.broadleafcommerce.core.search.domain.Field',-33),(-802,'org.broadleafcommerce.core.search.domain.Field',-32),(-801,'org.broadleafcommerce.core.search.domain.SearchFacet',-33),(-800,'org.broadleafcommerce.core.search.domain.SearchFacet',-32),(-781,'org.broadleafcommerce.core.search.redirect.domain.SearchRedirect',-31),(-780,'org.broadleafcommerce.core.search.redirect.domain.SearchRedirect',-30),(-753,'org.broadleafcommerce.common.locale.domain.Locale',-29),(-752,'org.broadleafcommerce.common.locale.domain.Locale',-28),(-751,'org.broadleafcommerce.cms.url.domain.URLHandler',-29),(-750,'org.broadleafcommerce.cms.url.domain.URLHandler',-28),(-721,'org.broadleafcommerce.openadmin.server.security.domain.AdminUser',-27),(-720,'org.broadleafcommerce.openadmin.server.security.domain.AdminUser',-26),(-603,'org.broadleafcommerce.cms.file.domain.StaticAssetFolder',-23),(-602,'org.broadleafcommerce.cms.file.domain.StaticAssetFolder',-22),(-601,'org.broadleafcommerce.cms.file.domain.StaticAsset',-23),(-600,'org.broadleafcommerce.cms.file.domain.StaticAsset',-22),(-557,'org.broadleafcommerce.common.locale.domain.Locale',-21),(-556,'org.broadleafcommerce.common.locale.domain.Locale',-20),(-555,'org.broadleafcommerce.cms.page.domain.PageItemCriteria',-21),(-554,'org.broadleafcommerce.cms.page.domain.PageItemCriteria',-20),(-552,'org.broadleafcommerce.cms.page.domain.PageTemplate',-200),(-551,'org.broadleafcommerce.cms.page.domain.Page',-21),(-550,'org.broadleafcommerce.cms.page.domain.Page',-20),(-514,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-19),(-513,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-18),(-512,'org.broadleafcommerce.profile.core.domain.CustomerPhone',-19),(-511,'org.broadleafcommerce.profile.core.domain.CustomerPhone',-18),(-510,'org.broadleafcommerce.profile.core.domain.CustomerPayment',-19),(-509,'org.broadleafcommerce.profile.core.domain.CustomerPayment',-18),(-508,'org.broadleafcommerce.profile.core.domain.CustomerAddress',-19),(-507,'org.broadleafcommerce.profile.core.domain.CustomerAddress',-18),(-506,'org.broadleafcommerce.profile.core.domain.CustomerAttribute',-19),(-504,'org.broadleafcommerce.profile.core.domain.CustomerAttribute',-18),(-503,'org.broadleafcommerce.profile.core.domain.ChallengeQuestion',-19),(-502,'org.broadleafcommerce.profile.core.domain.ChallengeQuestion',-18),(-501,'org.broadleafcommerce.profile.core.domain.Customer',-19),(-500,'org.broadleafcommerce.profile.core.domain.Customer',-18),(-461,'org.broadleafcommerce.core.order.domain.BundleOrderItemFeePriceImpl',-17),(-460,'org.broadleafcommerce.core.order.domain.BundleOrderItemFeePriceImpl',-16),(-459,'org.broadleafcommerce.core.order.domain.OrderItemPriceDetailImpl',-17),(-458,'org.broadleafcommerce.core.order.domain.OrderItemPriceDetailImpl',-16),(-457,'org.broadleafcommerce.core.offer.domain.OrderItemPriceDetailAdjustmentImpl',-17),(-456,'org.broadleafcommerce.core.offer.domain.OrderItemPriceDetailAdjustmentImpl',-16),(-455,'org.broadleafcommerce.core.offer.domain.OrderItemAdjustment',-17),(-454,'org.broadleafcommerce.core.offer.domain.OrderItemAdjustment',-16),(-453,'org.broadleafcommerce.core.order.domain.DiscreteOrderItemFeePrice',-17),(-452,'org.broadleafcommerce.core.order.domain.DiscreteOrderItemFeePrice',-16),(-451,'org.broadleafcommerce.core.order.domain.OrderItem',-17),(-450,'org.broadleafcommerce.core.order.domain.OrderItem',-16),(-407,'org.broadleafcommerce.core.order.domain.FulfillmentGroupItemImpl',-15),(-406,'org.broadleafcommerce.core.order.domain.FulfillmentGroupItemImpl',-14),(-405,'org.broadleafcommerce.core.order.domain.FulfillmentGroupFeeImpl',-15),(-404,'org.broadleafcommerce.core.order.domain.FulfillmentGroupFeeImpl',-14),(-403,'org.broadleafcommerce.core.offer.domain.FulfillmentGroupAdjustment',-15),(-402,'org.broadleafcommerce.core.offer.domain.FulfillmentGroupAdjustment',-14),(-401,'org.broadleafcommerce.core.order.domain.FulfillmentGroup',-15),(-400,'org.broadleafcommerce.core.order.domain.FulfillmentGroup',-14),(-370,'org.broadleafcommerce.core.payment.domain.PaymentTransactionImpl',-13),(-369,'org.broadleafcommerce.core.payment.domain.PaymentTransactionImpl',-12),(-368,'org.broadleafcommerce.profile.core.domain.State',-13),(-367,'org.broadleafcommerce.profile.core.domain.State',-12),(-366,'org.broadleafcommerce.profile.core.domain.Country',-13),(-365,'org.broadleafcommerce.profile.core.domain.Country',-12),(-361,'org.broadleafcommerce.core.payment.domain.OrderPayment',-13),(-360,'org.broadleafcommerce.core.payment.domain.OrderPayment',-12),(-356,'org.broadleafcommerce.core.offer.domain.OrderAdjustment',-13),(-355,'org.broadleafcommerce.core.offer.domain.OrderAdjustment',-12),(-351,'org.broadleafcommerce.core.order.domain.Order',-13),(-350,'org.broadleafcommerce.core.order.domain.Order',-12),(-307,'org.broadleafcommerce.core.offer.domain.OfferTier',-11),(-306,'org.broadleafcommerce.core.offer.domain.OfferTier',-10),(-305,'org.broadleafcommerce.core.offer.domain.OfferCode',-11),(-304,'org.broadleafcommerce.core.offer.domain.OfferCode',-10),(-303,'org.broadleafcommerce.core.offer.domain.OfferItemCriteria',-11),(-302,'org.broadleafcommerce.core.offer.domain.OfferItemCriteria',-10),(-301,'org.broadleafcommerce.core.offer.domain.Offer',-11),(-300,'org.broadleafcommerce.core.offer.domain.Offer',-10),(-251,'org.broadleafcommerce.core.catalog.domain.Sku',-9),(-250,'org.broadleafcommerce.core.catalog.domain.Sku',-8),(-207,'org.broadleafcommerce.core.catalog.domain.SkuProductOptionValueXref',-7),(-206,'org.broadleafcommerce.core.catalog.domain.SkuProductOptionValueXref',-6),(-205,'org.broadleafcommerce.core.catalog.domain.ProductOptionXref',-7),(-204,'org.broadleafcommerce.core.catalog.domain.ProductOptionXref',-6),(-203,'org.broadleafcommerce.core.catalog.domain.ProductOptionValue',-7),(-202,'org.broadleafcommerce.core.catalog.domain.ProductOptionValue',-6),(-201,'org.broadleafcommerce.core.catalog.domain.ProductOption',-7),(-200,'org.broadleafcommerce.core.catalog.domain.ProductOption',-6),(-107,'org.broadleafcommerce.core.catalog.domain.SkuBundleItemImpl',-5),(-106,'org.broadleafcommerce.core.catalog.domain.SkuBundleItemImpl',-4),(-105,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-5),(-104,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-4),(-103,'org.broadleafcommerce.core.catalog.domain.ProductAttribute',-5),(-102,'org.broadleafcommerce.core.catalog.domain.ProductAttribute',-4),(-101,'org.broadleafcommerce.core.catalog.domain.Product',-5),(-100,'org.broadleafcommerce.core.catalog.domain.Product',-4),(-14,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-3),(-13,'org.broadleafcommerce.core.catalog.domain.UpSaleProductImpl',-2),(-12,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-3),(-11,'org.broadleafcommerce.core.catalog.domain.CrossSaleProductImpl',-2),(-10,'org.broadleafcommerce.core.catalog.domain.FeaturedProductImpl',-3),(-9,'org.broadleafcommerce.core.catalog.domain.FeaturedProductImpl',-2),(-8,'org.broadleafcommerce.core.catalog.domain.CategoryXrefImpl',-3),(-7,'org.broadleafcommerce.core.catalog.domain.CategoryXrefImpl',-2),(-6,'org.broadleafcommerce.core.catalog.domain.CategoryProductXrefImpl',-3),(-5,'org.broadleafcommerce.core.catalog.domain.CategoryProductXrefImpl',-2),(-4,'org.broadleafcommerce.core.catalog.domain.CategoryAttribute',-3),(-3,'org.broadleafcommerce.core.catalog.domain.CategoryAttribute',-2),(-2,'org.broadleafcommerce.core.catalog.domain.Category',-3),(-1,'org.broadleafcommerce.core.catalog.domain.Category',-2),(32000,'com.mycompany.core.solr.boost.domain.SolrBoostFieldValue',32000),(32001,'com.mycompany.core.solr.boost.domain.SolrBoostFieldValue',32001),(32002,'com.mycompany.core.solr.boost.domain.SolrBoostValues',32004),(32003,'com.mycompany.core.solr.boost.domain.SolrBoostValues',32005),(32004,'com.mycompany.core.solr.boost.domain.SolrBoostDetails',32008),(32005,'com.mycompany.core.solr.boost.domain.SolrBoostDetails',32009),(32006,'com.mycompany.core.solr.boost.domain.BoostCategory',32012),(32007,'com.mycompany.core.solr.boost.domain.BoostCategory',32013),(32008,'com.mycompany.core.solr.boost.domain.BoostProduct',32016),(32009,'com.mycompany.core.solr.boost.domain.BoostProduct',32017),(32010,'com.mycompany.core.solr.boost.domain.BoostQuery',32020),(32011,'com.mycompany.core.solr.boost.domain.BoostQuery',32021);
/*!40000 ALTER TABLE `blc_admin_permission_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_permission_xref`
--

DROP TABLE IF EXISTS `blc_admin_permission_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_permission_xref` (
  `CHILD_PERMISSION_ID` bigint(20) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  KEY `FKBCAD1F5E88B7D38` (`ADMIN_PERMISSION_ID`),
  KEY `FKBCAD1F575A3C445` (`CHILD_PERMISSION_ID`),
  CONSTRAINT `FKBCAD1F575A3C445` FOREIGN KEY (`CHILD_PERMISSION_ID`) REFERENCES `blc_admin_permission` (`ADMIN_PERMISSION_ID`),
  CONSTRAINT `FKBCAD1F5E88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `blc_admin_permission` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_permission_xref`
--

LOCK TABLES `blc_admin_permission_xref` WRITE;
/*!40000 ALTER TABLE `blc_admin_permission_xref` DISABLE KEYS */;
INSERT INTO `blc_admin_permission_xref` VALUES (-2,-100),(-4,-100),(-32,-100),(-53,-100),(-3,-101),(-4,-101),(-32,-101),(-53,-101),(-4,-102),(-6,-102),(-8,-102),(-34,-102),(-53,-101),(-5,-103),(-6,-103),(-9,-103),(-34,-103),(-53,-103),(-6,-104),(-32,-104),(-53,-104),(-7,-105),(-32,-105),(-53,-105),(-10,-106),(-53,-106),(-11,-107),(-53,-106),(-20,-108),(-200,-108),(-21,-109),(-200,-109),(-22,-110),(-23,-111),(-28,-114),(-29,-115),(-18,-118),(-19,-119),(-26,-120),(-46,-120),(-48,-120),(-27,-121),(-46,-120),(-48,-120),(-36,-126),(-37,-127),(-40,-130),(-41,-131),(-46,-140),(-48,-140),(-47,-141),(-48,-141),(-48,-150),(-49,-151),(-50,-160),(-51,-161),(-27000,-27002),(-27001,-27003),(32002,32000),(32003,32001),(32003,32001),(32003,32001),(32003,32004);
/*!40000 ALTER TABLE `blc_admin_permission_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_role`
--

DROP TABLE IF EXISTS `blc_admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_role` (
  `ADMIN_ROLE_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ADMIN_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_role`
--

LOCK TABLES `blc_admin_role` WRITE;
/*!40000 ALTER TABLE `blc_admin_role` DISABLE KEYS */;
INSERT INTO `blc_admin_role` VALUES (-7,NULL,NULL,'2017-03-11 11:51:46',NULL,'CMS Designer','ROLE_CONTENT_DESIGNER'),(-6,NULL,NULL,'2017-03-11 11:51:46',NULL,'CMS Approver','ROLE_CONTENT_APPROVER'),(-5,NULL,NULL,'2017-03-11 11:51:46',NULL,'CMS Editor','ROLE_CONTENT_EDITOR'),(-4,NULL,NULL,'2017-03-11 11:51:46',NULL,'CSR','ROLE_CUSTOMER_SERVICE_REP'),(-3,NULL,NULL,'2017-03-11 11:51:46',NULL,'Promotion Manager','ROLE_PROMOTION_MANAGER'),(-2,NULL,NULL,'2017-03-11 11:51:46',NULL,'Merchandiser','ROLE_MERCHANDISE_MANAGER'),(-1,NULL,NULL,'2017-03-11 11:51:46',NULL,'Admin Master Access','ROLE_ADMIN');
/*!40000 ALTER TABLE `blc_admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_role_permission_xref`
--

DROP TABLE IF EXISTS `blc_admin_role_permission_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_role_permission_xref` (
  `ADMIN_ROLE_ID` bigint(20) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ID`,`ADMIN_ROLE_ID`),
  KEY `FK4A819D98E88B7D38` (`ADMIN_PERMISSION_ID`),
  KEY `FK4A819D985F43AAD8` (`ADMIN_ROLE_ID`),
  CONSTRAINT `FK4A819D985F43AAD8` FOREIGN KEY (`ADMIN_ROLE_ID`) REFERENCES `blc_admin_role` (`ADMIN_ROLE_ID`),
  CONSTRAINT `FK4A819D98E88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `blc_admin_permission` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_role_permission_xref`
--

LOCK TABLES `blc_admin_role_permission_xref` WRITE;
/*!40000 ALTER TABLE `blc_admin_role_permission_xref` DISABLE KEYS */;
INSERT INTO `blc_admin_role_permission_xref` VALUES (-5,-27003),(-1,-27003),(-5,-161),(-1,-161),(-1,-141),(-5,-131),(-3,-131),(-2,-131),(-1,-131),(-1,-121),(-4,-119),(-1,-119),(-1,-115),(-6,-111),(-5,-111),(-2,-111),(-1,-111),(-6,-109),(-5,-109),(-1,-109),(-3,-107),(-1,-107),(-2,-105),(-1,-105),(-2,-103),(-1,-103),(-2,-101),(-1,-101),(-1,32000),(-1,32001),(-1,32002),(-1,32003),(-1,32004),(-1,32005),(-1,32006),(-1,32007),(-1,32008),(-1,32009),(-1,32010),(-1,32011);
/*!40000 ALTER TABLE `blc_admin_role_permission_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_sec_perm_xref`
--

DROP TABLE IF EXISTS `blc_admin_sec_perm_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_sec_perm_xref` (
  `ADMIN_SECTION_ID` bigint(20) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  KEY `FK5E832966E88B7D38` (`ADMIN_PERMISSION_ID`),
  KEY `FK5E8329663AF7F0FC` (`ADMIN_SECTION_ID`),
  CONSTRAINT `FK5E8329663AF7F0FC` FOREIGN KEY (`ADMIN_SECTION_ID`) REFERENCES `blc_admin_section` (`ADMIN_SECTION_ID`),
  CONSTRAINT `FK5E832966E88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `blc_admin_permission` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_sec_perm_xref`
--

LOCK TABLES `blc_admin_sec_perm_xref` WRITE;
/*!40000 ALTER TABLE `blc_admin_sec_perm_xref` DISABLE KEYS */;
INSERT INTO `blc_admin_sec_perm_xref` VALUES (-1,-100),(-1,-101),(-2,-102),(-2,-103),(-3,-104),(-3,-105),(-4,-106),(-4,-107),(-5,-108),(-5,-109),(-6,-110),(-6,-111),(-8,-114),(-8,-115),(-10,-118),(-10,-119),(-11,-120),(-11,-121),(-12,-140),(-12,-141),(-13,-126),(-13,-127),(-17,-150),(-17,-151),(-27000,-27002),(-27000,-27003),(32000,-1),(32001,-1),(32001,32004),(32001,32005),(32002,-1);
/*!40000 ALTER TABLE `blc_admin_sec_perm_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_section`
--

DROP TABLE IF EXISTS `blc_admin_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_section` (
  `ADMIN_SECTION_ID` bigint(20) NOT NULL,
  `CEILING_ENTITY` varchar(255) DEFAULT NULL,
  `DISPLAY_CONTROLLER` varchar(255) DEFAULT NULL,
  `DISPLAY_ORDER` int(11) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `SECTION_KEY` varchar(255) NOT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `USE_DEFAULT_HANDLER` tinyint(1) DEFAULT NULL,
  `ADMIN_MODULE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_SECTION_ID`),
  UNIQUE KEY `uc_BLC_ADMIN_SECTION_1` (`SECTION_KEY`),
  KEY `ADMINSECTION_MODULE_INDEX` (`ADMIN_MODULE_ID`),
  KEY `ADMINSECTION_NAME_INDEX` (`NAME`),
  KEY `FK7EA7D92FB1A18498` (`ADMIN_MODULE_ID`),
  CONSTRAINT `FK7EA7D92FB1A18498` FOREIGN KEY (`ADMIN_MODULE_ID`) REFERENCES `blc_admin_module` (`ADMIN_MODULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_section`
--

LOCK TABLES `blc_admin_section` WRITE;
/*!40000 ALTER TABLE `blc_admin_section` DISABLE KEYS */;
INSERT INTO `blc_admin_section` VALUES (-27000,'org.broadleafcommerce.menu.domain.Menu',NULL,3000,'Menus','Menus','/menu',1,-2),(-17,'org.broadleafcommerce.openadmin.server.security.domain.AdminPermission',NULL,11000,'Permission Management','PermissionManagement','/permission-management',NULL,-5),(-13,'org.broadleafcommerce.common.config.domain.ModuleConfiguration',NULL,10000,'Configuration Management','ConfigurationManagement','/configuration-management',NULL,-5),(-12,'org.broadleafcommerce.openadmin.server.security.domain.AdminRole',NULL,3000,'Role Management','RoleManagement','/role-management',NULL,-5),(-11,'org.broadleafcommerce.openadmin.server.security.domain.AdminUser',NULL,2000,'User Management','UserManagement','/user-management',NULL,-5),(-10,'org.broadleafcommerce.profile.core.domain.Customer',NULL,1000,'Customer','Customer','/customer',NULL,-3),(-8,'org.broadleafcommerce.cms.url.domain.URLHandler',NULL,7000,'Redirect URL','RedirectURL','/redirect-url',NULL,-2),(-6,'org.broadleafcommerce.cms.file.domain.StaticAsset',NULL,4000,'Assets','Assets','/assets',NULL,-2),(-5,'org.broadleafcommerce.cms.page.domain.Page',NULL,2000,'Pages','Pages','/pages',NULL,-2),(-4,'org.broadleafcommerce.core.offer.domain.Offer',NULL,1000,'Offer','Offer','/offer',NULL,-8),(-3,'org.broadleafcommerce.core.catalog.domain.ProductOption',NULL,5000,'Product Options','ProductOptions','/product-options',NULL,-1),(-2,'org.broadleafcommerce.core.catalog.domain.Product',NULL,3000,'Product','Product','/product',NULL,-1),(-1,'org.broadleafcommerce.core.catalog.domain.Category',NULL,2000,'Category','Category','/category',NULL,-1),(32000,'com.mycompany.core.solr.boost.domain.SolrBoostFieldValue',NULL,1,'Solr Boost Field Value','Solr Boost Field Value','/SolrBoostFieldValue',NULL,10000),(32001,'com.mycompany.core.solr.boost.domain.SolrBoostValues',NULL,1,'Solr Boost Values','Solr Boost Values','/SolrBoostValues',NULL,10000),(32002,'com.mycompany.core.solr.boost.domain.SolrBoostDetails',NULL,1,'Solr Boost Details','Solr Boost Details','/SolrBoostDetails',NULL,10000);
/*!40000 ALTER TABLE `blc_admin_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_user`
--

DROP TABLE IF EXISTS `blc_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_user` (
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  `ACTIVE_STATUS_FLAG` tinyint(1) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `LOGIN` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PHONE_NUMBER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ADMIN_USER_ID`),
  KEY `ADMINPERM_EMAIL_INDEX` (`EMAIL`),
  KEY `ADMINUSER_NAME_INDEX` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_user`
--

LOCK TABLES `blc_admin_user` WRITE;
/*!40000 ALTER TABLE `blc_admin_user` DISABLE KEYS */;
INSERT INTO `blc_admin_user` VALUES (-6,1,NULL,NULL,NULL,'2017-03-11 11:51:48',NULL,'cms_approver@yourdomain.com','cmsApprover','CMS Approver','admin',NULL),(-5,1,NULL,NULL,NULL,'2017-03-11 11:51:48',NULL,'cms_edit@yourdomain.com','cmsEditor','CMS Editor','admin',NULL),(-4,1,NULL,NULL,NULL,'2017-03-11 11:51:48',NULL,'csr@yourdomain.com','csr','CSR','admin',NULL),(-3,1,NULL,NULL,NULL,'2017-03-11 11:51:48',NULL,'promo@yourdomain.com','promo','Promotion Manager','admin',NULL),(-2,1,NULL,NULL,NULL,'2017-03-11 11:51:48',NULL,'merchandise@yourdomain.com','merchandise','Merchandise Manager','admin',NULL),(-1,1,NULL,NULL,NULL,'2017-03-11 11:51:48',NULL,'admin@yourdomain.com','admin','Administrator','admin',NULL);
/*!40000 ALTER TABLE `blc_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_user_addtl_fields`
--

DROP TABLE IF EXISTS `blc_admin_user_addtl_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_user_addtl_fields` (
  `ATTRIBUTE_ID` bigint(20) NOT NULL,
  `FIELD_NAME` varchar(255) NOT NULL,
  `FIELD_VALUE` varchar(255) DEFAULT NULL,
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ATTRIBUTE_ID`),
  KEY `ADMINUSERATTRIBUTE_INDEX` (`ADMIN_USER_ID`),
  KEY `ADMINUSERATTRIBUTE_NAME_INDEX` (`FIELD_NAME`),
  KEY `FK73274CDD46EBC38` (`ADMIN_USER_ID`),
  CONSTRAINT `FK73274CDD46EBC38` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `blc_admin_user` (`ADMIN_USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_user_addtl_fields`
--

LOCK TABLES `blc_admin_user_addtl_fields` WRITE;
/*!40000 ALTER TABLE `blc_admin_user_addtl_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_admin_user_addtl_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_user_permission_xref`
--

DROP TABLE IF EXISTS `blc_admin_user_permission_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_user_permission_xref` (
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  `ADMIN_PERMISSION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_PERMISSION_ID`,`ADMIN_USER_ID`),
  KEY `FKF0B3BEEDE88B7D38` (`ADMIN_PERMISSION_ID`),
  KEY `FKF0B3BEED46EBC38` (`ADMIN_USER_ID`),
  CONSTRAINT `FKF0B3BEED46EBC38` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `blc_admin_user` (`ADMIN_USER_ID`),
  CONSTRAINT `FKF0B3BEEDE88B7D38` FOREIGN KEY (`ADMIN_PERMISSION_ID`) REFERENCES `blc_admin_permission` (`ADMIN_PERMISSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_user_permission_xref`
--

LOCK TABLES `blc_admin_user_permission_xref` WRITE;
/*!40000 ALTER TABLE `blc_admin_user_permission_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_admin_user_permission_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_user_role_xref`
--

DROP TABLE IF EXISTS `blc_admin_user_role_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_user_role_xref` (
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  `ADMIN_ROLE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_ROLE_ID`,`ADMIN_USER_ID`),
  KEY `FKFFD33A265F43AAD8` (`ADMIN_ROLE_ID`),
  KEY `FKFFD33A2646EBC38` (`ADMIN_USER_ID`),
  CONSTRAINT `FKFFD33A2646EBC38` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `blc_admin_user` (`ADMIN_USER_ID`),
  CONSTRAINT `FKFFD33A265F43AAD8` FOREIGN KEY (`ADMIN_ROLE_ID`) REFERENCES `blc_admin_role` (`ADMIN_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_user_role_xref`
--

LOCK TABLES `blc_admin_user_role_xref` WRITE;
/*!40000 ALTER TABLE `blc_admin_user_role_xref` DISABLE KEYS */;
INSERT INTO `blc_admin_user_role_xref` VALUES (-6,-6),(-5,-5),(-4,-4),(-3,-3),(-2,-2),(-1,-1);
/*!40000 ALTER TABLE `blc_admin_user_role_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_admin_user_sandbox`
--

DROP TABLE IF EXISTS `blc_admin_user_sandbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_admin_user_sandbox` (
  `SANDBOX_ID` bigint(20) DEFAULT NULL,
  `ADMIN_USER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ADMIN_USER_ID`),
  KEY `FKD0A97E09579FE59D` (`SANDBOX_ID`),
  KEY `FKD0A97E0946EBC38` (`ADMIN_USER_ID`),
  CONSTRAINT `FKD0A97E0946EBC38` FOREIGN KEY (`ADMIN_USER_ID`) REFERENCES `blc_admin_user` (`ADMIN_USER_ID`),
  CONSTRAINT `FKD0A97E09579FE59D` FOREIGN KEY (`SANDBOX_ID`) REFERENCES `blc_sandbox` (`SANDBOX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_admin_user_sandbox`
--

LOCK TABLES `blc_admin_user_sandbox` WRITE;
/*!40000 ALTER TABLE `blc_admin_user_sandbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_admin_user_sandbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_asset_desc_map`
--

DROP TABLE IF EXISTS `blc_asset_desc_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_asset_desc_map` (
  `STATIC_ASSET_ID` bigint(20) NOT NULL,
  `STATIC_ASSET_DESC_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  PRIMARY KEY (`STATIC_ASSET_ID`,`MAP_KEY`),
  KEY `FKE886BAE3E2BA0C9D` (`STATIC_ASSET_DESC_ID`),
  KEY `FKE886BAE367F70B63` (`STATIC_ASSET_ID`),
  CONSTRAINT `FKE886BAE367F70B63` FOREIGN KEY (`STATIC_ASSET_ID`) REFERENCES `blc_static_asset` (`STATIC_ASSET_ID`),
  CONSTRAINT `FKE886BAE3E2BA0C9D` FOREIGN KEY (`STATIC_ASSET_DESC_ID`) REFERENCES `blc_static_asset_desc` (`STATIC_ASSET_DESC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_asset_desc_map`
--

LOCK TABLES `blc_asset_desc_map` WRITE;
/*!40000 ALTER TABLE `blc_asset_desc_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_asset_desc_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_bank_account_payment`
--

DROP TABLE IF EXISTS `blc_bank_account_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_bank_account_payment` (
  `PAYMENT_ID` bigint(20) NOT NULL,
  `ACCOUNT_NUMBER` varchar(255) NOT NULL,
  `REFERENCE_NUMBER` varchar(255) NOT NULL,
  `ROUTING_NUMBER` varchar(255) NOT NULL,
  PRIMARY KEY (`PAYMENT_ID`),
  KEY `BANKACCOUNT_INDEX` (`REFERENCE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_bank_account_payment`
--

LOCK TABLES `blc_bank_account_payment` WRITE;
/*!40000 ALTER TABLE `blc_bank_account_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_bank_account_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_bund_item_fee_price`
--

DROP TABLE IF EXISTS `blc_bund_item_fee_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_bund_item_fee_price` (
  `BUND_ITEM_FEE_PRICE_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `IS_TAXABLE` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REPORTING_CODE` varchar(255) DEFAULT NULL,
  `BUND_ORDER_ITEM_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`BUND_ITEM_FEE_PRICE_ID`),
  KEY `FK14267A943FC68307` (`BUND_ORDER_ITEM_ID`),
  CONSTRAINT `FK14267A943FC68307` FOREIGN KEY (`BUND_ORDER_ITEM_ID`) REFERENCES `blc_bundle_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_bund_item_fee_price`
--

LOCK TABLES `blc_bund_item_fee_price` WRITE;
/*!40000 ALTER TABLE `blc_bund_item_fee_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_bund_item_fee_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_bundle_order_item`
--

DROP TABLE IF EXISTS `blc_bundle_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_bundle_order_item` (
  `BASE_RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `BASE_SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  `PRODUCT_BUNDLE_ID` bigint(20) DEFAULT NULL,
  `SKU_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  KEY `FK489703DBCCF29B96` (`PRODUCT_BUNDLE_ID`),
  KEY `FK489703DBB78C9977` (`SKU_ID`),
  KEY `FK489703DB9AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK489703DB9AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK489703DBB78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`),
  CONSTRAINT `FK489703DBCCF29B96` FOREIGN KEY (`PRODUCT_BUNDLE_ID`) REFERENCES `blc_product_bundle` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_bundle_order_item`
--

LOCK TABLES `blc_bundle_order_item` WRITE;
/*!40000 ALTER TABLE `blc_bundle_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_bundle_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_candidate_fg_offer`
--

DROP TABLE IF EXISTS `blc_candidate_fg_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_candidate_fg_offer` (
  `CANDIDATE_FG_OFFER_ID` bigint(20) NOT NULL,
  `DISCOUNTED_PRICE` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_GROUP_ID` bigint(20) DEFAULT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CANDIDATE_FG_OFFER_ID`),
  KEY `CANDIDATE_FG_INDEX` (`FULFILLMENT_GROUP_ID`),
  KEY `CANDIDATE_FGOFFER_INDEX` (`OFFER_ID`),
  KEY `FKCE785605028DC55` (`FULFILLMENT_GROUP_ID`),
  KEY `FKCE78560D5F3FAF4` (`OFFER_ID`),
  CONSTRAINT `FKCE785605028DC55` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `blc_fulfillment_group` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FKCE78560D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_candidate_fg_offer`
--

LOCK TABLES `blc_candidate_fg_offer` WRITE;
/*!40000 ALTER TABLE `blc_candidate_fg_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_candidate_fg_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_candidate_item_offer`
--

DROP TABLE IF EXISTS `blc_candidate_item_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_candidate_item_offer` (
  `CANDIDATE_ITEM_OFFER_ID` bigint(20) NOT NULL,
  `DISCOUNTED_PRICE` decimal(19,5) DEFAULT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CANDIDATE_ITEM_OFFER_ID`),
  KEY `CANDIDATE_ITEMOFFER_INDEX` (`OFFER_ID`),
  KEY `CANDIDATE_ITEM_INDEX` (`ORDER_ITEM_ID`),
  KEY `FK9EEE9B2D5F3FAF4` (`OFFER_ID`),
  KEY `FK9EEE9B29AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK9EEE9B29AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK9EEE9B2D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_candidate_item_offer`
--

LOCK TABLES `blc_candidate_item_offer` WRITE;
/*!40000 ALTER TABLE `blc_candidate_item_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_candidate_item_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_candidate_order_offer`
--

DROP TABLE IF EXISTS `blc_candidate_order_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_candidate_order_offer` (
  `CANDIDATE_ORDER_OFFER_ID` bigint(20) NOT NULL,
  `DISCOUNTED_PRICE` decimal(19,5) DEFAULT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CANDIDATE_ORDER_OFFER_ID`),
  KEY `CANDIDATE_ORDEROFFER_INDEX` (`OFFER_ID`),
  KEY `CANDIDATE_ORDER_INDEX` (`ORDER_ID`),
  KEY `FK61852289D5F3FAF4` (`OFFER_ID`),
  KEY `FK6185228989FE8A02` (`ORDER_ID`),
  CONSTRAINT `FK6185228989FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`),
  CONSTRAINT `FK61852289D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_candidate_order_offer`
--

LOCK TABLES `blc_candidate_order_offer` WRITE;
/*!40000 ALTER TABLE `blc_candidate_order_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_candidate_order_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_cat_search_facet_excl_xref`
--

DROP TABLE IF EXISTS `blc_cat_search_facet_excl_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_cat_search_facet_excl_xref` (
  `CAT_EXCL_SEARCH_FACET_ID` bigint(20) NOT NULL,
  `SEQUENCE` decimal(19,2) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `SEARCH_FACET_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CAT_EXCL_SEARCH_FACET_ID`),
  KEY `FK8361EF4E15D1A13D` (`CATEGORY_ID`),
  KEY `FK8361EF4EB96B1C93` (`SEARCH_FACET_ID`),
  CONSTRAINT `FK8361EF4E15D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FK8361EF4EB96B1C93` FOREIGN KEY (`SEARCH_FACET_ID`) REFERENCES `blc_search_facet` (`SEARCH_FACET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_cat_search_facet_excl_xref`
--

LOCK TABLES `blc_cat_search_facet_excl_xref` WRITE;
/*!40000 ALTER TABLE `blc_cat_search_facet_excl_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_cat_search_facet_excl_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_cat_search_facet_xref`
--

DROP TABLE IF EXISTS `blc_cat_search_facet_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_cat_search_facet_xref` (
  `CATEGORY_SEARCH_FACET_ID` bigint(20) NOT NULL,
  `SEQUENCE` decimal(19,2) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `SEARCH_FACET_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_SEARCH_FACET_ID`),
  KEY `FK32210EEB15D1A13D` (`CATEGORY_ID`),
  KEY `FK32210EEBB96B1C93` (`SEARCH_FACET_ID`),
  CONSTRAINT `FK32210EEB15D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FK32210EEBB96B1C93` FOREIGN KEY (`SEARCH_FACET_ID`) REFERENCES `blc_search_facet` (`SEARCH_FACET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_cat_search_facet_xref`
--

LOCK TABLES `blc_cat_search_facet_xref` WRITE;
/*!40000 ALTER TABLE `blc_cat_search_facet_xref` DISABLE KEYS */;
INSERT INTO `blc_cat_search_facet_xref` VALUES (1,1.00,2002,1),(2,2.00,2002,2),(4,1.00,2003,4),(5,3.00,2002,3),(6,3.00,2003,3),(7,3.00,2004,3);
/*!40000 ALTER TABLE `blc_cat_search_facet_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_cat_site_map_gen_cfg`
--

DROP TABLE IF EXISTS `blc_cat_site_map_gen_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_cat_site_map_gen_cfg` (
  `ENDING_DEPTH` int(11) NOT NULL,
  `STARTING_DEPTH` int(11) NOT NULL,
  `GEN_CONFIG_ID` bigint(20) NOT NULL,
  `ROOT_CATEGORY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`GEN_CONFIG_ID`),
  KEY `FK1BA4E695C5F3D60` (`ROOT_CATEGORY_ID`),
  KEY `FK1BA4E69BCAB9F56` (`GEN_CONFIG_ID`),
  CONSTRAINT `FK1BA4E695C5F3D60` FOREIGN KEY (`ROOT_CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FK1BA4E69BCAB9F56` FOREIGN KEY (`GEN_CONFIG_ID`) REFERENCES `blc_site_map_gen_cfg` (`GEN_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_cat_site_map_gen_cfg`
--

LOCK TABLES `blc_cat_site_map_gen_cfg` WRITE;
/*!40000 ALTER TABLE `blc_cat_site_map_gen_cfg` DISABLE KEYS */;
INSERT INTO `blc_cat_site_map_gen_cfg` VALUES (0,0,-7,2004),(0,0,-6,2003),(0,0,-5,2002),(0,0,-4,2001);
/*!40000 ALTER TABLE `blc_cat_site_map_gen_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_catalog`
--

DROP TABLE IF EXISTS `blc_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_catalog` (
  `CATALOG_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CATALOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_catalog`
--

LOCK TABLES `blc_catalog` WRITE;
/*!40000 ALTER TABLE `blc_catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_category`
--

DROP TABLE IF EXISTS `blc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_category` (
  `CATEGORY_ID` bigint(20) NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `DISPLAY_TEMPLATE` varchar(255) DEFAULT NULL,
  `EXTERNAL_ID` varchar(255) DEFAULT NULL,
  `FULFILLMENT_TYPE` varchar(255) DEFAULT NULL,
  `INVENTORY_TYPE` varchar(255) DEFAULT NULL,
  `LONG_DESCRIPTION` longtext,
  `NAME` varchar(255) NOT NULL,
  `OVERRIDE_GENERATED_URL` tinyint(1) DEFAULT NULL,
  `TAX_CODE` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `URL_KEY` varchar(255) DEFAULT NULL,
  `DEFAULT_PARENT_CATEGORY_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_ID`),
  KEY `CATEGORY_PARENT_INDEX` (`DEFAULT_PARENT_CATEGORY_ID`),
  KEY `CATEGORY_E_ID_INDEX` (`EXTERNAL_ID`),
  KEY `CATEGORY_NAME_INDEX` (`NAME`),
  KEY `CATEGORY_URL_INDEX` (`URL`),
  KEY `CATEGORY_URLKEY_INDEX` (`URL_KEY`),
  KEY `FK55F82D44B177E6` (`DEFAULT_PARENT_CATEGORY_ID`),
  CONSTRAINT `FK55F82D44B177E6` FOREIGN KEY (`DEFAULT_PARENT_CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_category`
--

LOCK TABLES `blc_category` WRITE;
/*!40000 ALTER TABLE `blc_category` DISABLE KEYS */;
INSERT INTO `blc_category` VALUES (2001,NULL,'2017-03-11 11:52:16',NULL,'Home','layout/home',NULL,NULL,NULL,NULL,'Home',NULL,NULL,'/',NULL,NULL),(2002,NULL,'2017-03-11 11:52:16',NULL,'Hot Sauces',NULL,NULL,NULL,NULL,NULL,'Hot Sauces',NULL,NULL,'/hot-sauces',NULL,NULL),(2003,NULL,'2017-03-11 11:52:16',NULL,'Merchandise',NULL,NULL,NULL,NULL,NULL,'Merchandise',NULL,NULL,'/merchandise',NULL,NULL),(2004,NULL,'2017-03-11 11:52:16',NULL,'Clearance',NULL,NULL,NULL,NULL,NULL,'Clearance',NULL,NULL,'/clearance',NULL,NULL),(2007,NULL,'2017-03-11 11:52:16',NULL,'Mens',NULL,NULL,NULL,NULL,NULL,'Mens',NULL,NULL,'/mens',NULL,NULL),(2008,NULL,'2017-03-11 11:52:16',NULL,'Womens',NULL,NULL,NULL,NULL,NULL,'Womens',NULL,NULL,'/womens',NULL,NULL),(10000,NULL,NULL,'N',NULL,NULL,NULL,NULL,'ALWAYS_AVAILABLE',NULL,'Video Games',0,NULL,'/video-games',NULL,NULL);
/*!40000 ALTER TABLE `blc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_category_attribute`
--

DROP TABLE IF EXISTS `blc_category_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_category_attribute` (
  `CATEGORY_ATTRIBUTE_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `SEARCHABLE` tinyint(1) DEFAULT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CATEGORY_ATTRIBUTE_ID`),
  KEY `CATEGORYATTRIBUTE_INDEX` (`CATEGORY_ID`),
  KEY `CATEGORYATTRIBUTE_NAME_INDEX` (`NAME`),
  KEY `FK4E441D4115D1A13D` (`CATEGORY_ID`),
  CONSTRAINT `FK4E441D4115D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_category_attribute`
--

LOCK TABLES `blc_category_attribute` WRITE;
/*!40000 ALTER TABLE `blc_category_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_category_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_category_media_map`
--

DROP TABLE IF EXISTS `blc_category_media_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_category_media_map` (
  `CATEGORY_MEDIA_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  `BLC_CATEGORY_CATEGORY_ID` bigint(20) NOT NULL,
  `MEDIA_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`CATEGORY_MEDIA_ID`),
  KEY `FKCD24B106D786CEA2` (`BLC_CATEGORY_CATEGORY_ID`),
  KEY `FKCD24B1066E4720E0` (`MEDIA_ID`),
  CONSTRAINT `FKCD24B1066E4720E0` FOREIGN KEY (`MEDIA_ID`) REFERENCES `blc_media` (`MEDIA_ID`),
  CONSTRAINT `FKCD24B106D786CEA2` FOREIGN KEY (`BLC_CATEGORY_CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_category_media_map`
--

LOCK TABLES `blc_category_media_map` WRITE;
/*!40000 ALTER TABLE `blc_category_media_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_category_media_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_category_product_xref`
--

DROP TABLE IF EXISTS `blc_category_product_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_category_product_xref` (
  `CATEGORY_PRODUCT_ID` bigint(20) NOT NULL,
  `DEFAULT_REFERENCE` tinyint(1) DEFAULT NULL,
  `DISPLAY_ORDER` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CATEGORY_PRODUCT_ID`),
  KEY `FK635EB1A615D1A13D` (`CATEGORY_ID`),
  KEY `FK635EB1A65F11A0B7` (`PRODUCT_ID`),
  CONSTRAINT `FK635EB1A615D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FK635EB1A65F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_category_product_xref`
--

LOCK TABLES `blc_category_product_xref` WRITE;
/*!40000 ALTER TABLE `blc_category_product_xref` DISABLE KEYS */;
INSERT INTO `blc_category_product_xref` VALUES (1,1,1.000000,2002,1),(2,1,2.000000,2002,2),(3,1,3.000000,2002,3),(4,1,4.000000,2002,4),(5,1,5.000000,2002,5),(6,1,6.000000,2002,6),(7,1,7.000000,2002,7),(8,1,8.000000,2002,8),(9,1,9.000000,2002,9),(10,1,10.000000,2002,10),(11,1,11.000000,2002,11),(12,1,12.000000,2002,12),(13,1,13.000000,2002,13),(14,1,14.000000,2002,14),(15,1,15.000000,2002,15),(16,1,16.000000,2002,16),(17,1,17.000000,2002,17),(18,1,18.000000,2002,18),(19,1,19.000000,2002,19),(20,NULL,1.000000,2001,3),(21,NULL,2.000000,2001,6),(22,NULL,3.000000,2001,9),(23,NULL,4.000000,2001,12),(24,NULL,NULL,2004,7),(25,NULL,NULL,2004,8),(26,NULL,NULL,2004,10),(27,NULL,NULL,2004,11),(28,NULL,NULL,2004,18),(29,1,1.000000,2003,100),(30,1,2.000000,2003,200),(31,1,3.000000,2003,300),(32,1,4.000000,2003,400),(33,1,5.000000,2003,500),(34,1,6.000000,2003,600),(35,NULL,1.000000,2007,100),(36,NULL,1.000000,2008,200),(37,NULL,2.000000,2007,300),(38,NULL,2.000000,2008,400),(39,NULL,3.000000,2007,500),(40,NULL,3.000000,2008,600),(1000,1,NULL,10000,10000),(1001,1,NULL,10000,10001),(1002,1,NULL,10000,10002),(1003,1,NULL,10000,10003),(1004,1,NULL,10000,10004),(1005,1,NULL,10000,10005),(1006,1,NULL,10000,10006),(1050,1,NULL,10000,10050),(1100,NULL,NULL,2001,2);
/*!40000 ALTER TABLE `blc_category_product_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_category_xref`
--

DROP TABLE IF EXISTS `blc_category_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_category_xref` (
  `CATEGORY_XREF_ID` bigint(20) NOT NULL,
  `DEFAULT_REFERENCE` tinyint(1) DEFAULT NULL,
  `DISPLAY_ORDER` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) NOT NULL,
  `SUB_CATEGORY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CATEGORY_XREF_ID`),
  KEY `FKE889733615D1A13D` (`CATEGORY_ID`),
  KEY `FKE8897336D6D45DBE` (`SUB_CATEGORY_ID`),
  CONSTRAINT `FKE889733615D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FKE8897336D6D45DBE` FOREIGN KEY (`SUB_CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_category_xref`
--

LOCK TABLES `blc_category_xref` WRITE;
/*!40000 ALTER TABLE `blc_category_xref` DISABLE KEYS */;
INSERT INTO `blc_category_xref` VALUES (8,1,-7.000000,2003,2007),(9,1,-6.000000,2003,2008);
/*!40000 ALTER TABLE `blc_category_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_challenge_question`
--

DROP TABLE IF EXISTS `blc_challenge_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_challenge_question` (
  `QUESTION_ID` bigint(20) NOT NULL,
  `QUESTION` varchar(255) NOT NULL,
  PRIMARY KEY (`QUESTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_challenge_question`
--

LOCK TABLES `blc_challenge_question` WRITE;
/*!40000 ALTER TABLE `blc_challenge_question` DISABLE KEYS */;
INSERT INTO `blc_challenge_question` VALUES (1,'What is your favorite sports team?'),(2,'What was your high school name?'),(3,'What was your childhood nickname?'),(4,'What street did you live on in third grade?'),(5,'What is your oldest sibling\'s middle name?'),(6,'What school did you attend for sixth grade?'),(7,'Where does your nearest sibling live?'),(8,'What is your youngest brother\'s birthday?'),(9,'In what city or town was your first job?');
/*!40000 ALTER TABLE `blc_challenge_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_cms_menu`
--

DROP TABLE IF EXISTS `blc_cms_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_cms_menu` (
  `MENU_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_cms_menu`
--

LOCK TABLES `blc_cms_menu` WRITE;
/*!40000 ALTER TABLE `blc_cms_menu` DISABLE KEYS */;
INSERT INTO `blc_cms_menu` VALUES (1,'Header Nav');
/*!40000 ALTER TABLE `blc_cms_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_cms_menu_item`
--

DROP TABLE IF EXISTS `blc_cms_menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_cms_menu_item` (
  `MENU_ITEM_ID` bigint(20) NOT NULL,
  `ACTION_URL` varchar(255) DEFAULT NULL,
  `ALT_TEXT` varchar(255) DEFAULT NULL,
  `CUSTOM_HTML` longtext,
  `LABEL` varchar(255) DEFAULT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `MENU_ITEM_TYPE` varchar(255) DEFAULT NULL,
  `MEDIA_ID` bigint(20) DEFAULT NULL,
  `LINKED_MENU_ID` bigint(20) DEFAULT NULL,
  `LINKED_PAGE_ID` bigint(20) DEFAULT NULL,
  `PARENT_MENU_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`MENU_ITEM_ID`),
  KEY `FKFC9BDD76E4720E0` (`MEDIA_ID`),
  KEY `FKFC9BDD7A8D0E60C` (`LINKED_MENU_ID`),
  KEY `FKFC9BDD77BB4A41` (`LINKED_PAGE_ID`),
  KEY `FKFC9BDD73876279D` (`PARENT_MENU_ID`),
  CONSTRAINT `FKFC9BDD73876279D` FOREIGN KEY (`PARENT_MENU_ID`) REFERENCES `blc_cms_menu` (`MENU_ID`),
  CONSTRAINT `FKFC9BDD76E4720E0` FOREIGN KEY (`MEDIA_ID`) REFERENCES `blc_media` (`MEDIA_ID`),
  CONSTRAINT `FKFC9BDD77BB4A41` FOREIGN KEY (`LINKED_PAGE_ID`) REFERENCES `blc_page` (`PAGE_ID`),
  CONSTRAINT `FKFC9BDD7A8D0E60C` FOREIGN KEY (`LINKED_MENU_ID`) REFERENCES `blc_cms_menu` (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_cms_menu_item`
--

LOCK TABLES `blc_cms_menu_item` WRITE;
/*!40000 ALTER TABLE `blc_cms_menu_item` DISABLE KEYS */;
INSERT INTO `blc_cms_menu_item` VALUES (1,'/',NULL,NULL,'Home',1.000000,'CATEGORY',NULL,NULL,NULL,1),(2,'/hot-sauces',NULL,NULL,'Hot Sauces',2.000000,'CATEGORY',NULL,NULL,NULL,1),(3,'/merchandise',NULL,NULL,'Merchandise',4.000000,'CATEGORY',NULL,NULL,NULL,1),(4,'/clearance',NULL,NULL,'Clearance',5.000000,'CATEGORY',NULL,NULL,NULL,1),(1000,'/video-games',NULL,NULL,'Video Games',3.000000,'CATEGORY',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `blc_cms_menu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_code_types`
--

DROP TABLE IF EXISTS `blc_code_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_code_types` (
  `CODE_ID` bigint(20) NOT NULL,
  `CODE_TYPE` varchar(255) NOT NULL,
  `CODE_DESC` varchar(255) DEFAULT NULL,
  `CODE_KEY` varchar(255) NOT NULL,
  `MODIFIABLE` char(1) DEFAULT NULL,
  PRIMARY KEY (`CODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_code_types`
--

LOCK TABLES `blc_code_types` WRITE;
/*!40000 ALTER TABLE `blc_code_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_code_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_country`
--

DROP TABLE IF EXISTS `blc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_country` (
  `ABBREVIATION` varchar(255) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ABBREVIATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_country`
--

LOCK TABLES `blc_country` WRITE;
/*!40000 ALTER TABLE `blc_country` DISABLE KEYS */;
INSERT INTO `blc_country` VALUES ('CA',NULL,NULL,NULL,NULL,'Canada'),('ES',NULL,NULL,NULL,NULL,'Spain'),('FR',NULL,NULL,NULL,NULL,'France'),('GB',NULL,NULL,NULL,NULL,'United Kingdom'),('MX',NULL,NULL,NULL,NULL,'Mexico'),('US',NULL,NULL,NULL,NULL,'United States');
/*!40000 ALTER TABLE `blc_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_country_sub`
--

DROP TABLE IF EXISTS `blc_country_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_country_sub` (
  `ABBREVIATION` varchar(255) NOT NULL,
  `ALT_ABBREVIATION` varchar(255) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `COUNTRY_SUB_CAT` bigint(20) DEFAULT NULL,
  `COUNTRY` varchar(255) NOT NULL,
  PRIMARY KEY (`ABBREVIATION`),
  KEY `COUNTRY_SUB_ALT_ABRV_IDX` (`ALT_ABBREVIATION`),
  KEY `COUNTRY_SUB_NAME_IDX` (`NAME`),
  KEY `FKA804FBD172AAB3C0` (`COUNTRY_SUB_CAT`),
  KEY `FKA804FBD1A46E16CF` (`COUNTRY`),
  CONSTRAINT `FKA804FBD172AAB3C0` FOREIGN KEY (`COUNTRY_SUB_CAT`) REFERENCES `blc_country_sub_cat` (`COUNTRY_SUB_CAT_ID`),
  CONSTRAINT `FKA804FBD1A46E16CF` FOREIGN KEY (`COUNTRY`) REFERENCES `blc_country` (`ABBREVIATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_country_sub`
--

LOCK TABLES `blc_country_sub` WRITE;
/*!40000 ALTER TABLE `blc_country_sub` DISABLE KEYS */;
INSERT INTO `blc_country_sub` VALUES ('CA-AB','AB',NULL,NULL,NULL,NULL,'ALBERTA',63,'CA'),('CA-BC','BC',NULL,NULL,NULL,NULL,'BRITISH COLUMBIA',63,'CA'),('CA-MB','MB',NULL,NULL,NULL,NULL,'MANITOBA',63,'CA'),('CA-NB','NB',NULL,NULL,NULL,NULL,'NEW BRUNSWICK',63,'CA'),('CA-NL','NL',NULL,NULL,NULL,NULL,'NEWFOUNDLAND',63,'CA'),('CA-NS','NS',NULL,NULL,NULL,NULL,'NOVA SCOTIA',63,'CA'),('CA-NT','NT',NULL,NULL,NULL,NULL,'NORTHWEST TERRITORIES',81,'CA'),('CA-NU','NU',NULL,NULL,NULL,NULL,'NUNAVUT',81,'CA'),('CA-ON','ON',NULL,NULL,NULL,NULL,'ONTARIO',63,'CA'),('CA-PE','PE',NULL,NULL,NULL,NULL,'PRINCE EDWARD ISLAND',63,'CA'),('CA-QC','QC',NULL,NULL,NULL,NULL,'QUEBEC',63,'CA'),('CA-SK','SK',NULL,NULL,NULL,NULL,'SASKATCHEWAN',63,'CA'),('CA-YT','YT',NULL,NULL,NULL,NULL,'YUKON',81,'CA'),('ES-A','A',NULL,NULL,NULL,NULL,'Alicante',63,'ES'),('ES-AB','AB',NULL,NULL,NULL,NULL,'Albacete',63,'ES'),('ES-AL','AL',NULL,NULL,NULL,NULL,'Almería',63,'ES'),('ES-AV','AV',NULL,NULL,NULL,NULL,'Ávila',63,'ES'),('ES-B','B',NULL,NULL,NULL,NULL,'Barcelona',63,'ES'),('ES-BA','BA',NULL,NULL,NULL,NULL,'Badajoz',63,'ES'),('ES-BI','BI',NULL,NULL,NULL,NULL,'Vizcaya',63,'ES'),('ES-BU','BU',NULL,NULL,NULL,NULL,'Burgos',63,'ES'),('ES-C','C',NULL,NULL,NULL,NULL,'A Coruña',63,'ES'),('ES-CA','CA',NULL,NULL,NULL,NULL,'Cádiz',63,'ES'),('ES-CC','CC',NULL,NULL,NULL,NULL,'Cáceres',63,'ES'),('ES-CO','CO',NULL,NULL,NULL,NULL,'Córdoba',63,'ES'),('ES-CR','CR',NULL,NULL,NULL,NULL,'Ciudad Real',63,'ES'),('ES-CS','CS',NULL,NULL,NULL,NULL,'Castellón',63,'ES'),('ES-CU','CU',NULL,NULL,NULL,NULL,'Cuenca',63,'ES'),('ES-GC','GC',NULL,NULL,NULL,NULL,'Las Palmas',63,'ES'),('ES-GI','GI',NULL,NULL,NULL,NULL,'Girona',63,'ES'),('ES-GR','GR',NULL,NULL,NULL,NULL,'Granada',63,'ES'),('ES-GU','GU',NULL,NULL,NULL,NULL,'Guadalajara',63,'ES'),('ES-H','H',NULL,NULL,NULL,NULL,'Huelva',63,'ES'),('ES-HU','HU',NULL,NULL,NULL,NULL,'Huesca',63,'ES'),('ES-J','J',NULL,NULL,NULL,NULL,'Jaén',63,'ES'),('ES-L','L',NULL,NULL,NULL,NULL,'Lleida',63,'ES'),('ES-LE','LE',NULL,NULL,NULL,NULL,'León',63,'ES'),('ES-LO','LO',NULL,NULL,NULL,NULL,'La Rioja',63,'ES'),('ES-LU','LU',NULL,NULL,NULL,NULL,'Lugo',63,'ES'),('ES-M','M',NULL,NULL,NULL,NULL,'Madrid',63,'ES'),('ES-MA','MA',NULL,NULL,NULL,NULL,'Málaga',63,'ES'),('ES-MU','MU',NULL,NULL,NULL,NULL,'Murcia',63,'ES'),('ES-NA','NA',NULL,NULL,NULL,NULL,'Navarra',63,'ES'),('ES-O','O',NULL,NULL,NULL,NULL,'Asturias',63,'ES'),('ES-OR','OR',NULL,NULL,NULL,NULL,'Ourense',63,'ES'),('ES-P','P',NULL,NULL,NULL,NULL,'Palencia',63,'ES'),('ES-PM','PM',NULL,NULL,NULL,NULL,'Balears',63,'ES'),('ES-PO','PO',NULL,NULL,NULL,NULL,'Pontevedra',63,'ES'),('ES-S','S',NULL,NULL,NULL,NULL,'Cantabria',63,'ES'),('ES-SA','SA',NULL,NULL,NULL,NULL,'Salamanca',63,'ES'),('ES-SE','SE',NULL,NULL,NULL,NULL,'Sevilla',63,'ES'),('ES-SG','SG',NULL,NULL,NULL,NULL,'Segovia',63,'ES'),('ES-SO','SO',NULL,NULL,NULL,NULL,'Soria',63,'ES'),('ES-SS','SS',NULL,NULL,NULL,NULL,'Guipúzcoa',63,'ES'),('ES-T','T',NULL,NULL,NULL,NULL,'Tarragona',63,'ES'),('ES-TE','TE',NULL,NULL,NULL,NULL,'Teruel',63,'ES'),('ES-TF','TF',NULL,NULL,NULL,NULL,'Santa Cruz de Tenerife',63,'ES'),('ES-TO','TO',NULL,NULL,NULL,NULL,'Toledo',63,'ES'),('ES-V','V',NULL,NULL,NULL,NULL,'Valencia',63,'ES'),('ES-VA','VA',NULL,NULL,NULL,NULL,'Valladolid',63,'ES'),('ES-VI','VI',NULL,NULL,NULL,NULL,'Álava',63,'ES'),('ES-Z','Z',NULL,NULL,NULL,NULL,'Zaragoza',63,'ES'),('ES-ZA','ZA',NULL,NULL,NULL,NULL,'Zamora',63,'ES'),('MX-AGU','AGU',NULL,NULL,NULL,NULL,'AGUASCALIENTES',79,'MX'),('MX-BCN','BCN',NULL,NULL,NULL,NULL,'BAJA CALIFORNIA',79,'MX'),('MX-BCS','BCS',NULL,NULL,NULL,NULL,'BAJA CALIFORNIA SUR',79,'MX'),('MX-CAM','CAM',NULL,NULL,NULL,NULL,'CAMPECHE',79,'MX'),('MX-CHH','CHH',NULL,NULL,NULL,NULL,'CHIHUAHUA',79,'MX'),('MX-CHP','CHP',NULL,NULL,NULL,NULL,'CHIAPAS',79,'MX'),('MX-COA','COA',NULL,NULL,NULL,NULL,'COAHUILA',79,'MX'),('MX-COL','COL',NULL,NULL,NULL,NULL,'COLIMA',79,'MX'),('MX-DIF','DIF',NULL,NULL,NULL,NULL,'DISTRITO FEDERAL',39,'MX'),('MX-DUR','DUR',NULL,NULL,NULL,NULL,'DURANGO',79,'MX'),('MX-GRO','GRO',NULL,NULL,NULL,NULL,'GUERRERO',79,'MX'),('MX-GUA','GUA',NULL,NULL,NULL,NULL,'GUANAJUATO',79,'MX'),('MX-HID','HID',NULL,NULL,NULL,NULL,'HIDALGO',79,'MX'),('MX-JAL','JAL',NULL,NULL,NULL,NULL,'JALISCO',79,'MX'),('MX-MEX','MEX',NULL,NULL,NULL,NULL,'MÉXICO',79,'MX'),('MX-MIC','MIC',NULL,NULL,NULL,NULL,'MICHOACÁN',79,'MX'),('MX-MOR','MOR',NULL,NULL,NULL,NULL,'MORELOS',79,'MX'),('MX-NAY','NAY',NULL,NULL,NULL,NULL,'NAYARIT',79,'MX'),('MX-NLE','NLE',NULL,NULL,NULL,NULL,'NUEVO LEÓN',79,'MX'),('MX-OAX','OAX',NULL,NULL,NULL,NULL,'OAXACA',79,'MX'),('MX-PUE','PUE',NULL,NULL,NULL,NULL,'PUEBLA',79,'MX'),('MX-QUE','QUE',NULL,NULL,NULL,NULL,'QUERÉTARO',79,'MX'),('MX-ROO','ROO',NULL,NULL,NULL,NULL,'QUINTANA ROO',79,'MX'),('MX-SIN','SIN',NULL,NULL,NULL,NULL,'SINALOA',79,'MX'),('MX-SLP','SLP',NULL,NULL,NULL,NULL,'SAN LUIS POTOSÍ',79,'MX'),('MX-SON','SON',NULL,NULL,NULL,NULL,'SONORA',79,'MX'),('MX-TAB','TAB',NULL,NULL,NULL,NULL,'TABASCO',79,'MX'),('MX-TAM','TAM',NULL,NULL,NULL,NULL,'TAMAULIPAS',79,'MX'),('MX-TLA','TLA',NULL,NULL,NULL,NULL,'TLAXCALA',79,'MX'),('MX-VER','VER',NULL,NULL,NULL,NULL,'VERACRUZ',79,'MX'),('MX-YUC','YUC',NULL,NULL,NULL,NULL,'YUCATÁN',79,'MX'),('MX-ZAC','ZAC',NULL,NULL,NULL,NULL,'ZACATECAS',79,'MX'),('US-AK','AK',NULL,NULL,NULL,NULL,'ALASKA',79,'US'),('US-AL','AL',NULL,NULL,NULL,NULL,'ALABAMA',79,'US'),('US-AR','AR',NULL,NULL,NULL,NULL,'ARKANSAS',79,'US'),('US-AS','AS',NULL,NULL,NULL,NULL,'AMERICAN SAMOA',57,'US'),('US-AZ','AZ',NULL,NULL,NULL,NULL,'ARIZONA',79,'US'),('US-CA','CA',NULL,NULL,NULL,NULL,'CALIFORNIA',79,'US'),('US-CO','CO',NULL,NULL,NULL,NULL,'COLORADO',79,'US'),('US-CT','CT',NULL,NULL,NULL,NULL,'CONNECTICUT',79,'US'),('US-DC','DC',NULL,NULL,NULL,NULL,'DISTRICT OF COLUMBIA',31,'US'),('US-DE','DE',NULL,NULL,NULL,NULL,'DELAWARE',79,'US'),('US-FL','FL',NULL,NULL,NULL,NULL,'FLORIDA',79,'US'),('US-GA','GA',NULL,NULL,NULL,NULL,'GEORGIA',79,'US'),('US-GU','GU',NULL,NULL,NULL,NULL,'GUAM',57,'US'),('US-HI','HI',NULL,NULL,NULL,NULL,'HAWAII',79,'US'),('US-IA','IA',NULL,NULL,NULL,NULL,'IOWA',79,'US'),('US-ID','ID',NULL,NULL,NULL,NULL,'IDAHO',79,'US'),('US-IL','IL',NULL,NULL,NULL,NULL,'ILLINOIS',79,'US'),('US-IN','IN',NULL,NULL,NULL,NULL,'INDIANA',79,'US'),('US-KS','KS',NULL,NULL,NULL,NULL,'KANSAS',79,'US'),('US-KY','KY',NULL,NULL,NULL,NULL,'KENTUCKY',79,'US'),('US-LA','LA',NULL,NULL,NULL,NULL,'LOUISIANA',79,'US'),('US-MA','MA',NULL,NULL,NULL,NULL,'MASSACHUSETTS',79,'US'),('US-MD','MD',NULL,NULL,NULL,NULL,'MARYLAND',79,'US'),('US-ME','ME',NULL,NULL,NULL,NULL,'MAINE',79,'US'),('US-MI','MI',NULL,NULL,NULL,NULL,'MICHIGAN',79,'US'),('US-MN','MN',NULL,NULL,NULL,NULL,'MINNESOTA',79,'US'),('US-MO','MO',NULL,NULL,NULL,NULL,'MISSOURI',79,'US'),('US-MP','MP',NULL,NULL,NULL,NULL,'NORTHERN MARIANA ISLANDS',57,'US'),('US-MS','MS',NULL,NULL,NULL,NULL,'MISSISSIPPI',79,'US'),('US-MT','MT',NULL,NULL,NULL,NULL,'MONTANA',79,'US'),('US-NC','NC',NULL,NULL,NULL,NULL,'NORTH CAROLINA',79,'US'),('US-ND','ND',NULL,NULL,NULL,NULL,'NORTH DAKOTA',79,'US'),('US-NE','NE',NULL,NULL,NULL,NULL,'NEBRASKA',79,'US'),('US-NH','NH',NULL,NULL,NULL,NULL,'NEW HAMPSHIRE',79,'US'),('US-NJ','NJ',NULL,NULL,NULL,NULL,'NEW JERSEY',79,'US'),('US-NM','NM',NULL,NULL,NULL,NULL,'NEW MEXICO',79,'US'),('US-NV','NV',NULL,NULL,NULL,NULL,'NEVADA',79,'US'),('US-NY','NY',NULL,NULL,NULL,NULL,'NEW YORK',79,'US'),('US-OH','OH',NULL,NULL,NULL,NULL,'OHIO',79,'US'),('US-OK','OK',NULL,NULL,NULL,NULL,'OKLAHOMA',79,'US'),('US-OR','OR',NULL,NULL,NULL,NULL,'OREGON',79,'US'),('US-PA','PA',NULL,NULL,NULL,NULL,'PENNSYLVANIA',79,'US'),('US-PR','PR',NULL,NULL,NULL,NULL,'PUERTO RICO',57,'US'),('US-RI','RI',NULL,NULL,NULL,NULL,'RHODE ISLAND',79,'US'),('US-SC','SC',NULL,NULL,NULL,NULL,'SOUTH CAROLINA',79,'US'),('US-SD','SD',NULL,NULL,NULL,NULL,'SOUTH DAKOTA',79,'US'),('US-TN','TN',NULL,NULL,NULL,NULL,'TENNESSEE',79,'US'),('US-TX','TX',NULL,NULL,NULL,NULL,'TEXAS',79,'US'),('US-UM','UM',NULL,NULL,NULL,NULL,'UNITED STATES MINOR OUTLYING ISLANDS',57,'US'),('US-UT','UT',NULL,NULL,NULL,NULL,'UTAH',79,'US'),('US-VA','VA',NULL,NULL,NULL,NULL,'VIRGINIA',79,'US'),('US-VI','VI',NULL,NULL,NULL,NULL,'VIRGIN ISLANDS',57,'US'),('US-VT','VT',NULL,NULL,NULL,NULL,'VERMONT',79,'US'),('US-WA','WA',NULL,NULL,NULL,NULL,'WASHINGTON',79,'US'),('US-WI','WI',NULL,NULL,NULL,NULL,'WISCONSIN',79,'US'),('US-WV','WV',NULL,NULL,NULL,NULL,'WEST VIRGINIA',79,'US'),('US-WY','WY',NULL,NULL,NULL,NULL,'WYOMING',79,'US');
/*!40000 ALTER TABLE `blc_country_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_country_sub_cat`
--

DROP TABLE IF EXISTS `blc_country_sub_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_country_sub_cat` (
  `COUNTRY_SUB_CAT_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`COUNTRY_SUB_CAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_country_sub_cat`
--

LOCK TABLES `blc_country_sub_cat` WRITE;
/*!40000 ALTER TABLE `blc_country_sub_cat` DISABLE KEYS */;
INSERT INTO `blc_country_sub_cat` VALUES (1,NULL,NULL,NULL,NULL,'Administration'),(2,NULL,NULL,NULL,NULL,'Administrative Atoll'),(3,NULL,NULL,NULL,NULL,'Administrative Region'),(4,NULL,NULL,NULL,NULL,'Area'),(5,NULL,NULL,NULL,NULL,'Autonomous City'),(6,NULL,NULL,NULL,NULL,'Autonomous Community'),(7,NULL,NULL,NULL,NULL,'Autonomous District'),(8,NULL,NULL,NULL,NULL,'Autonomous Municipality'),(9,NULL,NULL,NULL,NULL,'Autonomous Province'),(10,NULL,NULL,NULL,NULL,'Autonomous Region'),(11,NULL,NULL,NULL,NULL,'Autonomous Republic'),(12,NULL,NULL,NULL,NULL,'Autonomous Sector'),(13,NULL,NULL,NULL,NULL,'Autonomous Territorial Unit'),(14,NULL,NULL,NULL,NULL,'Borough'),(15,NULL,NULL,NULL,NULL,'Canton'),(16,NULL,NULL,NULL,NULL,'Capital'),(17,NULL,NULL,NULL,NULL,'Capital City'),(18,NULL,NULL,NULL,NULL,'Capital District'),(19,NULL,NULL,NULL,NULL,'Capital Metropolitan City'),(20,NULL,NULL,NULL,NULL,'City'),(21,NULL,NULL,NULL,NULL,'City of County Right'),(22,NULL,NULL,NULL,NULL,'Commune'),(23,NULL,NULL,NULL,NULL,'Constitutional Province'),(24,NULL,NULL,NULL,NULL,'Corporation'),(25,NULL,NULL,NULL,NULL,'Council Area'),(26,NULL,NULL,NULL,NULL,'Country'),(27,NULL,NULL,NULL,NULL,'County'),(28,NULL,NULL,NULL,NULL,'Department'),(29,NULL,NULL,NULL,NULL,'Dependency'),(30,NULL,NULL,NULL,NULL,'Development Region'),(31,NULL,NULL,NULL,NULL,'District'),(32,NULL,NULL,NULL,NULL,'District With Special Status'),(33,NULL,NULL,NULL,NULL,'Division'),(34,NULL,NULL,NULL,NULL,'Economic Prefecture'),(35,NULL,NULL,NULL,NULL,'Emirate'),(36,NULL,NULL,NULL,NULL,'Entity'),(37,NULL,NULL,NULL,NULL,'Federal Capital Territory'),(38,NULL,NULL,NULL,NULL,'Federal Dependency'),(39,NULL,NULL,NULL,NULL,'Federal District'),(40,NULL,NULL,NULL,NULL,'Federal Land'),(41,NULL,NULL,NULL,NULL,'Federal Territory'),(42,NULL,NULL,NULL,NULL,'Federated States'),(43,NULL,NULL,NULL,NULL,'Geographical Entity'),(44,NULL,NULL,NULL,NULL,'Geographical Regions'),(45,NULL,NULL,NULL,NULL,'Governorate'),(46,NULL,NULL,NULL,NULL,'Indigenous Region'),(47,NULL,NULL,NULL,NULL,'Island'),(48,NULL,NULL,NULL,NULL,'Island Council'),(49,NULL,NULL,NULL,NULL,'Local Council'),(50,NULL,NULL,NULL,NULL,'Metropolitan Administration'),(51,NULL,NULL,NULL,NULL,'Metropolitan City'),(52,NULL,NULL,NULL,NULL,'Metropolitan Department'),(53,NULL,NULL,NULL,NULL,'Metropolitan Region'),(54,NULL,NULL,NULL,NULL,'Municipality'),(55,NULL,NULL,NULL,NULL,'Oblast'),(56,NULL,NULL,NULL,NULL,'Outlying Area'),(57,NULL,NULL,NULL,NULL,'Outlying Territory'),(58,NULL,NULL,NULL,NULL,'Overseas Region'),(59,NULL,NULL,NULL,NULL,'Overseas Territorial Collectivity'),(60,NULL,NULL,NULL,NULL,'Parish'),(61,NULL,NULL,NULL,NULL,'Popularate'),(62,NULL,NULL,NULL,NULL,'Prefecture'),(63,NULL,NULL,NULL,NULL,'Province'),(64,NULL,NULL,NULL,NULL,'Quarter'),(65,NULL,NULL,NULL,NULL,'Rayon'),(66,NULL,NULL,NULL,NULL,'Region'),(67,NULL,NULL,NULL,NULL,'Regional Council'),(68,NULL,NULL,NULL,NULL,'Republic'),(69,NULL,NULL,NULL,NULL,'Republican City'),(70,NULL,NULL,NULL,NULL,'Self-governed Part'),(71,NULL,NULL,NULL,NULL,'Special Administrative City'),(72,NULL,NULL,NULL,NULL,'Special Administrative Region'),(73,NULL,NULL,NULL,NULL,'Special City'),(74,NULL,NULL,NULL,NULL,'Special District'),(75,NULL,NULL,NULL,NULL,'Special Island Authority'),(76,NULL,NULL,NULL,NULL,'Special Municipality'),(77,NULL,NULL,NULL,NULL,'Special Region'),(78,NULL,NULL,NULL,NULL,'Special Zone'),(79,NULL,NULL,NULL,NULL,'State'),(80,NULL,NULL,NULL,NULL,'Territorial Unit'),(81,NULL,NULL,NULL,NULL,'Territory'),(82,NULL,NULL,NULL,NULL,'Town Council'),(83,NULL,NULL,NULL,NULL,'Union Territory'),(84,NULL,NULL,NULL,NULL,'Unitary Authority'),(85,NULL,NULL,NULL,NULL,'Urban Community'),(86,NULL,NULL,NULL,NULL,'Zone');
/*!40000 ALTER TABLE `blc_country_sub_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_credit_card_payment`
--

DROP TABLE IF EXISTS `blc_credit_card_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_credit_card_payment` (
  `PAYMENT_ID` bigint(20) NOT NULL,
  `EXPIRATION_MONTH` int(11) NOT NULL,
  `EXPIRATION_YEAR` int(11) NOT NULL,
  `NAME_ON_CARD` varchar(255) NOT NULL,
  `PAN` varchar(255) NOT NULL,
  `REFERENCE_NUMBER` varchar(255) NOT NULL,
  PRIMARY KEY (`PAYMENT_ID`),
  KEY `CREDITCARD_INDEX` (`REFERENCE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_credit_card_payment`
--

LOCK TABLES `blc_credit_card_payment` WRITE;
/*!40000 ALTER TABLE `blc_credit_card_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_credit_card_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_currency`
--

DROP TABLE IF EXISTS `blc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_currency` (
  `CURRENCY_CODE` varchar(255) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `DEFAULT_FLAG` tinyint(1) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CURRENCY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_currency`
--

LOCK TABLES `blc_currency` WRITE;
/*!40000 ALTER TABLE `blc_currency` DISABLE KEYS */;
INSERT INTO `blc_currency` VALUES ('EUR',NULL,NULL,NULL,NULL,0,'EURO Dollar'),('GBP',NULL,NULL,NULL,NULL,0,'GB Pound'),('MXN',NULL,NULL,NULL,NULL,0,'Mexican Peso'),('USD',NULL,NULL,NULL,NULL,1,'US Dollar');
/*!40000 ALTER TABLE `blc_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_cust_site_map_gen_cfg`
--

DROP TABLE IF EXISTS `blc_cust_site_map_gen_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_cust_site_map_gen_cfg` (
  `GEN_CONFIG_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`GEN_CONFIG_ID`),
  KEY `FK67C0DBA0BCAB9F56` (`GEN_CONFIG_ID`),
  CONSTRAINT `FK67C0DBA0BCAB9F56` FOREIGN KEY (`GEN_CONFIG_ID`) REFERENCES `blc_site_map_gen_cfg` (`GEN_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_cust_site_map_gen_cfg`
--

LOCK TABLES `blc_cust_site_map_gen_cfg` WRITE;
/*!40000 ALTER TABLE `blc_cust_site_map_gen_cfg` DISABLE KEYS */;
INSERT INTO `blc_cust_site_map_gen_cfg` VALUES (-1);
/*!40000 ALTER TABLE `blc_cust_site_map_gen_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer`
--

DROP TABLE IF EXISTS `blc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_customer` (
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `CHALLENGE_ANSWER` varchar(255) DEFAULT NULL,
  `DEACTIVATED` tinyint(1) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `IS_TAX_EXEMPT` tinyint(1) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PASSWORD_CHANGE_REQUIRED` tinyint(1) DEFAULT NULL,
  `IS_PREVIEW` tinyint(1) DEFAULT NULL,
  `RECEIVE_EMAIL` tinyint(1) DEFAULT NULL,
  `IS_REGISTERED` tinyint(1) DEFAULT NULL,
  `TAX_EXEMPTION_CODE` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) DEFAULT NULL,
  `CHALLENGE_QUESTION_ID` bigint(20) DEFAULT NULL,
  `LOCALE_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_ID`),
  KEY `CUSTOMER_CHALLENGE_INDEX` (`CHALLENGE_QUESTION_ID`),
  KEY `CUSTOMER_EMAIL_INDEX` (`EMAIL_ADDRESS`),
  KEY `FK7716F0241422B204` (`CHALLENGE_QUESTION_ID`),
  KEY `FK7716F024A1E1C128` (`LOCALE_CODE`),
  CONSTRAINT `FK7716F0241422B204` FOREIGN KEY (`CHALLENGE_QUESTION_ID`) REFERENCES `blc_challenge_question` (`QUESTION_ID`),
  CONSTRAINT `FK7716F024A1E1C128` FOREIGN KEY (`LOCALE_CODE`) REFERENCES `blc_locale` (`LOCALE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer`
--

LOCK TABLES `blc_customer` WRITE;
/*!40000 ALTER TABLE `blc_customer` DISABLE KEYS */;
INSERT INTO `blc_customer` VALUES (3000,'N',3000,'2017-03-21 17:06:34',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'3000',NULL,NULL),(3700,'N',3700,'2017-03-25 14:05:09',NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,1,0,NULL,'3700',NULL,NULL);
/*!40000 ALTER TABLE `blc_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_address`
--

DROP TABLE IF EXISTS `blc_customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_customer_address` (
  `CUSTOMER_ADDRESS_ID` bigint(20) NOT NULL,
  `ADDRESS_NAME` varchar(255) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `ADDRESS_ID` bigint(20) NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ADDRESS_ID`),
  KEY `CUSTOMERADDRESS_ADDRESS_INDEX` (`ADDRESS_ID`),
  KEY `FK75B95AB9C13085DD` (`ADDRESS_ID`),
  KEY `FK75B95AB97470F437` (`CUSTOMER_ID`),
  CONSTRAINT `FK75B95AB97470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FK75B95AB9C13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `blc_address` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_address`
--

LOCK TABLES `blc_customer_address` WRITE;
/*!40000 ALTER TABLE `blc_customer_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_attribute`
--

DROP TABLE IF EXISTS `blc_customer_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_customer_attribute` (
  `CUSTOMER_ATTR_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ATTR_ID`),
  KEY `FKB974C8217470F437` (`CUSTOMER_ID`),
  CONSTRAINT `FKB974C8217470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_attribute`
--

LOCK TABLES `blc_customer_attribute` WRITE;
/*!40000 ALTER TABLE `blc_customer_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_offer_xref`
--

DROP TABLE IF EXISTS `blc_customer_offer_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_customer_offer_xref` (
  `CUSTOMER_OFFER_ID` bigint(20) NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_OFFER_ID`),
  KEY `CUSTOFFER_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `CUSTOFFER_OFFER_INDEX` (`OFFER_ID`),
  KEY `FK685E80397470F437` (`CUSTOMER_ID`),
  KEY `FK685E8039D5F3FAF4` (`OFFER_ID`),
  CONSTRAINT `FK685E80397470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FK685E8039D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_offer_xref`
--

LOCK TABLES `blc_customer_offer_xref` WRITE;
/*!40000 ALTER TABLE `blc_customer_offer_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_offer_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_password_token`
--

DROP TABLE IF EXISTS `blc_customer_password_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_customer_password_token` (
  `PASSWORD_TOKEN` varchar(255) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `TOKEN_USED_DATE` datetime DEFAULT NULL,
  `TOKEN_USED_FLAG` tinyint(1) NOT NULL,
  PRIMARY KEY (`PASSWORD_TOKEN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_password_token`
--

LOCK TABLES `blc_customer_password_token` WRITE;
/*!40000 ALTER TABLE `blc_customer_password_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_password_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_payment`
--

DROP TABLE IF EXISTS `blc_customer_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_customer_payment` (
  `CUSTOMER_PAYMENT_ID` bigint(20) NOT NULL,
  `IS_DEFAULT` tinyint(1) DEFAULT NULL,
  `GATEWAY_TYPE` varchar(255) DEFAULT NULL,
  `PAYMENT_TOKEN` varchar(255) DEFAULT NULL,
  `PAYMENT_TYPE` varchar(255) DEFAULT NULL,
  `ADDRESS_ID` bigint(20) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_PAYMENT_ID`),
  UNIQUE KEY `CSTMR_PAY_UNIQUE_CNSTRNT` (`CUSTOMER_ID`,`PAYMENT_TOKEN`),
  KEY `CUSTOMERPAYMENT_TYPE_INDEX` (`PAYMENT_TYPE`),
  KEY `FK8B3DF0CBC13085DD` (`ADDRESS_ID`),
  KEY `FK8B3DF0CB7470F437` (`CUSTOMER_ID`),
  CONSTRAINT `FK8B3DF0CB7470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FK8B3DF0CBC13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `blc_address` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_payment`
--

LOCK TABLES `blc_customer_payment` WRITE;
/*!40000 ALTER TABLE `blc_customer_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_payment_fields`
--

DROP TABLE IF EXISTS `blc_customer_payment_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_customer_payment_fields` (
  `CUSTOMER_PAYMENT_ID` bigint(20) NOT NULL,
  `FIELD_VALUE` longtext,
  `FIELD_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CUSTOMER_PAYMENT_ID`,`FIELD_NAME`),
  KEY `FK5CCB14ADCA0B98E0` (`CUSTOMER_PAYMENT_ID`),
  CONSTRAINT `FK5CCB14ADCA0B98E0` FOREIGN KEY (`CUSTOMER_PAYMENT_ID`) REFERENCES `blc_customer_payment` (`CUSTOMER_PAYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_payment_fields`
--

LOCK TABLES `blc_customer_payment_fields` WRITE;
/*!40000 ALTER TABLE `blc_customer_payment_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_payment_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_phone`
--

DROP TABLE IF EXISTS `blc_customer_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_customer_phone` (
  `CUSTOMER_PHONE_ID` bigint(20) NOT NULL,
  `PHONE_NAME` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `PHONE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_PHONE_ID`),
  UNIQUE KEY `CSTMR_PHONE_UNIQUE_CNSTRNT` (`CUSTOMER_ID`,`PHONE_NAME`),
  KEY `CUSTPHONE_PHONE_INDEX` (`PHONE_ID`),
  KEY `FK3D28ED737470F437` (`CUSTOMER_ID`),
  KEY `FK3D28ED73D894CB5D` (`PHONE_ID`),
  CONSTRAINT `FK3D28ED737470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FK3D28ED73D894CB5D` FOREIGN KEY (`PHONE_ID`) REFERENCES `blc_phone` (`PHONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_phone`
--

LOCK TABLES `blc_customer_phone` WRITE;
/*!40000 ALTER TABLE `blc_customer_phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_customer_role`
--

DROP TABLE IF EXISTS `blc_customer_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_customer_role` (
  `CUSTOMER_ROLE_ID` bigint(20) NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `ROLE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CUSTOMER_ROLE_ID`),
  KEY `CUSTROLE_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `CUSTROLE_ROLE_INDEX` (`ROLE_ID`),
  KEY `FK548EB7B17470F437` (`CUSTOMER_ID`),
  KEY `FK548EB7B1B8587B7` (`ROLE_ID`),
  CONSTRAINT `FK548EB7B17470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FK548EB7B1B8587B7` FOREIGN KEY (`ROLE_ID`) REFERENCES `blc_role` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_customer_role`
--

LOCK TABLES `blc_customer_role` WRITE;
/*!40000 ALTER TABLE `blc_customer_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_customer_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_data_drvn_enum`
--

DROP TABLE IF EXISTS `blc_data_drvn_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_data_drvn_enum` (
  `ENUM_ID` bigint(20) NOT NULL,
  `ENUM_KEY` varchar(255) DEFAULT NULL,
  `MODIFIABLE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ENUM_ID`),
  KEY `ENUM_KEY_INDEX` (`ENUM_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_data_drvn_enum`
--

LOCK TABLES `blc_data_drvn_enum` WRITE;
/*!40000 ALTER TABLE `blc_data_drvn_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_data_drvn_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_data_drvn_enum_val`
--

DROP TABLE IF EXISTS `blc_data_drvn_enum_val`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_data_drvn_enum_val` (
  `ENUM_VAL_ID` bigint(20) NOT NULL,
  `DISPLAY` varchar(255) DEFAULT NULL,
  `HIDDEN` tinyint(1) DEFAULT NULL,
  `ENUM_KEY` varchar(255) DEFAULT NULL,
  `ENUM_TYPE` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ENUM_VAL_ID`),
  KEY `HIDDEN_INDEX` (`HIDDEN`),
  KEY `ENUM_VAL_KEY_INDEX` (`ENUM_KEY`),
  KEY `FKB2D5700DA60E0554` (`ENUM_TYPE`),
  CONSTRAINT `FKB2D5700DA60E0554` FOREIGN KEY (`ENUM_TYPE`) REFERENCES `blc_data_drvn_enum` (`ENUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_data_drvn_enum_val`
--

LOCK TABLES `blc_data_drvn_enum_val` WRITE;
/*!40000 ALTER TABLE `blc_data_drvn_enum_val` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_data_drvn_enum_val` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_disc_item_fee_price`
--

DROP TABLE IF EXISTS `blc_disc_item_fee_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_disc_item_fee_price` (
  `DISC_ITEM_FEE_PRICE_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REPORTING_CODE` varchar(255) DEFAULT NULL,
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`DISC_ITEM_FEE_PRICE_ID`),
  KEY `FK2A641CC8B76B9466` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK2A641CC8B76B9466` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_discrete_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_disc_item_fee_price`
--

LOCK TABLES `blc_disc_item_fee_price` WRITE;
/*!40000 ALTER TABLE `blc_disc_item_fee_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_disc_item_fee_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_discrete_order_item`
--

DROP TABLE IF EXISTS `blc_discrete_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_discrete_order_item` (
  `BASE_RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `BASE_SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  `BUNDLE_ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  `SKU_ID` bigint(20) NOT NULL,
  `SKU_BUNDLE_ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  KEY `DISCRETE_PRODUCT_INDEX` (`PRODUCT_ID`),
  KEY `DISCRETE_SKU_INDEX` (`SKU_ID`),
  KEY `FKBC3A8A845CDFCA80` (`BUNDLE_ORDER_ITEM_ID`),
  KEY `FKBC3A8A845F11A0B7` (`PRODUCT_ID`),
  KEY `FKBC3A8A84B78C9977` (`SKU_ID`),
  KEY `FKBC3A8A841285903B` (`SKU_BUNDLE_ITEM_ID`),
  KEY `FKBC3A8A849AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKBC3A8A841285903B` FOREIGN KEY (`SKU_BUNDLE_ITEM_ID`) REFERENCES `blc_sku_bundle_item` (`SKU_BUNDLE_ITEM_ID`),
  CONSTRAINT `FKBC3A8A845CDFCA80` FOREIGN KEY (`BUNDLE_ORDER_ITEM_ID`) REFERENCES `blc_bundle_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKBC3A8A845F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`),
  CONSTRAINT `FKBC3A8A849AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKBC3A8A84B78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_discrete_order_item`
--

LOCK TABLES `blc_discrete_order_item` WRITE;
/*!40000 ALTER TABLE `blc_discrete_order_item` DISABLE KEYS */;
INSERT INTO `blc_discrete_order_item` VALUES (6.99000,6.99000,1,NULL,4,4,NULL),(6.99000,6.99000,51,NULL,6,6,NULL);
/*!40000 ALTER TABLE `blc_discrete_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_dyn_discrete_order_item`
--

DROP TABLE IF EXISTS `blc_dyn_discrete_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_dyn_discrete_order_item` (
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  KEY `FK209DEE9EB76B9466` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK209DEE9EB76B9466` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_discrete_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_dyn_discrete_order_item`
--

LOCK TABLES `blc_dyn_discrete_order_item` WRITE;
/*!40000 ALTER TABLE `blc_dyn_discrete_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_dyn_discrete_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_email_tracking`
--

DROP TABLE IF EXISTS `blc_email_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_email_tracking` (
  `EMAIL_TRACKING_ID` bigint(20) NOT NULL,
  `DATE_SENT` datetime DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EMAIL_TRACKING_ID`),
  KEY `EMAILTRACKING_INDEX` (`EMAIL_ADDRESS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_email_tracking`
--

LOCK TABLES `blc_email_tracking` WRITE;
/*!40000 ALTER TABLE `blc_email_tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_email_tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_email_tracking_clicks`
--

DROP TABLE IF EXISTS `blc_email_tracking_clicks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_email_tracking_clicks` (
  `CLICK_ID` bigint(20) NOT NULL,
  `CUSTOMER_ID` varchar(255) DEFAULT NULL,
  `DATE_CLICKED` datetime NOT NULL,
  `DESTINATION_URI` varchar(255) DEFAULT NULL,
  `QUERY_STRING` varchar(255) DEFAULT NULL,
  `EMAIL_TRACKING_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CLICK_ID`),
  KEY `TRACKINGCLICKS_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `TRACKINGCLICKS_TRACKING_INDEX` (`EMAIL_TRACKING_ID`),
  KEY `FKFDF9F52AFA1E5D61` (`EMAIL_TRACKING_ID`),
  CONSTRAINT `FKFDF9F52AFA1E5D61` FOREIGN KEY (`EMAIL_TRACKING_ID`) REFERENCES `blc_email_tracking` (`EMAIL_TRACKING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_email_tracking_clicks`
--

LOCK TABLES `blc_email_tracking_clicks` WRITE;
/*!40000 ALTER TABLE `blc_email_tracking_clicks` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_email_tracking_clicks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_email_tracking_opens`
--

DROP TABLE IF EXISTS `blc_email_tracking_opens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_email_tracking_opens` (
  `OPEN_ID` bigint(20) NOT NULL,
  `DATE_OPENED` datetime DEFAULT NULL,
  `USER_AGENT` varchar(255) DEFAULT NULL,
  `EMAIL_TRACKING_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`OPEN_ID`),
  KEY `TRACKINGOPEN_TRACKING` (`EMAIL_TRACKING_ID`),
  KEY `FKA5C3722AFA1E5D61` (`EMAIL_TRACKING_ID`),
  CONSTRAINT `FKA5C3722AFA1E5D61` FOREIGN KEY (`EMAIL_TRACKING_ID`) REFERENCES `blc_email_tracking` (`EMAIL_TRACKING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_email_tracking_opens`
--

LOCK TABLES `blc_email_tracking_opens` WRITE;
/*!40000 ALTER TABLE `blc_email_tracking_opens` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_email_tracking_opens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fg_adjustment`
--

DROP TABLE IF EXISTS `blc_fg_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fg_adjustment` (
  `FG_ADJUSTMENT_ID` bigint(20) NOT NULL,
  `ADJUSTMENT_REASON` varchar(255) NOT NULL,
  `ADJUSTMENT_VALUE` decimal(19,5) NOT NULL,
  `FULFILLMENT_GROUP_ID` bigint(20) DEFAULT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`FG_ADJUSTMENT_ID`),
  KEY `FGADJUSTMENT_INDEX` (`FULFILLMENT_GROUP_ID`),
  KEY `FGADJUSTMENT_OFFER_INDEX` (`OFFER_ID`),
  KEY `FK468C8F255028DC55` (`FULFILLMENT_GROUP_ID`),
  KEY `FK468C8F25D5F3FAF4` (`OFFER_ID`),
  CONSTRAINT `FK468C8F255028DC55` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `blc_fulfillment_group` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FK468C8F25D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fg_adjustment`
--

LOCK TABLES `blc_fg_adjustment` WRITE;
/*!40000 ALTER TABLE `blc_fg_adjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fg_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fg_fee_tax_xref`
--

DROP TABLE IF EXISTS `blc_fg_fee_tax_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fg_fee_tax_xref` (
  `FULFILLMENT_GROUP_FEE_ID` bigint(20) NOT NULL,
  `TAX_DETAIL_ID` bigint(20) NOT NULL,
  UNIQUE KEY `UK_25426DC0FA888C35` (`TAX_DETAIL_ID`),
  KEY `FK25426DC071448C19` (`TAX_DETAIL_ID`),
  KEY `FK25426DC0598F6D02` (`FULFILLMENT_GROUP_FEE_ID`),
  CONSTRAINT `FK25426DC0598F6D02` FOREIGN KEY (`FULFILLMENT_GROUP_FEE_ID`) REFERENCES `blc_fulfillment_group_fee` (`FULFILLMENT_GROUP_FEE_ID`),
  CONSTRAINT `FK25426DC071448C19` FOREIGN KEY (`TAX_DETAIL_ID`) REFERENCES `blc_tax_detail` (`TAX_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fg_fee_tax_xref`
--

LOCK TABLES `blc_fg_fee_tax_xref` WRITE;
/*!40000 ALTER TABLE `blc_fg_fee_tax_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fg_fee_tax_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fg_fg_tax_xref`
--

DROP TABLE IF EXISTS `blc_fg_fg_tax_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fg_fg_tax_xref` (
  `FULFILLMENT_GROUP_ID` bigint(20) NOT NULL,
  `TAX_DETAIL_ID` bigint(20) NOT NULL,
  UNIQUE KEY `UK_61BEA455FA888C35` (`TAX_DETAIL_ID`),
  KEY `FK61BEA45571448C19` (`TAX_DETAIL_ID`),
  KEY `FK61BEA4555028DC55` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FK61BEA4555028DC55` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `blc_fulfillment_group` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FK61BEA45571448C19` FOREIGN KEY (`TAX_DETAIL_ID`) REFERENCES `blc_tax_detail` (`TAX_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fg_fg_tax_xref`
--

LOCK TABLES `blc_fg_fg_tax_xref` WRITE;
/*!40000 ALTER TABLE `blc_fg_fg_tax_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fg_fg_tax_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fg_item_tax_xref`
--

DROP TABLE IF EXISTS `blc_fg_item_tax_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fg_item_tax_xref` (
  `FULFILLMENT_GROUP_ITEM_ID` bigint(20) NOT NULL,
  `TAX_DETAIL_ID` bigint(20) NOT NULL,
  UNIQUE KEY `UK_DD3E8443FA888C35` (`TAX_DETAIL_ID`),
  KEY `FKDD3E844371448C19` (`TAX_DETAIL_ID`),
  KEY `FKDD3E8443E3BBB4D2` (`FULFILLMENT_GROUP_ITEM_ID`),
  CONSTRAINT `FKDD3E844371448C19` FOREIGN KEY (`TAX_DETAIL_ID`) REFERENCES `blc_tax_detail` (`TAX_DETAIL_ID`),
  CONSTRAINT `FKDD3E8443E3BBB4D2` FOREIGN KEY (`FULFILLMENT_GROUP_ITEM_ID`) REFERENCES `blc_fulfillment_group_item` (`FULFILLMENT_GROUP_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fg_item_tax_xref`
--

LOCK TABLES `blc_fg_item_tax_xref` WRITE;
/*!40000 ALTER TABLE `blc_fg_item_tax_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fg_item_tax_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_field`
--

DROP TABLE IF EXISTS `blc_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_field` (
  `FIELD_ID` bigint(20) NOT NULL,
  `ABBREVIATION` varchar(255) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `ENTITY_TYPE` varchar(255) NOT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `OVERRIDE_GENERATED_PROP_NAME` tinyint(1) DEFAULT NULL,
  `PROPERTY_NAME` varchar(255) NOT NULL,
  `TRANSLATABLE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`FIELD_ID`),
  KEY `ENTITY_TYPE_INDEX` (`ENTITY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_field`
--

LOCK TABLES `blc_field` WRITE;
/*!40000 ALTER TABLE `blc_field` DISABLE KEYS */;
INSERT INTO `blc_field` VALUES (1,'mfg',NULL,NULL,NULL,NULL,'PRODUCT','Manufacturer',NULL,'manufacturer',NULL),(2,'heatRange',NULL,NULL,NULL,NULL,'PRODUCT','Heat Range',NULL,'productAttributes(heatRange).value',NULL),(3,'price',NULL,NULL,NULL,NULL,'PRODUCT','Retail Price',NULL,'retailPrice',NULL),(4,'name',NULL,NULL,NULL,NULL,'PRODUCT','Product Name',NULL,'defaultSku.name',1),(5,'model',NULL,NULL,NULL,NULL,'PRODUCT','Model',NULL,'model',NULL),(6,'desc',NULL,NULL,NULL,NULL,'PRODUCT','Description',NULL,'defaultSku.description',1),(7,'ldesc',NULL,NULL,NULL,NULL,'PRODUCT','Long Description',NULL,'defaultSku.longDescription',1),(8,'color',NULL,NULL,NULL,NULL,'PRODUCT','Color',NULL,'productOptionValuesMap(COLOR)',NULL),(9,'margin',NULL,NULL,NULL,NULL,'PRODUCT','Margin',NULL,'margin',NULL);
/*!40000 ALTER TABLE `blc_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fld_def`
--

DROP TABLE IF EXISTS `blc_fld_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fld_def` (
  `FLD_DEF_ID` bigint(20) NOT NULL,
  `ALLOW_MULTIPLES` tinyint(1) DEFAULT NULL,
  `COLUMN_WIDTH` varchar(255) DEFAULT NULL,
  `FLD_ORDER` int(11) DEFAULT NULL,
  `FLD_TYPE` varchar(255) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `HELP_TEXT` varchar(255) DEFAULT NULL,
  `HIDDEN_FLAG` tinyint(1) DEFAULT NULL,
  `HINT` varchar(255) DEFAULT NULL,
  `MAX_LENGTH` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REQUIRED_FLAG` tinyint(1) DEFAULT NULL,
  `SECURITY_LEVEL` varchar(255) DEFAULT NULL,
  `TEXT_AREA_FLAG` tinyint(1) DEFAULT NULL,
  `TOOLTIP` varchar(255) DEFAULT NULL,
  `VLDTN_ERROR_MSSG_KEY` varchar(255) DEFAULT NULL,
  `VLDTN_REGEX` varchar(255) DEFAULT NULL,
  `ENUM_ID` bigint(20) DEFAULT NULL,
  `FLD_GROUP_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`FLD_DEF_ID`),
  KEY `FK3FCB575E38D08AB5` (`ENUM_ID`),
  KEY `FK3FCB575E6A79BDB5` (`FLD_GROUP_ID`),
  CONSTRAINT `FK3FCB575E38D08AB5` FOREIGN KEY (`ENUM_ID`) REFERENCES `blc_data_drvn_enum` (`ENUM_ID`),
  CONSTRAINT `FK3FCB575E6A79BDB5` FOREIGN KEY (`FLD_GROUP_ID`) REFERENCES `blc_fld_group` (`FLD_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fld_def`
--

LOCK TABLES `blc_fld_def` WRITE;
/*!40000 ALTER TABLE `blc_fld_def` DISABLE KEYS */;
INSERT INTO `blc_fld_def` VALUES (-2,0,'*',1,'BOOLEAN','Plain Text',NULL,0,NULL,NULL,'plainText',NULL,NULL,0,NULL,NULL,NULL,NULL,-3),(-1,0,'*',0,'HTML','File Contents',NULL,0,NULL,NULL,'body',NULL,NULL,0,NULL,NULL,NULL,NULL,-3),(2,0,'*',1,'HTML','Body',NULL,0,NULL,NULL,'body',NULL,NULL,0,NULL,NULL,NULL,NULL,1),(3,0,'*',0,'STRING','Title',NULL,0,NULL,NULL,'title',NULL,NULL,0,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `blc_fld_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fld_enum`
--

DROP TABLE IF EXISTS `blc_fld_enum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fld_enum` (
  `FLD_ENUM_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FLD_ENUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fld_enum`
--

LOCK TABLES `blc_fld_enum` WRITE;
/*!40000 ALTER TABLE `blc_fld_enum` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fld_enum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fld_enum_item`
--

DROP TABLE IF EXISTS `blc_fld_enum_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fld_enum_item` (
  `FLD_ENUM_ITEM_ID` bigint(20) NOT NULL,
  `FLD_ORDER` int(11) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `FLD_ENUM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`FLD_ENUM_ITEM_ID`),
  KEY `FK83A6A84AFD2EA299` (`FLD_ENUM_ID`),
  CONSTRAINT `FK83A6A84AFD2EA299` FOREIGN KEY (`FLD_ENUM_ID`) REFERENCES `blc_fld_enum` (`FLD_ENUM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fld_enum_item`
--

LOCK TABLES `blc_fld_enum_item` WRITE;
/*!40000 ALTER TABLE `blc_fld_enum_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fld_enum_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fld_group`
--

DROP TABLE IF EXISTS `blc_fld_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fld_group` (
  `FLD_GROUP_ID` bigint(20) NOT NULL,
  `INIT_COLLAPSED_FLAG` tinyint(1) DEFAULT NULL,
  `IS_MASTER_FIELD_GROUP` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FLD_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fld_group`
--

LOCK TABLES `blc_fld_group` WRITE;
/*!40000 ALTER TABLE `blc_fld_group` DISABLE KEYS */;
INSERT INTO `blc_fld_group` VALUES (-3,0,NULL,'None'),(1,0,NULL,'Content');
/*!40000 ALTER TABLE `blc_fld_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_group`
--

DROP TABLE IF EXISTS `blc_fulfillment_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fulfillment_group` (
  `FULFILLMENT_GROUP_ID` bigint(20) NOT NULL,
  `DELIVERY_INSTRUCTION` varchar(255) DEFAULT NULL,
  `PRICE` decimal(19,5) DEFAULT NULL,
  `SHIPPING_PRICE_TAXABLE` tinyint(1) DEFAULT NULL,
  `MERCHANDISE_TOTAL` decimal(19,5) DEFAULT NULL,
  `METHOD` varchar(255) DEFAULT NULL,
  `IS_PRIMARY` tinyint(1) DEFAULT NULL,
  `REFERENCE_NUMBER` varchar(255) DEFAULT NULL,
  `RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_GROUP_SEQUNCE` int(11) DEFAULT NULL,
  `SERVICE` varchar(255) DEFAULT NULL,
  `SHIPPING_OVERRIDE` tinyint(1) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `TOTAL` decimal(19,5) DEFAULT NULL,
  `TOTAL_FEE_TAX` decimal(19,5) DEFAULT NULL,
  `TOTAL_FG_TAX` decimal(19,5) DEFAULT NULL,
  `TOTAL_ITEM_TAX` decimal(19,5) DEFAULT NULL,
  `TOTAL_TAX` decimal(19,5) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `ADDRESS_ID` bigint(20) DEFAULT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) DEFAULT NULL,
  `ORDER_ID` bigint(20) NOT NULL,
  `PERSONAL_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `PHONE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_GROUP_ID`),
  KEY `FG_ADDRESS_INDEX` (`ADDRESS_ID`),
  KEY `FG_METHOD_INDEX` (`METHOD`),
  KEY `FG_ORDER_INDEX` (`ORDER_ID`),
  KEY `FG_MESSAGE_INDEX` (`PERSONAL_MESSAGE_ID`),
  KEY `FG_PHONE_INDEX` (`PHONE_ID`),
  KEY `FG_PRIMARY_INDEX` (`IS_PRIMARY`),
  KEY `FG_REFERENCE_INDEX` (`REFERENCE_NUMBER`),
  KEY `FG_SERVICE_INDEX` (`SERVICE`),
  KEY `FG_STATUS_INDEX` (`STATUS`),
  KEY `FKC5B9EF18C13085DD` (`ADDRESS_ID`),
  KEY `FKC5B9EF1881F34C7F` (`FULFILLMENT_OPTION_ID`),
  KEY `FKC5B9EF1889FE8A02` (`ORDER_ID`),
  KEY `FKC5B9EF1877F565E1` (`PERSONAL_MESSAGE_ID`),
  KEY `FKC5B9EF18D894CB5D` (`PHONE_ID`),
  CONSTRAINT `FKC5B9EF1877F565E1` FOREIGN KEY (`PERSONAL_MESSAGE_ID`) REFERENCES `blc_personal_message` (`PERSONAL_MESSAGE_ID`),
  CONSTRAINT `FKC5B9EF1881F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKC5B9EF1889FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`),
  CONSTRAINT `FKC5B9EF18C13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `blc_address` (`ADDRESS_ID`),
  CONSTRAINT `FKC5B9EF18D894CB5D` FOREIGN KEY (`PHONE_ID`) REFERENCES `blc_phone` (`PHONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_group`
--

LOCK TABLES `blc_fulfillment_group` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_group` DISABLE KEYS */;
INSERT INTO `blc_fulfillment_group` VALUES (1,NULL,0.00000,0,6.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,6.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,1,NULL,NULL),(51,NULL,0.00000,0,6.99000,NULL,0,NULL,0.00000,0.00000,NULL,NULL,NULL,NULL,6.99000,0.00000,0.00000,0.00000,0.00000,NULL,NULL,NULL,51,NULL,NULL);
/*!40000 ALTER TABLE `blc_fulfillment_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_group_fee`
--

DROP TABLE IF EXISTS `blc_fulfillment_group_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fulfillment_group_fee` (
  `FULFILLMENT_GROUP_FEE_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `FEE_TAXABLE_FLAG` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REPORTING_CODE` varchar(255) DEFAULT NULL,
  `TOTAL_FEE_TAX` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_GROUP_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`FULFILLMENT_GROUP_FEE_ID`),
  KEY `FK6AA8E1BF5028DC55` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FK6AA8E1BF5028DC55` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `blc_fulfillment_group` (`FULFILLMENT_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_group_fee`
--

LOCK TABLES `blc_fulfillment_group_fee` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_group_fee` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fulfillment_group_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_group_item`
--

DROP TABLE IF EXISTS `blc_fulfillment_group_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fulfillment_group_item` (
  `FULFILLMENT_GROUP_ITEM_ID` bigint(20) NOT NULL,
  `PRORATED_ORDER_ADJ` decimal(19,2) DEFAULT NULL,
  `QUANTITY` int(11) NOT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `TOTAL_ITEM_AMOUNT` decimal(19,5) DEFAULT NULL,
  `TOTAL_ITEM_TAXABLE_AMOUNT` decimal(19,5) DEFAULT NULL,
  `TOTAL_ITEM_TAX` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_GROUP_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`FULFILLMENT_GROUP_ITEM_ID`),
  KEY `FGITEM_FG_INDEX` (`FULFILLMENT_GROUP_ID`),
  KEY `FGITEM_STATUS_INDEX` (`STATUS`),
  KEY `FKEA74EBDA5028DC55` (`FULFILLMENT_GROUP_ID`),
  KEY `FKEA74EBDA9AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKEA74EBDA5028DC55` FOREIGN KEY (`FULFILLMENT_GROUP_ID`) REFERENCES `blc_fulfillment_group` (`FULFILLMENT_GROUP_ID`),
  CONSTRAINT `FKEA74EBDA9AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_group_item`
--

LOCK TABLES `blc_fulfillment_group_item` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_group_item` DISABLE KEYS */;
INSERT INTO `blc_fulfillment_group_item` VALUES (1,0.00,1,NULL,6.99000,6.99000,0.00000,1,1),(51,0.00,1,NULL,6.99000,6.99000,0.00000,51,51);
/*!40000 ALTER TABLE `blc_fulfillment_group_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_opt_banded_prc`
--

DROP TABLE IF EXISTS `blc_fulfillment_opt_banded_prc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fulfillment_opt_banded_prc` (
  `FULFILLMENT_OPTION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`FULFILLMENT_OPTION_ID`),
  KEY `FKB1FD71E981F34C7F` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKB1FD71E981F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_opt_banded_prc`
--

LOCK TABLES `blc_fulfillment_opt_banded_prc` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_opt_banded_prc` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fulfillment_opt_banded_prc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_opt_banded_wgt`
--

DROP TABLE IF EXISTS `blc_fulfillment_opt_banded_wgt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fulfillment_opt_banded_wgt` (
  `FULFILLMENT_OPTION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`FULFILLMENT_OPTION_ID`),
  KEY `FKB1FD8AEC81F34C7F` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKB1FD8AEC81F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_opt_banded_wgt`
--

LOCK TABLES `blc_fulfillment_opt_banded_wgt` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_opt_banded_wgt` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fulfillment_opt_banded_wgt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_option`
--

DROP TABLE IF EXISTS `blc_fulfillment_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fulfillment_option` (
  `FULFILLMENT_OPTION_ID` bigint(20) NOT NULL,
  `FULFILLMENT_TYPE` varchar(255) NOT NULL,
  `LONG_DESCRIPTION` longtext,
  `NAME` varchar(255) DEFAULT NULL,
  `TAX_CODE` varchar(255) DEFAULT NULL,
  `TAXABLE` tinyint(1) DEFAULT NULL,
  `USE_FLAT_RATES` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_option`
--

LOCK TABLES `blc_fulfillment_option` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_option` DISABLE KEYS */;
INSERT INTO `blc_fulfillment_option` VALUES (1,'PHYSICAL_SHIP','5 - 7 Days','Standard',NULL,NULL,0),(2,'PHYSICAL_SHIP','3 - 5 Days','Priority',NULL,NULL,0),(3,'PHYSICAL_SHIP','1 - 2 Days','Express',NULL,NULL,0);
/*!40000 ALTER TABLE `blc_fulfillment_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_option_fixed`
--

DROP TABLE IF EXISTS `blc_fulfillment_option_fixed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fulfillment_option_fixed` (
  `PRICE` decimal(19,5) NOT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) NOT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_OPTION_ID`),
  KEY `FK408360313E2FC4F9` (`CURRENCY_CODE`),
  KEY `FK4083603181F34C7F` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FK408360313E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`),
  CONSTRAINT `FK4083603181F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_option_fixed`
--

LOCK TABLES `blc_fulfillment_option_fixed` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_option_fixed` DISABLE KEYS */;
INSERT INTO `blc_fulfillment_option_fixed` VALUES (5.00000,1,NULL),(10.00000,2,NULL),(20.00000,3,NULL);
/*!40000 ALTER TABLE `blc_fulfillment_option_fixed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_price_band`
--

DROP TABLE IF EXISTS `blc_fulfillment_price_band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fulfillment_price_band` (
  `FULFILLMENT_PRICE_BAND_ID` bigint(20) NOT NULL,
  `RESULT_AMOUNT` decimal(19,5) NOT NULL,
  `RESULT_AMOUNT_TYPE` varchar(255) NOT NULL,
  `RETAIL_PRICE_MINIMUM_AMOUNT` decimal(19,5) NOT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_PRICE_BAND_ID`),
  KEY `FK46C9EA726CDF59CA` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FK46C9EA726CDF59CA` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_opt_banded_prc` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_price_band`
--

LOCK TABLES `blc_fulfillment_price_band` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_price_band` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fulfillment_price_band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_fulfillment_weight_band`
--

DROP TABLE IF EXISTS `blc_fulfillment_weight_band`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_fulfillment_weight_band` (
  `FULFILLMENT_WEIGHT_BAND_ID` bigint(20) NOT NULL,
  `RESULT_AMOUNT` decimal(19,5) NOT NULL,
  `RESULT_AMOUNT_TYPE` varchar(255) NOT NULL,
  `MINIMUM_WEIGHT` decimal(19,5) DEFAULT NULL,
  `WEIGHT_UNIT_OF_MEASURE` varchar(255) DEFAULT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`FULFILLMENT_WEIGHT_BAND_ID`),
  KEY `FK6A048D95A0B429C3` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FK6A048D95A0B429C3` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_opt_banded_wgt` (`FULFILLMENT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_fulfillment_weight_band`
--

LOCK TABLES `blc_fulfillment_weight_band` WRITE;
/*!40000 ALTER TABLE `blc_fulfillment_weight_band` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_fulfillment_weight_band` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_gift_card_payment`
--

DROP TABLE IF EXISTS `blc_gift_card_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_gift_card_payment` (
  `PAYMENT_ID` bigint(20) NOT NULL,
  `PAN` varchar(255) NOT NULL,
  `PIN` varchar(255) DEFAULT NULL,
  `REFERENCE_NUMBER` varchar(255) NOT NULL,
  PRIMARY KEY (`PAYMENT_ID`),
  KEY `GIFTCARD_INDEX` (`REFERENCE_NUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_gift_card_payment`
--

LOCK TABLES `blc_gift_card_payment` WRITE;
/*!40000 ALTER TABLE `blc_gift_card_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_gift_card_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_giftwrap_order_item`
--

DROP TABLE IF EXISTS `blc_giftwrap_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_giftwrap_order_item` (
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  KEY `FKE1BE1563B76B9466` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKE1BE1563B76B9466` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_discrete_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_giftwrap_order_item`
--

LOCK TABLES `blc_giftwrap_order_item` WRITE;
/*!40000 ALTER TABLE `blc_giftwrap_order_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_giftwrap_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_id_generation`
--

DROP TABLE IF EXISTS `blc_id_generation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_id_generation` (
  `ID_TYPE` varchar(255) NOT NULL,
  `BATCH_SIZE` bigint(20) NOT NULL,
  `BATCH_START` bigint(20) NOT NULL,
  `ID_MIN` bigint(20) DEFAULT NULL,
  `ID_MAX` bigint(20) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_id_generation`
--

LOCK TABLES `blc_id_generation` WRITE;
/*!40000 ALTER TABLE `blc_id_generation` DISABLE KEYS */;
INSERT INTO `blc_id_generation` VALUES ('org.broadleafcommerce.profile.core.domain.Customer',100,20700,NULL,NULL,207);
/*!40000 ALTER TABLE `blc_id_generation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_img_static_asset`
--

DROP TABLE IF EXISTS `blc_img_static_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_img_static_asset` (
  `HEIGHT` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  `STATIC_ASSET_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`STATIC_ASSET_ID`),
  KEY `FKCC4B772167F70B63` (`STATIC_ASSET_ID`),
  CONSTRAINT `FKCC4B772167F70B63` FOREIGN KEY (`STATIC_ASSET_ID`) REFERENCES `blc_static_asset` (`STATIC_ASSET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_img_static_asset`
--

LOCK TABLES `blc_img_static_asset` WRITE;
/*!40000 ALTER TABLE `blc_img_static_asset` DISABLE KEYS */;
INSERT INTO `blc_img_static_asset` VALUES (239,211,100000),(626,500,100001),(1500,1500,100002),(1489,1176,100003),(1500,1188,100004),(1000,802,100005),(1500,1204,100006),(499,400,100050),(1000,802,100100),(626,500,100101),(1000,802,100150),(239,211,100200),(239,211,100201),(1500,1500,100202),(239,211,100250);
/*!40000 ALTER TABLE `blc_img_static_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_index_field`
--

DROP TABLE IF EXISTS `blc_index_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_index_field` (
  `INDEX_FIELD_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `SEARCHABLE` tinyint(1) DEFAULT NULL,
  `FIELD_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`INDEX_FIELD_ID`),
  KEY `FK9A53C1073C3907C4` (`FIELD_ID`),
  CONSTRAINT `FK9A53C1073C3907C4` FOREIGN KEY (`FIELD_ID`) REFERENCES `blc_field` (`FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_index_field`
--

LOCK TABLES `blc_index_field` WRITE;
/*!40000 ALTER TABLE `blc_index_field` DISABLE KEYS */;
INSERT INTO `blc_index_field` VALUES (1,NULL,1,1),(2,NULL,0,2),(3,NULL,0,3),(4,NULL,1,4),(5,NULL,1,5),(6,NULL,1,6),(7,NULL,1,7),(8,NULL,0,8),(9,NULL,0,9);
/*!40000 ALTER TABLE `blc_index_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_index_field_type`
--

DROP TABLE IF EXISTS `blc_index_field_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_index_field_type` (
  `INDEX_FIELD_TYPE_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `FIELD_TYPE` varchar(255) DEFAULT NULL,
  `INDEX_FIELD_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`INDEX_FIELD_TYPE_ID`),
  KEY `FK4A310B72CBDA280B` (`INDEX_FIELD_ID`),
  CONSTRAINT `FK4A310B72CBDA280B` FOREIGN KEY (`INDEX_FIELD_ID`) REFERENCES `blc_index_field` (`INDEX_FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_index_field_type`
--

LOCK TABLES `blc_index_field_type` WRITE;
/*!40000 ALTER TABLE `blc_index_field_type` DISABLE KEYS */;
INSERT INTO `blc_index_field_type` VALUES (1,NULL,'t',1),(2,NULL,'s',1),(3,NULL,'i',2),(4,NULL,'p',3),(5,NULL,'t',4),(6,NULL,'t',5),(7,NULL,'t',6),(8,NULL,'t',7),(9,NULL,'ss',8),(10,NULL,'p',9);
/*!40000 ALTER TABLE `blc_index_field_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_iso_country`
--

DROP TABLE IF EXISTS `blc_iso_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_iso_country` (
  `ALPHA_2` varchar(255) NOT NULL,
  `ALPHA_3` varchar(255) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NUMERIC_CODE` int(11) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ALPHA_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_iso_country`
--

LOCK TABLES `blc_iso_country` WRITE;
/*!40000 ALTER TABLE `blc_iso_country` DISABLE KEYS */;
INSERT INTO `blc_iso_country` VALUES ('AA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('AB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AC','ASC',NULL,NULL,NULL,NULL,'Ascension Island',-1,'EXCEPTIONALLY_RESERVED'),('AD','AND',NULL,NULL,NULL,NULL,'Andorra',20,'OFFICIALLY_ASSIGNED'),('AE','ARE',NULL,NULL,NULL,NULL,'United Arab Emirates',784,'OFFICIALLY_ASSIGNED'),('AF','AFG',NULL,NULL,NULL,NULL,'Afghanistan',4,'OFFICIALLY_ASSIGNED'),('AG','ATG',NULL,NULL,NULL,NULL,'Antigua and Barbuda',28,'OFFICIALLY_ASSIGNED'),('AH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AI','AIA',NULL,NULL,NULL,NULL,'Anguilla',660,'OFFICIALLY_ASSIGNED'),('AJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AL','ALB',NULL,NULL,NULL,NULL,'Albania',8,'OFFICIALLY_ASSIGNED'),('AM','ARM',NULL,NULL,NULL,NULL,'Armenia',51,'OFFICIALLY_ASSIGNED'),('AN','ANHH',NULL,NULL,NULL,NULL,'Netherlands Antilles',530,'TRANSITIONALLY_RESERVED'),('AO','AGO',NULL,NULL,NULL,NULL,'Angola',24,'OFFICIALLY_ASSIGNED'),('AP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('AQ','ATA',NULL,NULL,NULL,NULL,'Antarctica',10,'OFFICIALLY_ASSIGNED'),('AR','ARG',NULL,NULL,NULL,NULL,'Argentina',32,'OFFICIALLY_ASSIGNED'),('AS','ASM',NULL,NULL,NULL,NULL,'American Samoa',16,'OFFICIALLY_ASSIGNED'),('AT','AUT',NULL,NULL,NULL,NULL,'Austria',40,'OFFICIALLY_ASSIGNED'),('AU','AUS',NULL,NULL,NULL,NULL,'Australia',36,'OFFICIALLY_ASSIGNED'),('AV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AW','ABW',NULL,NULL,NULL,NULL,'Aruba',533,'OFFICIALLY_ASSIGNED'),('AX','ALA',NULL,NULL,NULL,NULL,'Åland Islands',248,'OFFICIALLY_ASSIGNED'),('AY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('AZ','AZE',NULL,NULL,NULL,NULL,'Azerbaijan',31,'OFFICIALLY_ASSIGNED'),('BA','BIH',NULL,NULL,NULL,NULL,'Bosnia and Herzegovina',70,'OFFICIALLY_ASSIGNED'),('BB','BRB',NULL,NULL,NULL,NULL,'Barbados',52,'OFFICIALLY_ASSIGNED'),('BC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('BD','BGD',NULL,NULL,NULL,NULL,'Bangladesh',50,'OFFICIALLY_ASSIGNED'),('BE','BEL',NULL,NULL,NULL,NULL,'Belgium',56,'OFFICIALLY_ASSIGNED'),('BF','BFA',NULL,NULL,NULL,NULL,'Burkina Faso',854,'OFFICIALLY_ASSIGNED'),('BG','BGR',NULL,NULL,NULL,NULL,'Bulgaria',100,'OFFICIALLY_ASSIGNED'),('BH','BHR',NULL,NULL,NULL,NULL,'Bahrain',48,'OFFICIALLY_ASSIGNED'),('BI','BDI',NULL,NULL,NULL,NULL,'Burundi',108,'OFFICIALLY_ASSIGNED'),('BJ','BEN',NULL,NULL,NULL,NULL,'Benin',204,'OFFICIALLY_ASSIGNED'),('BK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('BL','BLM',NULL,NULL,NULL,NULL,'Saint Barthélemy',652,'OFFICIALLY_ASSIGNED'),('BM','BMU',NULL,NULL,NULL,NULL,'Bermuda',60,'OFFICIALLY_ASSIGNED'),('BN','BRN',NULL,NULL,NULL,NULL,'Brunei Darussalam',96,'OFFICIALLY_ASSIGNED'),('BO','BOL',NULL,NULL,NULL,NULL,'Bolivia, Plurinational State of',68,'OFFICIALLY_ASSIGNED'),('BP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('BQ','BES',NULL,NULL,NULL,NULL,'Bonaire, Sint Eustatius and Saba',535,'OFFICIALLY_ASSIGNED'),('BR','BRA',NULL,NULL,NULL,NULL,'Brazil',76,'OFFICIALLY_ASSIGNED'),('BS','BHS',NULL,NULL,NULL,NULL,'Bahamas',44,'OFFICIALLY_ASSIGNED'),('BT','BTN',NULL,NULL,NULL,NULL,'Bhutan',64,'OFFICIALLY_ASSIGNED'),('BU','BUMM',NULL,NULL,NULL,NULL,'Burma',104,'TRANSITIONALLY_RESERVED'),('BV','BVT',NULL,NULL,NULL,NULL,'Bouvet Island',74,'OFFICIALLY_ASSIGNED'),('BW','BWA',NULL,NULL,NULL,NULL,'Botswana',72,'OFFICIALLY_ASSIGNED'),('BX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('BY','BLR',NULL,NULL,NULL,NULL,'Belarus',112,'OFFICIALLY_ASSIGNED'),('BZ','BLZ',NULL,NULL,NULL,NULL,'Belize',84,'OFFICIALLY_ASSIGNED'),('CA','CAN',NULL,NULL,NULL,NULL,'Canada',124,'OFFICIALLY_ASSIGNED'),('CB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CC','CCK',NULL,NULL,NULL,NULL,'Cocos (Keeling) Islands',166,'OFFICIALLY_ASSIGNED'),('CD','COD',NULL,NULL,NULL,NULL,'Congo, the Democratic Republic of the',180,'OFFICIALLY_ASSIGNED'),('CE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CF','CAF',NULL,NULL,NULL,NULL,'Central African Republic',140,'OFFICIALLY_ASSIGNED'),('CG','COG',NULL,NULL,NULL,NULL,'Congo',178,'OFFICIALLY_ASSIGNED'),('CH','CHE',NULL,NULL,NULL,NULL,'Switzerland',756,'OFFICIALLY_ASSIGNED'),('CI','CIV',NULL,NULL,NULL,NULL,'Côte d\'Ivoire',384,'OFFICIALLY_ASSIGNED'),('CJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CK','COK',NULL,NULL,NULL,NULL,'Cook Islands',184,'OFFICIALLY_ASSIGNED'),('CL','CHL',NULL,NULL,NULL,NULL,'Chile',152,'OFFICIALLY_ASSIGNED'),('CM','CMR',NULL,NULL,NULL,NULL,'Cameroon',120,'OFFICIALLY_ASSIGNED'),('CN','CHN',NULL,NULL,NULL,NULL,'China',156,'OFFICIALLY_ASSIGNED'),('CO','COL',NULL,NULL,NULL,NULL,'Colombia',170,'OFFICIALLY_ASSIGNED'),('CP','CPT',NULL,NULL,NULL,NULL,'Clipperton Island',-1,'EXCEPTIONALLY_RESERVED'),('CQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CR','CRI',NULL,NULL,NULL,NULL,'Costa Rica',188,'OFFICIALLY_ASSIGNED'),('CS','CSXX',NULL,NULL,NULL,NULL,'Serbia and Montenegro',891,'TRANSITIONALLY_RESERVED'),('CT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('CU','CUB',NULL,NULL,NULL,NULL,'Cuba',192,'OFFICIALLY_ASSIGNED'),('CV','CPV',NULL,NULL,NULL,NULL,'Cape Verde',132,'OFFICIALLY_ASSIGNED'),('CW','CUW',NULL,NULL,NULL,NULL,'Curaçao',531,'OFFICIALLY_ASSIGNED'),('CX','CXR',NULL,NULL,NULL,NULL,'Christmas Island',162,'OFFICIALLY_ASSIGNED'),('CY','CYP',NULL,NULL,NULL,NULL,'Cyprus',196,'OFFICIALLY_ASSIGNED'),('CZ','CZE',NULL,NULL,NULL,NULL,'Czech Republic',203,'OFFICIALLY_ASSIGNED'),('DA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DE','DEU',NULL,NULL,NULL,NULL,'Germany',276,'OFFICIALLY_ASSIGNED'),('DF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DG','DGA',NULL,NULL,NULL,NULL,'Diego Garcia',-1,'EXCEPTIONALLY_RESERVED'),('DH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DJ','DJI',NULL,NULL,NULL,NULL,'Djibouti',262,'OFFICIALLY_ASSIGNED'),('DK','DNK',NULL,NULL,NULL,NULL,'Denmark',208,'OFFICIALLY_ASSIGNED'),('DL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DM','DMA',NULL,NULL,NULL,NULL,'Dominica',212,'OFFICIALLY_ASSIGNED'),('DN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DO','DOM',NULL,NULL,NULL,NULL,'Dominican Republic',214,'OFFICIALLY_ASSIGNED'),('DP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('DY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('DZ','DZA',NULL,NULL,NULL,NULL,'Algeria',12,'OFFICIALLY_ASSIGNED'),('EA','null',NULL,NULL,NULL,NULL,'Ceuta, Melilla',-1,'EXCEPTIONALLY_RESERVED'),('EB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EC','ECU',NULL,NULL,NULL,NULL,'Ecuador',218,'OFFICIALLY_ASSIGNED'),('ED',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EE','EST',NULL,NULL,NULL,NULL,'Estonia',233,'OFFICIALLY_ASSIGNED'),('EF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('EG','EGY',NULL,NULL,NULL,NULL,'Egypt',818,'OFFICIALLY_ASSIGNED'),('EH','ESH',NULL,NULL,NULL,NULL,'Western Sahara',732,'OFFICIALLY_ASSIGNED'),('EI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('EN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('EQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ER','ERI',NULL,NULL,NULL,NULL,'Eritrea',232,'OFFICIALLY_ASSIGNED'),('ES','ESP',NULL,NULL,NULL,NULL,'Spain',724,'OFFICIALLY_ASSIGNED'),('ET','ETH',NULL,NULL,NULL,NULL,'Ethiopia',231,'OFFICIALLY_ASSIGNED'),('EU','null',NULL,NULL,NULL,NULL,'European Union',-1,'EXCEPTIONALLY_RESERVED'),('EV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('EW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('EX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('EZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FI','FIN',NULL,NULL,NULL,NULL,'Finland',246,'OFFICIALLY_ASSIGNED'),('FJ','FJI',NULL,NULL,NULL,NULL,'Fiji',242,'OFFICIALLY_ASSIGNED'),('FK','FLK',NULL,NULL,NULL,NULL,'Falkland Islands (Malvinas)',238,'OFFICIALLY_ASSIGNED'),('FL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('FM','FSM',NULL,NULL,NULL,NULL,'Micronesia, Federated States of',583,'OFFICIALLY_ASSIGNED'),('FN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FO','FRO',NULL,NULL,NULL,NULL,'Faroe Islands',234,'OFFICIALLY_ASSIGNED'),('FP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FR','FRA',NULL,NULL,NULL,NULL,'France',250,'OFFICIALLY_ASSIGNED'),('FS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FX','FXX',NULL,NULL,NULL,NULL,'France, Metropolitan',-1,'EXCEPTIONALLY_RESERVED'),('FY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('FZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GA','GAB',NULL,NULL,NULL,NULL,'Gabon',266,'OFFICIALLY_ASSIGNED'),('GB','GBR',NULL,NULL,NULL,NULL,'United Kingdom',826,'OFFICIALLY_ASSIGNED'),('GC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('GD','GRD',NULL,NULL,NULL,NULL,'Grenada',308,'OFFICIALLY_ASSIGNED'),('GE','GEO',NULL,NULL,NULL,NULL,'Georgia',268,'OFFICIALLY_ASSIGNED'),('GF','GUF',NULL,NULL,NULL,NULL,'French Guiana',254,'OFFICIALLY_ASSIGNED'),('GG','GGY',NULL,NULL,NULL,NULL,'Guernsey',831,'OFFICIALLY_ASSIGNED'),('GH','GHA',NULL,NULL,NULL,NULL,'Ghana',288,'OFFICIALLY_ASSIGNED'),('GI','GIB',NULL,NULL,NULL,NULL,'Gibraltar',292,'OFFICIALLY_ASSIGNED'),('GJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GL','GRL',NULL,NULL,NULL,NULL,'Greenland',304,'OFFICIALLY_ASSIGNED'),('GM','GMB',NULL,NULL,NULL,NULL,'Gambia',270,'OFFICIALLY_ASSIGNED'),('GN','GIN',NULL,NULL,NULL,NULL,'Guinea',324,'OFFICIALLY_ASSIGNED'),('GO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GP','GLP',NULL,NULL,NULL,NULL,'Guadeloupe',312,'OFFICIALLY_ASSIGNED'),('GQ','GNQ',NULL,NULL,NULL,NULL,'Equatorial Guinea',226,'OFFICIALLY_ASSIGNED'),('GR','GRC',NULL,NULL,NULL,NULL,'Greece',300,'OFFICIALLY_ASSIGNED'),('GS','SGS',NULL,NULL,NULL,NULL,'South Georgia and the South Sandwich Islands',239,'OFFICIALLY_ASSIGNED'),('GT','GTM',NULL,NULL,NULL,NULL,'Guatemala',320,'OFFICIALLY_ASSIGNED'),('GU','GUM',NULL,NULL,NULL,NULL,'Guam',316,'OFFICIALLY_ASSIGNED'),('GV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GW','GNB',NULL,NULL,NULL,NULL,'Guinea-Bissau',624,'OFFICIALLY_ASSIGNED'),('GX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('GY','GUY',NULL,NULL,NULL,NULL,'Guyana',328,'OFFICIALLY_ASSIGNED'),('GZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HK','HKG',NULL,NULL,NULL,NULL,'Hong Kong',344,'OFFICIALLY_ASSIGNED'),('HL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HM','HMD',NULL,NULL,NULL,NULL,'Heard Island and McDonald Islands',334,'OFFICIALLY_ASSIGNED'),('HN','HND',NULL,NULL,NULL,NULL,'Honduras',340,'OFFICIALLY_ASSIGNED'),('HO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HR','HRV',NULL,NULL,NULL,NULL,'Croatia',191,'OFFICIALLY_ASSIGNED'),('HS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HT','HTI',NULL,NULL,NULL,NULL,'Haiti',332,'OFFICIALLY_ASSIGNED'),('HU','HUN',NULL,NULL,NULL,NULL,'Hungary',348,'OFFICIALLY_ASSIGNED'),('HV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('HZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('IC','null',NULL,NULL,NULL,NULL,'Canary Islands',-1,'EXCEPTIONALLY_RESERVED'),('ID','IDN',NULL,NULL,NULL,NULL,'Indonesia',360,'OFFICIALLY_ASSIGNED'),('IE','IRL',NULL,NULL,NULL,NULL,'Ireland',372,'OFFICIALLY_ASSIGNED'),('IF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('II',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IL','ISR',NULL,NULL,NULL,NULL,'Israel',376,'OFFICIALLY_ASSIGNED'),('IM','IMN',NULL,NULL,NULL,NULL,'Isle of Man',833,'OFFICIALLY_ASSIGNED'),('IN','IND',NULL,NULL,NULL,NULL,'India',356,'OFFICIALLY_ASSIGNED'),('IO','IOT',NULL,NULL,NULL,NULL,'British Indian Ocean Territory',86,'OFFICIALLY_ASSIGNED'),('IP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IQ','IRQ',NULL,NULL,NULL,NULL,'Iraq',368,'OFFICIALLY_ASSIGNED'),('IR','IRN',NULL,NULL,NULL,NULL,'Iran, Islamic Republic of',364,'OFFICIALLY_ASSIGNED'),('IS','ISL',NULL,NULL,NULL,NULL,'Iceland',352,'OFFICIALLY_ASSIGNED'),('IT','ITA',NULL,NULL,NULL,NULL,'Italy',380,'OFFICIALLY_ASSIGNED'),('IU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('IZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('JB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JE','JEY',NULL,NULL,NULL,NULL,'Jersey',832,'OFFICIALLY_ASSIGNED'),('JF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JM','JAM',NULL,NULL,NULL,NULL,'Jamaica',388,'OFFICIALLY_ASSIGNED'),('JN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JO','JOR',NULL,NULL,NULL,NULL,'Jordan',400,'OFFICIALLY_ASSIGNED'),('JP','JPN',NULL,NULL,NULL,NULL,'Japan',392,'OFFICIALLY_ASSIGNED'),('JQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('JZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KE','KEN',NULL,NULL,NULL,NULL,'Kenya',404,'OFFICIALLY_ASSIGNED'),('KF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KG','KGZ',NULL,NULL,NULL,NULL,'Kyrgyzstan',417,'OFFICIALLY_ASSIGNED'),('KH','KHM',NULL,NULL,NULL,NULL,'Cambodia',116,'OFFICIALLY_ASSIGNED'),('KI','KIR',NULL,NULL,NULL,NULL,'Kiribati',296,'OFFICIALLY_ASSIGNED'),('KJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KM','COM',NULL,NULL,NULL,NULL,'Comoros',174,'OFFICIALLY_ASSIGNED'),('KN','KNA',NULL,NULL,NULL,NULL,'Saint Kitts and Nevis',659,'OFFICIALLY_ASSIGNED'),('KO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KP','PRK',NULL,NULL,NULL,NULL,'Korea, Democratic People\'s Republic of',408,'OFFICIALLY_ASSIGNED'),('KQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KR','KOR',NULL,NULL,NULL,NULL,'Korea, Republic of',410,'OFFICIALLY_ASSIGNED'),('KS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KW','KWT',NULL,NULL,NULL,NULL,'Kuwait',414,'OFFICIALLY_ASSIGNED'),('KX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('KY','CYM',NULL,NULL,NULL,NULL,'Cayman Islands',136,'OFFICIALLY_ASSIGNED'),('KZ','KAZ',NULL,NULL,NULL,NULL,'Kazakhstan',398,'OFFICIALLY_ASSIGNED'),('LA','LAO',NULL,NULL,NULL,NULL,'Lao People\'s Democratic Republic',418,'OFFICIALLY_ASSIGNED'),('LB','LBN',NULL,NULL,NULL,NULL,'Lebanon',422,'OFFICIALLY_ASSIGNED'),('LC','LCA',NULL,NULL,NULL,NULL,'Saint Lucia',662,'OFFICIALLY_ASSIGNED'),('LD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('LG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LI','LIE',NULL,NULL,NULL,NULL,'Liechtenstein',438,'OFFICIALLY_ASSIGNED'),('LJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LK','LKA',NULL,NULL,NULL,NULL,'Sri Lanka',144,'OFFICIALLY_ASSIGNED'),('LL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LR','LBR',NULL,NULL,NULL,NULL,'Liberia',430,'OFFICIALLY_ASSIGNED'),('LS','LSO',NULL,NULL,NULL,NULL,'Lesotho',426,'OFFICIALLY_ASSIGNED'),('LT','LTU',NULL,NULL,NULL,NULL,'Lithuania',440,'OFFICIALLY_ASSIGNED'),('LU','LUX',NULL,NULL,NULL,NULL,'Luxembourg',442,'OFFICIALLY_ASSIGNED'),('LV','LVA',NULL,NULL,NULL,NULL,'Latvia',428,'OFFICIALLY_ASSIGNED'),('LW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('LY','LBY',NULL,NULL,NULL,NULL,'Libya',434,'OFFICIALLY_ASSIGNED'),('LZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('MA','MAR',NULL,NULL,NULL,NULL,'Morocco',504,'OFFICIALLY_ASSIGNED'),('MB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('MC','MCO',NULL,NULL,NULL,NULL,'Monaco',492,'OFFICIALLY_ASSIGNED'),('MD','MDA',NULL,NULL,NULL,NULL,'Moldova, Republic of',498,'OFFICIALLY_ASSIGNED'),('ME','MNE',NULL,NULL,NULL,NULL,'Montenegro',499,'OFFICIALLY_ASSIGNED'),('MF','MAF',NULL,NULL,NULL,NULL,'Saint Martin (French part)',663,'OFFICIALLY_ASSIGNED'),('MG','MDG',NULL,NULL,NULL,NULL,'Madagascar',450,'OFFICIALLY_ASSIGNED'),('MH','MHL',NULL,NULL,NULL,NULL,'Marshall Islands',584,'OFFICIALLY_ASSIGNED'),('MI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('MJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('MK','MKD',NULL,NULL,NULL,NULL,'Macedonia, the former Yugoslav Republic of',807,'OFFICIALLY_ASSIGNED'),('ML','MLI',NULL,NULL,NULL,NULL,'Mali',466,'OFFICIALLY_ASSIGNED'),('MM','MMR',NULL,NULL,NULL,NULL,'Myanmar',104,'OFFICIALLY_ASSIGNED'),('MN','MNG',NULL,NULL,NULL,NULL,'Mongolia',496,'OFFICIALLY_ASSIGNED'),('MO','MAC',NULL,NULL,NULL,NULL,'Macao',446,'OFFICIALLY_ASSIGNED'),('MP','MNP',NULL,NULL,NULL,NULL,'Northern Mariana Islands',580,'OFFICIALLY_ASSIGNED'),('MQ','MTQ',NULL,NULL,NULL,NULL,'Martinique',474,'OFFICIALLY_ASSIGNED'),('MR','MRT',NULL,NULL,NULL,NULL,'Mauritania',478,'OFFICIALLY_ASSIGNED'),('MS','MSR',NULL,NULL,NULL,NULL,'Montserrat',500,'OFFICIALLY_ASSIGNED'),('MT','MLT',NULL,NULL,NULL,NULL,'Malta',470,'OFFICIALLY_ASSIGNED'),('MU','MUS',NULL,NULL,NULL,NULL,'Mauritius',480,'OFFICIALLY_ASSIGNED'),('MV','MDV',NULL,NULL,NULL,NULL,'Maldives',462,'OFFICIALLY_ASSIGNED'),('MW','MWI',NULL,NULL,NULL,NULL,'Malawi',454,'OFFICIALLY_ASSIGNED'),('MX','MEX',NULL,NULL,NULL,NULL,'Mexico',484,'OFFICIALLY_ASSIGNED'),('MY','MYS',NULL,NULL,NULL,NULL,'Malaysia',458,'OFFICIALLY_ASSIGNED'),('MZ','MOZ',NULL,NULL,NULL,NULL,'Mozambique',508,'OFFICIALLY_ASSIGNED'),('NA','NAM',NULL,NULL,NULL,NULL,'Namibia',516,'OFFICIALLY_ASSIGNED'),('NB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NC','NCL',NULL,NULL,NULL,NULL,'New Caledonia',540,'OFFICIALLY_ASSIGNED'),('ND',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NE','NER',NULL,NULL,NULL,NULL,'Niger',562,'OFFICIALLY_ASSIGNED'),('NF','NFK',NULL,NULL,NULL,NULL,'Norfolk Island',574,'OFFICIALLY_ASSIGNED'),('NG','NGA',NULL,NULL,NULL,NULL,'Nigeria',566,'OFFICIALLY_ASSIGNED'),('NH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NI','NIC',NULL,NULL,NULL,NULL,'Nicaragua',558,'OFFICIALLY_ASSIGNED'),('NJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NL','NLD',NULL,NULL,NULL,NULL,'Netherlands',528,'OFFICIALLY_ASSIGNED'),('NM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NO','NOR',NULL,NULL,NULL,NULL,'Norway',578,'OFFICIALLY_ASSIGNED'),('NP','NPL',NULL,NULL,NULL,NULL,'Nepal',524,'OFFICIALLY_ASSIGNED'),('NQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NR','NRU',NULL,NULL,NULL,NULL,'Nauru',520,'OFFICIALLY_ASSIGNED'),('NS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NT','NTHH',NULL,NULL,NULL,NULL,'Neutral Zone',536,'TRANSITIONALLY_RESERVED'),('NU','NIU',NULL,NULL,NULL,NULL,'Niue',570,'OFFICIALLY_ASSIGNED'),('NV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('NZ','NZL',NULL,NULL,NULL,NULL,'New Zealand',554,'OFFICIALLY_ASSIGNED'),('OA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('OB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OM','OMN',NULL,NULL,NULL,NULL,'Oman',512,'OFFICIALLY_ASSIGNED'),('ON',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('OZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PA','PAN',NULL,NULL,NULL,NULL,'Panama',591,'OFFICIALLY_ASSIGNED'),('PB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PE','PER',NULL,NULL,NULL,NULL,'Peru',604,'OFFICIALLY_ASSIGNED'),('PF','PYF',NULL,NULL,NULL,NULL,'French Polynesia',258,'OFFICIALLY_ASSIGNED'),('PG','PNG',NULL,NULL,NULL,NULL,'Papua New Guinea',598,'OFFICIALLY_ASSIGNED'),('PH','PHL',NULL,NULL,NULL,NULL,'Philippines',608,'OFFICIALLY_ASSIGNED'),('PI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('PJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PK','PAK',NULL,NULL,NULL,NULL,'Pakistan',586,'OFFICIALLY_ASSIGNED'),('PL','POL',NULL,NULL,NULL,NULL,'Poland',616,'OFFICIALLY_ASSIGNED'),('PM','SPM',NULL,NULL,NULL,NULL,'Saint Pierre and Miquelon',666,'OFFICIALLY_ASSIGNED'),('PN','PCN',NULL,NULL,NULL,NULL,'Pitcairn',612,'OFFICIALLY_ASSIGNED'),('PO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PR','PRI',NULL,NULL,NULL,NULL,'Puerto Rico',630,'OFFICIALLY_ASSIGNED'),('PS','PSE',NULL,NULL,NULL,NULL,'Palestine, State of',275,'OFFICIALLY_ASSIGNED'),('PT','PRT',NULL,NULL,NULL,NULL,'Portugal',620,'OFFICIALLY_ASSIGNED'),('PU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PW','PLW',NULL,NULL,NULL,NULL,'Palau',585,'OFFICIALLY_ASSIGNED'),('PX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('PY','PRY',NULL,NULL,NULL,NULL,'Paraguay',600,'OFFICIALLY_ASSIGNED'),('PZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QA','QAT',NULL,NULL,NULL,NULL,'Qatar',634,'OFFICIALLY_ASSIGNED'),('QB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('QM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('QZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('RA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('RB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('RC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('RD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RE','REU',NULL,NULL,NULL,NULL,'Réunion',638,'OFFICIALLY_ASSIGNED'),('RF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('RI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('RJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('RM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('RN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('RO','ROU',NULL,NULL,NULL,NULL,'Romania',642,'OFFICIALLY_ASSIGNED'),('RP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('RQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RS','SRB',NULL,NULL,NULL,NULL,'Serbia',688,'OFFICIALLY_ASSIGNED'),('RT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RU','RUS',NULL,NULL,NULL,NULL,'Russian Federation',643,'OFFICIALLY_ASSIGNED'),('RV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RW','RWA',NULL,NULL,NULL,NULL,'Rwanda',646,'OFFICIALLY_ASSIGNED'),('RX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('RZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('SA','SAU',NULL,NULL,NULL,NULL,'Saudi Arabia',682,'OFFICIALLY_ASSIGNED'),('SB','SLB',NULL,NULL,NULL,NULL,'Solomon Islands',90,'OFFICIALLY_ASSIGNED'),('SC','SYC',NULL,NULL,NULL,NULL,'Seychelles',690,'OFFICIALLY_ASSIGNED'),('SD','SDN',NULL,NULL,NULL,NULL,'Sudan',729,'OFFICIALLY_ASSIGNED'),('SE','SWE',NULL,NULL,NULL,NULL,'Sweden',752,'OFFICIALLY_ASSIGNED'),('SF','FIN',NULL,NULL,NULL,NULL,'Finland',246,'TRANSITIONALLY_RESERVED'),('SG','SGP',NULL,NULL,NULL,NULL,'Singapore',702,'OFFICIALLY_ASSIGNED'),('SH','SHN',NULL,NULL,NULL,NULL,'Saint Helena, Ascension and Tristan da Cunha',654,'OFFICIALLY_ASSIGNED'),('SI','SVN',NULL,NULL,NULL,NULL,'Slovenia',705,'OFFICIALLY_ASSIGNED'),('SJ','SJM',NULL,NULL,NULL,NULL,'Svalbard and Jan Mayen',744,'OFFICIALLY_ASSIGNED'),('SK','SVK',NULL,NULL,NULL,NULL,'Slovakia',703,'OFFICIALLY_ASSIGNED'),('SL','SLE',NULL,NULL,NULL,NULL,'Sierra Leone',694,'OFFICIALLY_ASSIGNED'),('SM','SMR',NULL,NULL,NULL,NULL,'San Marino',674,'OFFICIALLY_ASSIGNED'),('SN','SEN',NULL,NULL,NULL,NULL,'Senegal',686,'OFFICIALLY_ASSIGNED'),('SO','SOM',NULL,NULL,NULL,NULL,'Somalia',706,'OFFICIALLY_ASSIGNED'),('SP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('SQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('SR','SUR',NULL,NULL,NULL,NULL,'Suriname',740,'OFFICIALLY_ASSIGNED'),('SS','SSD',NULL,NULL,NULL,NULL,'South Sudan',728,'OFFICIALLY_ASSIGNED'),('ST','STP',NULL,NULL,NULL,NULL,'Sao Tome and Principe',678,'OFFICIALLY_ASSIGNED'),('SU','SUN',NULL,NULL,NULL,NULL,'USSR',-1,'EXCEPTIONALLY_RESERVED'),('SV','SLV',NULL,NULL,NULL,NULL,'El Salvador',222,'OFFICIALLY_ASSIGNED'),('SW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('SX','SXM',NULL,NULL,NULL,NULL,'Sint Maarten (Dutch part)',534,'OFFICIALLY_ASSIGNED'),('SY','SYR',NULL,NULL,NULL,NULL,'Syrian Arab Republic',760,'OFFICIALLY_ASSIGNED'),('SZ','SWZ',NULL,NULL,NULL,NULL,'Swaziland',748,'OFFICIALLY_ASSIGNED'),('TA','TAA',NULL,NULL,NULL,NULL,'Tristan da Cunha',-1,'EXCEPTIONALLY_RESERVED'),('TB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('TC','TCA',NULL,NULL,NULL,NULL,'Turks and Caicos Islands',796,'OFFICIALLY_ASSIGNED'),('TD','TCD',NULL,NULL,NULL,NULL,'Chad',148,'OFFICIALLY_ASSIGNED'),('TE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('TF','ATF',NULL,NULL,NULL,NULL,'French Southern Territories',260,'OFFICIALLY_ASSIGNED'),('TG','TGO',NULL,NULL,NULL,NULL,'Togo',768,'OFFICIALLY_ASSIGNED'),('TH','THA',NULL,NULL,NULL,NULL,'Thailand',764,'OFFICIALLY_ASSIGNED'),('TI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('TJ','TJK',NULL,NULL,NULL,NULL,'Tajikistan',762,'OFFICIALLY_ASSIGNED'),('TK','TKL',NULL,NULL,NULL,NULL,'Tokelau',772,'OFFICIALLY_ASSIGNED'),('TL','TLS',NULL,NULL,NULL,NULL,'Timor-Leste',626,'OFFICIALLY_ASSIGNED'),('TM','TKM',NULL,NULL,NULL,NULL,'Turkmenistan',795,'OFFICIALLY_ASSIGNED'),('TN','TUN',NULL,NULL,NULL,NULL,'Tunisia',788,'OFFICIALLY_ASSIGNED'),('TO','TON',NULL,NULL,NULL,NULL,'Tonga',776,'OFFICIALLY_ASSIGNED'),('TP','TPTL',NULL,NULL,NULL,NULL,'East Timor',0,'TRANSITIONALLY_RESERVED'),('TQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('TR','TUR',NULL,NULL,NULL,NULL,'Turkey',792,'OFFICIALLY_ASSIGNED'),('TS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('TT','TTO',NULL,NULL,NULL,NULL,'Trinidad and Tobago',780,'OFFICIALLY_ASSIGNED'),('TU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('TV','TUV',NULL,NULL,NULL,NULL,'Tuvalu',798,'OFFICIALLY_ASSIGNED'),('TW','TWN',NULL,NULL,NULL,NULL,'Taiwan, Province of China',158,'OFFICIALLY_ASSIGNED'),('TX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('TY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('TZ','TZA',NULL,NULL,NULL,NULL,'Tanzania, United Republic of',834,'OFFICIALLY_ASSIGNED'),('UA','UKR',NULL,NULL,NULL,NULL,'Ukraine',804,'OFFICIALLY_ASSIGNED'),('UB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UG','UGA',NULL,NULL,NULL,NULL,'Uganda',800,'OFFICIALLY_ASSIGNED'),('UH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UK','null',NULL,NULL,NULL,NULL,'United Kingdom',-1,'EXCEPTIONALLY_RESERVED'),('UL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UM','UMI',NULL,NULL,NULL,NULL,'United States Minor Outlying Islands',581,'OFFICIALLY_ASSIGNED'),('UN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('US','USA',NULL,NULL,NULL,NULL,'United States',840,'OFFICIALLY_ASSIGNED'),('UT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('UY','URY',NULL,NULL,NULL,NULL,'Uruguay',858,'OFFICIALLY_ASSIGNED'),('UZ','UZB',NULL,NULL,NULL,NULL,'Uzbekistan',860,'OFFICIALLY_ASSIGNED'),('VA','VAT',NULL,NULL,NULL,NULL,'Holy See (Vatican City State)',336,'OFFICIALLY_ASSIGNED'),('VB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VC','VCT',NULL,NULL,NULL,NULL,'Saint Vincent and the Grenadines',670,'OFFICIALLY_ASSIGNED'),('VD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VE','VEN',NULL,NULL,NULL,NULL,'Venezuela, Bolivarian Republic of',862,'OFFICIALLY_ASSIGNED'),('VF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VG','VGB',NULL,NULL,NULL,NULL,'Virgin Islands, British',92,'OFFICIALLY_ASSIGNED'),('VH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VI','VIR',NULL,NULL,NULL,NULL,'Virgin Islands, U.S.',850,'OFFICIALLY_ASSIGNED'),('VJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VN','VNM',NULL,NULL,NULL,NULL,'Viet Nam',704,'OFFICIALLY_ASSIGNED'),('VO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VU','VUT',NULL,NULL,NULL,NULL,'Vanuatu',548,'OFFICIALLY_ASSIGNED'),('VV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('VZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WF','WLF',NULL,NULL,NULL,NULL,'Wallis and Futuna',876,'OFFICIALLY_ASSIGNED'),('WG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('WH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('WM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'NOT_USED'),('WP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WS','WSM',NULL,NULL,NULL,NULL,'Samoa',882,'OFFICIALLY_ASSIGNED'),('WT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('WW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('WZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('XA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XK','XXK',NULL,NULL,NULL,NULL,'Kosovo, Republic of',-1,'USER_ASSIGNED'),('XL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('XZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED'),('YA',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YE','YEM',NULL,NULL,NULL,NULL,'Yemen',887,'OFFICIALLY_ASSIGNED'),('YF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YM',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YR',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YT','MYT',NULL,NULL,NULL,NULL,'Mayotte',175,'OFFICIALLY_ASSIGNED'),('YU','YUCS',NULL,NULL,NULL,NULL,'Yugoslavia',890,'TRANSITIONALLY_RESERVED'),('YV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'INDETERMINATELY_RESERVED'),('YW',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('YZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZA','ZAF',NULL,NULL,NULL,NULL,'South Africa',710,'OFFICIALLY_ASSIGNED'),('ZB',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZC',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZD',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZE',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZF',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZG',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZH',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZI',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZJ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZK',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZL',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZM','ZMB',NULL,NULL,NULL,NULL,'Zambia',894,'OFFICIALLY_ASSIGNED'),('ZN',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZO',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZP',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZQ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZR','ZRCD',NULL,NULL,NULL,NULL,'Zaire',0,'TRANSITIONALLY_RESERVED'),('ZS',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZT',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZU',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZV',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZW','ZWE',NULL,NULL,NULL,NULL,'Zimbabwe',716,'OFFICIALLY_ASSIGNED'),('ZX',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZY',NULL,NULL,NULL,NULL,NULL,NULL,-1,'UNASSIGNED'),('ZZ',NULL,NULL,NULL,NULL,NULL,NULL,-1,'USER_ASSIGNED');
/*!40000 ALTER TABLE `blc_iso_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_item_offer_qualifier`
--

DROP TABLE IF EXISTS `blc_item_offer_qualifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_item_offer_qualifier` (
  `ITEM_OFFER_QUALIFIER_ID` bigint(20) NOT NULL,
  `QUANTITY` bigint(20) DEFAULT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ITEM_OFFER_QUALIFIER_ID`),
  KEY `FKD9C50C61D5F3FAF4` (`OFFER_ID`),
  KEY `FKD9C50C619AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKD9C50C619AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKD9C50C61D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_item_offer_qualifier`
--

LOCK TABLES `blc_item_offer_qualifier` WRITE;
/*!40000 ALTER TABLE `blc_item_offer_qualifier` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_item_offer_qualifier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_locale`
--

DROP TABLE IF EXISTS `blc_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_locale` (
  `LOCALE_CODE` varchar(255) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `DEFAULT_FLAG` tinyint(1) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `USE_IN_SEARCH_INDEX` tinyint(1) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LOCALE_CODE`),
  KEY `FK56C7DC203E2FC4F9` (`CURRENCY_CODE`),
  CONSTRAINT `FK56C7DC203E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_locale`
--

LOCK TABLES `blc_locale` WRITE;
/*!40000 ALTER TABLE `blc_locale` DISABLE KEYS */;
INSERT INTO `blc_locale` VALUES ('en',NULL,NULL,NULL,NULL,0,'English',NULL,'USD'),('en_GB',NULL,NULL,NULL,NULL,0,'English (United Kingdom)',NULL,'GBP'),('en_US',NULL,NULL,NULL,NULL,1,'English US',NULL,'USD'),('es',NULL,NULL,NULL,NULL,0,'Spanish',NULL,'EUR'),('es_ES',NULL,NULL,NULL,NULL,0,'Spanish (Spain)',NULL,'EUR'),('es_MX',NULL,NULL,NULL,NULL,0,'Spanish (Mexico)',NULL,'MXN'),('fr',NULL,NULL,NULL,NULL,0,'French',NULL,'EUR'),('fr_FR',NULL,NULL,NULL,NULL,0,'French (France)',NULL,'EUR');
/*!40000 ALTER TABLE `blc_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_media`
--

DROP TABLE IF EXISTS `blc_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_media` (
  `MEDIA_ID` bigint(20) NOT NULL,
  `ALT_TEXT` varchar(255) DEFAULT NULL,
  `TAGS` varchar(255) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `URL` varchar(255) NOT NULL,
  PRIMARY KEY (`MEDIA_ID`),
  KEY `MEDIA_TITLE_INDEX` (`TITLE`),
  KEY `MEDIA_URL_INDEX` (`URL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_media`
--

LOCK TABLES `blc_media` WRITE;
/*!40000 ALTER TABLE `blc_media` DISABLE KEYS */;
INSERT INTO `blc_media` VALUES (101,'primary',NULL,'Sudden Death Sauce Bottle','/cmsstatic/img/sauces/Sudden-Death-Sauce-Bottle.jpg'),(102,'alt1',NULL,'Sudden Death Sauce Close-up','/cmsstatic/img/sauces/Sudden-Death-Sauce-Close.jpg'),(201,'primary',NULL,'Sweet Death Sauce Bottle','/cmsstatic/img/sauces/Sweet-Death-Sauce-Bottle.jpg'),(202,'alt1',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Close.jpg'),(203,'alt2',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Skull.jpg'),(204,'alt3',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Tile.jpg'),(205,'alt4',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Grass.jpg'),(206,'alt5',NULL,'Sweet Death Sauce Close-up','/cmsstatic/img/sauces/Sweet-Death-Sauce-Logo.jpg'),(301,'primary',NULL,'Hoppin Hot Sauce Bottle','/cmsstatic/img/sauces/Hoppin-Hot-Sauce-Bottle.jpg'),(302,'alt1',NULL,'Hoppin Hot Sauce Close-up','/cmsstatic/img/sauces/Hoppin-Hot-Sauce-Close.jpg'),(401,'primary',NULL,'Day of the Dead Chipotle Hot Sauce Bottle','/cmsstatic/img/sauces/Day-of-the-Dead-Chipotle-Hot-Sauce-Bottle.jpg'),(402,'alt1',NULL,'Day of the Dead Chipotle Hot Sauce Close-up','/cmsstatic/img/sauces/Day-of-the-Dead-Chipotle-Hot-Sauce-Close.jpg'),(501,'primary',NULL,'Day of the Dead Habanero Hot Sauce Bottle','/cmsstatic/img/sauces/Day-of-the-Dead-Habanero-Hot-Sauce-Bottle.jpg'),(502,'alt1',NULL,'Day of the Dead Habanero Hot Sauce Close-up','/cmsstatic/img/sauces/Day-of-the-Dead-Habanero-Hot-Sauce-Close.jpg'),(601,'primary',NULL,'Day of the Dead Scotch Bonnet Hot Sauce Bottle','/cmsstatic/img/sauces/Day-of-the-Dead-Scotch-Bonnet-Hot-Sauce-Bottle.jpg'),(602,'alt1',NULL,'Day of the Dead Scotch Bonnet Hot Sauce Close-up','/cmsstatic/img/sauces/Day-of-the-Dead-Scotch-Bonnet-Hot-Sauce-Close.jpg'),(701,'primary',NULL,'Green Ghost Bottle','/cmsstatic/img/sauces/Green-Ghost-Bottle.jpg'),(702,'alt1',NULL,'Green Ghost Close-up','/cmsstatic/img/sauces/Green-Ghost-Close.jpg'),(801,'primary',NULL,'Blazin Saddle XXX Hot Habanero Pepper Sauce Bottle','/cmsstatic/img/sauces/Blazin-Saddle-XXX-Hot-Habanero-Pepper-Sauce-Bottle.jpg'),(802,'alt1',NULL,'Blazin Saddle XXX Hot Habanero Pepper Sauce Close-up','/cmsstatic/img/sauces/Blazin-Saddle-XXX-Hot-Habanero-Pepper-Sauce-Close.jpg'),(901,'primary',NULL,'Armageddon The Hot Sauce To End All Bottle','/cmsstatic/img/sauces/Armageddon-The-Hot-Sauce-To-End-All-Bottle.jpg'),(902,'alt1',NULL,'Armageddon The Hot Sauce To End All Close-up','/cmsstatic/img/sauces/Armageddon-The-Hot-Sauce-To-End-All-Close.jpg'),(1001,'primary',NULL,'Dr. Chilemeisters Insane Hot Sauce Bottle','/cmsstatic/img/sauces/Dr.-Chilemeisters-Insane-Hot-Sauce-Bottle.jpg'),(1002,'alt1',NULL,'Dr. Chilemeisters Insane Hot Sauce Close-up','/cmsstatic/img/sauces/Dr.-Chilemeisters-Insane-Hot-Sauce-Close.jpg'),(1101,'primary',NULL,'Bull Snort Cowboy Cayenne Pepper Hot Sauce Bottle','/cmsstatic/img/sauces/Bull-Snort-Cowboy-Cayenne-Pepper-Hot-Sauce-Bottle.jpg'),(1102,'alt1',NULL,'Bull Snort Cowboy Cayenne Pepper Hot Sauce Close-up','/cmsstatic/img/sauces/Bull-Snort-Cowboy-Cayenne-Pepper-Hot-Sauce-Close.jpg'),(1201,'primary',NULL,'Cafe Louisiane Sweet Cajun Blackening Sauce Bottle','/cmsstatic/img/sauces/Cafe-Louisiane-Sweet-Cajun-Blackening-Sauce-Bottle.jpg'),(1202,'alt1',NULL,'Cafe Louisiane Sweet Cajun Blackening Sauce Close-up','/cmsstatic/img/sauces/Cafe-Louisiane-Sweet-Cajun-Blackening-Sauce-Close.jpg'),(1301,'primary',NULL,'Bull Snort Smokin Toncils Hot Sauce Bottle','/cmsstatic/img/sauces/Bull-Snort-Smokin-Toncils-Hot-Sauce-Bottle.jpg'),(1302,'alt1',NULL,'Bull Snort Smokin Toncils Hot Sauce Close-up','/cmsstatic/img/sauces/Bull-Snort-Smokin-Toncils-Hot-Sauce-Close.jpg'),(1401,'primary',NULL,'Cool Cayenne Pepper Hot Sauce Bottle','/cmsstatic/img/sauces/Cool-Cayenne-Pepper-Hot-Sauce-Bottle.jpg'),(1402,'alt1',NULL,'Cool Cayenne Pepper Hot Sauce Close-up','/cmsstatic/img/sauces/Cool-Cayenne-Pepper-Hot-Sauce-Close.jpg'),(1501,'primary',NULL,'Roasted Garlic Hot Sauce Bottle','/cmsstatic/img/sauces/Roasted-Garlic-Hot-Sauce-Bottle.jpg'),(1502,'alt1',NULL,'Roasted Garlic Hot Sauce Close-up','/cmsstatic/img/sauces/Roasted-Garlic-Hot-Sauce-Close.jpg'),(1601,'primary',NULL,'Scotch Bonnet Hot Sauce Bottle','/cmsstatic/img/sauces/Scotch-Bonnet-Hot-Sauce-Bottle.jpg'),(1602,'alt1',NULL,'Scotch Bonnet Hot Sauce Close-up','/cmsstatic/img/sauces/Scotch-Bonnet-Hot-Sauce-Close.jpg'),(1701,'primary',NULL,'Insanity Sauce Bottle','/cmsstatic/img/sauces/Insanity-Sauce-Bottle.jpg'),(1702,'alt1',NULL,'Insanity Sauce Close-up','/cmsstatic/img/sauces/Insanity-Sauce-Close.jpg'),(1801,'primary',NULL,'Hurtin Jalepeno Hot Sauce Bottle','/cmsstatic/img/sauces/Hurtin-Jalepeno-Hot-Sauce-Bottle.jpg'),(1802,'alt1',NULL,'Hurtin Jalepeno Hot Sauce Close-up','/cmsstatic/img/sauces/Hurtin-Jalepeno-Hot-Sauce-Close.jpg'),(1901,'primary',NULL,'Roasted Red Pepper and Chipotle Hot Sauce Bottle','/cmsstatic/img/sauces/Roasted-Red-Pepper-and-Chipotle-Hot-Sauce-Bottle.jpg'),(1902,'alt1',NULL,'Roasted Red Pepper and Chipotle Hot Sauce Close-up','/cmsstatic/img/sauces/Roasted-Red-Pepper-and-Chipotle-Hot-Sauce-Close.jpg'),(10001,'primary','Black','Hawt Like a Habanero Men\'s Black','/cmsstatic/img/merch/habanero_mens_black.jpg'),(10002,'primary','Red','Hawt Like a Habanero Men\'s Red','/cmsstatic/img/merch/habanero_mens_red.jpg'),(10003,'primary','Silver','Hawt Like a Habanero Men\'s Silver','/cmsstatic/img/merch/habanero_mens_silver.jpg'),(20001,'primary','Black','Hawt Like a Habanero Women\'s Black','/cmsstatic/img/merch/habanero_womens_black.jpg'),(20002,'primary','Red','Hawt Like a Habanero Women\'s Red','/cmsstatic/img/merch/habanero_womens_red.jpg'),(20003,'primary','Silver','Hawt Like a Habanero Women\'s Silver','/cmsstatic/img/merch/habanero_womens_silver.jpg'),(30001,'primary','Black','Heat Clinic Hand-Drawn Men\'s Black','/cmsstatic/img/merch/heat_clinic_handdrawn_mens_black.jpg'),(30002,'primary','Red','Heat Clinic Hand-Drawn Men\'s Red','/cmsstatic/img/merch/heat_clinic_handdrawn_mens_red.jpg'),(30003,'primary','Silver','Heat Clinic Hand-Drawn Men\'s Silver','/cmsstatic/img/merch/heat_clinic_handdrawn_mens_silver.jpg'),(40001,'primary','Black','Heat Clinic Hand-Drawn Women\'s Black','/cmsstatic/img/merch/heat_clinic_handdrawn_womens_black.jpg'),(40002,'primary','Red','Heat Clinic Hand-Drawn Women\'s Red','/cmsstatic/img/merch/heat_clinic_handdrawn_womens_red.jpg'),(40003,'primary','Silver','Heat Clinic Hand-Drawn Women\'s Silver','/cmsstatic/img/merch/heat_clinic_handdrawn_womens_silver.jpg'),(50001,'primary','Black','Heat Clinic Mascot Men\'s Black','/cmsstatic/img/merch/heat_clinic_mascot_mens_black.jpg'),(50002,'primary','Red','Heat Clinic Mascot Men\'s Red','/cmsstatic/img/merch/heat_clinic_mascot_mens_red.jpg'),(50003,'primary','Silver','Heat Clinic Mascot Men\'s Silver','/cmsstatic/img/merch/heat_clinic_mascot_mens_silver.jpg'),(60001,'primary','Black','Heat Clinic Mascot Women\'s Black','/cmsstatic/img/merch/heat_clinic_mascot_womens_black.jpg'),(60002,'primary','Red','Heat Clinic Mascot Women\'s Red','/cmsstatic/img/merch/heat_clinic_mascot_womens_red.jpg'),(60003,'primary','Silver','Heat Clinic Mascot Women\'s Silver','/cmsstatic/img/merch/heat_clinic_mascot_womens_silver.jpg'),(100004,NULL,NULL,NULL,'/cmsstatic/product/10000/images-2.jpeg'),(100005,NULL,NULL,NULL,'/cmsstatic/product/10001/3max.jpg'),(100007,NULL,NULL,NULL,'/cmsstatic/product/10002/72bd739c-e7d7-43dc-8cf2-7d6b0508248a_1.415e2c1e19dbe68793408dc10b171894.jpeg'),(100009,NULL,NULL,NULL,'/cmsstatic/product/1422469609-6846-jaquette-avant.jpg'),(100010,NULL,NULL,NULL,'/cmsstatic/product/81+aUb8+LbL._SL1500_.jpg'),(100011,NULL,NULL,NULL,'/cmsstatic/product/10005/1467969693-7564-jaquette-avant.jpg'),(100012,NULL,NULL,NULL,'/cmsstatic/product/jaquette-grand-theft-auto-v-playstation-4-ps4-cover-avant-g-1415122088.jpg'),(100050,NULL,NULL,NULL,'/cmsstatic/product/1457627765-1035-jaquette-avant.jpg');
/*!40000 ALTER TABLE `blc_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_module_configuration`
--

DROP TABLE IF EXISTS `blc_module_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_module_configuration` (
  `MODULE_CONFIG_ID` bigint(20) NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `CONFIG_TYPE` varchar(255) NOT NULL,
  `IS_DEFAULT` tinyint(1) NOT NULL,
  `MODULE_NAME` varchar(255) NOT NULL,
  `MODULE_PRIORITY` int(11) NOT NULL,
  PRIMARY KEY (`MODULE_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_module_configuration`
--

LOCK TABLES `blc_module_configuration` WRITE;
/*!40000 ALTER TABLE `blc_module_configuration` DISABLE KEYS */;
INSERT INTO `blc_module_configuration` VALUES (-1,NULL,'2017-03-11 11:52:38',NULL,NULL,NULL,NULL,NULL,'SITE_MAP',1,'SITE_MAP',100);
/*!40000 ALTER TABLE `blc_module_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer`
--

DROP TABLE IF EXISTS `blc_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_offer` (
  `OFFER_ID` bigint(20) NOT NULL,
  `APPLY_TO_SALE_PRICE` tinyint(1) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `AUTOMATICALLY_ADDED` tinyint(1) DEFAULT NULL,
  `COMBINABLE_WITH_OTHER_OFFERS` tinyint(1) DEFAULT NULL,
  `OFFER_DESCRIPTION` varchar(255) DEFAULT NULL,
  `OFFER_DISCOUNT_TYPE` varchar(255) DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `MARKETING_MESSASGE` varchar(255) DEFAULT NULL,
  `MAX_USES_PER_CUSTOMER` bigint(20) DEFAULT NULL,
  `MAX_USES` int(11) DEFAULT NULL,
  `OFFER_NAME` varchar(255) NOT NULL,
  `OFFER_ITEM_QUALIFIER_RULE` varchar(255) DEFAULT NULL,
  `OFFER_ITEM_TARGET_RULE` varchar(255) DEFAULT NULL,
  `ORDER_MIN_TOTAL` decimal(19,5) DEFAULT NULL,
  `OFFER_PRIORITY` int(11) DEFAULT NULL,
  `QUALIFYING_ITEM_MIN_TOTAL` decimal(19,5) DEFAULT NULL,
  `REQUIRES_RELATED_TAR_QUAL` tinyint(1) DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `TARGET_SYSTEM` varchar(255) DEFAULT NULL,
  `TOTALITARIAN_OFFER` tinyint(1) DEFAULT NULL,
  `OFFER_TYPE` varchar(255) NOT NULL,
  `OFFER_VALUE` decimal(19,5) NOT NULL,
  PRIMARY KEY (`OFFER_ID`),
  KEY `OFFER_DISCOUNT_INDEX` (`OFFER_DISCOUNT_TYPE`),
  KEY `OFFER_MARKETING_MESSAGE_INDEX` (`MARKETING_MESSASGE`),
  KEY `OFFER_NAME_INDEX` (`OFFER_NAME`),
  KEY `OFFER_TYPE_INDEX` (`OFFER_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer`
--

LOCK TABLES `blc_offer` WRITE;
/*!40000 ALTER TABLE `blc_offer` DISABLE KEYS */;
INSERT INTO `blc_offer` VALUES (1,0,NULL,0,1,NULL,'PERCENT_OFF','2020-01-01 00:00:00',NULL,NULL,0,'Shirts Special',NULL,'NONE',NULL,NULL,NULL,NULL,'2017-03-11 00:00:00',NULL,NULL,'ORDER_ITEM',20.00000);
/*!40000 ALTER TABLE `blc_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_audit`
--

DROP TABLE IF EXISTS `blc_offer_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_offer_audit` (
  `OFFER_AUDIT_ID` bigint(20) NOT NULL,
  `CUSTOMER_ID` bigint(20) DEFAULT NULL,
  `OFFER_CODE_ID` bigint(20) DEFAULT NULL,
  `OFFER_ID` bigint(20) DEFAULT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  `REDEEMED_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`OFFER_AUDIT_ID`),
  KEY `OFFERAUDIT_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `OFFERAUDIT_OFFER_CODE_INDEX` (`OFFER_CODE_ID`),
  KEY `OFFERAUDIT_OFFER_INDEX` (`OFFER_ID`),
  KEY `OFFERAUDIT_ORDER_INDEX` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_audit`
--

LOCK TABLES `blc_offer_audit` WRITE;
/*!40000 ALTER TABLE `blc_offer_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_offer_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_code`
--

DROP TABLE IF EXISTS `blc_offer_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_offer_code` (
  `OFFER_CODE_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `MAX_USES` int(11) DEFAULT NULL,
  `OFFER_CODE` varchar(255) NOT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `USES` int(11) DEFAULT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`OFFER_CODE_ID`),
  KEY `OFFERCODE_OFFER_INDEX` (`OFFER_ID`),
  KEY `OFFERCODE_CODE_INDEX` (`OFFER_CODE`),
  KEY `FK76B8C8D6D5F3FAF4` (`OFFER_ID`),
  CONSTRAINT `FK76B8C8D6D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_code`
--

LOCK TABLES `blc_offer_code` WRITE;
/*!40000 ALTER TABLE `blc_offer_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_offer_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_info`
--

DROP TABLE IF EXISTS `blc_offer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_offer_info` (
  `OFFER_INFO_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`OFFER_INFO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_info`
--

LOCK TABLES `blc_offer_info` WRITE;
/*!40000 ALTER TABLE `blc_offer_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_offer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_info_fields`
--

DROP TABLE IF EXISTS `blc_offer_info_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_offer_info_fields` (
  `OFFER_INFO_FIELDS_ID` bigint(20) NOT NULL,
  `FIELD_VALUE` varchar(255) DEFAULT NULL,
  `FIELD_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`OFFER_INFO_FIELDS_ID`,`FIELD_NAME`),
  KEY `FKA901886183AE7237` (`OFFER_INFO_FIELDS_ID`),
  CONSTRAINT `FKA901886183AE7237` FOREIGN KEY (`OFFER_INFO_FIELDS_ID`) REFERENCES `blc_offer_info` (`OFFER_INFO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_info_fields`
--

LOCK TABLES `blc_offer_info_fields` WRITE;
/*!40000 ALTER TABLE `blc_offer_info_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_offer_info_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_item_criteria`
--

DROP TABLE IF EXISTS `blc_offer_item_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_offer_item_criteria` (
  `OFFER_ITEM_CRITERIA_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_MATCH_RULE` longtext,
  `QUANTITY` int(11) NOT NULL,
  PRIMARY KEY (`OFFER_ITEM_CRITERIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_item_criteria`
--

LOCK TABLES `blc_offer_item_criteria` WRITE;
/*!40000 ALTER TABLE `blc_offer_item_criteria` DISABLE KEYS */;
INSERT INTO `blc_offer_item_criteria` VALUES (1,'MvelHelper.toUpperCase(orderItem.?category.?name)==MvelHelper.toUpperCase(\"merchandise\")',1);
/*!40000 ALTER TABLE `blc_offer_item_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_rule`
--

DROP TABLE IF EXISTS `blc_offer_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_offer_rule` (
  `OFFER_RULE_ID` bigint(20) NOT NULL,
  `MATCH_RULE` longtext,
  PRIMARY KEY (`OFFER_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_rule`
--

LOCK TABLES `blc_offer_rule` WRITE;
/*!40000 ALTER TABLE `blc_offer_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_offer_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_offer_rule_map`
--

DROP TABLE IF EXISTS `blc_offer_rule_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_offer_rule_map` (
  `OFFER_OFFER_RULE_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  `BLC_OFFER_OFFER_ID` bigint(20) NOT NULL,
  `OFFER_RULE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`OFFER_OFFER_RULE_ID`),
  KEY `FKCA468FE245C66D1D` (`BLC_OFFER_OFFER_ID`),
  KEY `FKCA468FE2C11A218D` (`OFFER_RULE_ID`),
  CONSTRAINT `FKCA468FE245C66D1D` FOREIGN KEY (`BLC_OFFER_OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`),
  CONSTRAINT `FKCA468FE2C11A218D` FOREIGN KEY (`OFFER_RULE_ID`) REFERENCES `blc_offer_rule` (`OFFER_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_offer_rule_map`
--

LOCK TABLES `blc_offer_rule_map` WRITE;
/*!40000 ALTER TABLE `blc_offer_rule_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_offer_rule_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order`
--

DROP TABLE IF EXISTS `blc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order` (
  `ORDER_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ORDER_NUMBER` varchar(255) DEFAULT NULL,
  `IS_PREVIEW` tinyint(1) DEFAULT NULL,
  `ORDER_STATUS` varchar(255) DEFAULT NULL,
  `ORDER_SUBTOTAL` decimal(19,5) DEFAULT NULL,
  `SUBMIT_DATE` datetime DEFAULT NULL,
  `TAX_OVERRIDE` tinyint(1) DEFAULT NULL,
  `ORDER_TOTAL` decimal(19,5) DEFAULT NULL,
  `TOTAL_SHIPPING` decimal(19,5) DEFAULT NULL,
  `TOTAL_TAX` decimal(19,5) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `LOCALE_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ID`),
  KEY `ORDER_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `ORDER_EMAIL_INDEX` (`EMAIL_ADDRESS`),
  KEY `ORDER_NAME_INDEX` (`NAME`),
  KEY `ORDER_NUMBER_INDEX` (`ORDER_NUMBER`),
  KEY `ORDER_STATUS_INDEX` (`ORDER_STATUS`),
  KEY `FK8F5B64A83E2FC4F9` (`CURRENCY_CODE`),
  KEY `FK8F5B64A87470F437` (`CUSTOMER_ID`),
  KEY `FK8F5B64A8A1E1C128` (`LOCALE_CODE`),
  CONSTRAINT `FK8F5B64A83E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`),
  CONSTRAINT `FK8F5B64A87470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FK8F5B64A8A1E1C128` FOREIGN KEY (`LOCALE_CODE`) REFERENCES `blc_locale` (`LOCALE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order`
--

LOCK TABLES `blc_order` WRITE;
/*!40000 ALTER TABLE `blc_order` DISABLE KEYS */;
INSERT INTO `blc_order` VALUES (1,3000,'2017-03-21 17:06:34','2017-03-21 17:06:35',3000,NULL,NULL,NULL,NULL,'IN_PROCESS',6.99000,NULL,NULL,6.99000,0.00000,0.00000,'USD',3000,'en_US'),(51,3700,'2017-03-25 14:05:09','2017-03-25 14:05:09',3700,NULL,NULL,NULL,NULL,'IN_PROCESS',6.99000,NULL,NULL,6.99000,0.00000,0.00000,'USD',3700,'en_US');
/*!40000 ALTER TABLE `blc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_adjustment`
--

DROP TABLE IF EXISTS `blc_order_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_adjustment` (
  `ORDER_ADJUSTMENT_ID` bigint(20) NOT NULL,
  `ADJUSTMENT_REASON` varchar(255) NOT NULL,
  `ADJUSTMENT_VALUE` decimal(19,5) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ADJUSTMENT_ID`),
  KEY `ORDERADJUST_OFFER_INDEX` (`OFFER_ID`),
  KEY `ORDERADJUST_ORDER_INDEX` (`ORDER_ID`),
  KEY `FK1E92D164D5F3FAF4` (`OFFER_ID`),
  KEY `FK1E92D16489FE8A02` (`ORDER_ID`),
  CONSTRAINT `FK1E92D16489FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`),
  CONSTRAINT `FK1E92D164D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_adjustment`
--

LOCK TABLES `blc_order_adjustment` WRITE;
/*!40000 ALTER TABLE `blc_order_adjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_attribute`
--

DROP TABLE IF EXISTS `blc_order_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_attribute` (
  `ORDER_ATTRIBUTE_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `ORDER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_ATTRIBUTE_ID`),
  KEY `FKB3A467A589FE8A02` (`ORDER_ID`),
  CONSTRAINT `FKB3A467A589FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_attribute`
--

LOCK TABLES `blc_order_attribute` WRITE;
/*!40000 ALTER TABLE `blc_order_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_item`
--

DROP TABLE IF EXISTS `blc_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_item` (
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `DISCOUNTS_ALLOWED` tinyint(1) DEFAULT NULL,
  `ITEM_TAXABLE_FLAG` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ORDER_ITEM_TYPE` varchar(255) DEFAULT NULL,
  `PRICE` decimal(19,5) DEFAULT NULL,
  `QUANTITY` int(11) NOT NULL,
  `RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `RETAIL_PRICE_OVERRIDE` tinyint(1) DEFAULT NULL,
  `SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `SALE_PRICE_OVERRIDE` tinyint(1) DEFAULT NULL,
  `TOTAL_TAX` decimal(19,2) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `GIFT_WRAP_ITEM_ID` bigint(20) DEFAULT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  `PARENT_ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  `PERSONAL_MESSAGE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`),
  KEY `ORDERITEM_CATEGORY_INDEX` (`CATEGORY_ID`),
  KEY `ORDERITEM_GIFT_INDEX` (`GIFT_WRAP_ITEM_ID`),
  KEY `ORDERITEM_ORDER_INDEX` (`ORDER_ID`),
  KEY `ORDERITEM_TYPE_INDEX` (`ORDER_ITEM_TYPE`),
  KEY `ORDERITEM_PARENT_INDEX` (`PARENT_ORDER_ITEM_ID`),
  KEY `ORDERITEM_MESSAGE_INDEX` (`PERSONAL_MESSAGE_ID`),
  KEY `FK9A2E704A15D1A13D` (`CATEGORY_ID`),
  KEY `FK9A2E704AFD2F1F10` (`GIFT_WRAP_ITEM_ID`),
  KEY `FK9A2E704A89FE8A02` (`ORDER_ID`),
  KEY `FK9A2E704AB0B0D00A` (`PARENT_ORDER_ITEM_ID`),
  KEY `FK9A2E704A77F565E1` (`PERSONAL_MESSAGE_ID`),
  CONSTRAINT `FK9A2E704A15D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FK9A2E704A77F565E1` FOREIGN KEY (`PERSONAL_MESSAGE_ID`) REFERENCES `blc_personal_message` (`PERSONAL_MESSAGE_ID`),
  CONSTRAINT `FK9A2E704A89FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`),
  CONSTRAINT `FK9A2E704AB0B0D00A` FOREIGN KEY (`PARENT_ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK9A2E704AFD2F1F10` FOREIGN KEY (`GIFT_WRAP_ITEM_ID`) REFERENCES `blc_giftwrap_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_item`
--

LOCK TABLES `blc_order_item` WRITE;
/*!40000 ALTER TABLE `blc_order_item` DISABLE KEYS */;
INSERT INTO `blc_order_item` VALUES (1,NULL,'2017-03-21 17:06:34','2017-03-21 17:06:35',NULL,NULL,1,'Day of the Dead Chipotle Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,1,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,1,NULL,NULL),(51,NULL,'2017-03-25 14:05:09','2017-03-25 14:05:09',NULL,NULL,1,'Day of the Dead Scotch Bonnet Hot Sauce','org.broadleafcommerce.core.order.domain.DiscreteOrderItem',6.99000,1,6.99000,NULL,6.99000,NULL,NULL,2002,NULL,51,NULL,NULL);
/*!40000 ALTER TABLE `blc_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_item_add_attr`
--

DROP TABLE IF EXISTS `blc_order_item_add_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_item_add_attr` (
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ORDER_ITEM_ID`,`NAME`),
  KEY `FKA466AB44B76B9466` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKA466AB44B76B9466` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_discrete_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_item_add_attr`
--

LOCK TABLES `blc_order_item_add_attr` WRITE;
/*!40000 ALTER TABLE `blc_order_item_add_attr` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_item_add_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_item_adjustment`
--

DROP TABLE IF EXISTS `blc_order_item_adjustment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_item_adjustment` (
  `ORDER_ITEM_ADJUSTMENT_ID` bigint(20) NOT NULL,
  `APPLIED_TO_SALE_PRICE` tinyint(1) DEFAULT NULL,
  `ADJUSTMENT_REASON` varchar(255) NOT NULL,
  `ADJUSTMENT_VALUE` decimal(19,5) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_ADJUSTMENT_ID`),
  KEY `OIADJUST_OFFER_INDEX` (`OFFER_ID`),
  KEY `OIADJUST_ITEM_INDEX` (`ORDER_ITEM_ID`),
  KEY `FKA2658C82D5F3FAF4` (`OFFER_ID`),
  KEY `FKA2658C829AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKA2658C829AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKA2658C82D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_item_adjustment`
--

LOCK TABLES `blc_order_item_adjustment` WRITE;
/*!40000 ALTER TABLE `blc_order_item_adjustment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_item_adjustment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_item_attribute`
--

DROP TABLE IF EXISTS `blc_order_item_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_item_attribute` (
  `ORDER_ITEM_ATTRIBUTE_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  `ORDER_ITEM_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ORDER_ITEM_ATTRIBUTE_ID`),
  KEY `FK9F1ED0C79AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK9F1ED0C79AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_item_attribute`
--

LOCK TABLES `blc_order_item_attribute` WRITE;
/*!40000 ALTER TABLE `blc_order_item_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_item_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_item_dtl_adj`
--

DROP TABLE IF EXISTS `blc_order_item_dtl_adj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_item_dtl_adj` (
  `ORDER_ITEM_DTL_ADJ_ID` bigint(20) NOT NULL,
  `APPLIED_TO_SALE_PRICE` tinyint(1) DEFAULT NULL,
  `OFFER_NAME` varchar(255) DEFAULT NULL,
  `ADJUSTMENT_REASON` varchar(255) NOT NULL,
  `ADJUSTMENT_VALUE` decimal(19,5) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_PRICE_DTL_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_DTL_ADJ_ID`),
  KEY `FK85F0248FD5F3FAF4` (`OFFER_ID`),
  KEY `FK85F0248FD4AEA2C0` (`ORDER_ITEM_PRICE_DTL_ID`),
  CONSTRAINT `FK85F0248FD4AEA2C0` FOREIGN KEY (`ORDER_ITEM_PRICE_DTL_ID`) REFERENCES `blc_order_item_price_dtl` (`ORDER_ITEM_PRICE_DTL_ID`),
  CONSTRAINT `FK85F0248FD5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_item_dtl_adj`
--

LOCK TABLES `blc_order_item_dtl_adj` WRITE;
/*!40000 ALTER TABLE `blc_order_item_dtl_adj` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_item_dtl_adj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_item_price_dtl`
--

DROP TABLE IF EXISTS `blc_order_item_price_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_item_price_dtl` (
  `ORDER_ITEM_PRICE_DTL_ID` bigint(20) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `USE_SALE_PRICE` tinyint(1) DEFAULT NULL,
  `ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_ITEM_PRICE_DTL_ID`),
  KEY `FK1FB64BF19AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FK1FB64BF19AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_item_price_dtl`
--

LOCK TABLES `blc_order_item_price_dtl` WRITE;
/*!40000 ALTER TABLE `blc_order_item_price_dtl` DISABLE KEYS */;
INSERT INTO `blc_order_item_price_dtl` VALUES (1,1,1,1),(51,1,1,51);
/*!40000 ALTER TABLE `blc_order_item_price_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_lock`
--

DROP TABLE IF EXISTS `blc_order_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_lock` (
  `LOCK_KEY` varchar(255) NOT NULL,
  `ORDER_ID` bigint(20) NOT NULL,
  `LAST_UPDATED` bigint(20) DEFAULT NULL,
  `LOCKED` char(1) DEFAULT NULL,
  PRIMARY KEY (`LOCK_KEY`,`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_lock`
--

LOCK TABLES `blc_order_lock` WRITE;
/*!40000 ALTER TABLE `blc_order_lock` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_multiship_option`
--

DROP TABLE IF EXISTS `blc_order_multiship_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_multiship_option` (
  `ORDER_MULTISHIP_OPTION_ID` bigint(20) NOT NULL,
  `ADDRESS_ID` bigint(20) DEFAULT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) DEFAULT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  `ORDER_ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_MULTISHIP_OPTION_ID`),
  KEY `MULTISHIP_OPTION_ORDER_INDEX` (`ORDER_ID`),
  KEY `FKB3D3F7D6C13085DD` (`ADDRESS_ID`),
  KEY `FKB3D3F7D681F34C7F` (`FULFILLMENT_OPTION_ID`),
  KEY `FKB3D3F7D689FE8A02` (`ORDER_ID`),
  KEY `FKB3D3F7D69AF166DF` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKB3D3F7D681F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKB3D3F7D689FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`),
  CONSTRAINT `FKB3D3F7D69AF166DF` FOREIGN KEY (`ORDER_ITEM_ID`) REFERENCES `blc_order_item` (`ORDER_ITEM_ID`),
  CONSTRAINT `FKB3D3F7D6C13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `blc_address` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_multiship_option`
--

LOCK TABLES `blc_order_multiship_option` WRITE;
/*!40000 ALTER TABLE `blc_order_multiship_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_multiship_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_offer_code_xref`
--

DROP TABLE IF EXISTS `blc_order_offer_code_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_offer_code_xref` (
  `ORDER_ID` bigint(20) NOT NULL,
  `OFFER_CODE_ID` bigint(20) NOT NULL,
  KEY `FKFDF0E8533BB10F6D` (`OFFER_CODE_ID`),
  KEY `FKFDF0E85389FE8A02` (`ORDER_ID`),
  CONSTRAINT `FKFDF0E8533BB10F6D` FOREIGN KEY (`OFFER_CODE_ID`) REFERENCES `blc_offer_code` (`OFFER_CODE_ID`),
  CONSTRAINT `FKFDF0E85389FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_offer_code_xref`
--

LOCK TABLES `blc_order_offer_code_xref` WRITE;
/*!40000 ALTER TABLE `blc_order_offer_code_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_offer_code_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_payment`
--

DROP TABLE IF EXISTS `blc_order_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_payment` (
  `ORDER_PAYMENT_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `GATEWAY_TYPE` varchar(255) DEFAULT NULL,
  `REFERENCE_NUMBER` varchar(255) DEFAULT NULL,
  `PAYMENT_TYPE` varchar(255) NOT NULL,
  `ADDRESS_ID` bigint(20) DEFAULT NULL,
  `ORDER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ORDER_PAYMENT_ID`),
  KEY `ORDERPAYMENT_ADDRESS_INDEX` (`ADDRESS_ID`),
  KEY `ORDERPAYMENT_ORDER_INDEX` (`ORDER_ID`),
  KEY `ORDERPAYMENT_REFERENCE_INDEX` (`REFERENCE_NUMBER`),
  KEY `ORDERPAYMENT_TYPE_INDEX` (`PAYMENT_TYPE`),
  KEY `FK9517A14FC13085DD` (`ADDRESS_ID`),
  KEY `FK9517A14F89FE8A02` (`ORDER_ID`),
  CONSTRAINT `FK9517A14F89FE8A02` FOREIGN KEY (`ORDER_ID`) REFERENCES `blc_order` (`ORDER_ID`),
  CONSTRAINT `FK9517A14FC13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `blc_address` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_payment`
--

LOCK TABLES `blc_order_payment` WRITE;
/*!40000 ALTER TABLE `blc_order_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_order_payment_transaction`
--

DROP TABLE IF EXISTS `blc_order_payment_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_order_payment_transaction` (
  `PAYMENT_TRANSACTION_ID` bigint(20) NOT NULL,
  `TRANSACTION_AMOUNT` decimal(19,2) DEFAULT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CUSTOMER_IP_ADDRESS` varchar(255) DEFAULT NULL,
  `DATE_RECORDED` datetime DEFAULT NULL,
  `RAW_RESPONSE` longtext,
  `SAVE_TOKEN` tinyint(1) DEFAULT NULL,
  `SUCCESS` tinyint(1) DEFAULT NULL,
  `TRANSACTION_TYPE` varchar(255) DEFAULT NULL,
  `ORDER_PAYMENT` bigint(20) NOT NULL,
  `PARENT_TRANSACTION` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PAYMENT_TRANSACTION_ID`),
  KEY `FK86FDE7CE6A69DD9D` (`ORDER_PAYMENT`),
  KEY `FK86FDE7CEE1B66C71` (`PARENT_TRANSACTION`),
  CONSTRAINT `FK86FDE7CE6A69DD9D` FOREIGN KEY (`ORDER_PAYMENT`) REFERENCES `blc_order_payment` (`ORDER_PAYMENT_ID`),
  CONSTRAINT `FK86FDE7CEE1B66C71` FOREIGN KEY (`PARENT_TRANSACTION`) REFERENCES `blc_order_payment_transaction` (`PAYMENT_TRANSACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_order_payment_transaction`
--

LOCK TABLES `blc_order_payment_transaction` WRITE;
/*!40000 ALTER TABLE `blc_order_payment_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_order_payment_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page`
--

DROP TABLE IF EXISTS `blc_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_page` (
  `PAGE_ID` bigint(20) NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `EXCLUDE_FROM_SITE_MAP` tinyint(1) DEFAULT NULL,
  `FULL_URL` varchar(255) DEFAULT NULL,
  `META_DESCRIPTION` varchar(255) DEFAULT NULL,
  `META_TITLE` varchar(255) DEFAULT NULL,
  `OFFLINE_FLAG` tinyint(1) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `PAGE_TMPLT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PAGE_ID`),
  KEY `PAGE_FULL_URL_INDEX` (`FULL_URL`),
  KEY `FKF41BEDD5D49D3961` (`PAGE_TMPLT_ID`),
  CONSTRAINT `FKF41BEDD5D49D3961` FOREIGN KEY (`PAGE_TMPLT_ID`) REFERENCES `blc_page_tmplt` (`PAGE_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page`
--

LOCK TABLES `blc_page` WRITE;
/*!40000 ALTER TABLE `blc_page` DISABLE KEYS */;
INSERT INTO `blc_page` VALUES (1,NULL,NULL,'About Us',NULL,'/about_us',NULL,NULL,NULL,NULL,1),(2,NULL,NULL,'FAQ',NULL,'/faq',NULL,NULL,NULL,NULL,1),(3,NULL,NULL,'New to Hot Sauce',NULL,'/new-to-hot-sauce',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `blc_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page_attributes`
--

DROP TABLE IF EXISTS `blc_page_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_page_attributes` (
  `ATTRIBUTE_ID` bigint(20) NOT NULL,
  `FIELD_NAME` varchar(255) NOT NULL,
  `FIELD_VALUE` varchar(255) DEFAULT NULL,
  `PAGE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ATTRIBUTE_ID`),
  KEY `PAGEATTRIBUTE_NAME_INDEX` (`FIELD_NAME`),
  KEY `PAGEATTRIBUTE_INDEX` (`PAGE_ID`),
  KEY `FK4FE27601883C2667` (`PAGE_ID`),
  CONSTRAINT `FK4FE27601883C2667` FOREIGN KEY (`PAGE_ID`) REFERENCES `blc_page` (`PAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page_attributes`
--

LOCK TABLES `blc_page_attributes` WRITE;
/*!40000 ALTER TABLE `blc_page_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_page_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page_fld`
--

DROP TABLE IF EXISTS `blc_page_fld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_page_fld` (
  `PAGE_FLD_ID` bigint(20) NOT NULL,
  `FLD_KEY` varchar(255) DEFAULT NULL,
  `LOB_VALUE` longtext,
  `VALUE` varchar(255) DEFAULT NULL,
  `PAGE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PAGE_FLD_ID`),
  KEY `FK86433AD4883C2667` (`PAGE_ID`),
  CONSTRAINT `FK86433AD4883C2667` FOREIGN KEY (`PAGE_ID`) REFERENCES `blc_page` (`PAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page_fld`
--

LOCK TABLES `blc_page_fld` WRITE;
/*!40000 ALTER TABLE `blc_page_fld` DISABLE KEYS */;
INSERT INTO `blc_page_fld` VALUES (1,'body',NULL,'test content',1),(2,'title',NULL,'test title',1),(3,'body',NULL,'<h2 style=\"text-align:center;\">This is an example of a content-managed page.</h2><h4 style=\"text-align:center;\"><a href=\"http://www.broadleafcommerce.com/features/content\">Click Here</a> to see more about Content Management in Broadleaf.</h4>',2),(4,'body',NULL,'<h2 style=\"text-align:center;\">This is an example of a content-managed page.</h2>',3);
/*!40000 ALTER TABLE `blc_page_fld` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page_item_criteria`
--

DROP TABLE IF EXISTS `blc_page_item_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_page_item_criteria` (
  `PAGE_ITEM_CRITERIA_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_MATCH_RULE` longtext,
  `QUANTITY` int(11) NOT NULL,
  PRIMARY KEY (`PAGE_ITEM_CRITERIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page_item_criteria`
--

LOCK TABLES `blc_page_item_criteria` WRITE;
/*!40000 ALTER TABLE `blc_page_item_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_page_item_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page_rule`
--

DROP TABLE IF EXISTS `blc_page_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_page_rule` (
  `PAGE_RULE_ID` bigint(20) NOT NULL,
  `MATCH_RULE` longtext,
  PRIMARY KEY (`PAGE_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page_rule`
--

LOCK TABLES `blc_page_rule` WRITE;
/*!40000 ALTER TABLE `blc_page_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_page_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page_rule_map`
--

DROP TABLE IF EXISTS `blc_page_rule_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_page_rule_map` (
  `BLC_PAGE_PAGE_ID` bigint(20) NOT NULL,
  `PAGE_RULE_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  PRIMARY KEY (`BLC_PAGE_PAGE_ID`,`MAP_KEY`),
  KEY `FK1ABA0CA336D91846` (`PAGE_RULE_ID`),
  KEY `FK1ABA0CA3C38455DD` (`BLC_PAGE_PAGE_ID`),
  CONSTRAINT `FK1ABA0CA336D91846` FOREIGN KEY (`PAGE_RULE_ID`) REFERENCES `blc_page_rule` (`PAGE_RULE_ID`),
  CONSTRAINT `FK1ABA0CA3C38455DD` FOREIGN KEY (`BLC_PAGE_PAGE_ID`) REFERENCES `blc_page` (`PAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page_rule_map`
--

LOCK TABLES `blc_page_rule_map` WRITE;
/*!40000 ALTER TABLE `blc_page_rule_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_page_rule_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_page_tmplt`
--

DROP TABLE IF EXISTS `blc_page_tmplt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_page_tmplt` (
  `PAGE_TMPLT_ID` bigint(20) NOT NULL,
  `TMPLT_DESCR` varchar(255) DEFAULT NULL,
  `TMPLT_NAME` varchar(255) DEFAULT NULL,
  `TMPLT_PATH` varchar(255) DEFAULT NULL,
  `LOCALE_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PAGE_TMPLT_ID`),
  KEY `FK325C9D5A1E1C128` (`LOCALE_CODE`),
  CONSTRAINT `FK325C9D5A1E1C128` FOREIGN KEY (`LOCALE_CODE`) REFERENCES `blc_locale` (`LOCALE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_page_tmplt`
--

LOCK TABLES `blc_page_tmplt` WRITE;
/*!40000 ALTER TABLE `blc_page_tmplt` DISABLE KEYS */;
INSERT INTO `blc_page_tmplt` VALUES (-3,'Outputs the body field.','NONE','NONE',NULL),(1,'This template provides a basic layout with header and footer surrounding the content and title.','Basic Template','/content/default',NULL);
/*!40000 ALTER TABLE `blc_page_tmplt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_payment_log`
--

DROP TABLE IF EXISTS `blc_payment_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_payment_log` (
  `PAYMENT_LOG_ID` bigint(20) NOT NULL,
  `AMOUNT_PAID` decimal(19,5) DEFAULT NULL,
  `EXCEPTION_MESSAGE` varchar(255) DEFAULT NULL,
  `LOG_TYPE` varchar(255) NOT NULL,
  `ORDER_PAYMENT_ID` bigint(20) DEFAULT NULL,
  `ORDER_PAYMENT_REF_NUM` varchar(255) DEFAULT NULL,
  `TRANSACTION_SUCCESS` tinyint(1) DEFAULT NULL,
  `TRANSACTION_TIMESTAMP` datetime NOT NULL,
  `TRANSACTION_TYPE` varchar(255) NOT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  `CUSTOMER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PAYMENT_LOG_ID`),
  KEY `PAYMENTLOG_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `PAYMENTLOG_LOGTYPE_INDEX` (`LOG_TYPE`),
  KEY `PAYMENTLOG_ORDERPAYMENT_INDEX` (`ORDER_PAYMENT_ID`),
  KEY `PAYMENTLOG_REFERENCE_INDEX` (`ORDER_PAYMENT_REF_NUM`),
  KEY `PAYMENTLOG_TRANTYPE_INDEX` (`TRANSACTION_TYPE`),
  KEY `PAYMENTLOG_USER_INDEX` (`USER_NAME`),
  KEY `FKA43703453E2FC4F9` (`CURRENCY_CODE`),
  KEY `FKA43703457470F437` (`CUSTOMER_ID`),
  CONSTRAINT `FKA43703453E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`),
  CONSTRAINT `FKA43703457470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_payment_log`
--

LOCK TABLES `blc_payment_log` WRITE;
/*!40000 ALTER TABLE `blc_payment_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_payment_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_personal_message`
--

DROP TABLE IF EXISTS `blc_personal_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_personal_message` (
  `PERSONAL_MESSAGE_ID` bigint(20) NOT NULL,
  `MESSAGE` varchar(255) DEFAULT NULL,
  `MESSAGE_FROM` varchar(255) DEFAULT NULL,
  `MESSAGE_TO` varchar(255) DEFAULT NULL,
  `OCCASION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PERSONAL_MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_personal_message`
--

LOCK TABLES `blc_personal_message` WRITE;
/*!40000 ALTER TABLE `blc_personal_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_personal_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_pgtmplt_fldgrp_xref`
--

DROP TABLE IF EXISTS `blc_pgtmplt_fldgrp_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_pgtmplt_fldgrp_xref` (
  `PG_TMPLT_FLD_GRP_ID` bigint(20) NOT NULL,
  `GROUP_ORDER` decimal(10,6) DEFAULT NULL,
  `FLD_GROUP_ID` bigint(20) DEFAULT NULL,
  `PAGE_TMPLT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PG_TMPLT_FLD_GRP_ID`),
  KEY `FK99D625F66A79BDB5` (`FLD_GROUP_ID`),
  KEY `FK99D625F6D49D3961` (`PAGE_TMPLT_ID`),
  CONSTRAINT `FK99D625F66A79BDB5` FOREIGN KEY (`FLD_GROUP_ID`) REFERENCES `blc_fld_group` (`FLD_GROUP_ID`),
  CONSTRAINT `FK99D625F6D49D3961` FOREIGN KEY (`PAGE_TMPLT_ID`) REFERENCES `blc_page_tmplt` (`PAGE_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_pgtmplt_fldgrp_xref`
--

LOCK TABLES `blc_pgtmplt_fldgrp_xref` WRITE;
/*!40000 ALTER TABLE `blc_pgtmplt_fldgrp_xref` DISABLE KEYS */;
INSERT INTO `blc_pgtmplt_fldgrp_xref` VALUES (1,0.000000,1,1),(2,0.000000,-3,-3);
/*!40000 ALTER TABLE `blc_pgtmplt_fldgrp_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_phone`
--

DROP TABLE IF EXISTS `blc_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_phone` (
  `PHONE_ID` bigint(20) NOT NULL,
  `COUNTRY_CODE` varchar(255) DEFAULT NULL,
  `EXTENSION` varchar(255) DEFAULT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `IS_DEFAULT` tinyint(1) DEFAULT NULL,
  `PHONE_NUMBER` varchar(255) NOT NULL,
  PRIMARY KEY (`PHONE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_phone`
--

LOCK TABLES `blc_phone` WRITE;
/*!40000 ALTER TABLE `blc_phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product`
--

DROP TABLE IF EXISTS `blc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_product` (
  `PRODUCT_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CAN_SELL_WITHOUT_OPTIONS` tinyint(1) DEFAULT NULL,
  `DISPLAY_TEMPLATE` varchar(255) DEFAULT NULL,
  `IS_FEATURED_PRODUCT` tinyint(1) NOT NULL,
  `MANUFACTURE` varchar(255) DEFAULT NULL,
  `MODEL` varchar(255) DEFAULT NULL,
  `OVERRIDE_GENERATED_URL` tinyint(1) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `URL_KEY` varchar(255) DEFAULT NULL,
  `DEFAULT_CATEGORY_ID` bigint(20) DEFAULT NULL,
  `DEFAULT_SKU_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  KEY `PRODUCT_CATEGORY_INDEX` (`DEFAULT_CATEGORY_ID`),
  KEY `PRODUCT_URL_INDEX` (`URL`,`URL_KEY`),
  KEY `FK5B95B7C9DF057C3F` (`DEFAULT_CATEGORY_ID`),
  KEY `FK5B95B7C96D386535` (`DEFAULT_SKU_ID`),
  CONSTRAINT `FK5B95B7C96D386535` FOREIGN KEY (`DEFAULT_SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`),
  CONSTRAINT `FK5B95B7C9DF057C3F` FOREIGN KEY (`DEFAULT_CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product`
--

LOCK TABLES `blc_product` WRITE;
/*!40000 ALTER TABLE `blc_product` DISABLE KEYS */;
INSERT INTO `blc_product` VALUES (1,NULL,NULL,NULL,1,'Blair\'s',NULL,NULL,'/hot-sauces/sudden_death_sauce',NULL,NULL,1),(2,NULL,NULL,NULL,0,'Blair\'s',NULL,NULL,'/hot-sauces/sweet_death_sauce',NULL,NULL,2),(3,NULL,NULL,NULL,0,'Salsa Express',NULL,NULL,'/hot-sauces/hoppin_hot_sauce',NULL,NULL,3),(4,NULL,NULL,NULL,0,'Spice Exchange',NULL,NULL,'/hot-sauces/day_of_the_dead_chipotle_hot_sauce',NULL,NULL,4),(5,NULL,NULL,NULL,0,'Spice Exchange',NULL,NULL,'/hot-sauces/day_of_the_dead_habanero_hot_sauce',NULL,NULL,5),(6,NULL,NULL,NULL,0,'Spice Exchange',NULL,NULL,'/hot-sauces/day_of_the_dead_scotch_bonnet_sauce',NULL,NULL,6),(7,NULL,NULL,NULL,0,'Garden Row',NULL,NULL,'/hot-sauces/green_ghost',NULL,NULL,7),(8,NULL,NULL,NULL,0,'D. L. Jardine\'s',NULL,NULL,'/hot-sauces/blazin_saddle_hot_habanero_pepper_sauce',NULL,NULL,8),(9,NULL,NULL,NULL,1,'Figueroa Brothers',NULL,NULL,'/hot-sauces/armageddon_hot_sauce_to_end_all',NULL,NULL,9),(10,NULL,NULL,NULL,0,'Figueroa Brothers',NULL,NULL,'/hot-sauces/dr_chilemeisters_insane_hot_sauce',NULL,NULL,10),(11,NULL,NULL,NULL,0,'Brazos Legends',NULL,NULL,'/hot-sauces/bull_snort_cowboy_cayenne_pepper_hot_sauce',NULL,NULL,11),(12,NULL,NULL,NULL,0,'Garden Row',NULL,NULL,'/hot-sauces/cafe_louisiane_sweet_cajun_blackening_sauce',NULL,NULL,12),(13,NULL,NULL,NULL,1,'Brazos Legends',NULL,NULL,'/hot-sauces/bull_snort_smokin_toncils_hot_sauce',NULL,NULL,13),(14,NULL,NULL,NULL,0,'Dave\'s Gourmet',NULL,NULL,'/hot-sauces/cool_cayenne_pepper_hot_sauce',NULL,NULL,14),(15,NULL,NULL,NULL,0,'Dave\'s Gourmet',NULL,NULL,'/hot-sauces/roasted_garlic_hot_sauce',NULL,NULL,15),(16,NULL,NULL,NULL,0,'Dave\'s Gourmet',NULL,NULL,'/hot-sauces/scotch_bonnet_hot_sauce',NULL,NULL,16),(17,NULL,NULL,NULL,0,'Dave\'s Gourmet',NULL,NULL,'/hot-sauces/insanity_sauce',NULL,NULL,17),(18,NULL,NULL,NULL,0,'Dave\'s Gourmet',NULL,NULL,'/hot-sauces/hurtin_jalepeno_hot_sauce',NULL,NULL,18),(19,NULL,NULL,NULL,0,'Dave\'s Gourmet',NULL,NULL,'/hot-sauces/roasted_red_pepper_chipotle_hot_sauce',NULL,NULL,19),(20,NULL,NULL,NULL,0,'Bundle Maker',NULL,NULL,'/bundle1',NULL,NULL,20),(21,NULL,NULL,NULL,0,'Bundle Maker',NULL,NULL,'/bundle2',NULL,NULL,21),(100,NULL,NULL,NULL,0,'The Heat Clinic',NULL,NULL,'/merchandise/hawt_like_a_habanero_mens',NULL,NULL,100),(200,NULL,NULL,NULL,0,'The Heat Clinic',NULL,NULL,'/merchandise/hawt_like_a_habanero_womens',NULL,NULL,200),(300,NULL,NULL,NULL,0,'The Heat Clinic',NULL,NULL,'/merchandise/heat_clinic_hand-drawn_mens',NULL,NULL,300),(400,NULL,NULL,NULL,0,'The Heat Clinic',NULL,NULL,'/merchandise/heat_clinic_hand-drawn_womens',NULL,NULL,400),(500,NULL,NULL,NULL,0,'The Heat Clinic',NULL,NULL,'/merchandise/heat_clinic_mascot_mens',NULL,NULL,500),(600,NULL,NULL,NULL,0,'The Heat Clinic',NULL,NULL,'/merchandise/heat_clinic_mascot_womens',NULL,NULL,600),(10000,'N',0,NULL,0,'Konami',NULL,0,'/video-games/pes2017',NULL,NULL,10004),(10001,'N',0,NULL,0,'Squar Enix',NULL,0,'/video-games/hitman',NULL,NULL,10005),(10002,'N',0,NULL,0,NULL,NULL,0,'/video-games/assassins-creed-syndicate-ps4',NULL,NULL,10007),(10003,'N',0,NULL,0,NULL,NULL,0,'/video-games/the-witcher-3-ps4',NULL,NULL,10009),(10004,'N',0,NULL,0,NULL,NULL,0,'/video-games/call-of-duty-black-ops-3-ps4',NULL,NULL,10010),(10005,'N',0,NULL,0,NULL,NULL,0,'/video-games/battlefield-1-ps4',NULL,NULL,10011),(10006,'N',0,NULL,0,NULL,NULL,0,'/video-games/gta-v-ps4',NULL,NULL,10012),(10050,'N',0,NULL,0,NULL,NULL,0,'/video-games/doom',NULL,NULL,10050);
/*!40000 ALTER TABLE `blc_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_attribute`
--

DROP TABLE IF EXISTS `blc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_product_attribute` (
  `PRODUCT_ATTRIBUTE_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `SEARCHABLE` tinyint(1) DEFAULT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PRODUCT_ATTRIBUTE_ID`),
  KEY `PRODUCTATTRIBUTE_NAME_INDEX` (`NAME`),
  KEY `PRODUCTATTRIBUTE_INDEX` (`PRODUCT_ID`),
  KEY `FK56CE05865F11A0B7` (`PRODUCT_ID`),
  CONSTRAINT `FK56CE05865F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_attribute`
--

LOCK TABLES `blc_product_attribute` WRITE;
/*!40000 ALTER TABLE `blc_product_attribute` DISABLE KEYS */;
INSERT INTO `blc_product_attribute` VALUES (1,'heatRange',NULL,'4',1),(2,'heatRange',NULL,'1',2),(3,'heatRange',NULL,'2',3),(4,'heatRange',NULL,'2',4),(5,'heatRange',NULL,'4',5),(6,'heatRange',NULL,'4',6),(7,'heatRange',NULL,'3',7),(8,'heatRange',NULL,'4',8),(9,'heatRange',NULL,'5',9),(10,'heatRange',NULL,'5',10),(11,'heatRange',NULL,'2',11),(12,'heatRange',NULL,'1',12),(13,'heatRange',NULL,'2',13),(14,'heatRange',NULL,'2',14),(15,'heatRange',NULL,'1',15),(16,'heatRange',NULL,'3',16),(17,'heatRange',NULL,'5',17),(18,'heatRange',NULL,'3',18),(19,'heatRange',NULL,'1',19);
/*!40000 ALTER TABLE `blc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_bundle`
--

DROP TABLE IF EXISTS `blc_product_bundle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_product_bundle` (
  `AUTO_BUNDLE` tinyint(1) DEFAULT NULL,
  `BUNDLE_PROMOTABLE` tinyint(1) DEFAULT NULL,
  `ITEMS_PROMOTABLE` tinyint(1) DEFAULT NULL,
  `PRICING_MODEL` varchar(255) DEFAULT NULL,
  `BUNDLE_PRIORITY` int(11) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PRODUCT_ID`),
  KEY `FK8CC5B85F11A0B7` (`PRODUCT_ID`),
  CONSTRAINT `FK8CC5B85F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_bundle`
--

LOCK TABLES `blc_product_bundle` WRITE;
/*!40000 ALTER TABLE `blc_product_bundle` DISABLE KEYS */;
INSERT INTO `blc_product_bundle` VALUES (0,0,0,'ITEM_SUM',99,20),(0,0,0,'BUNDLE',99,21);
/*!40000 ALTER TABLE `blc_product_bundle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_cross_sale`
--

DROP TABLE IF EXISTS `blc_product_cross_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_product_cross_sale` (
  `CROSS_SALE_PRODUCT_ID` bigint(20) NOT NULL,
  `PROMOTION_MESSAGE` varchar(255) DEFAULT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  `RELATED_SALE_PRODUCT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CROSS_SALE_PRODUCT_ID`),
  KEY `CROSSSALE_CATEGORY_INDEX` (`CATEGORY_ID`),
  KEY `CROSSSALE_INDEX` (`PRODUCT_ID`),
  KEY `CROSSSALE_RELATED_INDEX` (`RELATED_SALE_PRODUCT_ID`),
  KEY `FK8324FB3C15D1A13D` (`CATEGORY_ID`),
  KEY `FK8324FB3C5F11A0B7` (`PRODUCT_ID`),
  KEY `FK8324FB3C62D84F9B` (`RELATED_SALE_PRODUCT_ID`),
  CONSTRAINT `FK8324FB3C15D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FK8324FB3C5F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`),
  CONSTRAINT `FK8324FB3C62D84F9B` FOREIGN KEY (`RELATED_SALE_PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_cross_sale`
--

LOCK TABLES `blc_product_cross_sale` WRITE;
/*!40000 ALTER TABLE `blc_product_cross_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_product_cross_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_featured`
--

DROP TABLE IF EXISTS `blc_product_featured`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_product_featured` (
  `FEATURED_PRODUCT_ID` bigint(20) NOT NULL,
  `PROMOTION_MESSAGE` varchar(255) DEFAULT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`FEATURED_PRODUCT_ID`),
  KEY `PRODFEATURED_CATEGORY_INDEX` (`CATEGORY_ID`),
  KEY `PRODFEATURED_PRODUCT_INDEX` (`PRODUCT_ID`),
  KEY `FK4C49FFE415D1A13D` (`CATEGORY_ID`),
  KEY `FK4C49FFE45F11A0B7` (`PRODUCT_ID`),
  CONSTRAINT `FK4C49FFE415D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FK4C49FFE45F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_featured`
--

LOCK TABLES `blc_product_featured` WRITE;
/*!40000 ALTER TABLE `blc_product_featured` DISABLE KEYS */;
INSERT INTO `blc_product_featured` VALUES (1,NULL,1.000000,2001,18),(2,NULL,2.000000,2001,15),(3,NULL,3.000000,2001,200),(4,NULL,4.000000,2001,100),(5,NULL,1.000000,2003,500),(8,NULL,1.000000,2002,4),(9,NULL,2.000000,2002,5),(10,NULL,3.000000,2002,3);
/*!40000 ALTER TABLE `blc_product_featured` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_option`
--

DROP TABLE IF EXISTS `blc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_product_option` (
  `PRODUCT_OPTION_ID` bigint(20) NOT NULL,
  `ATTRIBUTE_NAME` varchar(255) DEFAULT NULL,
  `DISPLAY_ORDER` int(11) DEFAULT NULL,
  `ERROR_CODE` varchar(255) DEFAULT NULL,
  `ERROR_MESSAGE` varchar(255) DEFAULT NULL,
  `LABEL` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `VALIDATION_STRATEGY_TYPE` varchar(255) DEFAULT NULL,
  `VALIDATION_TYPE` varchar(255) DEFAULT NULL,
  `REQUIRED` tinyint(1) DEFAULT NULL,
  `OPTION_TYPE` varchar(255) DEFAULT NULL,
  `USE_IN_SKU_GENERATION` tinyint(1) DEFAULT NULL,
  `VALIDATION_STRING` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_OPTION_ID`),
  KEY `PRODUCT_OPTION_NAME_INDEX` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_option`
--

LOCK TABLES `blc_product_option` WRITE;
/*!40000 ALTER TABLE `blc_product_option` DISABLE KEYS */;
INSERT INTO `blc_product_option` VALUES (1,'COLOR',NULL,NULL,NULL,'Shirt Color','Shirt Color','NONE',NULL,1,'COLOR',NULL,NULL),(2,'SIZE',NULL,NULL,NULL,'Shirt Size','Shirt Size','NONE',NULL,1,'SIZE',NULL,NULL),(3,'NAME',NULL,'INVALID_NAME','Name must be less than 30 characters, with only letters and spaces','Personalized Name','Personalized Name','SUBMIT_ORDER','REGEX',0,'TEXT',0,'[a-zA-Z ]{0,30}');
/*!40000 ALTER TABLE `blc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_option_value`
--

DROP TABLE IF EXISTS `blc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_product_option_value` (
  `PRODUCT_OPTION_VALUE_ID` bigint(20) NOT NULL,
  `ATTRIBUTE_VALUE` varchar(255) DEFAULT NULL,
  `DISPLAY_ORDER` bigint(20) DEFAULT NULL,
  `PRICE_ADJUSTMENT` decimal(19,5) DEFAULT NULL,
  `PRODUCT_OPTION_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PRODUCT_OPTION_VALUE_ID`),
  KEY `FK6DEEEDBD92EA8136` (`PRODUCT_OPTION_ID`),
  CONSTRAINT `FK6DEEEDBD92EA8136` FOREIGN KEY (`PRODUCT_OPTION_ID`) REFERENCES `blc_product_option` (`PRODUCT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_option_value`
--

LOCK TABLES `blc_product_option_value` WRITE;
/*!40000 ALTER TABLE `blc_product_option_value` DISABLE KEYS */;
INSERT INTO `blc_product_option_value` VALUES (1,'Black',1,NULL,1),(2,'Red',2,NULL,1),(3,'Silver',3,NULL,1),(11,'S',1,NULL,2),(12,'M',2,NULL,2),(13,'L',3,NULL,2),(14,'XL',4,NULL,2);
/*!40000 ALTER TABLE `blc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_option_xref`
--

DROP TABLE IF EXISTS `blc_product_option_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_product_option_xref` (
  `PRODUCT_OPTION_XREF_ID` bigint(20) NOT NULL,
  `PRODUCT_ID` bigint(20) NOT NULL,
  `PRODUCT_OPTION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PRODUCT_OPTION_XREF_ID`),
  KEY `FKDA42AB2F5F11A0B7` (`PRODUCT_ID`),
  KEY `FKDA42AB2F92EA8136` (`PRODUCT_OPTION_ID`),
  CONSTRAINT `FKDA42AB2F5F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`),
  CONSTRAINT `FKDA42AB2F92EA8136` FOREIGN KEY (`PRODUCT_OPTION_ID`) REFERENCES `blc_product_option` (`PRODUCT_OPTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_option_xref`
--

LOCK TABLES `blc_product_option_xref` WRITE;
/*!40000 ALTER TABLE `blc_product_option_xref` DISABLE KEYS */;
INSERT INTO `blc_product_option_xref` VALUES (1,100,1),(2,200,1),(3,300,1),(4,400,1),(5,500,1),(6,600,1),(7,100,2),(8,200,2),(9,300,2),(10,400,2),(11,500,2),(12,600,2),(13,100,3),(1000,14,1),(1001,14,2);
/*!40000 ALTER TABLE `blc_product_option_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_product_up_sale`
--

DROP TABLE IF EXISTS `blc_product_up_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_product_up_sale` (
  `UP_SALE_PRODUCT_ID` bigint(20) NOT NULL,
  `PROMOTION_MESSAGE` varchar(255) DEFAULT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  `RELATED_SALE_PRODUCT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`UP_SALE_PRODUCT_ID`),
  KEY `UPSALE_CATEGORY_INDEX` (`CATEGORY_ID`),
  KEY `UPSALE_PRODUCT_INDEX` (`PRODUCT_ID`),
  KEY `UPSALE_RELATED_INDEX` (`RELATED_SALE_PRODUCT_ID`),
  KEY `FKF69054F515D1A13D` (`CATEGORY_ID`),
  KEY `FKF69054F55F11A0B7` (`PRODUCT_ID`),
  KEY `FKF69054F562D84F9B` (`RELATED_SALE_PRODUCT_ID`),
  CONSTRAINT `FKF69054F515D1A13D` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`),
  CONSTRAINT `FKF69054F55F11A0B7` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`),
  CONSTRAINT `FKF69054F562D84F9B` FOREIGN KEY (`RELATED_SALE_PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_product_up_sale`
--

LOCK TABLES `blc_product_up_sale` WRITE;
/*!40000 ALTER TABLE `blc_product_up_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_product_up_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_qual_crit_offer_xref`
--

DROP TABLE IF EXISTS `blc_qual_crit_offer_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_qual_crit_offer_xref` (
  `OFFER_QUAL_CRIT_ID` bigint(20) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `OFFER_ITEM_CRITERIA_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`OFFER_QUAL_CRIT_ID`),
  KEY `FKD592E919D5F3FAF4` (`OFFER_ID`),
  KEY `FKD592E9193615A91A` (`OFFER_ITEM_CRITERIA_ID`),
  CONSTRAINT `FKD592E9193615A91A` FOREIGN KEY (`OFFER_ITEM_CRITERIA_ID`) REFERENCES `blc_offer_item_criteria` (`OFFER_ITEM_CRITERIA_ID`),
  CONSTRAINT `FKD592E919D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_qual_crit_offer_xref`
--

LOCK TABLES `blc_qual_crit_offer_xref` WRITE;
/*!40000 ALTER TABLE `blc_qual_crit_offer_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_qual_crit_offer_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_qual_crit_page_xref`
--

DROP TABLE IF EXISTS `blc_qual_crit_page_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_qual_crit_page_xref` (
  `PAGE_ID` bigint(20) NOT NULL,
  `PAGE_ITEM_CRITERIA_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PAGE_ID`,`PAGE_ITEM_CRITERIA_ID`),
  UNIQUE KEY `UK_874BE5902B6BC67F` (`PAGE_ITEM_CRITERIA_ID`),
  KEY `FK874BE590883C2667` (`PAGE_ID`),
  KEY `FK874BE590378418CD` (`PAGE_ITEM_CRITERIA_ID`),
  CONSTRAINT `FK874BE590378418CD` FOREIGN KEY (`PAGE_ITEM_CRITERIA_ID`) REFERENCES `blc_page_item_criteria` (`PAGE_ITEM_CRITERIA_ID`),
  CONSTRAINT `FK874BE590883C2667` FOREIGN KEY (`PAGE_ID`) REFERENCES `blc_page` (`PAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_qual_crit_page_xref`
--

LOCK TABLES `blc_qual_crit_page_xref` WRITE;
/*!40000 ALTER TABLE `blc_qual_crit_page_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_qual_crit_page_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_qual_crit_sc_xref`
--

DROP TABLE IF EXISTS `blc_qual_crit_sc_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_qual_crit_sc_xref` (
  `SC_ID` bigint(20) NOT NULL,
  `SC_ITEM_CRITERIA_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SC_ID`,`SC_ITEM_CRITERIA_ID`),
  UNIQUE KEY `UK_C4A353AFFF06F4DE` (`SC_ITEM_CRITERIA_ID`),
  KEY `FKC4A353AF85C77F2B` (`SC_ITEM_CRITERIA_ID`),
  KEY `FKC4A353AF13D95585` (`SC_ID`),
  CONSTRAINT `FKC4A353AF13D95585` FOREIGN KEY (`SC_ID`) REFERENCES `blc_sc` (`SC_ID`),
  CONSTRAINT `FKC4A353AF85C77F2B` FOREIGN KEY (`SC_ITEM_CRITERIA_ID`) REFERENCES `blc_sc_item_criteria` (`SC_ITEM_CRITERIA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_qual_crit_sc_xref`
--

LOCK TABLES `blc_qual_crit_sc_xref` WRITE;
/*!40000 ALTER TABLE `blc_qual_crit_sc_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_qual_crit_sc_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_rating_detail`
--

DROP TABLE IF EXISTS `blc_rating_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_rating_detail` (
  `RATING_DETAIL_ID` bigint(20) NOT NULL,
  `RATING` double NOT NULL,
  `RATING_SUBMITTED_DATE` datetime NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `RATING_SUMMARY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`RATING_DETAIL_ID`),
  KEY `RATING_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `FKC9D04AD7470F437` (`CUSTOMER_ID`),
  KEY `FKC9D04ADD4E76BF4` (`RATING_SUMMARY_ID`),
  CONSTRAINT `FKC9D04AD7470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FKC9D04ADD4E76BF4` FOREIGN KEY (`RATING_SUMMARY_ID`) REFERENCES `blc_rating_summary` (`RATING_SUMMARY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_rating_detail`
--

LOCK TABLES `blc_rating_detail` WRITE;
/*!40000 ALTER TABLE `blc_rating_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_rating_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_rating_summary`
--

DROP TABLE IF EXISTS `blc_rating_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_rating_summary` (
  `RATING_SUMMARY_ID` bigint(20) NOT NULL,
  `AVERAGE_RATING` double NOT NULL,
  `ITEM_ID` varchar(255) NOT NULL,
  `RATING_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`RATING_SUMMARY_ID`),
  KEY `RATINGSUMM_ITEM_INDEX` (`ITEM_ID`),
  KEY `RATINGSUMM_TYPE_INDEX` (`RATING_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_rating_summary`
--

LOCK TABLES `blc_rating_summary` WRITE;
/*!40000 ALTER TABLE `blc_rating_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_rating_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_review_detail`
--

DROP TABLE IF EXISTS `blc_review_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_review_detail` (
  `REVIEW_DETAIL_ID` bigint(20) NOT NULL,
  `HELPFUL_COUNT` int(11) NOT NULL,
  `NOT_HELPFUL_COUNT` int(11) NOT NULL,
  `REVIEW_SUBMITTED_DATE` datetime NOT NULL,
  `REVIEW_STATUS` varchar(255) NOT NULL,
  `REVIEW_TEXT` varchar(255) NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `RATING_DETAIL_ID` bigint(20) DEFAULT NULL,
  `RATING_SUMMARY_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`REVIEW_DETAIL_ID`),
  KEY `REVIEWDETAIL_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `REVIEWDETAIL_RATING_INDEX` (`RATING_DETAIL_ID`),
  KEY `REVIEWDETAIL_SUMMARY_INDEX` (`RATING_SUMMARY_ID`),
  KEY `REVIEWDETAIL_STATUS_INDEX` (`REVIEW_STATUS`),
  KEY `FK9CD7E6927470F437` (`CUSTOMER_ID`),
  KEY `FK9CD7E69245DC39E0` (`RATING_DETAIL_ID`),
  KEY `FK9CD7E692D4E76BF4` (`RATING_SUMMARY_ID`),
  CONSTRAINT `FK9CD7E69245DC39E0` FOREIGN KEY (`RATING_DETAIL_ID`) REFERENCES `blc_rating_detail` (`RATING_DETAIL_ID`),
  CONSTRAINT `FK9CD7E6927470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FK9CD7E692D4E76BF4` FOREIGN KEY (`RATING_SUMMARY_ID`) REFERENCES `blc_rating_summary` (`RATING_SUMMARY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_review_detail`
--

LOCK TABLES `blc_review_detail` WRITE;
/*!40000 ALTER TABLE `blc_review_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_review_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_review_feedback`
--

DROP TABLE IF EXISTS `blc_review_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_review_feedback` (
  `REVIEW_FEEDBACK_ID` bigint(20) NOT NULL,
  `IS_HELPFUL` tinyint(1) NOT NULL,
  `CUSTOMER_ID` bigint(20) NOT NULL,
  `REVIEW_DETAIL_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`REVIEW_FEEDBACK_ID`),
  KEY `REVIEWFEED_CUSTOMER_INDEX` (`CUSTOMER_ID`),
  KEY `REVIEWFEED_DETAIL_INDEX` (`REVIEW_DETAIL_ID`),
  KEY `FK7CC929867470F437` (`CUSTOMER_ID`),
  KEY `FK7CC92986AE4769D6` (`REVIEW_DETAIL_ID`),
  CONSTRAINT `FK7CC929867470F437` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `blc_customer` (`CUSTOMER_ID`),
  CONSTRAINT `FK7CC92986AE4769D6` FOREIGN KEY (`REVIEW_DETAIL_ID`) REFERENCES `blc_review_detail` (`REVIEW_DETAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_review_feedback`
--

LOCK TABLES `blc_review_feedback` WRITE;
/*!40000 ALTER TABLE `blc_review_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_review_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_role`
--

DROP TABLE IF EXISTS `blc_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_role` (
  `ROLE_ID` bigint(20) NOT NULL,
  `ROLE_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ROLE_ID`),
  KEY `ROLE_NAME_INDEX` (`ROLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_role`
--

LOCK TABLES `blc_role` WRITE;
/*!40000 ALTER TABLE `blc_role` DISABLE KEYS */;
INSERT INTO `blc_role` VALUES (1,'ROLE_USER');
/*!40000 ALTER TABLE `blc_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sandbox`
--

DROP TABLE IF EXISTS `blc_sandbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sandbox` (
  `SANDBOX_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `AUTHOR` bigint(20) DEFAULT NULL,
  `COLOR` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `GO_LIVE_DATE` datetime DEFAULT NULL,
  `SANDBOX_NAME` varchar(255) DEFAULT NULL,
  `SANDBOX_TYPE` varchar(255) DEFAULT NULL,
  `PARENT_SANDBOX_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SANDBOX_ID`),
  KEY `SANDBOX_NAME_INDEX` (`SANDBOX_NAME`),
  KEY `FKDD37A9A174160452` (`PARENT_SANDBOX_ID`),
  CONSTRAINT `FKDD37A9A174160452` FOREIGN KEY (`PARENT_SANDBOX_ID`) REFERENCES `blc_sandbox` (`SANDBOX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sandbox`
--

LOCK TABLES `blc_sandbox` WRITE;
/*!40000 ALTER TABLE `blc_sandbox` DISABLE KEYS */;
INSERT INTO `blc_sandbox` VALUES (1,'N',NULL,'2017-03-11 12:07:40','2017-03-11 12:07:40',NULL,NULL,'#20C0F0',NULL,NULL,'Default','DEFAULT',NULL),(2,'N',NULL,'2017-03-11 12:07:41','2017-03-11 12:07:41',NULL,-1,NULL,NULL,NULL,'Default','USER',1);
/*!40000 ALTER TABLE `blc_sandbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sandbox_mgmt`
--

DROP TABLE IF EXISTS `blc_sandbox_mgmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sandbox_mgmt` (
  `SANDBOX_MGMT_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `SANDBOX_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SANDBOX_MGMT_ID`),
  UNIQUE KEY `UK_4845009FE52B6993` (`SANDBOX_ID`),
  KEY `FK4845009F579FE59D` (`SANDBOX_ID`),
  CONSTRAINT `FK4845009F579FE59D` FOREIGN KEY (`SANDBOX_ID`) REFERENCES `blc_sandbox` (`SANDBOX_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sandbox_mgmt`
--

LOCK TABLES `blc_sandbox_mgmt` WRITE;
/*!40000 ALTER TABLE `blc_sandbox_mgmt` DISABLE KEYS */;
INSERT INTO `blc_sandbox_mgmt` VALUES (1,NULL,'2017-03-11 12:07:40','2017-03-11 12:07:40',NULL,1),(2,NULL,'2017-03-11 12:07:41','2017-03-11 12:07:41',NULL,2);
/*!40000 ALTER TABLE `blc_sandbox_mgmt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc`
--

DROP TABLE IF EXISTS `blc_sc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sc` (
  `SC_ID` bigint(20) NOT NULL,
  `CONTENT_NAME` varchar(255) NOT NULL,
  `OFFLINE_FLAG` tinyint(1) DEFAULT NULL,
  `PRIORITY` int(11) NOT NULL,
  `LOCALE_CODE` varchar(255) NOT NULL,
  `SC_TYPE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SC_ID`),
  KEY `CONTENT_NAME_INDEX` (`CONTENT_NAME`),
  KEY `SC_OFFLN_FLG_INDX` (`OFFLINE_FLAG`),
  KEY `CONTENT_PRIORITY_INDEX` (`PRIORITY`),
  KEY `FK74EEB716A1E1C128` (`LOCALE_CODE`),
  KEY `FK74EEB71671EBFA46` (`SC_TYPE_ID`),
  CONSTRAINT `FK74EEB71671EBFA46` FOREIGN KEY (`SC_TYPE_ID`) REFERENCES `blc_sc_type` (`SC_TYPE_ID`),
  CONSTRAINT `FK74EEB716A1E1C128` FOREIGN KEY (`LOCALE_CODE`) REFERENCES `blc_locale` (`LOCALE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc`
--

LOCK TABLES `blc_sc` WRITE;
/*!40000 ALTER TABLE `blc_sc` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_fld`
--

DROP TABLE IF EXISTS `blc_sc_fld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sc_fld` (
  `SC_FLD_ID` bigint(20) NOT NULL,
  `FLD_KEY` varchar(255) DEFAULT NULL,
  `LOB_VALUE` longtext,
  `VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SC_FLD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_fld`
--

LOCK TABLES `blc_sc_fld` WRITE;
/*!40000 ALTER TABLE `blc_sc_fld` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc_fld` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_fld_map`
--

DROP TABLE IF EXISTS `blc_sc_fld_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sc_fld_map` (
  `BLC_SC_SC_FIELD_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  `SC_ID` bigint(20) NOT NULL,
  `SC_FLD_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`BLC_SC_SC_FIELD_ID`),
  KEY `FKD948019213D95585` (`SC_ID`),
  KEY `FKD9480192DD6FD28A` (`SC_FLD_ID`),
  CONSTRAINT `FKD948019213D95585` FOREIGN KEY (`SC_ID`) REFERENCES `blc_sc` (`SC_ID`),
  CONSTRAINT `FKD9480192DD6FD28A` FOREIGN KEY (`SC_FLD_ID`) REFERENCES `blc_sc_fld` (`SC_FLD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_fld_map`
--

LOCK TABLES `blc_sc_fld_map` WRITE;
/*!40000 ALTER TABLE `blc_sc_fld_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc_fld_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_fld_tmplt`
--

DROP TABLE IF EXISTS `blc_sc_fld_tmplt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sc_fld_tmplt` (
  `SC_FLD_TMPLT_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SC_FLD_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_fld_tmplt`
--

LOCK TABLES `blc_sc_fld_tmplt` WRITE;
/*!40000 ALTER TABLE `blc_sc_fld_tmplt` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc_fld_tmplt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_fldgrp_xref`
--

DROP TABLE IF EXISTS `blc_sc_fldgrp_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sc_fldgrp_xref` (
  `SC_FLD_TMPLT_ID` bigint(20) NOT NULL,
  `FLD_GROUP_ID` bigint(20) NOT NULL,
  `GROUP_ORDER` int(11) NOT NULL,
  PRIMARY KEY (`SC_FLD_TMPLT_ID`,`GROUP_ORDER`),
  KEY `FK71612AEA6A79BDB5` (`FLD_GROUP_ID`),
  KEY `FK71612AEAF6B0BA84` (`SC_FLD_TMPLT_ID`),
  CONSTRAINT `FK71612AEA6A79BDB5` FOREIGN KEY (`FLD_GROUP_ID`) REFERENCES `blc_fld_group` (`FLD_GROUP_ID`),
  CONSTRAINT `FK71612AEAF6B0BA84` FOREIGN KEY (`SC_FLD_TMPLT_ID`) REFERENCES `blc_sc_fld_tmplt` (`SC_FLD_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_fldgrp_xref`
--

LOCK TABLES `blc_sc_fldgrp_xref` WRITE;
/*!40000 ALTER TABLE `blc_sc_fldgrp_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc_fldgrp_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_item_criteria`
--

DROP TABLE IF EXISTS `blc_sc_item_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sc_item_criteria` (
  `SC_ITEM_CRITERIA_ID` bigint(20) NOT NULL,
  `ORDER_ITEM_MATCH_RULE` longtext,
  `QUANTITY` int(11) NOT NULL,
  `SC_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SC_ITEM_CRITERIA_ID`),
  KEY `FK6D52BDA213D95585` (`SC_ID`),
  CONSTRAINT `FK6D52BDA213D95585` FOREIGN KEY (`SC_ID`) REFERENCES `blc_sc` (`SC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_item_criteria`
--

LOCK TABLES `blc_sc_item_criteria` WRITE;
/*!40000 ALTER TABLE `blc_sc_item_criteria` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc_item_criteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_rule`
--

DROP TABLE IF EXISTS `blc_sc_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sc_rule` (
  `SC_RULE_ID` bigint(20) NOT NULL,
  `MATCH_RULE` longtext,
  PRIMARY KEY (`SC_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_rule`
--

LOCK TABLES `blc_sc_rule` WRITE;
/*!40000 ALTER TABLE `blc_sc_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_rule_map`
--

DROP TABLE IF EXISTS `blc_sc_rule_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sc_rule_map` (
  `BLC_SC_SC_ID` bigint(20) NOT NULL,
  `SC_RULE_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  PRIMARY KEY (`BLC_SC_SC_ID`,`MAP_KEY`),
  KEY `FK169F1C8256E51A06` (`SC_RULE_ID`),
  KEY `FK169F1C82156E72FC` (`BLC_SC_SC_ID`),
  CONSTRAINT `FK169F1C82156E72FC` FOREIGN KEY (`BLC_SC_SC_ID`) REFERENCES `blc_sc` (`SC_ID`),
  CONSTRAINT `FK169F1C8256E51A06` FOREIGN KEY (`SC_RULE_ID`) REFERENCES `blc_sc_rule` (`SC_RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_rule_map`
--

LOCK TABLES `blc_sc_rule_map` WRITE;
/*!40000 ALTER TABLE `blc_sc_rule_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc_rule_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sc_type`
--

DROP TABLE IF EXISTS `blc_sc_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sc_type` (
  `SC_TYPE_ID` bigint(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `SC_FLD_TMPLT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SC_TYPE_ID`),
  KEY `SC_TYPE_NAME_INDEX` (`NAME`),
  KEY `FKE19886C3F6B0BA84` (`SC_FLD_TMPLT_ID`),
  CONSTRAINT `FKE19886C3F6B0BA84` FOREIGN KEY (`SC_FLD_TMPLT_ID`) REFERENCES `blc_sc_fld_tmplt` (`SC_FLD_TMPLT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sc_type`
--

LOCK TABLES `blc_sc_type` WRITE;
/*!40000 ALTER TABLE `blc_sc_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sc_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_search_facet`
--

DROP TABLE IF EXISTS `blc_search_facet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_search_facet` (
  `SEARCH_FACET_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `MULTISELECT` tinyint(1) DEFAULT NULL,
  `LABEL` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REQUIRES_ALL_DEPENDENT` tinyint(1) DEFAULT NULL,
  `SEARCH_DISPLAY_PRIORITY` int(11) DEFAULT NULL,
  `SHOW_ON_SEARCH` tinyint(1) DEFAULT NULL,
  `USE_FACET_RANGES` tinyint(1) DEFAULT NULL,
  `INDEX_FIELD_TYPE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SEARCH_FACET_ID`),
  KEY `FK4FFCC986BE3CE566` (`INDEX_FIELD_TYPE_ID`),
  CONSTRAINT `FK4FFCC986BE3CE566` FOREIGN KEY (`INDEX_FIELD_TYPE_ID`) REFERENCES `blc_index_field_type` (`INDEX_FIELD_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_search_facet`
--

LOCK TABLES `blc_search_facet` WRITE;
/*!40000 ALTER TABLE `blc_search_facet` DISABLE KEYS */;
INSERT INTO `blc_search_facet` VALUES (1,NULL,NULL,NULL,NULL,NULL,1,'Manufacturer','Manufacturer Facet',NULL,0,0,0,2),(2,NULL,NULL,NULL,NULL,NULL,1,'Heat Range','Heat Range Facet',NULL,0,0,0,3),(3,NULL,NULL,NULL,NULL,NULL,1,'Price','Price Facet',NULL,1,1,1,4),(4,NULL,NULL,NULL,NULL,NULL,1,'Color','Color Facet',NULL,0,1,0,9);
/*!40000 ALTER TABLE `blc_search_facet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_search_facet_range`
--

DROP TABLE IF EXISTS `blc_search_facet_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_search_facet_range` (
  `SEARCH_FACET_RANGE_ID` bigint(20) NOT NULL,
  `MAX_VALUE` decimal(19,5) DEFAULT NULL,
  `MIN_VALUE` decimal(19,5) NOT NULL,
  `SEARCH_FACET_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SEARCH_FACET_RANGE_ID`),
  KEY `SEARCH_FACET_INDEX` (`SEARCH_FACET_ID`),
  KEY `FK7EC3B124B96B1C93` (`SEARCH_FACET_ID`),
  CONSTRAINT `FK7EC3B124B96B1C93` FOREIGN KEY (`SEARCH_FACET_ID`) REFERENCES `blc_search_facet` (`SEARCH_FACET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_search_facet_range`
--

LOCK TABLES `blc_search_facet_range` WRITE;
/*!40000 ALTER TABLE `blc_search_facet_range` DISABLE KEYS */;
INSERT INTO `blc_search_facet_range` VALUES (1,5.00000,0.00000,3),(2,10.00000,5.00000,3),(3,15.00000,10.00000,3),(4,NULL,15.00000,3);
/*!40000 ALTER TABLE `blc_search_facet_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_search_facet_xref`
--

DROP TABLE IF EXISTS `blc_search_facet_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_search_facet_xref` (
  `ID` bigint(20) NOT NULL,
  `REQUIRED_FACET_ID` bigint(20) NOT NULL,
  `SEARCH_FACET_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK35A63034DA7E1C7C` (`REQUIRED_FACET_ID`),
  KEY `FK35A63034B96B1C93` (`SEARCH_FACET_ID`),
  CONSTRAINT `FK35A63034B96B1C93` FOREIGN KEY (`SEARCH_FACET_ID`) REFERENCES `blc_search_facet` (`SEARCH_FACET_ID`),
  CONSTRAINT `FK35A63034DA7E1C7C` FOREIGN KEY (`REQUIRED_FACET_ID`) REFERENCES `blc_search_facet` (`SEARCH_FACET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_search_facet_xref`
--

LOCK TABLES `blc_search_facet_xref` WRITE;
/*!40000 ALTER TABLE `blc_search_facet_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_search_facet_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_search_intercept`
--

DROP TABLE IF EXISTS `blc_search_intercept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_search_intercept` (
  `SEARCH_REDIRECT_ID` bigint(20) NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `SEARCH_TERM` varchar(255) NOT NULL,
  `URL` varchar(255) NOT NULL,
  PRIMARY KEY (`SEARCH_REDIRECT_ID`),
  KEY `SEARCH_ACTIVE_INDEX` (`ACTIVE_END_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_search_intercept`
--

LOCK TABLES `blc_search_intercept` WRITE;
/*!40000 ALTER TABLE `blc_search_intercept` DISABLE KEYS */;
INSERT INTO `blc_search_intercept` VALUES (-2,NULL,NULL,NULL,NULL,NULL,NULL,-10,'sale','/clearance'),(-1,NULL,NULL,NULL,NULL,NULL,NULL,1,'insanity','/hot-sauces/insanity_sauce');
/*!40000 ALTER TABLE `blc_search_intercept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_search_synonym`
--

DROP TABLE IF EXISTS `blc_search_synonym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_search_synonym` (
  `SEARCH_SYNONYM_ID` bigint(20) NOT NULL,
  `SYNONYMS` varchar(255) DEFAULT NULL,
  `TERM` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SEARCH_SYNONYM_ID`),
  KEY `SEARCHSYNONYM_TERM_INDEX` (`TERM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_search_synonym`
--

LOCK TABLES `blc_search_synonym` WRITE;
/*!40000 ALTER TABLE `blc_search_synonym` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_search_synonym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_shipping_rate`
--

DROP TABLE IF EXISTS `blc_shipping_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_shipping_rate` (
  `ID` bigint(20) NOT NULL,
  `BAND_RESULT_PCT` int(11) NOT NULL,
  `BAND_RESULT_QTY` decimal(19,2) NOT NULL,
  `BAND_UNIT_QTY` decimal(19,2) NOT NULL,
  `FEE_BAND` int(11) NOT NULL,
  `FEE_SUB_TYPE` varchar(255) DEFAULT NULL,
  `FEE_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `SHIPPINGRATE_FEESUB_INDEX` (`FEE_SUB_TYPE`),
  KEY `SHIPPINGRATE_FEE_INDEX` (`FEE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_shipping_rate`
--

LOCK TABLES `blc_shipping_rate` WRITE;
/*!40000 ALTER TABLE `blc_shipping_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_shipping_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_site`
--

DROP TABLE IF EXISTS `blc_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_site` (
  `SITE_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `DEACTIVATED` tinyint(1) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `SITE_IDENTIFIER_TYPE` varchar(255) DEFAULT NULL,
  `SITE_IDENTIFIER_VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SITE_ID`),
  KEY `BLC_SITE_ID_VAL_INDEX` (`SITE_IDENTIFIER_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_site`
--

LOCK TABLES `blc_site` WRITE;
/*!40000 ALTER TABLE `blc_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_site_catalog`
--

DROP TABLE IF EXISTS `blc_site_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_site_catalog` (
  `SITE_CATALOG_XREF_ID` bigint(20) NOT NULL,
  `CATALOG_ID` bigint(20) NOT NULL,
  `SITE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SITE_CATALOG_XREF_ID`),
  KEY `FK5F3F2047A350C7F1` (`CATALOG_ID`),
  KEY `FK5F3F2047843A8B63` (`SITE_ID`),
  CONSTRAINT `FK5F3F2047843A8B63` FOREIGN KEY (`SITE_ID`) REFERENCES `blc_site` (`SITE_ID`),
  CONSTRAINT `FK5F3F2047A350C7F1` FOREIGN KEY (`CATALOG_ID`) REFERENCES `blc_catalog` (`CATALOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_site_catalog`
--

LOCK TABLES `blc_site_catalog` WRITE;
/*!40000 ALTER TABLE `blc_site_catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_site_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_site_map_cfg`
--

DROP TABLE IF EXISTS `blc_site_map_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_site_map_cfg` (
  `INDEXED_SITE_MAP_FILE_NAME` varchar(255) DEFAULT NULL,
  `INDEXED_SITE_MAP_FILE_PATTERN` varchar(255) DEFAULT NULL,
  `MAX_URL_ENTRIES_PER_FILE` int(11) DEFAULT NULL,
  `SITE_MAP_FILE_NAME` varchar(255) DEFAULT NULL,
  `MODULE_CONFIG_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`MODULE_CONFIG_ID`),
  KEY `FK7012930FC50D449` (`MODULE_CONFIG_ID`),
  CONSTRAINT `FK7012930FC50D449` FOREIGN KEY (`MODULE_CONFIG_ID`) REFERENCES `blc_module_configuration` (`MODULE_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_site_map_cfg`
--

LOCK TABLES `blc_site_map_cfg` WRITE;
/*!40000 ALTER TABLE `blc_site_map_cfg` DISABLE KEYS */;
INSERT INTO `blc_site_map_cfg` VALUES (NULL,NULL,NULL,NULL,-1);
/*!40000 ALTER TABLE `blc_site_map_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_site_map_gen_cfg`
--

DROP TABLE IF EXISTS `blc_site_map_gen_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_site_map_gen_cfg` (
  `GEN_CONFIG_ID` bigint(20) NOT NULL,
  `CHANGE_FREQ` varchar(255) NOT NULL,
  `DISABLED` tinyint(1) NOT NULL,
  `GENERATOR_TYPE` varchar(255) NOT NULL,
  `PRIORITY` varchar(255) DEFAULT NULL,
  `MODULE_CONFIG_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`GEN_CONFIG_ID`),
  KEY `FK1D76000A340ED71` (`MODULE_CONFIG_ID`),
  CONSTRAINT `FK1D76000A340ED71` FOREIGN KEY (`MODULE_CONFIG_ID`) REFERENCES `blc_site_map_cfg` (`MODULE_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_site_map_gen_cfg`
--

LOCK TABLES `blc_site_map_gen_cfg` WRITE;
/*!40000 ALTER TABLE `blc_site_map_gen_cfg` DISABLE KEYS */;
INSERT INTO `blc_site_map_gen_cfg` VALUES (-8,'HOURLY',1,'SKU','0.5',-1),(-7,'HOURLY',0,'CATEGORY','0.5',-1),(-6,'HOURLY',0,'CATEGORY','0.5',-1),(-5,'HOURLY',0,'CATEGORY','0.5',-1),(-4,'HOURLY',0,'CATEGORY','0.5',-1),(-3,'HOURLY',0,'PAGE','0.5',-1),(-2,'HOURLY',0,'PRODUCT','0.5',-1),(-1,'HOURLY',0,'CUSTOM','0.5',-1);
/*!40000 ALTER TABLE `blc_site_map_gen_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_site_map_url_entry`
--

DROP TABLE IF EXISTS `blc_site_map_url_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_site_map_url_entry` (
  `URL_ENTRY_ID` bigint(20) NOT NULL,
  `CHANGE_FREQ` varchar(255) NOT NULL,
  `LAST_MODIFIED` datetime NOT NULL,
  `LOCATION` varchar(255) NOT NULL,
  `PRIORITY` varchar(255) NOT NULL,
  `GEN_CONFIG_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`URL_ENTRY_ID`),
  KEY `FKE2004FED36AFE1EE` (`GEN_CONFIG_ID`),
  CONSTRAINT `FKE2004FED36AFE1EE` FOREIGN KEY (`GEN_CONFIG_ID`) REFERENCES `blc_cust_site_map_gen_cfg` (`GEN_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_site_map_url_entry`
--

LOCK TABLES `blc_site_map_url_entry` WRITE;
/*!40000 ALTER TABLE `blc_site_map_url_entry` DISABLE KEYS */;
INSERT INTO `blc_site_map_url_entry` VALUES (-8,'HOURLY','2017-03-11 11:52:39','http://www.heatclinic.com/8','0.5',-1),(-7,'HOURLY','2017-03-11 11:52:38','http://www.heatclinic.com/7','0.5',-1),(-6,'HOURLY','2017-03-11 11:52:38','http://www.heatclinic.com/6','0.5',-1),(-5,'HOURLY','2017-03-11 11:52:38','http://www.heatclinic.com/5','0.5',-1),(-4,'HOURLY','2017-03-11 11:52:38','http://www.heatclinic.com/4','0.5',-1),(-3,'HOURLY','2017-03-11 11:52:38','http://www.heatclinic.com/3','0.5',-1),(-2,'HOURLY','2017-03-11 11:52:38','http://www.heatclinic.com/2','0.5',-1),(-1,'HOURLY','2017-03-11 11:52:38','http://www.heatclinic.com/1','0.5',-1);
/*!40000 ALTER TABLE `blc_site_map_url_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku`
--

DROP TABLE IF EXISTS `blc_sku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku` (
  `SKU_ID` bigint(20) NOT NULL,
  `ACTIVE_END_DATE` datetime DEFAULT NULL,
  `ACTIVE_START_DATE` datetime DEFAULT NULL,
  `AVAILABLE_FLAG` char(1) DEFAULT NULL,
  `COST` decimal(19,5) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CONTAINER_SHAPE` varchar(255) DEFAULT NULL,
  `DEPTH` decimal(19,2) DEFAULT NULL,
  `DIMENSION_UNIT_OF_MEASURE` varchar(255) DEFAULT NULL,
  `GIRTH` decimal(19,2) DEFAULT NULL,
  `HEIGHT` decimal(19,2) DEFAULT NULL,
  `CONTAINER_SIZE` varchar(255) DEFAULT NULL,
  `WIDTH` decimal(19,2) DEFAULT NULL,
  `DISCOUNTABLE_FLAG` char(1) DEFAULT NULL,
  `DISPLAY_TEMPLATE` varchar(255) DEFAULT NULL,
  `EXTERNAL_ID` varchar(255) DEFAULT NULL,
  `FULFILLMENT_TYPE` varchar(255) DEFAULT NULL,
  `INVENTORY_TYPE` varchar(255) DEFAULT NULL,
  `IS_MACHINE_SORTABLE` tinyint(1) DEFAULT NULL,
  `LONG_DESCRIPTION` longtext,
  `NAME` varchar(255) DEFAULT NULL,
  `QUANTITY_AVAILABLE` int(11) DEFAULT NULL,
  `RETAIL_PRICE` decimal(19,5) DEFAULT NULL,
  `SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `TAX_CODE` varchar(255) DEFAULT NULL,
  `TAXABLE_FLAG` char(1) DEFAULT NULL,
  `UPC` varchar(255) DEFAULT NULL,
  `URL_KEY` varchar(255) DEFAULT NULL,
  `WEIGHT` decimal(19,2) DEFAULT NULL,
  `WEIGHT_UNIT_OF_MEASURE` varchar(255) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  `DEFAULT_PRODUCT_ID` bigint(20) DEFAULT NULL,
  `ADDL_PRODUCT_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SKU_ID`),
  KEY `SKU_ACTIVE_END_INDEX` (`ACTIVE_END_DATE`),
  KEY `SKU_ACTIVE_START_INDEX` (`ACTIVE_START_DATE`),
  KEY `SKU_AVAILABLE_INDEX` (`AVAILABLE_FLAG`),
  KEY `SKU_DISCOUNTABLE_INDEX` (`DISCOUNTABLE_FLAG`),
  KEY `SKU_EXTERNAL_ID_INDEX` (`EXTERNAL_ID`),
  KEY `SKU_NAME_INDEX` (`NAME`),
  KEY `SKU_TAXABLE_INDEX` (`TAXABLE_FLAG`),
  KEY `SKU_UPC_INDEX` (`UPC`),
  KEY `SKU_URL_KEY_INDEX` (`URL_KEY`),
  KEY `FK28E82CF73E2FC4F9` (`CURRENCY_CODE`),
  KEY `FK28E82CF77E555D75` (`DEFAULT_PRODUCT_ID`),
  KEY `FK28E82CF750D6498B` (`ADDL_PRODUCT_ID`),
  CONSTRAINT `FK28E82CF73E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`),
  CONSTRAINT `FK28E82CF750D6498B` FOREIGN KEY (`ADDL_PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`),
  CONSTRAINT `FK28E82CF77E555D75` FOREIGN KEY (`DEFAULT_PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku`
--

LOCK TABLES `blc_sku` WRITE;
/*!40000 ALTER TABLE `blc_sku` DISABLE KEYS */;
INSERT INTO `blc_sku` VALUES (1,NULL,'2017-03-11 11:52:19',NULL,3.89000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,'CHECK_QUANTITY',NULL,'As my Chilipals know, I am never one to be satisfied. Hence, the creation of Sudden Death. When you need to go beyond... Sudden Death will deliver! ','Sudden Death Sauce',NULL,10.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,1,NULL),(2,NULL,'2017-03-11 11:52:19',NULL,3.79000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,'CHECK_QUANTITY',NULL,'The perfect topper for chicken, fish, burgers or pizza. A great blend of Habanero, Mango, Passion Fruit and more make this Death Sauce an amazing tropical treat.','Sweet Death Sauce',NULL,10.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,2,NULL),(3,NULL,'2017-03-11 11:52:19',NULL,3.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Tangy, ripe cayenne peppes flow together with garlic, onion, tomato paste and a hint of cane sugar to make this a smooth sauce with a bite.  Wonderful on eggs, poultry, pork, or fish, this sauce blends to make rich marinades and soups.','Hoppin\' Hot Sauce',NULL,4.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,3,NULL),(4,NULL,'2017-03-11 11:52:19',NULL,4.50000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'When any pepper is dried and smoked, it is referred to as a Chipotle. Usually with a wrinkled, drak brown appearance, the Chipotle delivers a smokey, sweet flavor which is generally used for adding a smokey, roasted flavor to salsas, stews and marinades.','Day of the Dead Chipotle Hot Sauce',NULL,6.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,4,NULL),(5,NULL,'2017-03-11 11:52:19',NULL,5.50000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'If you want hot, this is the chile to choose. Native to the Carribean, Yucatan and Northern Coast of South America, the Habanero presents itself in a variety of colors ranging from light green to a bright red. The Habanero\'s bold heat, unique flavor and aroma has made it the favorite of chile lovers.','Day of the Dead Habanero Hot Sauce',NULL,6.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,5,NULL),(6,NULL,'2017-03-11 11:52:19',NULL,5.40000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Often mistaken for the Habanero, the Scotch Bonnet has a deeply inverted tip as opposed to the pointed end of the Habanero. Ranging in many colors from green to yellow-orange, the Scotch Bonnet is a staple in West Indies and Barbados style pepper sauces.','Day of the Dead Scotch Bonnet Hot Sauce',NULL,6.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,6,NULL),(7,NULL,'2017-03-11 11:52:19',NULL,8.10000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Made with Naga Bhut Jolokia, the World\'s Hottest pepper.','Green Ghost',NULL,11.99000,9.99000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,7,NULL),(8,NULL,'2017-03-11 11:52:19',NULL,3.00000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'You bet your boots, this hot sauce earned its name from folks that appreciate an outstanding hot sauce. What you\'ll find here is a truly original zesty flavor, not an overpowering pungency that is found in those ordinary Tabasco pepper sauces - even though the pepper used in this product was tested at 285,000 Scoville units. So, saddle up for a ride to remember. To make sure we brought you only the finest Habanero pepper sauce, we went to the foothills of the Mayan mountains in Belize, Central America. This product is prepared entirely by hand using only fresh vegetables and all natural ingredients.','Blazin\' Saddle XXX Hot Habanero Pepper Sauce',NULL,4.99000,3.99000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,8,NULL),(9,NULL,'2017-03-11 11:52:19',NULL,5.30000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'All Hell is breaking loose, fire &amp; brimstone rain down? prepare to meet your maker.','Armageddon The Hot Sauce To End All',NULL,12.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,9,NULL),(10,NULL,'2017-03-11 11:52:19',NULL,6.89000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Here is the Prescription for those who enjoy intolerable heat. Dr. Chilemeister\'s sick and evil deadly brew should be used with caution. Pain can become addictive!','Dr. Chilemeister\'s Insane Hot Sauce',NULL,12.99000,10.99000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,10,NULL),(11,NULL,'2017-03-11 11:52:19',NULL,2.29000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Been there, roped that. Hotter than a buckin\' mare in heat! Sprinkle on meat entrees, seafood and vegetables. Use as additive in barbecue sauce or any food that needs a spicy flavor. Start with a few drops and work up to the desired flavor.','Bull Snort Cowboy Cayenne Pepper Hot Sauce',NULL,3.99000,2.99000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,11,NULL),(12,NULL,'2017-03-11 11:52:19',NULL,3.09000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'One of the more unusual sauces we sell. The original was an old style Cajun sauce and this is it\'s updated blackening version. It\'s sweet but you get a great hit of cinnamon and cloves with a nice kick of cayenne heat. Use on all foods to give that Cajun flair!','Cafe Louisiane Sweet Cajun Blackening Sauce',NULL,4.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,12,NULL),(13,NULL,'2017-03-11 11:52:19',NULL,2.99000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Everything is bigger in Texas, even the burn of a Bull Snortin\' Hot Sauce! shower on that Texas sized steak they call the Ole 96er or your plane Jane vegetables. If you are a fan on making BBQ sauce from scratch like I am, you can use Bull Snort Smokin\' Tonsils Hot Sauce as an additive. Red hot habaneros and cayenne peppers give this tonsil tingler it\'s famous flavor and red hot heat. Bull Snort Smokin\' Tonsils Hot Sauce\'ll have your bowels buckin\' with just a drop!','Bull Snort Smokin\' Toncils Hot Sauce',NULL,3.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,13,NULL),(14,NULL,'2017-03-11 11:52:19',NULL,3.99000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.','Cool Cayenne Pepper Hot Sauce',NULL,5.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,14,NULL),(15,NULL,'2017-03-11 11:52:19',NULL,4.29000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.','Roasted Garlic Hot Sauce',NULL,5.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,15,NULL),(16,NULL,'2017-03-11 11:52:19',NULL,2.89000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.','Scotch Bonnet Hot Sauce',NULL,5.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,16,NULL),(17,NULL,'2017-03-11 11:52:19',NULL,3.50000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.','Insanity Sauce',NULL,5.99000,4.99000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,17,NULL),(18,NULL,'2017-03-11 11:52:19',NULL,3.25000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.','Hurtin\' Jalapeno Hot Sauce',NULL,5.99000,4.49000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,18,NULL),(19,NULL,'2017-03-11 11:52:19',NULL,2.59000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This sauce gets its great flavor from aged peppers and cane vinegar. It will enhance the flavor of most any meal.','Roasted Red Pepper & Chipotle Hot Sauce',NULL,5.99000,4.09000,NULL,'Y',NULL,NULL,NULL,NULL,NULL,19,NULL),(20,NULL,'2017-03-11 11:52:19',NULL,4.29000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'','bundle1',NULL,5.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,20,NULL),(21,NULL,'2017-03-11 11:52:20',NULL,3.99000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'','bundle2',NULL,5.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,21,NULL),(100,NULL,'2017-03-11 11:52:20',NULL,4.99000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,100,NULL),(111,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/black_s',NULL,NULL,NULL,NULL,100),(112,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/black_m',NULL,NULL,NULL,NULL,100),(113,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/black_l',NULL,NULL,NULL,NULL,100),(114,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/black_xl',NULL,NULL,NULL,NULL,100),(121,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/red_s',NULL,NULL,NULL,NULL,100),(122,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/red_m',NULL,NULL,NULL,NULL,100),(123,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/red_l',NULL,NULL,NULL,NULL,100),(124,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/red_xl',NULL,NULL,NULL,NULL,100),(131,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/silver_s',NULL,NULL,NULL,NULL,100),(132,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/silver_m',NULL,NULL,NULL,NULL,100),(133,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/silver_l',NULL,NULL,NULL,NULL,100),(134,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Men\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/silver_xl',NULL,NULL,NULL,NULL,100),(200,NULL,'2017-03-11 11:52:20',NULL,4.69000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,200,NULL),(211,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/black_s',NULL,NULL,NULL,NULL,200),(212,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/black_m',NULL,NULL,NULL,NULL,200),(213,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/black_l',NULL,NULL,NULL,NULL,200),(214,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/black_xl',NULL,NULL,NULL,NULL,200),(221,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/red_s',NULL,NULL,NULL,NULL,200),(222,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/red_m',NULL,NULL,NULL,NULL,200),(223,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/red_l',NULL,NULL,NULL,NULL,200),(224,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/red_xl',NULL,NULL,NULL,NULL,200),(231,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/silver_s',NULL,NULL,NULL,NULL,200),(232,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/silver_m',NULL,NULL,NULL,NULL,200),(233,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,14.99000,NULL,NULL,'Y',NULL,'/silver_l',NULL,NULL,NULL,NULL,200),(234,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Women\'s Habanero collection standard short sleeve screen-printed tee shirt in soft 30 singles cotton in regular fit.','Hawt Like a Habanero Shirt (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/silver_xl',NULL,NULL,NULL,NULL,200),(300,NULL,'2017-03-11 11:52:20',NULL,5.29000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,300,NULL),(311,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_s',NULL,NULL,NULL,NULL,300),(312,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_m',NULL,NULL,NULL,NULL,300),(313,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_l',NULL,NULL,NULL,NULL,300),(314,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/black_xl',NULL,NULL,NULL,NULL,300),(321,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_s',NULL,NULL,NULL,NULL,300),(322,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_m',NULL,NULL,NULL,NULL,300),(323,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_l',NULL,NULL,NULL,NULL,300),(324,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/red_xl',NULL,NULL,NULL,NULL,300),(331,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_s',NULL,NULL,NULL,NULL,300),(332,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_m',NULL,NULL,NULL,NULL,300),(333,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_l',NULL,NULL,NULL,NULL,300),(334,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for men features a regular fit in three different colors','Heat Clinic Hand-Drawn (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/silver_xl',NULL,NULL,NULL,NULL,300),(400,NULL,'2017-03-11 11:52:20',NULL,5.49000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,400,NULL),(411,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_s',NULL,NULL,NULL,NULL,400),(412,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_m',NULL,NULL,NULL,NULL,400),(413,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_l',NULL,NULL,NULL,NULL,400),(414,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/black_xl',NULL,NULL,NULL,NULL,400),(421,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_s',NULL,NULL,NULL,NULL,400),(422,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_m',NULL,NULL,NULL,NULL,400),(423,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_l',NULL,NULL,NULL,NULL,400),(424,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/red_xl',NULL,NULL,NULL,NULL,400),(431,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_s',NULL,NULL,NULL,NULL,400),(432,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_m',NULL,NULL,NULL,NULL,400),(433,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_l',NULL,NULL,NULL,NULL,400),(434,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'This hand-drawn logo shirt for women features a regular fit in three different colors','Heat Clinic Hand-Drawn (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/silver_xl',NULL,NULL,NULL,NULL,400),(500,NULL,'2017-03-11 11:52:20',NULL,4.89000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,500,NULL),(511,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_s',NULL,NULL,NULL,NULL,500),(512,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_m',NULL,NULL,NULL,NULL,500),(513,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_l',NULL,NULL,NULL,NULL,500),(514,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/black_xl',NULL,NULL,NULL,NULL,500),(521,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_s',NULL,NULL,NULL,NULL,500),(522,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_m',NULL,NULL,NULL,NULL,500),(523,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_l',NULL,NULL,NULL,NULL,500),(524,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/red_xl',NULL,NULL,NULL,NULL,500),(531,NULL,'2017-03-11 11:52:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_s',NULL,NULL,NULL,NULL,500),(532,NULL,'2017-03-11 11:52:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_m',NULL,NULL,NULL,NULL,500),(533,NULL,'2017-03-11 11:52:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_l',NULL,NULL,NULL,NULL,500),(534,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Men\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/silver_xl',NULL,NULL,NULL,NULL,500),(600,NULL,'2017-03-11 11:52:20',NULL,4.99000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,600,NULL),(611,NULL,'2017-03-11 11:52:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_s',NULL,NULL,NULL,NULL,600),(612,NULL,'2017-03-11 11:52:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_m',NULL,NULL,NULL,NULL,600),(613,NULL,'2017-03-11 11:52:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/black_l',NULL,NULL,NULL,NULL,600),(614,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/black_xl',NULL,NULL,NULL,NULL,600),(621,NULL,'2017-03-11 11:52:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_s',NULL,NULL,NULL,NULL,600),(622,NULL,'2017-03-11 11:52:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_m',NULL,NULL,NULL,NULL,600),(623,NULL,'2017-03-11 11:52:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/red_l',NULL,NULL,NULL,NULL,600),(624,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/red_xl',NULL,NULL,NULL,NULL,600),(631,NULL,'2017-03-11 11:52:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_s',NULL,NULL,NULL,NULL,600),(632,NULL,'2017-03-11 11:52:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_m',NULL,NULL,NULL,NULL,600),(633,NULL,'2017-03-11 11:52:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,15.99000,NULL,NULL,'Y',NULL,'/silver_l',NULL,NULL,NULL,NULL,600),(634,NULL,'2017-03-11 11:52:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,'Don\'t you just love our mascot? Get your very own shirt today!','Heat Clinic Mascot (Women\'s)',NULL,16.99000,NULL,NULL,'Y',NULL,'/silver_xl',NULL,NULL,NULL,NULL,600),(10004,NULL,NULL,NULL,30.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Pro Evolution Soccer 2017','PES 2017',NULL,50.00000,60.00000,NULL,'N',NULL,NULL,NULL,'KILOGRAMS',NULL,10000,NULL),(10005,NULL,'2017-03-21 16:45:22',NULL,20.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'Hitman PS4','Hitman',NULL,60.00000,50.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,10001,NULL),(10007,NULL,'2017-03-21 16:47:06',NULL,60.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'assassin\'s creed syndicate ps4','assassin\'s creed syndicate ps4',NULL,120.00000,100.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,10002,NULL),(10009,NULL,'2017-03-21 16:49:12',NULL,60.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'the witcher 3 ps4','the witcher 3 ps4',NULL,120.00000,90.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,10003,NULL),(10010,NULL,'2017-03-21 16:50:16',NULL,100.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'call of duty black ops 3 ps4','call of duty black ops 3 ps4',NULL,150.00000,130.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,10004,NULL),(10011,NULL,'2017-03-21 16:51:59',NULL,80.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'battlefield 1 ps4','battlefield 1 ps4',NULL,100.00000,95.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,10005,NULL),(10012,NULL,'2017-03-21 16:53:28',NULL,100.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'GTA V ps4','GTA V ps4',NULL,150.00000,120.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,10006,NULL),(10050,NULL,'2017-03-25 11:33:35',NULL,100.00000,NULL,NULL,NULL,'CENTIMETERS',NULL,NULL,NULL,NULL,'Y',NULL,NULL,NULL,NULL,0,'Doom ps4','DOOM',NULL,150.00000,120.00000,NULL,NULL,NULL,NULL,NULL,'KILOGRAMS',NULL,10050,NULL);
/*!40000 ALTER TABLE `blc_sku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_attribute`
--

DROP TABLE IF EXISTS `blc_sku_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku_attribute` (
  `SKU_ATTR_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `SEARCHABLE` tinyint(1) DEFAULT NULL,
  `VALUE` varchar(255) NOT NULL,
  `SKU_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SKU_ATTR_ID`),
  KEY `SKUATTR_NAME_INDEX` (`NAME`),
  KEY `SKUATTR_SKU_INDEX` (`SKU_ID`),
  KEY `FK6C6A5934B78C9977` (`SKU_ID`),
  CONSTRAINT `FK6C6A5934B78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_attribute`
--

LOCK TABLES `blc_sku_attribute` WRITE;
/*!40000 ALTER TABLE `blc_sku_attribute` DISABLE KEYS */;
INSERT INTO `blc_sku_attribute` VALUES (1,'heatRange',NULL,'4',1),(2,'heatRange',NULL,'1',2),(3,'heatRange',NULL,'2',3),(4,'heatRange',NULL,'2',4),(5,'heatRange',NULL,'4',5),(6,'heatRange',NULL,'4',6),(7,'heatRange',NULL,'3',7),(8,'heatRange',NULL,'4',8),(9,'heatRange',NULL,'5',9),(10,'heatRange',NULL,'5',10),(11,'heatRange',NULL,'2',11),(12,'heatRange',NULL,'1',12),(13,'heatRange',NULL,'2',13),(14,'heatRange',NULL,'2',14),(15,'heatRange',NULL,'1',15),(16,'heatRange',NULL,'3',16),(17,'heatRange',NULL,'5',17),(18,'heatRange',NULL,'3',18),(19,'heatRange',NULL,'1',19);
/*!40000 ALTER TABLE `blc_sku_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_availability`
--

DROP TABLE IF EXISTS `blc_sku_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku_availability` (
  `SKU_AVAILABILITY_ID` bigint(20) NOT NULL,
  `AVAILABILITY_DATE` datetime DEFAULT NULL,
  `AVAILABILITY_STATUS` varchar(255) DEFAULT NULL,
  `LOCATION_ID` bigint(20) DEFAULT NULL,
  `QTY_ON_HAND` int(11) DEFAULT NULL,
  `RESERVE_QTY` int(11) DEFAULT NULL,
  `SKU_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SKU_AVAILABILITY_ID`),
  KEY `SKUAVAIL_STATUS_INDEX` (`AVAILABILITY_STATUS`),
  KEY `SKUAVAIL_LOCATION_INDEX` (`LOCATION_ID`),
  KEY `SKUAVAIL_SKU_INDEX` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_availability`
--

LOCK TABLES `blc_sku_availability` WRITE;
/*!40000 ALTER TABLE `blc_sku_availability` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sku_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_bundle_item`
--

DROP TABLE IF EXISTS `blc_sku_bundle_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku_bundle_item` (
  `SKU_BUNDLE_ITEM_ID` bigint(20) NOT NULL,
  `ITEM_SALE_PRICE` decimal(19,5) DEFAULT NULL,
  `QUANTITY` int(11) NOT NULL,
  `SEQUENCE` decimal(10,6) DEFAULT NULL,
  `PRODUCT_BUNDLE_ID` bigint(20) NOT NULL,
  `SKU_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SKU_BUNDLE_ITEM_ID`),
  KEY `FKD55968CCF29B96` (`PRODUCT_BUNDLE_ID`),
  KEY `FKD55968B78C9977` (`SKU_ID`),
  CONSTRAINT `FKD55968B78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`),
  CONSTRAINT `FKD55968CCF29B96` FOREIGN KEY (`PRODUCT_BUNDLE_ID`) REFERENCES `blc_product_bundle` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_bundle_item`
--

LOCK TABLES `blc_sku_bundle_item` WRITE;
/*!40000 ALTER TABLE `blc_sku_bundle_item` DISABLE KEYS */;
INSERT INTO `blc_sku_bundle_item` VALUES (-103,NULL,1,NULL,21,2),(-102,NULL,1,NULL,21,1),(-101,NULL,1,NULL,20,2),(-100,NULL,1,NULL,20,1);
/*!40000 ALTER TABLE `blc_sku_bundle_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_fee`
--

DROP TABLE IF EXISTS `blc_sku_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku_fee` (
  `SKU_FEE_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,5) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `EXPRESSION` longtext,
  `FEE_TYPE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `TAXABLE` tinyint(1) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SKU_FEE_ID`),
  KEY `FKEEB7181E3E2FC4F9` (`CURRENCY_CODE`),
  CONSTRAINT `FKEEB7181E3E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_fee`
--

LOCK TABLES `blc_sku_fee` WRITE;
/*!40000 ALTER TABLE `blc_sku_fee` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sku_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_fee_xref`
--

DROP TABLE IF EXISTS `blc_sku_fee_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku_fee_xref` (
  `SKU_FEE_ID` bigint(20) NOT NULL,
  `SKU_ID` bigint(20) NOT NULL,
  KEY `FKD88D409CB78C9977` (`SKU_ID`),
  KEY `FKD88D409CCF4C9A82` (`SKU_FEE_ID`),
  CONSTRAINT `FKD88D409CB78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`),
  CONSTRAINT `FKD88D409CCF4C9A82` FOREIGN KEY (`SKU_FEE_ID`) REFERENCES `blc_sku_fee` (`SKU_FEE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_fee_xref`
--

LOCK TABLES `blc_sku_fee_xref` WRITE;
/*!40000 ALTER TABLE `blc_sku_fee_xref` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sku_fee_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_fulfillment_excluded`
--

DROP TABLE IF EXISTS `blc_sku_fulfillment_excluded`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku_fulfillment_excluded` (
  `SKU_ID` bigint(20) NOT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) NOT NULL,
  KEY `FK84162D7381F34C7F` (`FULFILLMENT_OPTION_ID`),
  KEY `FK84162D73B78C9977` (`SKU_ID`),
  CONSTRAINT `FK84162D7381F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FK84162D73B78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_fulfillment_excluded`
--

LOCK TABLES `blc_sku_fulfillment_excluded` WRITE;
/*!40000 ALTER TABLE `blc_sku_fulfillment_excluded` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sku_fulfillment_excluded` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_fulfillment_flat_rates`
--

DROP TABLE IF EXISTS `blc_sku_fulfillment_flat_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku_fulfillment_flat_rates` (
  `SKU_ID` bigint(20) NOT NULL,
  `RATE` decimal(19,5) DEFAULT NULL,
  `FULFILLMENT_OPTION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SKU_ID`,`FULFILLMENT_OPTION_ID`),
  KEY `FKC1988C9681F34C7F` (`FULFILLMENT_OPTION_ID`),
  KEY `FKC1988C96B78C9977` (`SKU_ID`),
  CONSTRAINT `FKC1988C9681F34C7F` FOREIGN KEY (`FULFILLMENT_OPTION_ID`) REFERENCES `blc_fulfillment_option` (`FULFILLMENT_OPTION_ID`),
  CONSTRAINT `FKC1988C96B78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_fulfillment_flat_rates`
--

LOCK TABLES `blc_sku_fulfillment_flat_rates` WRITE;
/*!40000 ALTER TABLE `blc_sku_fulfillment_flat_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_sku_fulfillment_flat_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_media_map`
--

DROP TABLE IF EXISTS `blc_sku_media_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku_media_map` (
  `SKU_MEDIA_ID` bigint(20) NOT NULL,
  `MAP_KEY` varchar(255) NOT NULL,
  `MEDIA_ID` bigint(20) DEFAULT NULL,
  `BLC_SKU_SKU_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SKU_MEDIA_ID`),
  KEY `FKEB4AECF96E4720E0` (`MEDIA_ID`),
  KEY `FKEB4AECF9D93D857F` (`BLC_SKU_SKU_ID`),
  CONSTRAINT `FKEB4AECF96E4720E0` FOREIGN KEY (`MEDIA_ID`) REFERENCES `blc_media` (`MEDIA_ID`),
  CONSTRAINT `FKEB4AECF9D93D857F` FOREIGN KEY (`BLC_SKU_SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_media_map`
--

LOCK TABLES `blc_sku_media_map` WRITE;
/*!40000 ALTER TABLE `blc_sku_media_map` DISABLE KEYS */;
INSERT INTO `blc_sku_media_map` VALUES (-100,'primary',101,1),(-99,'primary',201,2),(-98,'primary',301,3),(-97,'primary',401,4),(-96,'primary',501,5),(-95,'primary',601,6),(-94,'primary',701,7),(-93,'primary',801,8),(-92,'primary',901,9),(-91,'primary',1001,10),(-90,'primary',1101,11),(-89,'primary',1201,12),(-88,'primary',1301,13),(-87,'primary',1401,14),(-86,'primary',1501,15),(-85,'primary',1601,16),(-84,'primary',1701,17),(-83,'primary',1801,18),(-82,'primary',1901,19),(-81,'alt1',102,1),(-80,'alt1',202,2),(-79,'alt1',302,3),(-78,'alt1',402,4),(-77,'alt1',502,5),(-76,'alt1',602,6),(-75,'alt1',702,7),(-74,'alt1',802,8),(-73,'alt1',902,9),(-72,'alt1',1002,10),(-71,'alt1',1102,11),(-70,'alt1',1202,12),(-69,'alt1',1302,13),(-68,'alt1',1402,14),(-67,'alt1',1502,15),(-66,'alt1',1602,16),(-65,'alt1',1702,17),(-64,'alt1',1802,18),(-63,'alt1',1902,19),(-62,'alt2',203,2),(-61,'alt3',204,2),(-60,'alt4',205,2),(-59,'alt5',206,2),(-58,'primary',10001,100),(-57,'primary',20002,200),(-56,'primary',30003,300),(-55,'primary',40002,400),(-54,'primary',50003,500),(-53,'primary',60001,600),(-52,'alt1',10002,100),(-51,'alt1',20001,200),(-50,'alt1',30001,300),(-49,'alt1',40001,400),(-48,'alt1',50001,500),(-47,'alt1',60002,600),(-46,'alt2',10003,100),(-45,'alt2',20003,200),(-44,'alt2',30002,300),(-43,'alt2',40003,400),(-42,'alt2',50002,500),(-41,'alt2',60003,600),(5,'primary',100004,10004),(6,'primary',100005,10005),(8,'primary',100007,10007),(10,'primary',100009,10009),(11,'primary',100010,10010),(12,'primary',100011,10011),(13,'primary',100012,10012),(51,'primary',100050,10050);
/*!40000 ALTER TABLE `blc_sku_media_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_sku_option_value_xref`
--

DROP TABLE IF EXISTS `blc_sku_option_value_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_sku_option_value_xref` (
  `SKU_OPTION_VALUE_XREF_ID` bigint(20) NOT NULL,
  `PRODUCT_OPTION_VALUE_ID` bigint(20) NOT NULL,
  `SKU_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SKU_OPTION_VALUE_XREF_ID`),
  KEY `FK7B61DC0BB0C16A73` (`PRODUCT_OPTION_VALUE_ID`),
  KEY `FK7B61DC0BB78C9977` (`SKU_ID`),
  CONSTRAINT `FK7B61DC0BB0C16A73` FOREIGN KEY (`PRODUCT_OPTION_VALUE_ID`) REFERENCES `blc_product_option_value` (`PRODUCT_OPTION_VALUE_ID`),
  CONSTRAINT `FK7B61DC0BB78C9977` FOREIGN KEY (`SKU_ID`) REFERENCES `blc_sku` (`SKU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_sku_option_value_xref`
--

LOCK TABLES `blc_sku_option_value_xref` WRITE;
/*!40000 ALTER TABLE `blc_sku_option_value_xref` DISABLE KEYS */;
INSERT INTO `blc_sku_option_value_xref` VALUES (1,1,111),(2,11,111),(3,1,112),(4,12,112),(5,1,113),(6,13,113),(7,1,114),(8,14,114),(9,2,121),(10,11,121),(11,2,122),(12,12,122),(13,2,123),(14,13,123),(15,2,124),(16,14,124),(17,3,131),(18,11,131),(19,3,132),(20,12,132),(21,3,133),(22,13,133),(23,3,134),(24,14,134),(25,1,211),(26,11,211),(27,1,212),(28,12,212),(29,1,213),(30,13,213),(31,1,214),(32,14,214),(33,2,221),(34,11,221),(35,2,222),(36,12,222),(37,2,223),(38,13,223),(39,2,224),(40,14,224),(41,3,231),(42,11,231),(43,3,232),(44,12,232),(45,3,233),(46,13,233),(47,3,234),(48,14,234),(49,1,311),(50,11,311),(51,1,312),(52,12,312),(53,1,313),(54,13,313),(55,1,314),(56,14,314),(57,2,321),(58,11,321),(59,2,322),(60,12,322),(61,2,323),(62,13,323),(63,2,324),(64,14,324),(65,3,331),(66,11,331),(67,3,332),(68,12,332),(69,3,333),(70,13,333),(71,3,334),(72,14,334),(73,1,411),(74,11,411),(75,1,412),(76,12,412),(77,1,413),(78,13,413),(79,1,414),(80,14,414),(81,2,421),(82,11,421),(83,2,422),(84,12,422),(85,2,423),(86,13,423),(87,2,424),(88,14,424),(89,3,431),(90,11,431),(91,3,432),(92,12,432),(93,3,433),(94,13,433),(95,3,434),(96,14,434),(97,1,511),(98,11,511),(99,1,512),(100,12,512),(101,1,513),(102,13,513),(103,1,514),(104,14,514),(105,2,521),(106,11,521),(107,2,522),(108,12,522),(109,2,523),(110,13,523),(111,2,524),(112,14,524),(113,3,531),(114,11,531),(115,3,532),(116,12,532),(117,3,533),(118,13,533),(119,3,534),(120,14,534),(121,1,611),(122,11,611),(123,1,612),(124,12,612),(125,1,613),(126,13,613),(127,1,614),(128,14,614),(129,2,621),(130,11,621),(131,2,622),(132,12,622),(133,2,623),(134,13,623),(135,2,624),(136,14,624),(137,3,631),(138,11,631),(139,3,632),(140,12,632),(141,3,633),(142,13,633),(143,3,634),(144,14,634);
/*!40000 ALTER TABLE `blc_sku_option_value_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_state`
--

DROP TABLE IF EXISTS `blc_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_state` (
  `ABBREVIATION` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `COUNTRY` varchar(255) NOT NULL,
  PRIMARY KEY (`ABBREVIATION`),
  KEY `STATE_NAME_INDEX` (`NAME`),
  KEY `FK8F94A1EBA46E16CF` (`COUNTRY`),
  CONSTRAINT `FK8F94A1EBA46E16CF` FOREIGN KEY (`COUNTRY`) REFERENCES `blc_country` (`ABBREVIATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_state`
--

LOCK TABLES `blc_state` WRITE;
/*!40000 ALTER TABLE `blc_state` DISABLE KEYS */;
INSERT INTO `blc_state` VALUES ('AA','ARMED FORCES AMERICA','US'),('AB','ALBERTA','CA'),('AE','ARMED FORCES','US'),('AK','ALASKA','US'),('AL','ALABAMA','US'),('AP','ARMED FORCES PACIFIC','US'),('AR','ARKANSAS','US'),('AS','AMERICAN SAMOA','US'),('AZ','ARIZONA','US'),('BC','BRITISH COLUMBIA','CA'),('CA','CALIFORNIA','US'),('CO','COLORADO','US'),('CT','CONNECTICUT','US'),('DC','DISTRICT OF COLUMBIA','US'),('DE','DELAWARE','US'),('FL','FLORIDA','US'),('FM','FEDERATED STATES OF MICRONESIA','US'),('GA','GEORGIA','US'),('GU','GUAM','US'),('HI','HAWAII','US'),('IA','IOWA','US'),('ID','IDAHO','US'),('IL','ILLINOIS','US'),('IN','INDIANA','US'),('KS','KANSAS','US'),('KY','KENTUCKY','US'),('LA','LOUISIANA','US'),('MA','MASSACHUSETTS','US'),('MB','MANITOBA','CA'),('MD','MARYLAND','US'),('ME','MAINE','US'),('MH','MARSHALL ISLANDS','US'),('MI','MICHIGAN','US'),('MN','MINNESOTA','US'),('MO','MISSOURI','US'),('MP','NORTHERN MARIANA ISLANDS','US'),('MS','MISSISSIPPI','US'),('MT','MONTANA','US'),('NB','NEW BRUNSWICK','CA'),('NC','NORTH CAROLINA','US'),('ND','NORTH DAKOTA','US'),('NE','NEBRASKA','US'),('NH','NEW HAMPSHIRE','US'),('NJ','NEW JERSEY','US'),('NL','NEWFOUNDLAND','CA'),('NM','NEW MEXICO','US'),('NS','NOVA SCOTIA','CA'),('NT','NORTHWEST TERRITORIES','CA'),('NU','NUNAVUT','CA'),('NV','NEVADA','US'),('NY','NEW YORK','US'),('OH','OHIO','US'),('OK','OKLAHOMA','US'),('ON','ONTARIO','CA'),('OR','OREGON','US'),('PA','PENNSYLVANIA','US'),('PE','PRINCE EDWARD ISLAND','CA'),('PR','PUERTO RICO','US'),('PW','PALAU','US'),('QC','QUEBEC','CA'),('RI','RHODE ISLAND','US'),('SC','SOUTH CAROLINA','US'),('SD','SOUTH DAKOTA','US'),('SK','SASKATCHEWAN','CA'),('TN','TENNESSEE','US'),('TX','TEXAS','US'),('UT','UTAH','US'),('VA','VIRGINIA','US'),('VI','VIRGIN ISLANDS','US'),('VT','VERMONT','US'),('WA','WASHINGTON','US'),('WI','WISCONSIN','US'),('WV','WEST VIRGINIA','US'),('WY','WYOMING','US'),('YT','YUKON','CA');
/*!40000 ALTER TABLE `blc_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_static_asset`
--

DROP TABLE IF EXISTS `blc_static_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_static_asset` (
  `STATIC_ASSET_ID` bigint(20) NOT NULL,
  `ALT_TEXT` varchar(255) DEFAULT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `FILE_EXTENSION` varchar(255) DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `FULL_URL` varchar(255) NOT NULL,
  `MIME_TYPE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  `STORAGE_TYPE` varchar(255) DEFAULT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`STATIC_ASSET_ID`),
  KEY `ASST_FULL_URL_INDX` (`FULL_URL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_static_asset`
--

LOCK TABLES `blc_static_asset` WRITE;
/*!40000 ALTER TABLE `blc_static_asset` DISABLE KEYS */;
INSERT INTO `blc_static_asset` VALUES (101,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Sudden-Death-Sauce-Bottle.jpg','image/jpg','Sudden Death Sauce Bottle','FILESYSTEM',NULL),(102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Sudden-Death-Sauce-Close.jpg','image/jpg','Sudden Death Sauce Close-up','FILESYSTEM',NULL),(201,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Sweet-Death-Sauce-Bottle.jpg','image/jpg','Sweet Death Sauce Bottle','FILESYSTEM',NULL),(202,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Sweet-Death-Sauce-Close.jpg','image/jpg','Sweet Death Sauce Close-up','FILESYSTEM',NULL),(203,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Sweet-Death-Sauce-Skull.jpg','image/jpg','Sweet Death Sauce Close-up','FILESYSTEM',NULL),(204,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Sweet-Death-Sauce-Tile.jpg','image/jpg','Sweet Death Sauce Close-up','FILESYSTEM',NULL),(205,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Sweet-Death-Sauce-Grass.jpg','image/jpg','Sweet Death Sauce Close-up','FILESYSTEM',NULL),(206,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Sweet-Death-Sauce-Logo.jpg','image/jpg','Sweet Death Sauce Close-up','FILESYSTEM',NULL),(301,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Hoppin-Hot-Sauce-Bottle.jpg','image/jpg','Hoppin Hot Sauce Bottle','FILESYSTEM',NULL),(302,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Hoppin-Hot-Sauce-Close.jpg','image/jpg','Hoppin Hot Sauce Close-up','FILESYSTEM',NULL),(401,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Day-of-the-Dead-Chipotle-Hot-Sauce-Bottle.jpg','image/jpg','Day of the Dead Chipotle Hot Sauce Bottle','FILESYSTEM',NULL),(402,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Day-of-the-Dead-Chipotle-Hot-Sauce-Close.jpg','image/jpg','Day of the Dead Chipotle Hot Sauce Close-up','FILESYSTEM',NULL),(501,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Day-of-the-Dead-Habanero-Hot-Sauce-Bottle.jpg','image/jpg','Day of the Dead Habanero Hot Sauce Bottle','FILESYSTEM',NULL),(502,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Day-of-the-Dead-Habanero-Hot-Sauce-Close.jpg','image/jpg','Day of the Dead Habanero Hot Sauce Close-up','FILESYSTEM',NULL),(601,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Day-of-the-Dead-Scotch-Bonnet-Hot-Sauce-Bottle.jpg','image/jpg','Day of the Dead Scotch Bonnet Hot Sauce Bottle','FILESYSTEM',NULL),(602,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Day-of-the-Dead-Scotch-Bonnet-Hot-Sauce-Close.jpg','image/jpg','Day of the Dead Scotch Bonnet Hot Sauce Close-up','FILESYSTEM',NULL),(701,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Green-Ghost-Bottle.jpg','image/jpg','Green Ghost Bottle','FILESYSTEM',NULL),(702,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Green-Ghost-Close.jpg','image/jpg','Green Ghost Close-up','FILESYSTEM',NULL),(801,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Blazin-Saddle-XXX-Hot-Habanero-Pepper-Sauce-Bottle.jpg','image/jpg','Blazin Saddle XXX Hot Habanero Pepper Sauce Bottle','FILESYSTEM',NULL),(802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Blazin-Saddle-XXX-Hot-Habanero-Pepper-Sauce-Close.jpg','image/jpg','Blazin Saddle XXX Hot Habanero Pepper Sauce Close-up','FILESYSTEM',NULL),(901,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Armageddon-The-Hot-Sauce-To-End-All-Bottle.jpg','image/jpg','Armageddon The Hot Sauce To End All Bottle','FILESYSTEM',NULL),(902,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Armageddon-The-Hot-Sauce-To-End-All-Close.jpg','image/jpg','Armageddon The Hot Sauce To End All Close-up','FILESYSTEM',NULL),(1001,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Dr.-Chilemeisters-Insane-Hot-Sauce-Bottle.jpg','image/jpg','Dr. Chilemeisters Insane Hot Sauce Bottle','FILESYSTEM',NULL),(1002,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Dr.-Chilemeisters-Insane-Hot-Sauce-Close.jpg','image/jpg','Dr. Chilemeisters Insane Hot Sauce Close-up','FILESYSTEM',NULL),(1101,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Bull-Snort-Cowboy-Cayenne-Pepper-Hot-Sauce-Bottle.jpg','image/jpg','Bull Snort Cowboy Cayenne Pepper Hot Sauce Bottle','FILESYSTEM',NULL),(1102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Bull-Snort-Cowboy-Cayenne-Pepper-Hot-Sauce-Close.jpg','image/jpg','Bull Snort Cowboy Cayenne Pepper Hot Sauce Close-up','FILESYSTEM',NULL),(1201,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Cafe-Louisiane-Sweet-Cajun-Blackening-Sauce-Bottle.jpg','image/jpg','Cafe Louisiane Sweet Cajun Blackening Sauce Bottle','FILESYSTEM',NULL),(1202,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Cafe-Louisiane-Sweet-Cajun-Blackening-Sauce-Close.jpg','image/jpg','Cafe Louisiane Sweet Cajun Blackening Sauce Close-up','FILESYSTEM',NULL),(1301,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Bull-Snort-Smokin-Toncils-Hot-Sauce-Bottle.jpg','image/jpg','Bull Snort Smokin Toncils Hot Sauce Bottle','FILESYSTEM',NULL),(1302,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Bull-Snort-Smokin-Toncils-Hot-Sauce-Close.jpg','image/jpg','Bull Snort Smokin Toncils Hot Sauce Close-up','FILESYSTEM',NULL),(1401,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Cool-Cayenne-Pepper-Hot-Sauce-Bottle.jpg','image/jpg','Cool Cayenne Pepper Hot Sauce Bottle','FILESYSTEM',NULL),(1402,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Cool-Cayenne-Pepper-Hot-Sauce-Close.jpg','image/jpg','Cool Cayenne Pepper Hot Sauce Close-up','FILESYSTEM',NULL),(1501,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Roasted-Garlic-Hot-Sauce-Bottle.jpg','image/jpg','Roasted Garlic Hot Sauce Bottle','FILESYSTEM',NULL),(1502,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Roasted-Garlic-Hot-Sauce-Close.jpg','image/jpg','Roasted Garlic Hot Sauce Close-up','FILESYSTEM',NULL),(1601,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Scotch-Bonnet-Hot-Sauce-Bottle.jpg','image/jpg','Scotch Bonnet Hot Sauce Bottle','FILESYSTEM',NULL),(1602,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Scotch-Bonnet-Hot-Sauce-Close.jpg','image/jpg','Scotch Bonnet Hot Sauce Close-up','FILESYSTEM',NULL),(1701,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Insanity-Sauce-Bottle.jpg','image/jpg','Insanity Sauce Bottle','FILESYSTEM',NULL),(1702,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Insanity-Sauce-Close.jpg','image/jpg','Insanity Sauce Close-up','FILESYSTEM',NULL),(1801,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Hurtin-Jalepeno-Hot-Sauce-Bottle.jpg','image/jpg','Hurtin Jalepeno Hot Sauce Bottle','FILESYSTEM',NULL),(1802,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Hurtin-Jalepeno-Hot-Sauce-Close.jpg','image/jpg','Hurtin Jalepeno Hot Sauce Close-up','FILESYSTEM',NULL),(1901,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Roasted-Red-Pepper-and-Chipotle-Hot-Sauce-Bottle.jpg','image/jpg','Roasted Red Pepper and Chipotle Hot Sauce Bottle','FILESYSTEM',NULL),(1902,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/sauces/Roasted-Red-Pepper-and-Chipotle-Hot-Sauce-Close.jpg','image/jpg','Roasted Red Pepper and Chipotle Hot Sauce Close-up','FILESYSTEM',NULL),(10001,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/merch/habanero_mens_black.jpg','image/jpg','Hawt Like a Habanero Men\'s Black','FILESYSTEM',NULL),(10002,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/merch/habanero_mens_red.jpg','image/jpg','Hawt Like a Habanero Men\'s Red','FILESYSTEM',NULL),(10003,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/merch/habanero_mens_silver.jpg','image/jpg','Hawt Like a Habanero Men\'s Silver','FILESYSTEM',NULL),(20001,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/merch/habanero_womens_black.jpg','image/jpg','Hawt Like a Habanero Women\'s Black','FILESYSTEM',NULL),(20002,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/merch/habanero_womens_red.jpg','image/jpg','Hawt Like a Habanero Women\'s Red','FILESYSTEM',NULL),(20003,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/merch/habanero_womens_silver.jpg','image/jpg','Hawt Like a Habanero Women\'s Silver','FILESYSTEM',NULL),(30001,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/merch/heat_clinic_handdrawn_mens_black.jpg','image/jpg','Heat Clinic Hand-Drawn Men\'s Black','FILESYSTEM',NULL),(30002,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/merch/heat_clinic_handdrawn_mens_red.jpg','image/jpg','Heat Clinic Hand-Drawn Men\'s Red','FILESYSTEM',NULL),(30003,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/merch/heat_clinic_handdrawn_mens_silver.jpg','image/jpg','Heat Clinic Hand-Drawn Men\'s Silver','FILESYSTEM',NULL),(40001,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/merch/heat_clinic_handdrawn_womens_black.jpg','image/jpg','Heat Clinic Hand-Drawn Women\'s Black','FILESYSTEM',NULL),(40002,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/merch/heat_clinic_handdrawn_womens_red.jpg','image/jpg','Heat Clinic Hand-Drawn Women\'s Red','FILESYSTEM',NULL),(40003,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/merch/heat_clinic_handdrawn_womens_silver.jpg','image/jpg','Heat Clinic Hand-Drawn Women\'s Silver','FILESYSTEM',NULL),(50001,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/merch/heat_clinic_mascot_mens_black.jpg','image/jpg','Heat Clinic Mascot Men\'s Black','FILESYSTEM',NULL),(50002,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/merch/heat_clinic_mascot_mens_red.jpg','image/jpg','Heat Clinic Mascot Men\'s Red','FILESYSTEM',NULL),(50003,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/merch/heat_clinic_mascot_mens_silver.jpg','image/jpg','Heat Clinic Mascot Men\'s Silver','FILESYSTEM',NULL),(60001,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/merch/heat_clinic_mascot_womens_black.jpg','image/jpg','Heat Clinic Mascot Women\'s Black','FILESYSTEM',NULL),(60002,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/merch/heat_clinic_mascot_womens_red.jpg','image/jpg','Heat Clinic Mascot Women\'s Red','FILESYSTEM',NULL),(60003,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/merch/heat_clinic_mascot_womens_silver.jpg','image/jpg','Heat Clinic Mascot Women\'s Silver','FILESYSTEM',NULL),(100000,NULL,-1,'2017-03-21 16:41:46','2017-03-21 16:41:46',NULL,'jpeg',15108,'/product/images.jpeg','image/jpeg','images.jpeg','FILESYSTEM',NULL),(100001,NULL,-1,'2017-03-21 16:46:35','2017-03-21 16:46:35',NULL,'jpg',210124,'/product/3max.jpg','image/jpeg','3max.jpg','FILESYSTEM',NULL),(100002,NULL,-1,'2017-03-21 16:47:46','2017-03-21 16:47:46',NULL,'jpeg',301078,'/product/72bd739c-e7d7-43dc-8cf2-7d6b0508248a_1.415e2c1e19dbe68793408dc10b171894.jpeg','image/jpeg','72bd739c-e7d7-43dc-8cf2-7d6b0508248a_1.415e2c1e19dbe68793408dc10b171894.jpeg','FILESYSTEM',NULL),(100003,NULL,-1,'2017-03-21 16:49:26','2017-03-21 16:49:26',NULL,'jpg',397461,'/product/1422469609-6846-jaquette-avant.jpg','image/jpeg','1422469609-6846-jaquette-avant.jpg','FILESYSTEM',NULL),(100004,NULL,-1,'2017-03-21 16:50:33','2017-03-21 16:50:33',NULL,'jpg',265884,'/product/81+aUb8+LbL._SL1500_.jpg','image/jpeg','81+aUb8+LbL._SL1500_.jpg','FILESYSTEM',NULL),(100005,NULL,-1,'2017-03-21 16:52:16','2017-03-21 16:52:16',NULL,'jpg',111334,'/product/1467969693-7564-jaquette-avant.jpg','image/jpeg','1467969693-7564-jaquette-avant.jpg','FILESYSTEM',NULL),(100006,NULL,-1,'2017-03-21 16:54:14','2017-03-21 16:54:14',NULL,'jpg',370073,'/product/jaquette-grand-theft-auto-v-playstation-4-ps4-cover-avant-g-1415122088.jpg','image/jpeg','jaquette-grand-theft-auto-v-playstation-4-ps4-cover-avant-g-1415122088.jpg','FILESYSTEM',NULL),(100050,NULL,-1,'2017-03-25 11:34:57','2017-03-25 11:34:57',NULL,'jpg',50349,'/product/1457627765-1035-jaquette-avant.jpg','image/jpeg','1457627765-1035-jaquette-avant.jpg','FILESYSTEM',NULL),(100100,NULL,-1,'2017-03-25 14:02:05','2017-03-25 14:02:05',NULL,'jpg',111334,'/product/10000/1467969693-7564-jaquette-avant.jpg','image/jpeg','1467969693-7564-jaquette-avant.jpg','FILESYSTEM',NULL),(100101,NULL,-1,'2017-03-25 14:02:26','2017-03-25 14:02:26',NULL,'jpg',210124,'/product/10001/3max.jpg','image/jpeg','3max.jpg','FILESYSTEM',NULL),(100150,NULL,-1,'2017-03-29 14:40:07','2017-03-29 14:40:07',NULL,'jpg',111334,'/product/10005/1467969693-7564-jaquette-avant.jpg','image/jpeg','1467969693-7564-jaquette-avant.jpg','FILESYSTEM',NULL),(100200,NULL,-1,'2017-04-01 17:07:58','2017-04-01 17:07:58',NULL,'jpeg',15108,'/product/10000/images.jpeg','image/jpeg','images.jpeg','FILESYSTEM',NULL),(100201,NULL,-1,'2017-04-01 17:09:35','2017-04-01 17:09:35',NULL,'jpeg',15108,'/product/10000/images-1.jpeg','image/jpeg','images.jpeg','FILESYSTEM',NULL),(100202,NULL,-1,'2017-04-01 17:10:38','2017-04-01 17:10:38',NULL,'jpeg',301078,'/product/10002/72bd739c-e7d7-43dc-8cf2-7d6b0508248a_1.415e2c1e19dbe68793408dc10b171894.jpeg','image/jpeg','72bd739c-e7d7-43dc-8cf2-7d6b0508248a_1.415e2c1e19dbe68793408dc10b171894.jpeg','FILESYSTEM',NULL),(100250,NULL,-1,'2017-04-03 13:09:36','2017-04-03 13:09:36',NULL,'jpeg',15108,'/product/10000/images-2.jpeg','image/jpeg','images.jpeg','FILESYSTEM',NULL);
/*!40000 ALTER TABLE `blc_static_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_static_asset_desc`
--

DROP TABLE IF EXISTS `blc_static_asset_desc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_static_asset_desc` (
  `STATIC_ASSET_DESC_ID` bigint(20) NOT NULL,
  `CREATED_BY` bigint(20) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` bigint(20) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `LONG_DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`STATIC_ASSET_DESC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_static_asset_desc`
--

LOCK TABLES `blc_static_asset_desc` WRITE;
/*!40000 ALTER TABLE `blc_static_asset_desc` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_static_asset_desc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_static_asset_strg`
--

DROP TABLE IF EXISTS `blc_static_asset_strg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_static_asset_strg` (
  `STATIC_ASSET_STRG_ID` bigint(20) NOT NULL,
  `FILE_DATA` longblob,
  `STATIC_ASSET_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`STATIC_ASSET_STRG_ID`),
  KEY `STATIC_ASSET_ID_INDEX` (`STATIC_ASSET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_static_asset_strg`
--

LOCK TABLES `blc_static_asset_strg` WRITE;
/*!40000 ALTER TABLE `blc_static_asset_strg` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_static_asset_strg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_store`
--

DROP TABLE IF EXISTS `blc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_store` (
  `STORE_ID` bigint(20) NOT NULL,
  `ARCHIVED` char(1) DEFAULT NULL,
  `LATITUDE` double DEFAULT NULL,
  `LONGITUDE` double DEFAULT NULL,
  `STORE_NAME` varchar(255) NOT NULL,
  `OPEN` tinyint(1) DEFAULT NULL,
  `STORE_HOURS` varchar(255) DEFAULT NULL,
  `STORE_NUMBER` varchar(255) DEFAULT NULL,
  `ADDRESS_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`STORE_ID`),
  KEY `FK8F94D63BC13085DD` (`ADDRESS_ID`),
  CONSTRAINT `FK8F94D63BC13085DD` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `blc_address` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_store`
--

LOCK TABLES `blc_store` WRITE;
/*!40000 ALTER TABLE `blc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_system_property`
--

DROP TABLE IF EXISTS `blc_system_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_system_property` (
  `BLC_SYSTEM_PROPERTY_ID` bigint(20) NOT NULL,
  `FRIENDLY_GROUP` varchar(255) DEFAULT NULL,
  `FRIENDLY_NAME` varchar(255) DEFAULT NULL,
  `FRIENDLY_TAB` varchar(255) DEFAULT NULL,
  `PROPERTY_NAME` varchar(255) NOT NULL,
  `OVERRIDE_GENERATED_PROP_NAME` tinyint(1) DEFAULT NULL,
  `PROPERTY_TYPE` varchar(255) DEFAULT NULL,
  `PROPERTY_VALUE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`BLC_SYSTEM_PROPERTY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_system_property`
--

LOCK TABLES `blc_system_property` WRITE;
/*!40000 ALTER TABLE `blc_system_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_system_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_tar_crit_offer_xref`
--

DROP TABLE IF EXISTS `blc_tar_crit_offer_xref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_tar_crit_offer_xref` (
  `OFFER_TAR_CRIT_ID` bigint(20) NOT NULL,
  `OFFER_ID` bigint(20) NOT NULL,
  `OFFER_ITEM_CRITERIA_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`OFFER_TAR_CRIT_ID`),
  KEY `FK125F5803D5F3FAF4` (`OFFER_ID`),
  KEY `FK125F58033615A91A` (`OFFER_ITEM_CRITERIA_ID`),
  CONSTRAINT `FK125F58033615A91A` FOREIGN KEY (`OFFER_ITEM_CRITERIA_ID`) REFERENCES `blc_offer_item_criteria` (`OFFER_ITEM_CRITERIA_ID`),
  CONSTRAINT `FK125F5803D5F3FAF4` FOREIGN KEY (`OFFER_ID`) REFERENCES `blc_offer` (`OFFER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_tar_crit_offer_xref`
--

LOCK TABLES `blc_tar_crit_offer_xref` WRITE;
/*!40000 ALTER TABLE `blc_tar_crit_offer_xref` DISABLE KEYS */;
INSERT INTO `blc_tar_crit_offer_xref` VALUES (-100,1,1);
/*!40000 ALTER TABLE `blc_tar_crit_offer_xref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_tax_detail`
--

DROP TABLE IF EXISTS `blc_tax_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_tax_detail` (
  `TAX_DETAIL_ID` bigint(20) NOT NULL,
  `AMOUNT` decimal(19,5) DEFAULT NULL,
  `TAX_COUNTRY` varchar(255) DEFAULT NULL,
  `JURISDICTION_NAME` varchar(255) DEFAULT NULL,
  `RATE` decimal(19,5) DEFAULT NULL,
  `TAX_REGION` varchar(255) DEFAULT NULL,
  `TAX_NAME` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `CURRENCY_CODE` varchar(255) DEFAULT NULL,
  `MODULE_CONFIG_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`TAX_DETAIL_ID`),
  KEY `FKEABE4A4B3E2FC4F9` (`CURRENCY_CODE`),
  KEY `FKEABE4A4BC50D449` (`MODULE_CONFIG_ID`),
  CONSTRAINT `FKEABE4A4B3E2FC4F9` FOREIGN KEY (`CURRENCY_CODE`) REFERENCES `blc_currency` (`CURRENCY_CODE`),
  CONSTRAINT `FKEABE4A4BC50D449` FOREIGN KEY (`MODULE_CONFIG_ID`) REFERENCES `blc_module_configuration` (`MODULE_CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_tax_detail`
--

LOCK TABLES `blc_tax_detail` WRITE;
/*!40000 ALTER TABLE `blc_tax_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_tax_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_trans_additnl_fields`
--

DROP TABLE IF EXISTS `blc_trans_additnl_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_trans_additnl_fields` (
  `PAYMENT_TRANSACTION_ID` bigint(20) NOT NULL,
  `FIELD_VALUE` longtext,
  `FIELD_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`PAYMENT_TRANSACTION_ID`,`FIELD_NAME`),
  KEY `FK376DDE4B9E955B1D` (`PAYMENT_TRANSACTION_ID`),
  CONSTRAINT `FK376DDE4B9E955B1D` FOREIGN KEY (`PAYMENT_TRANSACTION_ID`) REFERENCES `blc_order_payment_transaction` (`PAYMENT_TRANSACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_trans_additnl_fields`
--

LOCK TABLES `blc_trans_additnl_fields` WRITE;
/*!40000 ALTER TABLE `blc_trans_additnl_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_trans_additnl_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_translation`
--

DROP TABLE IF EXISTS `blc_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_translation` (
  `TRANSLATION_ID` bigint(20) NOT NULL,
  `ENTITY_ID` varchar(255) DEFAULT NULL,
  `ENTITY_TYPE` varchar(255) DEFAULT NULL,
  `FIELD_NAME` varchar(255) DEFAULT NULL,
  `LOCALE_CODE` varchar(255) DEFAULT NULL,
  `TRANSLATED_VALUE` longtext,
  PRIMARY KEY (`TRANSLATION_ID`),
  KEY `TRANSLATION_INDEX` (`ENTITY_TYPE`,`ENTITY_ID`,`FIELD_NAME`,`LOCALE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_translation`
--

LOCK TABLES `blc_translation` WRITE;
/*!40000 ALTER TABLE `blc_translation` DISABLE KEYS */;
INSERT INTO `blc_translation` VALUES (-1003,'3','Page','pageTemplate|body','es','<h2 style=\"text-align:center;\">Este es un ejemplo de una p&aacute;gina de contenido-manejado.</h2>'),(-1002,'2','Page','pageTemplate|body','es','<h2 style=\"text-align:center;\">Este es un ejemplo de una p&aacute;gina de contenido-manejado.</h2><h4 style=\"text-align:center;\">Haga <a href=\"http://www.broadleafcommerce.com/features/content\">click aqu&iacute;</a> para mas informaci&oacute;n.</h4>'),(-1001,'1','Page','pageTemplate|body','es','prueba de contenido'),(-1000,'1','Page','pageTemplate|title','es','Espa&ntilde;ol G&eacute;nerico'),(-398,'6','MenuItem','label','fr','FAQ'),(-397,'5','MenuItem','label','fr','Nouveau Hot Sauce?'),(-396,'3','FulfillmentOption','longDescription','fr','1 - 2 Journ&eacute;es'),(-395,'3','FulfillmentOption','name','fr','Express'),(-394,'2','FulfillmentOption','longDescription','fr','3 - 5 Journ&eacute;es'),(-393,'2','FulfillmentOption','name','fr','Priorit&eacute;'),(-392,'1','FulfillmentOption','longDescription','fr','5 - 7 Journ&eacute;es'),(-391,'1','FulfillmentOption','name','fr','Norme'),(-382,'3','SearchFacet','label','fr','Prix'),(-381,'2','SearchFacet','label','fr','Degr&eacute; de chaleur'),(-380,'1','SearchFacet','label','fr','Fabricant'),(-300,'600','Sku','longDescription','fr','Avez-vous pas juste notre mascotte? Obtenez votre chemise propre aujourd\'hui!'),(-299,'600','Sku','name','fr','Mascot Clinique chaleur (Femmes)'),(-298,'500','Sku','longDescription','fr','Avez-vous pas juste notre mascotte? Obtenez votre chemise propre aujourd\'hui!'),(-297,'500','Sku','name','fr','Mascot Clinique chaleur (Hommes)'),(-296,'400','Sku','longDescription','fr','Ce t-shirt logo dessin&eacute; &agrave; la main pour les femmes dispose d\'une coupe r&eacute;guli&egrave;re en trois couleurs diff&eacute;rentes.'),(-295,'400','Sku','name','fr','Clinique de chaleur tir&eacute; par la main (Femmes)'),(-294,'300','Sku','longDescription','fr','Ce t-shirt logo dessin&eacute; &agrave; la main pour les hommes dispose d\'une coupe r&eacute;guli&egrave;re en trois couleurs diff&eacute;rentes.'),(-293,'300','Sku','name','fr','Clinique de chaleur tir&eacute; par la main (Hommes)'),(-292,'200','Sku','longDescription','fr','Collecte de femmes Habanero standards chemise &agrave; manches courtes shirt s&eacute;rigraphi&eacute; &agrave; 30 coton doux singles en coupe regular.'),(-291,'200','Sku','name','fr','Hawt comme une chemise Habanero (Femmes)'),(-290,'100','Sku','longDescription','fr','Collecte Hommes Habanero standards chemise &agrave; manches courtes t s&eacute;rigraphi&eacute;es en 30 coton doux singles en coupe regular.'),(-289,'100','Sku','name','fr','Hawt comme une chemise Habanero (Hommes)'),(-288,'19','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-287,'19','Sku','name','fr','Sauce chaudes Chipotle'),(-286,'18','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-285,'18','Sku','name','fr','Sauces chaudes Jalapeno'),(-284,'17','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-283,'17','Sku','name','fr','Sauce Scotch Bonnet chaud'),(-282,'16','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-281,'16','Sku','name','fr','Sauce Scotch Bonnet chaud'),(-280,'15','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-279,'15','Sku','name','fr','Sauce &agrave; l\'ail rôti chaud'),(-278,'14','Sku','longDescription','fr','Cette sauce tire sa saveur des poivrons grand &acirc;ge et le vinaigre de canne. Il permettra d\'am&eacute;liorer la saveur de la plupart de n\'importe quel repas.'),(-277,'14','Sku','name','fr','Frais Poivre de Cayenne Hot Sauce'),(-276,'13','Sku','longDescription','fr','Todo es m&aacute;s grande en Texas, incluso lo picante de la Salsa de Snortin Bull! Tout est plus grand au Texas, m&ecirc;me la brûlure de Hot Sauce une Snortin Bull! douche sur le Texas Steak taille qu\'ils appellent le 96er Ole ou vos l&eacute;gumes Jane avion. Si vous &ecirc;tes un fan sur faire de la sauce barbecue &agrave; partir de z&eacute;ro comme je suis, vous pouvez utiliser la sauce Bull amygdales Snort Smokin \'Hot tant qu\'additif. Red hot habaneros et piments donner &agrave; cette tingler amygdales sa saveur c&eacute;l&egrave;bre et rouge de chaleur chaud. Bull Snort Smokin \'Hot amygdales Sauce\'ll avoir vos entrailles buckin »avec une goutte d\'eau.'),(-275,'13','Sku','name','fr','Bull Snort Smokin \'Hot Sauce Toncils'),(-274,'12','Sku','longDescription','fr','L\'une des sauces les plus insolites que nous vendons. L\'original &eacute;tait un vieux style sauce cajun et c\'est ça le noircissement &agrave; jour de version. C\'est gentil, mais vous obtenez un grand succ&egrave;s de cannelle et de clou de girofle avec un coup de chaleur agr&eacute;able de Cayenne. Utilisez-le sur tous les aliments &agrave; donner cette ambiance cajun.'),(-273,'12','Sku','name','fr','Caf&eacute; Cajun Louisiane Douce Sauce Blackening'),(-272,'11','Sku','longDescription','fr','Been there, encord&eacute;s cela. Hotter than jument buckin \'en chaleur! Saupoudrez de plats de viande, de fruits de mer et l&eacute;gumes. Utilisation comme additif dans une sauce barbecue ou tout aliment qui a besoin d\'une saveur &eacute;pic&eacute;e. Commencez avec quelques gouttes et travailler jusqu\'&agrave; la saveur d&eacute;sir&eacute;e.'),(-271,'11','Sku','name','fr','Bull Snort Cowboy poivre de Cayenne Hot Sauce'),(-270,'10','Sku','longDescription','fr','Voici la prescription pour ceux qui aiment la chaleur intol&eacute;rable. Dr Chilemeister potion de malades et mal mortel doit &ecirc;tre utilis&eacute; avec prudence. La douleur peut devenir une d&eacute;pendance!'),(-269,'10','Sku','name','fr','Dr Chilemeister Sauce Hot Insane'),(-268,'9','Sku','longDescription','fr','Tout l\'enfer se d&eacute;chaîne, le feu et le soufre pleuvoir? se pr&eacute;parer &agrave; rencontrer votre machine?'),(-267,'9','Sku','name','fr','Armageddon Le Hot Sauce To End All'),(-266,'8','Sku','longDescription','fr','Vous misez vos bottes, cette sauce chaude valu son nom de gens qui appr&eacute;cient une sauce chaude exceptionnel. Ce que vous trouverez ici est une saveur piquante vraiment original, pas un piquant irr&eacute;sistible que l\'on retrouve dans les sauces au poivre Tabasco ordinaires - m&ecirc;me si le piment utilis&eacute; dans ce produit a &eacute;t&eacute; test&eacute; &agrave; 285.000 unit&eacute;s Scoville. Alors, en selle pour une balade inoubliable. Pour vous assurer que nous vous avons apport&eacute; la plus belle sauce au poivre de Habanero, nous sommes all&eacute;s aux contreforts des montagnes mayas au Belize, en Am&eacute;rique centrale. Ce produit est pr&eacute;par&eacute; enti&egrave;rement &agrave; la main en utilisant uniquement des l&eacute;gumes frais et de tous les ingr&eacute;dients naturels.'),(-265,'8','Sku','name','fr','Blazin \'Selle XXX Hot Habanero sauce au poivre'),(-264,'7','Sku','longDescription','fr','Fabriqu&eacute; avec Naga Bhut Jolokia, plus chaud poivre dans le monde.'),(-263,'7','Sku','name','fr','Green Ghost'),(-262,'6','Sku','longDescription','fr','Souvent confondu avec le Habanero, le Scotch Bonnet a une pointe profond&eacute;ment invers&eacute;e par rapport &agrave; l\'extr&eacute;mit&eacute; pointue de l\'Habanero. Allant dans de nombreuses couleurs allant du vert au jaune-orange, le Scotch Bonnet est un aliment de base dans les Antilles et sauces au poivre de style Barbade.'),(-261,'6','Sku','name','fr','Jour de la sauce Scotch Bonnet Hot Morte'),(-260,'5','Sku','longDescription','fr','Si vous voulez chaud, c\'est le piment de choisir. Originaire de la Caraïbe, du Yucatan et du Nord Côte de l\'Am&eacute;rique du Sud, le Habanero se pr&eacute;sente dans une vari&eacute;t&eacute; de couleurs allant du vert p&acirc;le au rouge vif. La chaleur gras Habanero, la saveur et l\'arôme unique, en a fait le favori des amateurs de chili.'),(-259,'5','Sku','name','fr','Jour de la sauce Habanero Hot Morte'),(-258,'4','Sku','longDescription','fr','Lorsque tout le poivre est s&eacute;ch&eacute; et fum&eacute;, il est consid&eacute;r&eacute; comme un Chipotle. Normalement, avec un aspect froiss&eacute;, drak brun, le chipotle fum&eacute; offre une saveur douce qui est g&eacute;n&eacute;ralement utilis&eacute; pour ajouter un smokey, saveur rôtie aux salsas, les ragoûts et marinades.'),(-257,'4','Sku','name','fr','Jour de la sauce chaude Morte Chipotle'),(-256,'3','Sku','longDescription','fr','Tangy, venu de Cayenne poivron flux avec l\'ail, l\'oignon p&acirc;te de tomate, et un soupçon de sucre de canne pour en faire une sauce onctueuse avec une morsure. Magnifique sur les œufs, la volaille, le porc ou le poisson, cette sauce marie pour faire des marinades et des soupes riches.'),(-255,'3','Sku','name','fr','Hot Sauce Hoppin'),(-254,'2','Sku','longDescription','fr','Le parfait topper pour le poulet, le poisson, des hamburgers ou une pizza. Un grand m&eacute;lange de Habanero, mangue, fruits de la passion et de plus faire cette sauce Mort d\'un festin incroyable tropicale'),(-253,'2','Sku','name','fr','Sauce Sweet Death'),(-252,'1','Sku','longDescription','fr','Comme mes Chilipals sais, je suis pas du genre &agrave; &ecirc;tre satisfaite. Par cons&eacute;quent, la cr&eacute;ation de la mort subite. Lorsque vous avez besoin d\'aller au-del&agrave; ... Mort subite livrera!'),(-251,'1','Sku','name','fr','Sauce mort subite'),(-247,'14','ProdOptionVal','attributeValue','fr','XG'),(-246,'13','ProdOptionVal','attributeValue','fr','G'),(-245,'12','ProdOptionVal','attributeValue','fr','M'),(-244,'11','ProdOptionVal','attributeValue','fr','P'),(-243,'3','ProdOptionVal','attributeValue','fr','Argent'),(-242,'2','ProdOptionVal','attributeValue','fr','Rouge'),(-241,'1','ProdOptionVal','attributeValue','fr','Noir'),(-232,'2','ProdOption','label','fr','Shirt Taille'),(-231,'1','ProdOption','label','fr','Shirt Couleur'),(-214,'2004','Category','description','fr','D&eacute;gagement'),(-213,'2003','Category','description','fr','Marchandisfr'),(-212,'2002','Category','description','fr','Sauces chaudfr'),(-211,'2001','Category','description','fr','Page d\'accueil'),(-204,'2004','Category','name','fr','D&eacute;gagement'),(-203,'2003','Category','name','fr','Marchandisfr'),(-202,'2002','Category','name','fr','Sauces chaudfr'),(-201,'2001','Category','name','fr','Page d\'accueil'),(-198,'6','MenuItem','label','es','FAQ'),(-197,'5','MenuItem','label','es','Nuevo a la Salsa?'),(-196,'3','FulfillmentOption','longDescription','es','1 - 2 D&iacute;as'),(-195,'3','FulfillmentOption','name','es','Express'),(-194,'2','FulfillmentOption','longDescription','es','3 - 5 D&iacute;as'),(-193,'2','FulfillmentOption','name','es','Ejecutiva'),(-192,'1','FulfillmentOption','longDescription','es','5 - 7 D&iacute;as'),(-191,'1','FulfillmentOption','name','es','Estándar'),(-182,'3','SearchFacet','label','es','Precio'),(-181,'2','SearchFacet','label','es','Rango de Calor'),(-180,'1','SearchFacet','label','es','Fabricante'),(-100,'600','Sku','longDescription','es','&iquest;No te encanta nuestra mascota? Compre su propia camiseta hoy!'),(-99,'600','Sku','name','es','Mascota de Heat Clinic (Mujeres)'),(-98,'500','Sku','longDescription','es','&iquest;No te encanta nuestra mascota? Compre su propia camiseta hoy!'),(-97,'500','Sku','name','es','Mascota de Heat Clinic (Hombres)'),(-96,'400','Sku','longDescription','es','Esta camiseta tiene el logo dibujado a mano para hombres, ofrece un ajuste regular en tres colores diferentes.'),(-95,'400','Sku','name','es','Heat Clinic dibujado a mano (Mujeres)'),(-94,'300','Sku','longDescription','es','Esta camiseta tiene el logo dibujado a mano para hombres, ofrece un ajuste regular en tres colores diferentes.'),(-93,'300','Sku','name','es','Heat Clinic dibujado a mano (Hombres)'),(-92,'200','Sku','longDescription','es','Colecci&oacute;n de Mujeres Habanero est&aacute;ndar de manga corta serigrafiadas, camiseta de algod&oacute;n suave en ajuste normal.'),(-91,'200','Sku','name','es','Camisa de Habanero Hawt (Mujeres)'),(-90,'100','Sku','longDescription','es','Colecci&oacute;n de Hombres Habanero est&aacute;ndar de manga corta serigrafiadas, camiseta de algod&oacute;n suave en ajuste normal.'),(-89,'100','Sku','name','es','Camisa de Habanero Hawt (Hombres)'),(-88,'19','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-87,'19','Sku','name','es','Salsa de Pimienta Roja y Chipotle'),(-86,'18','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-85,'18','Sku','name','es','Salsa de Jalape&ntilde;o Ardiente'),(-84,'17','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-83,'17','Sku','name','es','Salsa de Locura'),(-82,'16','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-81,'16','Sku','name','es','Salsa de Locura'),(-80,'15','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-79,'15','Sku','name','es','Salsa de Ajo Tostado'),(-78,'14','Sku','longDescription','es','Esta salsa debe su gran sabor a los pimientos de edad y vinagre de ca&ntilde;a. Mejorar&aacute; el sabor de cualquier comida.'),(-77,'14','Sku','name','es','Salsa de Cayene Fresco'),(-76,'13','Sku','longDescription','es','Todo es m&aacute;s grande en Texas, incluso lo picante de la Salsa de Snortin Bull! Si usted es un fan de hacer la salsa de barbacoa a partir de cero, como yo, puede utilizar la Salsa de Snortin Bull como aditivo. Habaneros ardientes y los pimientos de cayena dan a la garganta un sabor y calor al rojo vivo.'),(-75,'13','Sku','name','es','Salsa Mata-Gargantas de Bull Snort'),(-74,'12','Sku','longDescription','es','Una de las salsas m&aacute;s inusuales que vendemos. La original era un viejo estilo salsa caj&uacute;n y esto versi&oacute;n actualizada ennegrecimiento. Es dulce, pero se obtiene un gran sabor de canela y clavo de olor con un tiro agradable de piacnte de Cayena. Use en todos los alimentos para dar ese toque caj&uacute;n.'),(-73,'12','Sku','name','es','Salsa Dulce de Cajun de Lousiane'),(-72,'11','Sku','longDescription','es','Espolvorear con platos de carne, pescado y verduras. Use como aditivo en la salsa de barbacoa o cualquier alimento que necesita un sabor picante. Comience con unas gotas y aumente hasta llegar al sabor deseado.'),(-71,'11','Sku','name','es','Salsa Picante del Vaquero'),(-70,'10','Sku','longDescription','es','Aquí est&aacute; la receta para aquellos que disfrutan de picante intolerable. Esta salsa macabra y mortal del Dr. Chilemeister se debe utilizar con precauci&oacute;n. El dolor puede llegar a ser adictivo!'),(-69,'10','Sku','name','es','Salsa Loca del Dr. Chilemeister'),(-68,'9','Sku','longDescription','es','Todo el infierno se ha desatado, fuego y azufre. Est&aacute; listo para el fin?'),(-67,'9','Sku','name','es','Fin del Mundo Salsa'),(-66,'8','Sku','longDescription','es','Esta salsa caliente recibe su nombre por la gente que aprecian una salsa picante. Lo que vas a encontrar aquí es un sabor picante realmente original, no una acritud abrumador que se encuentra en las salsas de chile Tabasco ordinarios - a pesar de la pimienta usado en este producto ha sido probado en 285.000 unidades Scoville. Por lo tanto, ensillar a dar un paseo para recordar. Para asegurarnos de que usted trajo s&oacute;lo la mejor salsa de pimiento habanero, nos fuimos a las faldas de las monta&ntilde;as mayas en Belice, Am&eacute;rica Central. Este producto se prepara totalmente a mano utilizando s&oacute;lo las verduras frescas y solo ingredientes naturales.'),(-65,'8','Sku','name','es','Salsa de Habanero de la Silla Ardiente'),(-64,'7','Sku','longDescription','es','Hecho con Naga Jolokia Bhut, el chile m&aacute;s picante del mundo.'),(-63,'7','Sku','name','es','Fantasma Verde'),(-62,'6','Sku','longDescription','es','Parecido al Habanero, el Bonnet Escoc&eacute;s tiene una punta profundamente invertidas en comparaci&oacute;n con el extremo puntiagudo del Habanero. Van en colores de verde a amarillo-naranja, el Bonnet Escoc&eacute;s es un alimento b&aacute;sico en West Indies, en Barbados y salsas estilo pimienta.'),(-61,'6','Sku','name','es','Salsa del D&iacute;a de los Muertos de Bonnet Escoc&eacute;s'),(-60,'5','Sku','longDescription','es','Si quieres picante, este es el Chile a elegir. Originario del Caribe, Yucat&aacute;n y la Costa norte de Am&eacute;rica del Sur, el habanero se presenta en una variedad de colores que van desde el verde claro a un rojo brillante. El calor, sabor y aroma &uacute;nicos del Habanero ha convertido el chile en el favorito de los amantes del picante.'),(-59,'5','Sku','name','es','Salsa del D&iacute;a de los Muertos de Habanero'),(-58,'4','Sku','longDescription','es','Cuando cualquier pimienta se seca y se fuma, se refiere como un Chipotle. Por lo general, con una apariencia arrugada, caf&eacute; oscuro, el Chipotle ofrece un sabor ahumado y dulce que se utiliza generalmente para agregar un sabor asado a las salsas, guisos y adobos.'),(-57,'4','Sku','name','es','Salsa del D&iacute;a de los Muertos de Chipotle'),(-56,'3','Sku','longDescription','es','Picante, maduro pimienta que se mezcla junto con el ajo, la cebolla, pasta de tomate y una pizca de az&uacute;car de ca&ntilde;a para hacer de esto una salsa suave. Maravilloso en huevos, aves de corral, carne de cerdo o pescado, esta salsa se ​​mezcla para hacer los adobos y sopas ricas.'),(-55,'3','Sku','name','es','Salsa de la Muerte Saltante'),(-54,'2','Sku','longDescription','es','El perfecto acompa&ntilde;ante para el pollo, el pescado, hamburguesas o pizza. Una gran mezcla de habanero, mango, fruta de la pasi&oacute;n y mucho m&aacute;s hacen de esta salsa de la Muerte una delicia tropical incre&iacute;ble.'),(-53,'2','Sku','name','es','Salsa de la Muerte Dulce'),(-52,'1','Sku','longDescription','es','Como mis amigos salseros saben, nunca soy f&aacute;cil de satisfacer. Por lo tanto, naci&oacute; la creaci&oacute;n de la Muerte S&uacute;bita. Cuando este listo para saborear al m&aacute;s all&aacute; ... Muerte s&uacute;bita entregar&aacute;!'),(-51,'1','Sku','name','es','Salsa de la Muerte S&uacute;bita'),(-47,'14','ProdOptionVal','attributeValue','es','XG'),(-46,'13','ProdOptionVal','attributeValue','es','G'),(-45,'12','ProdOptionVal','attributeValue','es','M'),(-44,'11','ProdOptionVal','attributeValue','es','CH'),(-43,'3','ProdOptionVal','attributeValue','es','Plateado'),(-42,'2','ProdOptionVal','attributeValue','es','Rojo'),(-41,'1','ProdOptionVal','attributeValue','es','Negro'),(-32,'2','ProdOption','label','es','Tama&ntilde;o de Camisa'),(-31,'1','ProdOption','label','es','Color de Camisa'),(-14,'2004','Category','description','es','Descuento'),(-13,'2003','Category','description','es','Mercanc&iacute;a'),(-12,'2002','Category','description','es','Salsas Picantes'),(-11,'2001','Category','description','es','Inicio'),(-4,'2004','Category','name','es','Descuento'),(-3,'2003','Category','name','es','Mercanc&iacute;a'),(-2,'2002','Category','name','es','Salsas'),(-1,'2001','Category','name','es','Inicio');
/*!40000 ALTER TABLE `blc_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_url_handler`
--

DROP TABLE IF EXISTS `blc_url_handler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_url_handler` (
  `URL_HANDLER_ID` bigint(20) NOT NULL,
  `INCOMING_URL` varchar(255) NOT NULL,
  `NEW_URL` varchar(255) NOT NULL,
  `URL_REDIRECT_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`URL_HANDLER_ID`),
  KEY `INCOMING_URL_INDEX` (`INCOMING_URL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_url_handler`
--

LOCK TABLES `blc_url_handler` WRITE;
/*!40000 ALTER TABLE `blc_url_handler` DISABLE KEYS */;
INSERT INTO `blc_url_handler` VALUES (1,'/googlePerm','http://www.google.com','REDIRECT_PERM'),(2,'/googleTemp','http://www.google.com','REDIRECT_TEMP'),(3,'/insanity','/hot-sauces/insanity_sauce','FORWARD'),(4,'/jalepeno','/hot-sauces/hurtin_jalepeno_hot_sauce','REDIRECT_TEMP');
/*!40000 ALTER TABLE `blc_url_handler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_userconnection`
--

DROP TABLE IF EXISTS `blc_userconnection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_userconnection` (
  `providerId` varchar(255) NOT NULL,
  `providerUserId` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `accessToken` varchar(255) NOT NULL,
  `displayName` varchar(255) DEFAULT NULL,
  `expireTime` bigint(20) DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `profileUrl` varchar(255) DEFAULT NULL,
  `rank` int(11) NOT NULL,
  `refreshToken` varchar(255) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`providerId`,`providerUserId`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_userconnection`
--

LOCK TABLES `blc_userconnection` WRITE;
/*!40000 ALTER TABLE `blc_userconnection` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_userconnection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blc_zip_code`
--

DROP TABLE IF EXISTS `blc_zip_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blc_zip_code` (
  `ZIP_CODE_ID` varchar(255) NOT NULL,
  `ZIP_CITY` varchar(255) DEFAULT NULL,
  `ZIP_LATITUDE` double DEFAULT NULL,
  `ZIP_LONGITUDE` double DEFAULT NULL,
  `ZIP_STATE` varchar(255) DEFAULT NULL,
  `ZIPCODE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ZIP_CODE_ID`),
  KEY `ZIPCODE_CITY_INDEX` (`ZIP_CITY`),
  KEY `ZIPCODE_LATITUDE_INDEX` (`ZIP_LATITUDE`),
  KEY `ZIPCODE_LONGITUDE_INDEX` (`ZIP_LONGITUDE`),
  KEY `ZIPCODE_STATE_INDEX` (`ZIP_STATE`),
  KEY `ZIPCODE_ZIP_INDEX` (`ZIPCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blc_zip_code`
--

LOCK TABLES `blc_zip_code` WRITE;
/*!40000 ALTER TABLE `blc_zip_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `blc_zip_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boost_category`
--

DROP TABLE IF EXISTS `boost_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boost_category` (
  `SOLR_BOOST_FIELD_VALUE_ID` bigint(20) DEFAULT NULL,
  `CATEGORY_ID` bigint(20) DEFAULT NULL,
  KEY `C3001` (`SOLR_BOOST_FIELD_VALUE_ID`),
  KEY `C3002` (`CATEGORY_ID`),
  CONSTRAINT `C3001` FOREIGN KEY (`SOLR_BOOST_FIELD_VALUE_ID`) REFERENCES `solr_boost_field_value` (`SOLR_BOOST_FIELD_VALUE_ID`),
  CONSTRAINT `C3002` FOREIGN KEY (`CATEGORY_ID`) REFERENCES `blc_category` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boost_category`
--

LOCK TABLES `boost_category` WRITE;
/*!40000 ALTER TABLE `boost_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `boost_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boost_product`
--

DROP TABLE IF EXISTS `boost_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boost_product` (
  `SOLR_BOOST_FIELD_VALUE_ID` bigint(20) DEFAULT NULL,
  `PRODUCT_ID` bigint(20) DEFAULT NULL,
  KEY `C3003` (`SOLR_BOOST_FIELD_VALUE_ID`),
  KEY `C3004` (`PRODUCT_ID`),
  CONSTRAINT `C3003` FOREIGN KEY (`SOLR_BOOST_FIELD_VALUE_ID`) REFERENCES `solr_boost_field_value` (`SOLR_BOOST_FIELD_VALUE_ID`),
  CONSTRAINT `C3004` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boost_product`
--

LOCK TABLES `boost_product` WRITE;
/*!40000 ALTER TABLE `boost_product` DISABLE KEYS */;
INSERT INTO `boost_product` VALUES (161,1),(162,14),(362,17);
/*!40000 ALTER TABLE `boost_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boost_query`
--

DROP TABLE IF EXISTS `boost_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boost_query` (
  `SOLR_BOOST_FIELD_VALUE_ID` bigint(20) DEFAULT NULL,
  `QUERY` varchar(50) DEFAULT NULL,
  KEY `C3000` (`SOLR_BOOST_FIELD_VALUE_ID`),
  CONSTRAINT `C3000` FOREIGN KEY (`SOLR_BOOST_FIELD_VALUE_ID`) REFERENCES `solr_boost_field_value` (`SOLR_BOOST_FIELD_VALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boost_query`
--

LOCK TABLES `boost_query` WRITE;
/*!40000 ALTER TABLE `boost_query` DISABLE KEYS */;
/*!40000 ALTER TABLE `boost_query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence_generator`
--

DROP TABLE IF EXISTS `sequence_generator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequence_generator` (
  `ID_NAME` varchar(255) NOT NULL,
  `ID_VAL` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence_generator`
--

LOCK TABLES `sequence_generator` WRITE;
/*!40000 ALTER TABLE `sequence_generator` DISABLE KEYS */;
INSERT INTO `sequence_generator` VALUES ('AdminModuleImpl',10010),('AdminPermissionEntityImpl',32011),('AdminPermissionImpl',32033),('AdminSectionImpl',32010),('CategoryExcludedSearchFacetImpl',1000),('CategoryImpl',10050),('CategoryProductImpl',1000),('CategoryProductXrefImpl',1150),('CategorySearchFacetImpl',1000),('CategoryXrefImpl',1100),('ChallengeQuestionImpl',1000),('CountrySubdivisionCategoryImpl',100),('FeaturedProductImpl',1000),('FieldDefinitionImpl',1000),('FieldEnumerationImpl',1000),('FieldEnumerationItemImpl',1000),('FieldGroupImpl',1000),('FieldImpl',1000),('FulfillmentGroupImpl',101),('FulfillmentGroupItemImpl',101),('FulfillmentOptionImpl',1000),('id',411),('IndexFieldImpl',30),('IndexFieldTypeImpl',20),('MediaImpl',100100),('MenuImpl',1000),('MenuItemImpl',1050),('OfferCodeImpl',1000),('OfferImpl',1000),('OfferItemCriteriaImpl',1000),('OrderImpl',101),('OrderItemImpl',101),('OrderItemPriceDetailImpl',101),('PageFieldImpl',1000),('PageImpl',1000),('PageTemplateFieldGroupXrefImpl',1000),('PageTemplateImpl',1000),('ProductAttributeImpl',1000),('ProductImpl',10100),('ProductOptionImpl',1000),('ProductOptionValueImpl',1000),('ProductOptionXrefImpl',1050),('RoleImpl',1000),('SandBoxImpl',51),('SandBoxManagementImpl',51),('SearchFacetImpl',1000),('SearchFacetRangeImpl',1000),('SearchInterceptImpl',1000),('SkuAttributeImpl',30),('SkuImpl',10100),('SkuMediaXrefImpl',101),('SkuProductOptionValueXrefImpl',1000),('StaticAssetImpl',100300),('StructuredContentFieldImpl',1000),('StructuredContentImpl',1000),('StructuredContentRuleImpl',1000),('StructuredContentTypeImpl',1000),('URLHandlerImpl',1000);
/*!40000 ALTER TABLE `sequence_generator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solr_boost`
--

DROP TABLE IF EXISTS `solr_boost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solr_boost` (
  `SOLR_BOOST_ID` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `FIELD_ID` bigint(20) DEFAULT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `AMOUNT` double DEFAULT NULL,
  PRIMARY KEY (`SOLR_BOOST_ID`),
  KEY `fk_solr_boost_field` (`FIELD_ID`),
  CONSTRAINT `fk_solr_boost_field` FOREIGN KEY (`FIELD_ID`) REFERENCES `blc_field` (`FIELD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solr_boost`
--

LOCK TABLES `solr_boost` WRITE;
/*!40000 ALTER TABLE `solr_boost` DISABLE KEYS */;
INSERT INTO `solr_boost` VALUES (1,'first test',4,1,NULL),(11,'boost sur la desc',7,1,NULL);
/*!40000 ALTER TABLE `solr_boost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solr_boost_details`
--

DROP TABLE IF EXISTS `solr_boost_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solr_boost_details` (
  `SOLR_BOOST_DETAILS_ID` bigint(20) NOT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `SOLR_BOOST_VALUE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SOLR_BOOST_DETAILS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solr_boost_details`
--

LOCK TABLES `solr_boost_details` WRITE;
/*!40000 ALTER TABLE `solr_boost_details` DISABLE KEYS */;
INSERT INTO `solr_boost_details` VALUES (61,'2017-04-02','2017-04-06',1),(111,'2017-04-21','2017-04-02',1);
/*!40000 ALTER TABLE `solr_boost_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solr_boost_field_value`
--

DROP TABLE IF EXISTS `solr_boost_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solr_boost_field_value` (
  `SOLR_BOOST_FIELD_VALUE_ID` bigint(20) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `AMOUNT` double DEFAULT NULL,
  PRIMARY KEY (`SOLR_BOOST_FIELD_VALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solr_boost_field_value`
--

LOCK TABLES `solr_boost_field_value` WRITE;
/*!40000 ALTER TABLE `solr_boost_field_value` DISABLE KEYS */;
INSERT INTO `solr_boost_field_value` VALUES (161,'aaa',6),(162,'gggg',2),(261,'azerty',10),(311,'ghfgh',2222),(361,'sdz',3),(362,'abc',123);
/*!40000 ALTER TABLE `solr_boost_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solr_boost_values`
--

DROP TABLE IF EXISTS `solr_boost_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solr_boost_values` (
  `SOLR_BOOST_VALUE_ID` bigint(20) NOT NULL,
  `VALUE` varchar(100) DEFAULT NULL,
  `SOLR_BOOST_ID` bigint(20) DEFAULT NULL,
  `BOOST_AMOUNT` double DEFAULT NULL,
  PRIMARY KEY (`SOLR_BOOST_VALUE_ID`),
  KEY `SOLR_BOOST_ID` (`SOLR_BOOST_ID`),
  CONSTRAINT `solr_boost_values_ibfk_1` FOREIGN KEY (`SOLR_BOOST_ID`) REFERENCES `solr_boost` (`SOLR_BOOST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solr_boost_values`
--

LOCK TABLES `solr_boost_values` WRITE;
/*!40000 ALTER TABLE `solr_boost_values` DISABLE KEYS */;
INSERT INTO `solr_boost_values` VALUES (1,'ps4',1,10);
/*!40000 ALTER TABLE `solr_boost_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_product`
--

DROP TABLE IF EXISTS `st_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `st_product` (
  `PRODUCT_ID` bigint(20) NOT NULL,
  `BOOSTED` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`PRODUCT_ID`,`BOOSTED`),
  CONSTRAINT `st_product_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `blc_product` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_product`
--

LOCK TABLES `st_product` WRITE;
/*!40000 ALTER TABLE `st_product` DISABLE KEYS */;
INSERT INTO `st_product` VALUES (1,0),(2,0),(3,0),(4,0),(5,0),(6,0),(7,0),(8,0),(9,0),(10,0),(11,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(18,0),(19,0),(20,0),(21,0),(100,0),(200,0),(300,0),(400,0),(500,0),(600,0),(10000,0),(10001,0),(10002,0),(10003,0),(10004,0),(10005,0),(10006,0),(10050,0);
/*!40000 ALTER TABLE `st_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-10 15:18:52
