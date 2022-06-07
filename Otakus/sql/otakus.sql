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
-- Table structure for table `cricket_action_contact_details`
--

DROP TABLE IF EXISTS `cricket_action_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_action_contact_details` (
  `id` varchar(50) DEFAULT NULL,
  `cricket_action_pitch_id` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `strength` varchar(50) DEFAULT NULL,
  `velocity` varchar(50) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `trajectory_coordinates` varchar(200) DEFAULT NULL,
  `trajectory_formula` varchar(200) DEFAULT NULL,
  `impact_time` varchar(200) DEFAULT NULL,
  `contact_type` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_action_contact_details`
--

LOCK TABLES `cricket_action_contact_details` WRITE;
/*!40000 ALTER TABLE `cricket_action_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_action_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_action_fouls`
--

DROP TABLE IF EXISTS `cricket_action_fouls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_action_fouls` (
  `id` varchar(50) DEFAULT NULL,
  `cricket_event_state_id` varchar(50) DEFAULT NULL,
  `foul_name` varchar(50) DEFAULT NULL,
  `foul_result` varchar(50) DEFAULT NULL,
  `foul_type` varchar(50) DEFAULT NULL,
  `fouler_id` varchar(50) DEFAULT NULL,
  `comment` varchar(50) DEFAULT NULL,
  `receipt_type` varchar(50) DEFAULT NULL,
  `recipeint_id` varchar(50) DEFAULT NULL,
  `foul_committed_time` varchar(50) DEFAULT NULL,
  `umpire_call_time` varchar(50) DEFAULT NULL
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
  `id` varchar(50) DEFAULT NULL,
  `team_id` varchar(50) DEFAULT NULL,
  `action_play_id` varchar(50) DEFAULT NULL,
  `player_id` varchar(50) DEFAULT NULL,
  `participant_role` varchar(50) DEFAULT NULL
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
-- Table structure for table `cricket_action_play`
--

DROP TABLE IF EXISTS `cricket_action_play`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_action_play` (
  `id` int(11) DEFAULT NULL,
  `team_id` varchar(50) DEFAULT NULL,
  `ball_type` varchar(50) DEFAULT NULL,
  `throw_type` varchar(50) DEFAULT NULL,
  `play_type` varchar(50) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `runs_scored` varchar(50) DEFAULT NULL,
  `earned_runs_scored` varchar(50) DEFAULT NULL,
  `outs_recorded` varchar(50) DEFAULT NULL,
  `out_type` varchar(50) DEFAULT NULL,
  `ball_spin_type` varchar(50) DEFAULT NULL,
  `throw_alignment` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_action_play`
--

LOCK TABLES `cricket_action_play` WRITE;
/*!40000 ALTER TABLE `cricket_action_play` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_action_play` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_action_subs`
--

DROP TABLE IF EXISTS `cricket_action_subs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_action_subs` (
  `id` varchar(50) DEFAULT NULL,
  `cricket_event_state_id` varchar(50) DEFAULT NULL,
  `player_type` varchar(50) DEFAULT NULL,
  `player_original_position_id` varchar(50) DEFAULT NULL,
  `player_original_lineup_slot` varchar(50) DEFAULT NULL,
  `player_replacing_id` varchar(50) DEFAULT NULL,
  `player_replacing_lineup_slot` varchar(50) DEFAULT NULL,
  `sub_reason` varchar(50) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `sub_time` varchar(50) DEFAULT NULL
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
  `id` varchar(50) DEFAULT NULL,
  `team_id` varchar(50) DEFAULT NULL,
  `player_id` varchar(50) DEFAULT NULL,
  `position_id` varchar(50) DEFAULT NULL
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
  `id` varchar(50) DEFAULT NULL,
  `team_id` varchar(50) DEFAULT NULL,
  `innings` varchar(50) DEFAULT NULL,
  `not_out` varchar(50) DEFAULT NULL,
  `runs` varchar(50) DEFAULT NULL,
  `fours` varchar(50) DEFAULT NULL,
  `sixes` varchar(50) DEFAULT NULL,
  `highest_score` varchar(50) DEFAULT NULL,
  `batting_average` varchar(50) DEFAULT NULL,
  `centuries` varchar(50) DEFAULT NULL,
  `half_centuries` varchar(50) DEFAULT NULL,
  `ball_faced` varchar(50) DEFAULT NULL,
  `run_rate` varchar(50) DEFAULT NULL,
  `strike_rate` varchar(50) DEFAULT NULL,
  `net_run_rate` varchar(50) DEFAULT NULL,
  `npw_ratio` varchar(50) DEFAULT NULL
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
  `id` varchar(50) DEFAULT NULL,
  `team_id` varchar(50) DEFAULT NULL,
  `player_id` varchar(50) DEFAULT NULL,
  `bowling_number` varchar(50) DEFAULT NULL
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
  `id` varchar(50) DEFAULT NULL,
  `player_Id` varchar(50) DEFAULT NULL,
  `team_id` varchar(50) DEFAULT NULL,
  `balls` varchar(50) DEFAULT NULL,
  `maiden_overs` varchar(50) DEFAULT NULL,
  `wickets` varchar(50) DEFAULT NULL,
  `bowling_analysis` varchar(50) DEFAULT NULL,
  `no_ball` varchar(50) DEFAULT NULL,
  `wide` varchar(50) DEFAULT NULL,
  `bowling_average` varchar(50) DEFAULT NULL,
  `strike_rate` varchar(50) DEFAULT NULL,
  `economy_rate` varchar(50) DEFAULT NULL,
  `best_bowling` varchar(50) DEFAULT NULL,
  `five_wickets` varchar(50) DEFAULT NULL,
  `ten_wickets` varchar(50) DEFAULT NULL,
  `assist` varchar(50) DEFAULT NULL,
  `golden_duck` varchar(50) DEFAULT NULL
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
  `id` varchar(50) DEFAULT NULL,
  `assits` varchar(50) DEFAULT NULL,
  `errors` varchar(50) DEFAULT NULL,
  `fielding_percantage` varchar(50) DEFAULT NULL,
  `defensive_average` varchar(50) DEFAULT NULL,
  `error_passed_ball` varchar(50) DEFAULT NULL,
  `error_catcher_interference` varchar(50) DEFAULT NULL,
  `defending_group_id` varchar(50) DEFAULT NULL
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
-- Table structure for table `cricket_event_state`
--

DROP TABLE IF EXISTS `cricket_event_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_event_state` (
  `id` int(11) DEFAULT NULL,
  `event_id` varchar(50) DEFAULT NULL,
  `current_state` varchar(50) DEFAULT NULL,
  `inning_value` varchar(50) DEFAULT NULL,
  `inning_half` varchar(50) DEFAULT NULL,
  `outs` varchar(50) DEFAULT NULL,
  `balls` varchar(50) DEFAULT NULL,
  `strikes` varchar(50) DEFAULT NULL,
  `1st_batter_id` varchar(50) DEFAULT NULL,
  `2nd_batter_id` varchar(50) DEFAULT NULL,
  `bowler_side` varchar(50) DEFAULT NULL,
  `batter_side` varchar(50) DEFAULT NULL,
  `overs_per_bowler` varchar(50) DEFAULT NULL,
  `bowler_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cricket_event_state`
--

LOCK TABLES `cricket_event_state` WRITE;
/*!40000 ALTER TABLE `cricket_event_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `cricket_event_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cricket_fielders_player`
--

DROP TABLE IF EXISTS `cricket_fielders_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_fielders_player` (
  `id` varchar(50) DEFAULT NULL,
  `team_id` varchar(50) DEFAULT NULL,
  `player_id` varchar(50) DEFAULT NULL,
  `position_id` varchar(50) DEFAULT NULL
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
  `fouls_suffered` varchar(50) DEFAULT NULL,
  `fouls_committed` varchar(50) DEFAULT NULL,
  `fouls_rate` varchar(50) DEFAULT NULL
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
-- Table structure for table `cricket_offensive_stats`
--

DROP TABLE IF EXISTS `cricket_offensive_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cricket_offensive_stats` (
  `id` varchar(50) DEFAULT NULL,
  `team_id` varchar(50) DEFAULT NULL,
  `run_scored` varchar(50) DEFAULT NULL,
  `hits` varchar(50) DEFAULT NULL,
  `play_type` varchar(50) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `sixes` varchar(50) DEFAULT NULL,
  `fours` varchar(50) DEFAULT NULL,
  `average_run` varchar(50) DEFAULT NULL,
  `hit_time` varchar(50) DEFAULT NULL,
  `strikeout` varchar(50) DEFAULT NULL,
  `hit_caught` varchar(50) DEFAULT NULL
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
-- Table structure for table `general_stats`
--

DROP TABLE IF EXISTS `general_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_stats` (
  `id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `num_matches` int(11) DEFAULT NULL,
  `catches` int(11) DEFAULT NULL,
  `stumpings` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `loses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_stats`
--

LOCK TABLES `general_stats` WRITE;
/*!40000 ALTER TABLE `general_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `general_stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-28 20:54:24
