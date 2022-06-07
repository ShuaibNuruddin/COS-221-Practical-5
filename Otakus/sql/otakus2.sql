-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema otakus_cricket_sport_db2
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema otakus_cricket_sport_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema otakus_cricket_sport_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `otakus_cricket_sport_db` DEFAULT CHARACTER SET utf8mb4 ;
USE `otakus_cricket_sport_db` ;

-- -----------------------------------------------------
-- Table `otakus_cricket_sport_db`.`cricket_action_bowling`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `otakus_cricket_sport_db`.`cricket_action_bowling` (
  `id` INT(11) NOT NULL,
  `cricket_action_play_id` INT(11) NULL,
  `sequence_number` INT NULL,
  `cricket_defensive_group_id` INT(11) NULL,
  `umpire_call` VARCHAR(45) NULL,
  `bowling_location` VARCHAR(45) NULL,
  `bowling_type` VARCHAR(45) NULL,
  `bowling_velocity` DECIMAL NULL,
  `comment` VARCHAR(200) NULL,
  `trajectory_coordinates` VARCHAR(45) NULL,
  `trajectory_formula` VARCHAR(45) NULL,
  `ball_type` VARCHAR(20) NULL,
  `hit_type` VARCHAR(20) NULL,
  `hits` INT NULL,
  `balls` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `otakus_cricket_sport_db`.`cricket_action_contact_details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `otakus_cricket_sport_db`.`cricket_action_contact_details` (
  `id` INT(11) NOT NULL,
  `cricket_action_bowling_id` INT(11) NULL DEFAULT NULL,
  `location` VARCHAR(50) NULL DEFAULT NULL,
  `strength` VARCHAR(20) NULL DEFAULT NULL,
  `velocity` DECIMAL NULL DEFAULT NULL,
  `comment` VARCHAR(200) NULL DEFAULT NULL,
  `trajectory_coordinates` VARCHAR(200) NULL DEFAULT NULL,
  `trajectory_formula` VARCHAR(200) NULL DEFAULT NULL,
  `impact_time` DATETIME NULL DEFAULT NULL,
  `contact_type` VARCHAR(20) NULL DEFAULT NULL,
  `cricket_action_bowling_id1` INT(11) NOT NULL,
  `cricket_action_bowling_sequence_number` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_cricket_action_contact_details_cricket_action_bowling1_idx` (`cricket_action_bowling_id1` ASC, `cricket_action_bowling_sequence_number` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `fk_cricket_action_contact_details_cricket_action_bowling1`
    FOREIGN KEY (`cricket_action_bowling_id1` , `cricket_action_bowling_sequence_number`)
    REFERENCES `otakus_cricket_sport_db`.`cricket_action_bowling` (`id` , `sequence_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `otakus_cricket_sport_db`.`cricket_action_fouls`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `otakus_cricket_sport_db`.`cricket_action_fouls` (
  `id` INT(11) NOT NULL,
  `cricket_event_state_id` INT(11) NULL DEFAULT NULL,
  `foul_name` VARCHAR(20) NULL DEFAULT NULL,
  `foul_result` VARCHAR(20) NULL DEFAULT NULL,
  `foul_type` VARCHAR(20) NULL DEFAULT NULL,
  `fouler_id` INT(11) NULL DEFAULT NULL,
  `comment` VARCHAR(200) NULL DEFAULT NULL,
  `receipt_type` VARCHAR(20) NULL DEFAULT NULL,
  `recipeint_id` INT(11) NULL DEFAULT NULL,
  `foul_committed_time` DATETIME NULL DEFAULT NULL,
  `umpire_call_time` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `otakus_cricket_sport_db`.`cricket_action_participants`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `otakus_cricket_sport_db`.`cricket_action_participants` (
  `id` INT(11) NOT NULL,
  `team_id` INT(11) NULL DEFAULT NULL,
  `action_play_id` INT(11) NULL DEFAULT NULL,
  `player_id` INT(11) NULL DEFAULT NULL,
  `participant_role` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `otakus_cricket_sport_db`.`cricket_action_plays`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `otakus_cricket_sport_db`.`cricket_action_plays` (
  `id` INT(11) NOT NULL,
  `team_id` INT(11) NULL DEFAULT NULL,
  `ball_type` VARCHAR(20) NULL DEFAULT NULL,
  `throw_type` VARCHAR(20) NULL DEFAULT NULL,
  `play_type` VARCHAR(20) NULL DEFAULT NULL,
  `comment` VARCHAR(200) NULL DEFAULT NULL,
  `runs_scored` INT NULL DEFAULT NULL,
  `earned_runs_scored` INT NULL DEFAULT NULL,
  `outs_recorded` INT NULL DEFAULT NULL,
  `out_type` VARCHAR(20) NULL DEFAULT NULL,
  `ball_spin_type` VARCHAR(20) NULL DEFAULT NULL,
  `throw_alignment` DECIMAL NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `otakus_cricket_sport_db`.`cricket_action_subs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `otakus_cricket_sport_db`.`cricket_action_subs` (
  `id` INT(11) NOT NULL,
  `cricket_event_state_id` INT(11) NULL DEFAULT NULL,
  `player_type` VARCHAR(20) NULL DEFAULT NULL,
  `player_original_position_id` INT(11) NULL DEFAULT NULL,
  `player_original_lineup_slot` VARCHAR(10) NULL DEFAULT NULL,
  `player_replacing_id` INT(11) NULL DEFAULT NULL,
  `player_replacing_lineup_slot` VARCHAR(10) NULL DEFAULT NULL,
  `sub_reason` VARCHAR(50) NULL DEFAULT NULL,
  `comment` VARCHAR(200) NULL DEFAULT NULL,
  `sub_time` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `otakus_cricket_sport_db`.`cricket_batting_player`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `otakus_cricket_sport_db`.`cricket_batting_player` (
  `id` INT(11) NOT NULL,
  `team_id` INT(11) NULL DEFAULT NULL,
  `player_id` INT(11) NULL DEFAULT NULL,
  `position_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `otakus_cricket_sport_db`.`cricket_batting_stats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `otakus_cricket_sport_db`.`cricket_batting_stats` (
  `id` INT(11) NOT NULL,
  `team_id` INT(11) NULL DEFAULT NULL,
  `innings` INT NULL DEFAULT NULL,
  `not_out` INT NULL DEFAULT NULL,
  `runs` INT NULL DEFAULT NULL,
  `fours` INT NULL DEFAULT NULL,
  `sixes` INT NULL DEFAULT NULL,
  `highest_score` INT NULL DEFAULT NULL,
  `batting_average` DECIMAL NULL DEFAULT NULL,
  `centuries` INT NULL DEFAULT NULL,
  `half_centuries` INT NULL DEFAULT NULL,
  `balls_faced` INT NULL DEFAULT NULL,
  `run_rate` DECIMAL NULL DEFAULT NULL,
  `strike_rate` DECIMAL NULL DEFAULT NULL,
  `net_run_rate` DECIMAL NULL DEFAULT NULL,
  `npw_ratio` DECIMAL NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `otakus_cricket_sport_db`.`cricket_bowling_player`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `otakus_cricket_sport_db`.`cricket_bowling_player` (
  `id` INT(11) NOT NULL,
  `team_id` INT(11) NULL DEFAULT NULL,
  `player_id` INT(11) NULL DEFAULT NULL,
  `bowling_number` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `otakus_cricket_sport_db`.`cricket_bowling_stats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `otakus_cricket_sport_db`.`cricket_bowling_stats` (
  `id` INT(11) NOT NULL,
  `player_Id` INT NULL DEFAULT NULL,
  `team_id` INT(11) NULL DEFAULT NULL,
  `balls` INT NULL DEFAULT NULL,
  `maiden_overs` INT NULL DEFAULT NULL,
  `wickets` INT NULL DEFAULT NULL,
  `bowling_analysis` VARCHAR(50) NULL DEFAULT NULL,
  `no_ball` INT NULL DEFAULT NULL,
  `wide` INT NULL DEFAULT NULL,
  `bowling_average` DECIMAL NULL DEFAULT NULL,
  `strike_rate` DECIMAL NULL DEFAULT NULL,
  `economy_rate` DECIMAL NULL DEFAULT NULL,
  `best_bowling` VARCHAR(20) NULL DEFAULT NULL,
  `five_wickets` INT NULL DEFAULT NULL,
  `ten_wickets` INT NULL DEFAULT NULL,
  `assists` INT NULL DEFAULT NULL,
  `golden_ducks` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `otakus_cricket_sport_db`.`cricket_defensive_stats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `otakus_cricket_sport_db`.`cricket_defensive_stats` (
  `id` INT(11) NOT NULL,
  `assits` INT(4) NULL DEFAULT NULL,
  `errors` INT(4) NULL DEFAULT NULL,
  `fielding_percantage` DECIMAL(4,2) NULL DEFAULT NULL,
  `defensive_average` DECIMAL(4,2) NULL DEFAULT NULL,
  `error_passed_ball` INT NULL DEFAULT NULL,
  `error_catcher_interference` INT NULL DEFAULT NULL,
  `defending_group_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `otakus_cricket_sport_db`.`cricket_event_states`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `otakus_cricket_sport_db`.`cricket_event_states` (
  `id` INT(11) NOT NULL,
  `event_id` INT(11) NULL DEFAULT NULL,
  `current_state` VARCHAR(20) NULL DEFAULT NULL,
  `inning_value` INT NULL DEFAULT NULL,
  `inning_half` INT NULL DEFAULT NULL,
  `outs` INT NULL DEFAULT NULL,
  `balls` INT NULL DEFAULT NULL,
  `strikes` INT NULL DEFAULT NULL,
  `1st_batter_id` INT(11) NULL DEFAULT NULL,
  `2nd_batter_id` INT(11) NULL DEFAULT NULL,
  `bowler_side` VARCHAR(20) NULL DEFAULT NULL,
  `batter_side` VARCHAR(20) NULL DEFAULT NULL,
  `overs_per_bowler` INT NULL DEFAULT NULL,
  `bowler_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `otakus_cricket_sport_db`.`cricket_fielders_player`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `otakus_cricket_sport_db`.`cricket_fielders_player` (
  `id` INT(11) NOT NULL,
  `team_id` INT(11) NULL DEFAULT NULL,
  `player_id` INT(11) NULL DEFAULT NULL,
  `position_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `otakus_cricket_sport_db`.`cricket_foul_stats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `otakus_cricket_sport_db`.`cricket_foul_stats` (
  `fouls_suffered` INT(4) NOT NULL,
  `fouls_committed` INT(4) NULL DEFAULT NULL,
  `fouls_rate` DECIMAL(4,2) NULL DEFAULT NULL,
  `cricket_action_fouls_id` INT(11) NOT NULL,
  PRIMARY KEY (`cricket_action_fouls_id`),
  CONSTRAINT `fk_cricket_foul_stats_cricket_action_fouls1`
    FOREIGN KEY (`cricket_action_fouls_id`)
    REFERENCES `otakus_cricket_sport_db`.`cricket_action_fouls` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `otakus_cricket_sport_db`.`cricket_offensive_stats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `otakus_cricket_sport_db`.`cricket_offensive_stats` (
  `id` INT(11) NOT NULL,
  `team_id` INT(11) NULL DEFAULT NULL,
  `run_scored` INT(4) NULL DEFAULT NULL,
  `hits` INT(4) NULL DEFAULT NULL,
  `play_type` VARCHAR(50) NULL DEFAULT NULL,
  `comment` VARCHAR(200) NULL DEFAULT NULL,
  `sixes` INT NULL DEFAULT NULL,
  `fours` INT NULL DEFAULT NULL,
  `average_run` DECIMAL NULL DEFAULT NULL,
  `hit_time` DECIMAL NULL DEFAULT NULL,
  `strikeouts` INT NULL DEFAULT NULL,
  `hits_caught` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `otakus_cricket_sport_db`.`general_stats`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `otakus_cricket_sport_db`.`general_stats` (
  `id` INT(11) NOT NULL,
  `team_id` INT(11) NULL DEFAULT NULL,
  `num_matches` INT NULL DEFAULT NULL,
  `catches` INT NULL DEFAULT NULL,
  `stumpings` INT NULL DEFAULT NULL,
  `wins` INT NULL DEFAULT NULL,
  `loses` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `otakus_cricket_sport_db`.`cricket_defensive_group`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `otakus_cricket_sport_db`.`cricket_defensive_group` (
  `id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `otakus_cricket_sport_db`.`cricket_defensive_players`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `otakus_cricket_sport_db`.`cricket_defensive_players` (
  `id` INT(11) NOT NULL,
  `player_id` INT(11) NULL,
  `position_id` INT(11) NULL,
  `cricket_defensive_group_id` INT(11) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `cricket_defensive_group_id`
    FOREIGN KEY (`id`)
    REFERENCES `otakus_cricket_sport_db`.`cricket_defensive_group` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
