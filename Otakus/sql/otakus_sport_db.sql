-- MariaDB dump 10.19  Distrib 10.7.3-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: otakus_cricket_sport_db
-- ------------------------------------------------------
-- Server version	10.7.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `otakus_cricket_sport_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `otakus_cricket_sport_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `otakus_cricket_sport_db`;

--
-- Table structure for table `cricket_action_bowling`
--

DROP TABLE IF EXISTS `cricket_action_bowling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_action_bowling` (
  `id` int(11) NOT NULL,
  `cricket_action_play_id` int(11) DEFAULT NULL,
  `sequence_number` int(11) DEFAULT NULL,
  `cricket_defensive_group_id` int(11) DEFAULT NULL,
  `umpire_call` varchar(45) DEFAULT NULL,
  `bowling_location` varchar(45) DEFAULT NULL,
  `bowling_type` varchar(45) DEFAULT NULL,
  `bowling_velocity` decimal(10,0) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `trajectory_coordinates` varchar(45) DEFAULT NULL,
  `trajectory_formula` varchar(45) DEFAULT NULL,
  `ball_type` varchar(20) DEFAULT NULL,
  `hit_type` varchar(20) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `balls` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `FK_cricket_action_bowling_cricket_action_plays` (`cricket_action_play_id`),
  CONSTRAINT `FK_cricket_action_bowling_cricket_action_plays` FOREIGN KEY (`cricket_action_play_id`) REFERENCES `cricket_action_plays` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_action_bowling`
--

LOCK TABLES `cricket_action_bowling` WRITE;
/*!40000 ALTER TABLE `cricket_action_bowling` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_action_bowling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_action_fouls`
--

DROP TABLE IF EXISTS `cricket_action_fouls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_action_fouls` (
  `id` int(11) NOT NULL,
  `cricket_event_state_id` int(11) DEFAULT NULL,
  `foul_name` varchar(20) DEFAULT NULL,
  `foul_result` varchar(20) DEFAULT NULL,
  `foul_type` varchar(20) DEFAULT NULL,
  `fouler_id` int(11) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `receipt_type` varchar(20) DEFAULT NULL,
  `recipeint_id` int(11) DEFAULT NULL,
  `foul_committed_time` datetime DEFAULT NULL,
  `umpire_call_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `FK_cricket_action_fouls_cricket_event_states` (`cricket_event_state_id`),
  KEY `FK_cricket_action_fouls_cricket_action_participants` (`recipeint_id`),
  KEY `FK_cricket_action_fouls_cricket_action_participants_2` (`fouler_id`),
  CONSTRAINT `FK_cricket_action_fouls_cricket_action_participants` FOREIGN KEY (`recipeint_id`) REFERENCES `cricket_action_participants` (`player_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cricket_action_fouls_cricket_action_participants_2` FOREIGN KEY (`fouler_id`) REFERENCES `cricket_action_participants` (`player_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cricket_action_fouls_cricket_event_states` FOREIGN KEY (`cricket_event_state_id`) REFERENCES `cricket_event_states` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_action_fouls`
--

LOCK TABLES `cricket_action_fouls` WRITE;
/*!40000 ALTER TABLE `cricket_action_fouls` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_action_fouls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_action_participants`
--

DROP TABLE IF EXISTS `cricket_action_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_action_participants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) DEFAULT NULL,
  `action_play_id` int(11) DEFAULT NULL,
  `player_id` int(11) NOT NULL,
  `participant_role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_cricket_action_participants_cricket_action_plays` (`action_play_id`),
  KEY `FK_cricket_action_participants_cricket_teams` (`team_id`),
  CONSTRAINT `FK_cricket_action_participants_cricket_action_plays` FOREIGN KEY (`action_play_id`) REFERENCES `cricket_action_plays` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cricket_action_participants_cricket_teams` FOREIGN KEY (`team_id`) REFERENCES `cricket_teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_action_participants`
--

LOCK TABLES `cricket_action_participants` WRITE;
/*!40000 ALTER TABLE `cricket_action_participants` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_action_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_action_plays`
--

DROP TABLE IF EXISTS `cricket_action_plays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_action_plays` (
  `id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `ball_type` varchar(20) DEFAULT NULL,
  `throw_type` varchar(20) DEFAULT NULL,
  `play_type` varchar(20) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `runs_scored` int(11) DEFAULT NULL,
  `earned_runs_scored` int(11) DEFAULT NULL,
  `outs_recorded` int(11) DEFAULT NULL,
  `out_type` varchar(20) DEFAULT NULL,
  `ball_spin_type` varchar(20) DEFAULT NULL,
  `throw_alignment` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `FK_cricket_action_plays_cricket_teams` (`team_id`),
  CONSTRAINT `FK_cricket_action_plays_cricket_teams` FOREIGN KEY (`team_id`) REFERENCES `cricket_teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_action_plays`
--

LOCK TABLES `cricket_action_plays` WRITE;
/*!40000 ALTER TABLE `cricket_action_plays` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_action_plays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_action_subs`
--

DROP TABLE IF EXISTS `cricket_action_subs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_action_subs` (
  `id` int(11) NOT NULL,
  `cricket_event_state_id` int(11) DEFAULT NULL,
  `player_type` varchar(20) DEFAULT NULL,
  `player_original_position_id` int(11) DEFAULT NULL,
  `player_original_lineup_slot` varchar(10) DEFAULT NULL,
  `player_replacing_id` int(11) DEFAULT NULL,
  `player_replacing_lineup_slot` varchar(10) DEFAULT NULL,
  `sub_reason` varchar(50) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `sub_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_cricket_action_subs_cricket_event_states` (`cricket_event_state_id`),
  CONSTRAINT `FK_cricket_action_subs_cricket_event_states` FOREIGN KEY (`cricket_event_state_id`) REFERENCES `cricket_event_states` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_action_subs`
--

LOCK TABLES `cricket_action_subs` WRITE;
/*!40000 ALTER TABLE `cricket_action_subs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_action_subs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_batting_player`
--

DROP TABLE IF EXISTS `cricket_batting_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_batting_player` (
  `id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `player_id` int(11) NOT NULL,
  `position_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `FK_cricket_batting_player_cricket_teams` (`team_id`),
  KEY `FK_cricket_batting_player_cricket_player_positions` (`position_id`),
  CONSTRAINT `FK_cricket_batting_player_cricket_player_positions` FOREIGN KEY (`position_id`) REFERENCES `cricket_player_positions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cricket_batting_player_cricket_teams` FOREIGN KEY (`team_id`) REFERENCES `cricket_teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_batting_player`
--

LOCK TABLES `cricket_batting_player` WRITE;
/*!40000 ALTER TABLE `cricket_batting_player` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_batting_player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_batting_stats`
--

DROP TABLE IF EXISTS `cricket_batting_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_batting_stats` (
  `id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `innings` int(11) DEFAULT NULL,
  `not_out` int(11) DEFAULT NULL,
  `runs` int(11) DEFAULT NULL,
  `fours` int(11) DEFAULT NULL,
  `sixes` int(11) DEFAULT NULL,
  `highest_score` int(11) DEFAULT NULL,
  `batting_average` decimal(10,0) DEFAULT NULL,
  `centuries` int(11) DEFAULT NULL,
  `half_centuries` int(11) DEFAULT NULL,
  `balls_faced` int(11) DEFAULT NULL,
  `run_rate` decimal(10,0) DEFAULT NULL,
  `strike_rate` decimal(10,0) DEFAULT NULL,
  `net_run_rate` decimal(10,0) DEFAULT NULL,
  `npw_ratio` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `FK_cricket_batting_stats_cricket_teams` (`team_id`),
  CONSTRAINT `FK_cricket_batting_stats_cricket_teams` FOREIGN KEY (`team_id`) REFERENCES `cricket_teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_batting_stats`
--

LOCK TABLES `cricket_batting_stats` WRITE;
/*!40000 ALTER TABLE `cricket_batting_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_batting_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_bowling_player`
--

DROP TABLE IF EXISTS `cricket_bowling_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_bowling_player` (
  `id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `player_id` int(11) NOT NULL,
  `bowling_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `FK_cricket_bowling_player_cricket_teams` (`team_id`),
  CONSTRAINT `FK_cricket_bowling_player_cricket_teams` FOREIGN KEY (`team_id`) REFERENCES `cricket_teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_bowling_player`
--

LOCK TABLES `cricket_bowling_player` WRITE;
/*!40000 ALTER TABLE `cricket_bowling_player` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_bowling_player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_bowling_stats`
--

DROP TABLE IF EXISTS `cricket_bowling_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_bowling_stats` (
  `id` int(11) NOT NULL,
  `player_Id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `balls` int(11) DEFAULT NULL,
  `maiden_overs` int(11) DEFAULT NULL,
  `wickets` int(11) DEFAULT NULL,
  `bowling_analysis` varchar(50) DEFAULT NULL,
  `no_ball` int(11) DEFAULT NULL,
  `wide` int(11) DEFAULT NULL,
  `bowling_average` decimal(10,0) DEFAULT NULL,
  `strike_rate` decimal(10,0) DEFAULT NULL,
  `economy_rate` decimal(10,0) DEFAULT NULL,
  `best_bowling` varchar(20) DEFAULT NULL,
  `five_wickets` int(11) DEFAULT NULL,
  `ten_wickets` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `golden_ducks` int(11) DEFAULT NULL,
  PRIMARY KEY (`player_Id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `FK_cricket_bowling_stats_cricket_teams` (`team_id`),
  CONSTRAINT `FK_cricket_bowling_stats_cricket_teams` FOREIGN KEY (`team_id`) REFERENCES `cricket_teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_bowling_stats`
--

LOCK TABLES `cricket_bowling_stats` WRITE;
/*!40000 ALTER TABLE `cricket_bowling_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_bowling_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_defensive_stats`
--

DROP TABLE IF EXISTS `cricket_defensive_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_defensive_stats` (
  `id` int(11) NOT NULL,
  `assits` int(4) DEFAULT NULL,
  `errors` int(4) DEFAULT NULL,
  `fielding_percantage` decimal(4,2) DEFAULT NULL,
  `defensive_average` decimal(4,2) DEFAULT NULL,
  `error_passed_ball` int(11) DEFAULT NULL,
  `error_catcher_interference` int(11) DEFAULT NULL,
  `defending_group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `FK_cricket_defensive_stats_cricket_teams` (`defending_group_id`),
  CONSTRAINT `FK_cricket_defensive_stats_cricket_teams` FOREIGN KEY (`defending_group_id`) REFERENCES `cricket_teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_defensive_stats`
--

LOCK TABLES `cricket_defensive_stats` WRITE;
/*!40000 ALTER TABLE `cricket_defensive_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_defensive_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_event_states`
--

DROP TABLE IF EXISTS `cricket_event_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_event_states` (
  `id` int(11) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `current_state` varchar(20) DEFAULT NULL,
  `inning_value` int(11) DEFAULT NULL,
  `inning_half` int(11) DEFAULT NULL,
  `outs` int(11) DEFAULT NULL,
  `balls` int(11) DEFAULT NULL,
  `strikes` int(11) DEFAULT NULL,
  `1st_batter_id` int(11) DEFAULT NULL,
  `2nd_batter_id` int(11) DEFAULT NULL,
  `bowler_side` varchar(20) DEFAULT NULL,
  `batter_side` varchar(20) DEFAULT NULL,
  `overs_per_bowler` int(11) DEFAULT NULL,
  `bowler_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `FK_cricket_event_states_cricket_events` (`event_id`),
  CONSTRAINT `FK_cricket_event_states_cricket_events` FOREIGN KEY (`event_id`) REFERENCES `cricket_events` (`event_key`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_event_states`
--

LOCK TABLES `cricket_event_states` WRITE;
/*!40000 ALTER TABLE `cricket_event_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_event_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_events`
--

DROP TABLE IF EXISTS `cricket_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_events` (
  `id` int(11) DEFAULT NULL,
  `event_key` int(11) NOT NULL DEFAULT 0,
  `start_date_time` varchar(50) DEFAULT NULL,
  `end_date_time` varchar(50) DEFAULT NULL,
  `event_status` varchar(50) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `attendance` int(11) DEFAULT NULL,
  `event_number` int(11) DEFAULT NULL,
  `round_number` int(11) DEFAULT NULL,
  `series_index` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`event_key`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_events`
--

LOCK TABLES `cricket_events` WRITE;
/*!40000 ALTER TABLE `cricket_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_fielders_player`
--

DROP TABLE IF EXISTS `cricket_fielders_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_fielders_player` (
  `id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `player_id` int(11) NOT NULL,
  `position_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`player_id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `FK_cricket_fielders_player_cricket_teams` (`team_id`),
  KEY `FK_cricket_fielders_player_cricket_player_positions` (`position_id`),
  CONSTRAINT `FK_cricket_fielders_player_cricket_player_positions` FOREIGN KEY (`position_id`) REFERENCES `cricket_player_positions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cricket_fielders_player_cricket_teams` FOREIGN KEY (`team_id`) REFERENCES `cricket_teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_fielders_player`
--

LOCK TABLES `cricket_fielders_player` WRITE;
/*!40000 ALTER TABLE `cricket_fielders_player` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_fielders_player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_foul_stats`
--

DROP TABLE IF EXISTS `cricket_foul_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_foul_stats` (
  `fouls_suffered` int(4) NOT NULL,
  `fouls_committed` int(4) DEFAULT NULL,
  `fouls_rate` decimal(4,2) DEFAULT NULL,
  `cricket_action_fouls_id` int(11) NOT NULL,
  PRIMARY KEY (`cricket_action_fouls_id`),
  CONSTRAINT `fk_cricket_foul_stats_cricket_action_fouls1` FOREIGN KEY (`cricket_action_fouls_id`) REFERENCES `cricket_action_fouls` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_foul_stats`
--

LOCK TABLES `cricket_foul_stats` WRITE;
/*!40000 ALTER TABLE `cricket_foul_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_foul_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_general_stats`
--

DROP TABLE IF EXISTS `cricket_general_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_general_stats` (
  `id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `num_matches` int(11) DEFAULT NULL,
  `catches` int(11) DEFAULT NULL,
  `stumpings` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `loses` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_general_stats_cricket_teams` (`team_id`),
  CONSTRAINT `FK_general_stats_cricket_teams` FOREIGN KEY (`team_id`) REFERENCES `cricket_teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_general_stats`
--

LOCK TABLES `cricket_general_stats` WRITE;
/*!40000 ALTER TABLE `cricket_general_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_general_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_offensive_stats`
--

DROP TABLE IF EXISTS `cricket_offensive_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_offensive_stats` (
  `id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `run_scored` int(4) DEFAULT NULL,
  `hits` int(4) DEFAULT NULL,
  `play_type` varchar(50) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `sixes` int(11) DEFAULT NULL,
  `fours` int(11) DEFAULT NULL,
  `average_run` decimal(10,0) DEFAULT NULL,
  `hit_time` decimal(10,0) DEFAULT NULL,
  `strikeouts` int(11) DEFAULT NULL,
  `hits_caught` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `FK_cricket_offensive_stats_cricket_teams` (`team_id`),
  CONSTRAINT `FK_cricket_offensive_stats_cricket_teams` FOREIGN KEY (`team_id`) REFERENCES `cricket_teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_offensive_stats`
--

LOCK TABLES `cricket_offensive_stats` WRITE;
/*!40000 ALTER TABLE `cricket_offensive_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_offensive_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_player_positions`
--

DROP TABLE IF EXISTS `cricket_player_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_player_positions` (
  `id` int(11) NOT NULL,
  `abbreviation` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_player_positions`
--

LOCK TABLES `cricket_player_positions` WRITE;
/*!40000 ALTER TABLE `cricket_player_positions` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_player_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_teams`
--

DROP TABLE IF EXISTS `cricket_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_teams` (
  `id` int(11) NOT NULL,
  `team_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_teams`
--

LOCK TABLES `cricket_teams` WRITE;
/*!40000 ALTER TABLE `cricket_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-07 23:09:02
