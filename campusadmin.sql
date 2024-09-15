-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2016 at 09:30 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `campusadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_term`
--

CREATE TABLE IF NOT EXISTS `academic_term` (
  `academic_term_id` int(2) NOT NULL AUTO_INCREMENT,
  `academic_term_name` varchar(30) NOT NULL,
  `academic_term_start_date` date NOT NULL,
  `academic_term_end_date` date NOT NULL,
  `academic_term_period_id` int(11) NOT NULL,
  `academic_term_organization_id` int(2) NOT NULL,
  `current_sem` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`academic_term_id`),
  KEY `fk_period_id` (`academic_term_period_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `academic_term`
--

INSERT INTO `academic_term` (`academic_term_id`, `academic_term_name`, `academic_term_start_date`, `academic_term_end_date`, `academic_term_period_id`, `academic_term_organization_id`, `current_sem`) VALUES
(1, '2', '2016-04-20', '2016-04-25', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `academic_term_period`
--

CREATE TABLE IF NOT EXISTS `academic_term_period` (
  `academic_terms_period_id` int(2) NOT NULL AUTO_INCREMENT,
  `academic_terms_period_name` varchar(50) DEFAULT NULL,
  `academic_term_period` varchar(10) NOT NULL,
  `academic_terms_period_start_date` date NOT NULL,
  `academic_terms_period_end_date` date NOT NULL,
  `academic_terms_period_organization_id` int(2) NOT NULL,
  `academic_terms_period_created_by` int(2) NOT NULL,
  `academic_terms_period_creation_date` datetime NOT NULL,
  PRIMARY KEY (`academic_terms_period_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `academic_term_period`
--

INSERT INTO `academic_term_period` (`academic_terms_period_id`, `academic_terms_period_name`, `academic_term_period`, `academic_terms_period_start_date`, `academic_terms_period_end_date`, `academic_terms_period_organization_id`, `academic_terms_period_created_by`, `academic_terms_period_creation_date`) VALUES
(1, NULL, '2015', '0000-00-00', '0000-00-00', 0, 1, '2016-04-06 22:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `authassignment`
--

CREATE TABLE IF NOT EXISTS `authassignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authassignment`
--

INSERT INTO `authassignment` (`itemname`, `userid`, `bizrule`, `data`) VALUES
('Student', '2', NULL, NULL),
('SuperAdmin', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authitem`
--

CREATE TABLE IF NOT EXISTS `authitem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authitem`
--

INSERT INTO `authitem` (`name`, `type`, `description`, `bizrule`, `data`) VALUES
('AcademicTerm.*', 1, NULL, NULL, 'N;'),
('AcademicTerm.AcademicTermExportExcel', 0, NULL, NULL, 'N;'),
('AcademicTerm.AcademicTermGeneratePdf', 0, NULL, NULL, 'N;'),
('AcademicTerm.Admin', 0, NULL, NULL, 'N;'),
('AcademicTerm.Create', 0, NULL, NULL, 'N;'),
('AcademicTerm.Delete', 0, NULL, NULL, 'N;'),
('AcademicTerm.Index', 0, NULL, NULL, 'N;'),
('AcademicTerm.Update', 0, NULL, NULL, 'N;'),
('AcademicTerm.View', 0, NULL, NULL, 'N;'),
('AcademicTermPeriod.*', 1, NULL, NULL, 'N;'),
('AcademicTermPeriod.AcademicTermPeriodExportExcel', 0, NULL, NULL, 'N;'),
('AcademicTermPeriod.AcademicTermPeriodGeneratePdf', 0, NULL, NULL, 'N;'),
('AcademicTermPeriod.Admin', 0, NULL, NULL, 'N;'),
('AcademicTermPeriod.Create', 0, NULL, NULL, 'N;'),
('AcademicTermPeriod.Delete', 0, NULL, NULL, 'N;'),
('AcademicTermPeriod.Index', 0, NULL, NULL, 'N;'),
('AcademicTermPeriod.Update', 0, NULL, NULL, 'N;'),
('AcademicTermPeriod.View', 0, NULL, NULL, 'N;'),
('Authenticated', 2, NULL, NULL, 'N;'),
('City.*', 1, NULL, NULL, 'N;'),
('City.Admin', 0, NULL, NULL, 'N;'),
('City.Create', 0, NULL, NULL, 'N;'),
('City.Delete', 0, NULL, NULL, 'N;'),
('City.Index', 0, NULL, NULL, 'N;'),
('City.Update', 0, NULL, NULL, 'N;'),
('City.View', 0, NULL, NULL, 'N;'),
('Country.*', 1, NULL, NULL, 'N;'),
('Country.Admin', 0, NULL, NULL, 'N;'),
('Country.Create', 0, NULL, NULL, 'N;'),
('Country.Delete', 0, NULL, NULL, 'N;'),
('Country.Index', 0, NULL, NULL, 'N;'),
('Country.Update', 0, NULL, NULL, 'N;'),
('Country.View', 0, NULL, NULL, 'N;'),
('CourseMaster.*', 1, NULL, NULL, 'N;'),
('CourseMaster.Admin', 0, NULL, NULL, 'N;'),
('CourseMaster.Create', 0, NULL, NULL, 'N;'),
('CourseMaster.Delete', 0, NULL, NULL, 'N;'),
('CourseMaster.Index', 0, NULL, NULL, 'N;'),
('CourseMaster.MultiDel', 0, NULL, NULL, 'N;'),
('CourseMaster.NewCreate', 0, NULL, NULL, 'N;'),
('CourseMaster.NewUpdate', 0, NULL, NULL, 'N;'),
('CourseMaster.Update', 0, NULL, NULL, 'N;'),
('CourseMaster.View', 0, NULL, NULL, 'N;'),
('CourseUnitTable.*', 1, NULL, NULL, 'N;'),
('CourseUnitTable.Admin', 0, NULL, NULL, 'N;'),
('CourseUnitTable.Create', 0, NULL, NULL, 'N;'),
('CourseUnitTable.Delete', 0, NULL, NULL, 'N;'),
('CourseUnitTable.Index', 0, NULL, NULL, 'N;'),
('CourseUnitTable.MultiDel', 0, NULL, NULL, 'N;'),
('CourseUnitTable.NewCreate', 0, NULL, NULL, 'N;'),
('CourseUnitTable.NewUpdate', 0, NULL, NULL, 'N;'),
('CourseUnitTable.Update', 0, NULL, NULL, 'N;'),
('CourseUnitTable.View', 0, NULL, NULL, 'N;'),
('Dashboard.Default.*', 1, NULL, NULL, 'N;'),
('Dashboard.Default.Index', 0, NULL, NULL, 'N;'),
('Dashboard.Default.Notify', 0, NULL, NULL, 'N;'),
('Dashboard.Default.Save', 0, NULL, NULL, 'N;'),
('Dashboard.DefaultCon.*', 1, NULL, NULL, 'N;'),
('Dashboard.DefaultCon.Index', 0, NULL, NULL, 'N;'),
('Dashboard.DefaultCon.Save', 0, NULL, NULL, 'N;'),
('Department.*', 1, NULL, NULL, 'N;'),
('Department.Admin', 0, NULL, NULL, 'N;'),
('Department.Create', 0, NULL, NULL, 'N;'),
('Department.Delete', 0, NULL, NULL, 'N;'),
('Department.Index', 0, NULL, NULL, 'N;'),
('Department.Update', 0, NULL, NULL, 'N;'),
('Department.View', 0, NULL, NULL, 'N;'),
('Dependent.*', 1, NULL, NULL, 'N;'),
('Dependent.AutoCompleteLookup', 0, NULL, NULL, 'N;'),
('Dependent.Branchreceiptdivision', 0, NULL, NULL, 'N;'),
('Dependent.Getattendancediv', 0, NULL, NULL, 'N;'),
('Dependent.Getsubject', 0, NULL, NULL, 'N;'),
('Dependent.Gettimetablediv', 0, NULL, NULL, 'N;'),
('Dependent.UpdateEmpCCities', 0, NULL, NULL, 'N;'),
('Dependent.UpdateEmpCStates', 0, NULL, NULL, 'N;'),
('Dependent.UpdateEmpPCities', 0, NULL, NULL, 'N;'),
('Dependent.UpdateEmpPStates', 0, NULL, NULL, 'N;'),
('Dependent.UpdateItemCategory', 0, NULL, NULL, 'N;'),
('Dependent.UpdateStudCCities', 0, NULL, NULL, 'N;'),
('Dependent.UpdateStudCStates', 0, NULL, NULL, 'N;'),
('Dependent.UpdateStudPCities', 0, NULL, NULL, 'N;'),
('Dependent.UpdateStudPStates', 0, NULL, NULL, 'N;'),
('Dependent.View', 0, NULL, NULL, 'N;'),
('Eduboard.*', 1, NULL, NULL, 'N;'),
('Eduboard.Admin', 0, NULL, NULL, 'N;'),
('Eduboard.Create', 0, NULL, NULL, 'N;'),
('Eduboard.Delete', 0, NULL, NULL, 'N;'),
('Eduboard.Index', 0, NULL, NULL, 'N;'),
('Eduboard.Update', 0, NULL, NULL, 'N;'),
('Eduboard.View', 0, NULL, NULL, 'N;'),
('Employee', 2, 'Employee of the college', NULL, 'N;'),
('Employee.Default.*', 1, NULL, NULL, 'N;'),
('Employee.Default.Index', 0, NULL, NULL, 'N;'),
('Employee.Dependent.*', 1, NULL, NULL, 'N;'),
('Employee.Dependent.AutoCompleteLookup', 0, NULL, NULL, 'N;'),
('Employee.Dependent.UpdateEmpCCities', 0, NULL, NULL, 'N;'),
('Employee.Dependent.UpdateEmpCStates', 0, NULL, NULL, 'N;'),
('Employee.Dependent.UpdateEmpPCities', 0, NULL, NULL, 'N;'),
('Employee.Dependent.UpdateEmpPStates', 0, NULL, NULL, 'N;'),
('Employee.Dependent.View', 0, NULL, NULL, 'N;'),
('Employee.EmployeeAcademicRecordTrans.*', 1, NULL, NULL, 'N;'),
('Employee.EmployeeAcademicRecordTrans.Admin', 0, NULL, NULL, 'N;'),
('Employee.EmployeeAcademicRecordTrans.Create', 0, NULL, NULL, 'N;'),
('Employee.EmployeeAcademicRecordTrans.Delete', 0, NULL, NULL, 'N;'),
('Employee.EmployeeAcademicRecordTrans.EmployeeAcademicRecords', 0, NULL, NULL, 'N;'),
('Employee.EmployeeAcademicRecordTrans.Index', 0, NULL, NULL, 'N;'),
('Employee.EmployeeAcademicRecordTrans.Update', 0, NULL, NULL, 'N;'),
('Employee.EmployeeAcademicRecordTrans.View', 0, NULL, NULL, 'N;'),
('Employee.EmployeeAddress.*', 1, NULL, NULL, 'N;'),
('Employee.EmployeeAddress.Admin', 0, NULL, NULL, 'N;'),
('Employee.EmployeeAddress.Create', 0, NULL, NULL, 'N;'),
('Employee.EmployeeAddress.Delete', 0, NULL, NULL, 'N;'),
('Employee.EmployeeAddress.Index', 0, NULL, NULL, 'N;'),
('Employee.EmployeeAddress.Update', 0, NULL, NULL, 'N;'),
('Employee.EmployeeAddress.View', 0, NULL, NULL, 'N;'),
('Employee.EmployeeCertificateDetailsTable.*', 1, NULL, NULL, 'N;'),
('Employee.EmployeeCertificateDetailsTable.Admin', 0, NULL, NULL, 'N;'),
('Employee.EmployeeCertificateDetailsTable.Create', 0, NULL, NULL, 'N;'),
('Employee.EmployeeCertificateDetailsTable.Delete', 0, NULL, NULL, 'N;'),
('Employee.EmployeeCertificateDetailsTable.EmployeeCertificates', 0, NULL, NULL, 'N;'),
('Employee.EmployeeCertificateDetailsTable.Index', 0, NULL, NULL, 'N;'),
('Employee.EmployeeCertificateDetailsTable.Update', 0, NULL, NULL, 'N;'),
('Employee.EmployeeCertificateDetailsTable.View', 0, NULL, NULL, 'N;'),
('Employee.EmployeeDocs.*', 1, NULL, NULL, 'N;'),
('Employee.EmployeeDocs.Admin', 0, NULL, NULL, 'N;'),
('Employee.EmployeeDocs.Create', 0, NULL, NULL, 'N;'),
('Employee.EmployeeDocs.Delete', 0, NULL, NULL, 'N;'),
('Employee.EmployeeDocs.Index', 0, NULL, NULL, 'N;'),
('Employee.EmployeeDocs.Update', 0, NULL, NULL, 'N;'),
('Employee.EmployeeDocs.View', 0, NULL, NULL, 'N;'),
('Employee.EmployeeDocsTrans.*', 1, NULL, NULL, 'N;'),
('Employee.EmployeeDocsTrans.Admin', 0, NULL, NULL, 'N;'),
('Employee.EmployeeDocsTrans.Create', 0, NULL, NULL, 'N;'),
('Employee.EmployeeDocsTrans.Delete', 0, NULL, NULL, 'N;'),
('Employee.EmployeeDocsTrans.Employeedocs', 0, NULL, NULL, 'N;'),
('Employee.EmployeeDocsTrans.Index', 0, NULL, NULL, 'N;'),
('Employee.EmployeeDocsTrans.Update', 0, NULL, NULL, 'N;'),
('Employee.EmployeeDocsTrans.View', 0, NULL, NULL, 'N;'),
('Employee.EmployeeExperienceTrans.*', 1, NULL, NULL, 'N;'),
('Employee.EmployeeExperienceTrans.Admin', 0, NULL, NULL, 'N;'),
('Employee.EmployeeExperienceTrans.Create', 0, NULL, NULL, 'N;'),
('Employee.EmployeeExperienceTrans.Delete', 0, NULL, NULL, 'N;'),
('Employee.EmployeeExperienceTrans.EmployeeExperience', 0, NULL, NULL, 'N;'),
('Employee.EmployeeExperienceTrans.Index', 0, NULL, NULL, 'N;'),
('Employee.EmployeeExperienceTrans.Update', 0, NULL, NULL, 'N;'),
('Employee.EmployeeExperienceTrans.View', 0, NULL, NULL, 'N;'),
('Employee.EmployeeInfo.*', 1, NULL, NULL, 'N;'),
('Employee.EmployeeInfo.Admin', 0, NULL, NULL, 'N;'),
('Employee.EmployeeInfo.Create', 0, NULL, NULL, 'N;'),
('Employee.EmployeeInfo.Delete', 0, NULL, NULL, 'N;'),
('Employee.EmployeeInfo.Index', 0, NULL, NULL, 'N;'),
('Employee.EmployeeInfo.Update', 0, NULL, NULL, 'N;'),
('Employee.EmployeeInfo.View', 0, NULL, NULL, 'N;'),
('Employee.EmployeePhotos.*', 1, NULL, NULL, 'N;'),
('Employee.EmployeePhotos.Admin', 0, NULL, NULL, 'N;'),
('Employee.EmployeePhotos.Create', 0, NULL, NULL, 'N;'),
('Employee.EmployeePhotos.Delete', 0, NULL, NULL, 'N;'),
('Employee.EmployeePhotos.Index', 0, NULL, NULL, 'N;'),
('Employee.EmployeePhotos.Update', 0, NULL, NULL, 'N;'),
('Employee.EmployeePhotos.View', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.*', 1, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.Admin', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.Create', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.Delete', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.EmployeeAcademicRecords', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.EmployeeCertificates', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.Employeecontact', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.Employeedocs', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.EmployeeExperience', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.Finalview', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.Index', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.Newview', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.PhotoDelete', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.Transferemployee', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.Update', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.UpdateCCities', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.UpdateCStates', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.UpdatePCities', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.Updateprofilephoto', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.Updateprofiletab1', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.Updateprofiletab2', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.Updateprofiletab3', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.Updateprofiletab4', 0, NULL, NULL, 'N;'),
('Employee.EmployeeTransaction.UpdatePStates', 0, NULL, NULL, 'N;'),
('Employee.ExportToPDFExcel.*', 1, NULL, NULL, 'N;'),
('Employee.ExportToPDFExcel.CertificateExportToExcel', 0, NULL, NULL, 'N;'),
('Employee.ExportToPDFExcel.CertificateExportToPdf', 0, NULL, NULL, 'N;'),
('Employee.ExportToPDFExcel.EmpcertificateGenerateExcel', 0, NULL, NULL, 'N;'),
('Employee.ExportToPDFExcel.EmpcertificateGeneratePdf', 0, NULL, NULL, 'N;'),
('Employee.ExportToPDFExcel.EmployeeAttendenceExportToExcel', 0, NULL, NULL, 'N;'),
('Employee.ExportToPDFExcel.EmployeeAttendenceExportToPdf', 0, NULL, NULL, 'N;'),
('Employee.ExportToPDFExcel.EmployeedataExportToExcel', 0, NULL, NULL, 'N;'),
('Employee.ExportToPDFExcel.EmployeeExportToExcel', 0, NULL, NULL, 'N;'),
('Employee.ExportToPDFExcel.EmployeeExportToPdf', 0, NULL, NULL, 'N;'),
('Employee.ExportToPDFExcel.EmployeeFinalViewExportToPdf', 0, NULL, NULL, 'N;'),
('Employee.ExportToPDFExcel.FeedbackMasterExportToExcel', 0, NULL, NULL, 'N;'),
('Employee.ExportToPDFExcel.FeedbackMasterExportToPdf', 0, NULL, NULL, 'N;'),
('EmployeeDesignation.*', 1, NULL, NULL, 'N;'),
('EmployeeDesignation.Admin', 0, NULL, NULL, 'N;'),
('EmployeeDesignation.Create', 0, NULL, NULL, 'N;'),
('EmployeeDesignation.Delete', 0, NULL, NULL, 'N;'),
('EmployeeDesignation.Index', 0, NULL, NULL, 'N;'),
('EmployeeDesignation.Update', 0, NULL, NULL, 'N;'),
('EmployeeDesignation.View', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.*', 1, NULL, NULL, 'N;'),
('ExportToPDFExcel.AcademicTermExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.AcademicTermExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.AcademicTermPeriodExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.AcademicTermPeriodExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.AdminlibdataExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.AssetsExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.AssetsExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.AssignSubjectExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.AssignSubjectExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.AttendenceExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.AttendenceExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.BankMasterExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.BankMasterExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.BatchExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.BatchExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.BranchExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.BranchExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.BranchPassoutsemTagExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.BranchPassoutsemTagExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.CastMasterGenerateExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.CastMasterGeneratePdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.CategoryExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.CategoryExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.CertificateExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.CertificateExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.CityExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.CityExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.CountryExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.CountryExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.DepartmentExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.DepartmentExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.DivisionExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.DivisionExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.EducationExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.EducationExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.ElectivesubjectGenerateExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.ElectivesubjectGeneratePdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.EmpcertificateGenerateExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.EmpcertificateGeneratePdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.EmployeeAttendenceExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.EmployeeAttendenceExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.EmployeedataExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.EmployeeDesignationExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.EmployeeDesignationExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.EmployeeExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.EmployeeExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.EmployeeFinalViewExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.EventMasterGenerateExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.EventMasterGeneratePdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.EventParticipantsGenerateExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.EventParticipantsGeneratePdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.FeedbackcategoryExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.FeedbackcategoryExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.FeedbackMasterExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.FeedbackMasterExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.FeesMasterExportPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.FeesMasterExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.FeesPaymentTypeExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.FeesPaymentTypeExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.GtuNoticeExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.GtuNoticeExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.ImportantNoticeExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.ImportantNoticeExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.InwardExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.InwardExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.ItemCategoryExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.ItemCategoryExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.LanguageExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.LanguageExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.LeftDetainExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.LeftDetainExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.MiscellaneousFeesExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.MiscellaneousFeesExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.NationalityExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.NationalityExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.OrganizationExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.OrganizationExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.OutwardExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.OutwardExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.QualificationExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.QualificationExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.QuotaExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.QuotaExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.ReligionExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.ReligionExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.RoomCategoryExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.RoomCategoryExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.RoomDetailsExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.RoomDetailsExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.ScheduleTimingGenerateExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.ScheduleTimingGeneratePdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.ShiftExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.ShiftExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.StateExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.StateExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.StudentdataExportExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.StudentFinalViewExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.StudentStatusExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.StudentStatusExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.StudentTransactionExportExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.StudentTransactionExportPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubEventGenerateExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubEventGeneratePdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubjectExaminationMarkExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubjectExaminationMarkExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubjectGuidelinesExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubjectGuidelinesExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubjectMasterExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubjectMasterExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubjectMasterviewExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubjectRefbookExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubjectRefbookExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubjectSyllabusExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubjectSyllabusExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubjectTeachingSchemaExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubjectTeachingSchemaExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubjectTextbookExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubjectTextbookExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubjectTypeExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubjectTypeExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.SubjectviewExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.TechnicalstaffdataExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.TermExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.TermExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.TrustMasterGenerateExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.TrustMasterGeneratePdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.TrustMemberDetailsGenerateExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.TrustMemberDetailsGeneratePdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.UserTypeExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.UserTypeExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.VisitorPassExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.VisitorPassExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.VisitortotalPassExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.VisitortotalPassExportToPdf', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.YearExportToExcel', 0, NULL, NULL, 'N;'),
('ExportToPDFExcel.YearExportToPdf', 0, NULL, NULL, 'N;'),
('Guest', 2, NULL, NULL, 'N;'),
('Languages.*', 1, NULL, NULL, 'N;'),
('Languages.Admin', 0, NULL, NULL, 'N;'),
('Languages.Create', 0, NULL, NULL, 'N;'),
('Languages.Delete', 0, NULL, NULL, 'N;'),
('Languages.Index', 0, NULL, NULL, 'N;'),
('Languages.Update', 0, NULL, NULL, 'N;'),
('Languages.View', 0, NULL, NULL, 'N;'),
('LanguagesKnown.*', 1, NULL, NULL, 'N;'),
('LanguagesKnown.Admin', 0, NULL, NULL, 'N;'),
('LanguagesKnown.Create', 0, NULL, NULL, 'N;'),
('LanguagesKnown.Delete', 0, NULL, NULL, 'N;'),
('LanguagesKnown.Index', 0, NULL, NULL, 'N;'),
('LanguagesKnown.Update', 0, NULL, NULL, 'N;'),
('LanguagesKnown.View', 0, NULL, NULL, 'N;'),
('LoginUser.*', 1, NULL, NULL, 'N;'),
('LoginUser.Admin', 0, NULL, NULL, 'N;'),
('LoginUser.Create', 0, NULL, NULL, 'N;'),
('LoginUser.Delete', 0, NULL, NULL, 'N;'),
('LoginUser.Index', 0, NULL, NULL, 'N;'),
('LoginUser.Update', 0, NULL, NULL, 'N;'),
('LoginUser.View', 0, NULL, NULL, 'N;'),
('MessageOfDay.*', 1, NULL, NULL, 'N;'),
('MessageOfDay.Admin', 0, NULL, NULL, 'N;'),
('MessageOfDay.Create', 0, NULL, NULL, 'N;'),
('MessageOfDay.Delete', 0, NULL, NULL, 'N;'),
('MessageOfDay.Index', 0, NULL, NULL, 'N;'),
('MessageOfDay.Update', 0, NULL, NULL, 'N;'),
('MessageOfDay.View', 0, NULL, NULL, 'N;'),
('Nationality.*', 1, NULL, NULL, 'N;'),
('Nationality.Admin', 0, NULL, NULL, 'N;'),
('Nationality.Create', 0, NULL, NULL, 'N;'),
('Nationality.Delete', 0, NULL, NULL, 'N;'),
('Nationality.Index', 0, NULL, NULL, 'N;'),
('Nationality.Update', 0, NULL, NULL, 'N;'),
('Nationality.View', 0, NULL, NULL, 'N;'),
('Organization.*', 1, NULL, NULL, 'N;'),
('Organization.Admin', 0, NULL, NULL, 'N;'),
('Organization.Create', 0, NULL, NULL, 'N;'),
('Organization.Delete', 0, NULL, NULL, 'N;'),
('Organization.Index', 0, NULL, NULL, 'N;'),
('Organization.Update', 0, NULL, NULL, 'N;'),
('Organization.UpdateCities', 0, NULL, NULL, 'N;'),
('Organization.UpdateStates', 0, NULL, NULL, 'N;'),
('Organization.View', 0, NULL, NULL, 'N;'),
('Parents.Default.*', 1, NULL, NULL, 'N;'),
('Parents.Default.Index', 0, NULL, NULL, 'N;'),
('Parents.Parent.*', 1, NULL, NULL, 'N;'),
('Parents.Parent.Change', 0, NULL, NULL, 'N;'),
('Parents.Parent.Index', 0, NULL, NULL, 'N;'),
('Parents.Parent.Monthview', 0, NULL, NULL, 'N;'),
('Parents.Parent.Myholidays', 0, NULL, NULL, 'N;'),
('Parents.Parent.Mysubjects', 0, NULL, NULL, 'N;'),
('Parents.Parent.Studentacademicrecord', 0, NULL, NULL, 'N;'),
('Parents.Parent.StudentAttendenceReport', 0, NULL, NULL, 'N;'),
('Parents.Parent.Studentcertificate', 0, NULL, NULL, 'N;'),
('Parents.Parent.Studentdocs', 0, NULL, NULL, 'N;'),
('Parents.Parent.StudentFees', 0, NULL, NULL, 'N;'),
('Parents.Parent.Studenthistory', 0, NULL, NULL, 'N;'),
('Parents.Parent.Studentperformance', 0, NULL, NULL, 'N;'),
('Parents.Parent.Studentpersonaltimetable', 0, NULL, NULL, 'N;'),
('Parents.Parent.Studentprofile', 0, NULL, NULL, 'N;'),
('Parents.Parent.Studenttimetable', 0, NULL, NULL, 'N;'),
('Parents.ParentLogin.*', 1, NULL, NULL, 'N;'),
('Parents.ParentLogin.Admin', 0, NULL, NULL, 'N;'),
('Parents.ParentLogin.Create', 0, NULL, NULL, 'N;'),
('Parents.ParentLogin.Delete', 0, NULL, NULL, 'N;'),
('Parents.ParentLogin.GenerateExcel', 0, NULL, NULL, 'N;'),
('Parents.ParentLogin.GeneratePdf', 0, NULL, NULL, 'N;'),
('Parents.ParentLogin.Index', 0, NULL, NULL, 'N;'),
('Parents.ParentLogin.Update', 0, NULL, NULL, 'N;'),
('Parents.ParentLogin.View', 0, NULL, NULL, 'N;'),
('Qualification.*', 1, NULL, NULL, 'N;'),
('Qualification.Admin', 0, NULL, NULL, 'N;'),
('Qualification.Create', 0, NULL, NULL, 'N;'),
('Qualification.Delete', 0, NULL, NULL, 'N;'),
('Qualification.Index', 0, NULL, NULL, 'N;'),
('Qualification.Update', 0, NULL, NULL, 'N;'),
('Qualification.View', 0, NULL, NULL, 'N;'),
('QualificationType.*', 1, NULL, NULL, 'N;'),
('QualificationType.Admin', 0, NULL, NULL, 'N;'),
('QualificationType.Create', 0, NULL, NULL, 'N;'),
('QualificationType.Delete', 0, NULL, NULL, 'N;'),
('QualificationType.Index', 0, NULL, NULL, 'N;'),
('QualificationType.Update', 0, NULL, NULL, 'N;'),
('QualificationType.View', 0, NULL, NULL, 'N;'),
('Report.*', 1, NULL, NULL, 'N;'),
('Report.CourseDetails', 0, NULL, NULL, 'N;'),
('Report.Documentsearch', 0, NULL, NULL, 'N;'),
('Report.Documentsearchview', 0, NULL, NULL, 'N;'),
('Report.Employeeid', 0, NULL, NULL, 'N;'),
('Report.EmployeeInfoReport', 0, NULL, NULL, 'N;'),
('Report.Myholidays', 0, NULL, NULL, 'N;'),
('Report.PostLabelStudent', 0, NULL, NULL, 'N;'),
('Report.SelectedEmployeeList', 0, NULL, NULL, 'N;'),
('Report.SelectedList', 0, NULL, NULL, 'N;'),
('Report.StudentDocumentsearch', 0, NULL, NULL, 'N;'),
('Report.Studentdocumentsearchview', 0, NULL, NULL, 'N;'),
('Report.Studenthistory', 0, NULL, NULL, 'N;'),
('Report.Studentid', 0, NULL, NULL, 'N;'),
('Report.StudInfoReport', 0, NULL, NULL, 'N;'),
('Report.View', 0, NULL, NULL, 'N;'),
('Site.*', 1, NULL, NULL, 'N;'),
('Site.Contact', 0, NULL, NULL, 'N;'),
('Site.CreateOrg', 0, NULL, NULL, 'N;'),
('Site.CreateUser', 0, NULL, NULL, 'N;'),
('Site.Error', 0, NULL, NULL, 'N;'),
('Site.Forgotpassword', 0, NULL, NULL, 'N;'),
('Site.Index', 0, NULL, NULL, 'N;'),
('Site.Login', 0, NULL, NULL, 'N;'),
('Site.Logout', 0, NULL, NULL, 'N;'),
('Site.NewDashboard', 0, NULL, NULL, 'N;'),
('Site.RedirectLogin', 0, NULL, NULL, 'N;'),
('Site.Welcome', 0, NULL, NULL, 'N;'),
('State.*', 1, NULL, NULL, 'N;'),
('State.Admin', 0, NULL, NULL, 'N;'),
('State.Create', 0, NULL, NULL, 'N;'),
('State.Delete', 0, NULL, NULL, 'N;'),
('State.Index', 0, NULL, NULL, 'N;'),
('State.Update', 0, NULL, NULL, 'N;'),
('State.View', 0, NULL, NULL, 'N;'),
('Student', 2, 'Student of the College', NULL, 'N;'),
('Student.Attendence.*', 1, NULL, NULL, 'N;'),
('Student.Attendence.Admin', 0, NULL, NULL, 'N;'),
('Student.Attendence.Attendencedivisionreport', 0, NULL, NULL, 'N;'),
('Student.Attendence.Chart', 0, NULL, NULL, 'N;'),
('Student.Attendence.ChartReport', 0, NULL, NULL, 'N;'),
('Student.Attendence.Create', 0, NULL, NULL, 'N;'),
('Student.Attendence.Delete', 0, NULL, NULL, 'N;'),
('Student.Attendence.Display', 0, NULL, NULL, 'N;'),
('Student.Attendence.DisplayChart', 0, NULL, NULL, 'N;'),
('Student.Attendence.Index', 0, NULL, NULL, 'N;'),
('Student.Attendence.Monthview', 0, NULL, NULL, 'N;'),
('Student.Attendence.Monthwiseattendreport', 0, NULL, NULL, 'N;'),
('Student.Attendence.Popbrowser', 0, NULL, NULL, 'N;'),
('Student.Attendence.Searchstudid1', 0, NULL, NULL, 'N;'),
('Student.Attendence.Showstudentview', 0, NULL, NULL, 'N;'),
('Student.Attendence.StudentAttendenceReport', 0, NULL, NULL, 'N;'),
('Student.Attendence.Studentwisereport', 0, NULL, NULL, 'N;'),
('Student.Attendence.Studentwisereportpdf', 0, NULL, NULL, 'N;'),
('Student.Attendence.Update', 0, NULL, NULL, 'N;'),
('Student.Attendence.View', 0, NULL, NULL, 'N;'),
('Student.Attendence.Viewchart', 0, NULL, NULL, 'N;'),
('Student.Dependent.*', 1, NULL, NULL, 'N;'),
('Student.Dependent.Getattendancediv', 0, NULL, NULL, 'N;'),
('Student.Dependent.Getsubject', 0, NULL, NULL, 'N;'),
('Student.Dependent.UpdateStudCCities', 0, NULL, NULL, 'N;'),
('Student.Dependent.UpdateStudCStates', 0, NULL, NULL, 'N;'),
('Student.Dependent.UpdateStudPCities', 0, NULL, NULL, 'N;'),
('Student.Dependent.UpdateStudPStates', 0, NULL, NULL, 'N;'),
('Student.Dependent.View', 0, NULL, NULL, 'N;'),
('Student.ExportToPDFExcel.*', 1, NULL, NULL, 'N;'),
('Student.ExportToPDFExcel.AttendenceExportToExcel', 0, NULL, NULL, 'N;'),
('Student.ExportToPDFExcel.AttendenceExportToPdf', 0, NULL, NULL, 'N;'),
('Student.ExportToPDFExcel.Cancelstudentlistexcel', 0, NULL, NULL, 'N;'),
('Student.ExportToPDFExcel.Cancelstudentlistpdf', 0, NULL, NULL, 'N;'),
('Student.ExportToPDFExcel.CertificateExportToExcel', 0, NULL, NULL, 'N;'),
('Student.ExportToPDFExcel.CertificateExportToPdf', 0, NULL, NULL, 'N;'),
('Student.ExportToPDFExcel.FeedbackcategoryExportToExcel', 0, NULL, NULL, 'N;'),
('Student.ExportToPDFExcel.FeedbackcategoryExportToPdf', 0, NULL, NULL, 'N;'),
('Student.ExportToPDFExcel.FeedbackMasterExportToExcel', 0, NULL, NULL, 'N;'),
('Student.ExportToPDFExcel.FeedbackMasterExportToPdf', 0, NULL, NULL, 'N;'),
('Student.ExportToPDFExcel.LeftDetainExportToExcel', 0, NULL, NULL, 'N;'),
('Student.ExportToPDFExcel.LeftDetainExportToPdf', 0, NULL, NULL, 'N;'),
('Student.ExportToPDFExcel.ScheduleTimingGenerateExcel', 0, NULL, NULL, 'N;'),
('Student.ExportToPDFExcel.ScheduleTimingGeneratePdf', 0, NULL, NULL, 'N;'),
('Student.ExportToPDFExcel.StudentdataExportExcel', 0, NULL, NULL, 'N;'),
('Student.ExportToPDFExcel.StudentFinalViewExportToPdf', 0, NULL, NULL, 'N;'),
('Student.ExportToPDFExcel.StudentTransactionExportExcel', 0, NULL, NULL, 'N;'),
('Student.ExportToPDFExcel.StudentTransactionExportPdf', 0, NULL, NULL, 'N;'),
('Student.StudentAcademicRecordTrans.*', 1, NULL, NULL, 'N;'),
('Student.StudentAcademicRecordTrans.Admin', 0, NULL, NULL, 'N;'),
('Student.StudentAcademicRecordTrans.Create', 0, NULL, NULL, 'N;'),
('Student.StudentAcademicRecordTrans.Delete', 0, NULL, NULL, 'N;'),
('Student.StudentAcademicRecordTrans.Index', 0, NULL, NULL, 'N;'),
('Student.StudentAcademicRecordTrans.StudentAcademicRecords', 0, NULL, NULL, 'N;'),
('Student.StudentAcademicRecordTrans.Update', 0, NULL, NULL, 'N;'),
('Student.StudentAcademicRecordTrans.View', 0, NULL, NULL, 'N;'),
('Student.StudentAddress.*', 1, NULL, NULL, 'N;'),
('Student.StudentAddress.Admin', 0, NULL, NULL, 'N;'),
('Student.StudentAddress.Create', 0, NULL, NULL, 'N;'),
('Student.StudentAddress.Delete', 0, NULL, NULL, 'N;'),
('Student.StudentAddress.Index', 0, NULL, NULL, 'N;'),
('Student.StudentAddress.Update', 0, NULL, NULL, 'N;'),
('Student.StudentAddress.View', 0, NULL, NULL, 'N;'),
('Student.StudentDocs.*', 1, NULL, NULL, 'N;'),
('Student.StudentDocs.Admin', 0, NULL, NULL, 'N;'),
('Student.StudentDocs.Create', 0, NULL, NULL, 'N;'),
('Student.StudentDocs.Delete', 0, NULL, NULL, 'N;'),
('Student.StudentDocs.Index', 0, NULL, NULL, 'N;'),
('Student.StudentDocs.Update', 0, NULL, NULL, 'N;'),
('Student.StudentDocs.View', 0, NULL, NULL, 'N;'),
('Student.StudentDocsTrans.*', 1, NULL, NULL, 'N;'),
('Student.StudentDocsTrans.Admin', 0, NULL, NULL, 'N;'),
('Student.StudentDocsTrans.Create', 0, NULL, NULL, 'N;'),
('Student.StudentDocsTrans.Delete', 0, NULL, NULL, 'N;'),
('Student.StudentDocsTrans.Index', 0, NULL, NULL, 'N;'),
('Student.StudentDocsTrans.StudentDocs', 0, NULL, NULL, 'N;'),
('Student.StudentDocsTrans.Update', 0, NULL, NULL, 'N;'),
('Student.StudentDocsTrans.View', 0, NULL, NULL, 'N;'),
('Student.StudentInfo.*', 1, NULL, NULL, 'N;'),
('Student.StudentInfo.Admin', 0, NULL, NULL, 'N;'),
('Student.StudentInfo.Create', 0, NULL, NULL, 'N;'),
('Student.StudentInfo.Delete', 0, NULL, NULL, 'N;'),
('Student.StudentInfo.Index', 0, NULL, NULL, 'N;'),
('Student.StudentInfo.Update', 0, NULL, NULL, 'N;'),
('Student.StudentInfo.View', 0, NULL, NULL, 'N;'),
('Student.StudentPhotos.*', 1, NULL, NULL, 'N;'),
('Student.StudentPhotos.Admin', 0, NULL, NULL, 'N;'),
('Student.StudentPhotos.Create', 0, NULL, NULL, 'N;'),
('Student.StudentPhotos.Delete', 0, NULL, NULL, 'N;'),
('Student.StudentPhotos.Index', 0, NULL, NULL, 'N;'),
('Student.StudentPhotos.Update', 0, NULL, NULL, 'N;'),
('Student.StudentPhotos.View', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.*', 1, NULL, NULL, 'N;'),
('Student.StudentTransaction.Admin', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.Allstudent', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.Create', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.Delete', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.Error', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.Finalview', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.Importationinstruction', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.Index', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.Newview', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.PhotoDelete', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.Studentacademicrecord', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.Studentcertificate', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.Studentcontact', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.Studentdocs', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.Studentperformance', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.Update', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.Updateprofilephoto', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.Updateprofiletab1', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.Updateprofiletab2', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.Updateprofiletab3', 0, NULL, NULL, 'N;'),
('Student.StudentTransaction.Updateprofiletab4', 0, NULL, NULL, 'N;'),
('Studentstatusmaster.*', 1, NULL, NULL, 'N;'),
('Studentstatusmaster.Admin', 0, NULL, NULL, 'N;'),
('Studentstatusmaster.Create', 0, NULL, NULL, 'N;'),
('Studentstatusmaster.Delete', 0, NULL, NULL, 'N;'),
('Studentstatusmaster.Index', 0, NULL, NULL, 'N;'),
('Studentstatusmaster.Update', 0, NULL, NULL, 'N;'),
('Studentstatusmaster.View', 0, NULL, NULL, 'N;'),
('SuperAdmin', 2, NULL, NULL, 'N;'),
('UnitDetailTable.*', 1, NULL, NULL, 'N;'),
('UnitDetailTable.Admin', 0, NULL, NULL, 'N;'),
('UnitDetailTable.Create', 0, NULL, NULL, 'N;'),
('UnitDetailTable.Delete', 0, NULL, NULL, 'N;'),
('UnitDetailTable.Index', 0, NULL, NULL, 'N;'),
('UnitDetailTable.NewCreate', 0, NULL, NULL, 'N;'),
('UnitDetailTable.Update', 0, NULL, NULL, 'N;'),
('UnitDetailTable.View', 0, NULL, NULL, 'N;'),
('User.*', 1, NULL, NULL, 'N;'),
('User.Admin', 0, NULL, NULL, 'N;'),
('User.Change', 0, NULL, NULL, 'N;'),
('User.Create', 0, NULL, NULL, 'N;'),
('User.Delete', 0, NULL, NULL, 'N;'),
('User.Index', 0, NULL, NULL, 'N;'),
('User.Resetadminpassword', 0, NULL, NULL, 'N;'),
('User.Resetemploginid', 0, NULL, NULL, 'N;'),
('User.Resetemppassword', 0, NULL, NULL, 'N;'),
('User.Resetstudloginid', 0, NULL, NULL, 'N;'),
('User.Resetstudpassword', 0, NULL, NULL, 'N;'),
('User.Update', 0, NULL, NULL, 'N;'),
('User.Updateemploginid', 0, NULL, NULL, 'N;'),
('User.Updatestudloginid', 0, NULL, NULL, 'N;'),
('User.View', 0, NULL, NULL, 'N;'),
('UserType.*', 1, NULL, NULL, 'N;'),
('UserType.Admin', 0, NULL, NULL, 'N;'),
('UserType.Create', 0, NULL, NULL, 'N;'),
('UserType.Delete', 0, NULL, NULL, 'N;'),
('UserType.Index', 0, NULL, NULL, 'N;'),
('UserType.Update', 0, NULL, NULL, 'N;'),
('UserType.View', 0, NULL, NULL, 'N;'),
('Year.*', 1, NULL, NULL, 'N;'),
('Year.Admin', 0, NULL, NULL, 'N;'),
('Year.Create', 0, NULL, NULL, 'N;'),
('Year.Delete', 0, NULL, NULL, 'N;'),
('Year.Index', 0, NULL, NULL, 'N;'),
('Year.Update', 0, NULL, NULL, 'N;'),
('Year.View', 0, NULL, NULL, 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `authitemchild`
--

CREATE TABLE IF NOT EXISTS `authitemchild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authitemchild`
--

INSERT INTO `authitemchild` (`parent`, `child`) VALUES
('Employee', 'CourseMaster.Admin'),
('Student', 'CourseMaster.Admin'),
('Employee', 'CourseMaster.View'),
('Student', 'CourseMaster.View'),
('Employee', 'Employee.EmployeeTransaction.Admin'),
('Employee', 'Employee.EmployeeTransaction.Update'),
('Student', 'Report.CourseDetails'),
('Employee', 'Student.StudentTransaction.Admin'),
('Employee', 'Student.StudentTransaction.Update'),
('Student', 'Student.StudentTransaction.Update'),
('Student', 'Student.StudentTransaction.Updateprofilephoto'),
('Student', 'Student.StudentTransaction.Updateprofiletab1'),
('Student', 'Student.StudentTransaction.Updateprofiletab2'),
('Student', 'Student.StudentTransaction.Updateprofiletab3'),
('Student', 'Student.StudentTransaction.Updateprofiletab4'),
('Student', 'User.Change');

-- --------------------------------------------------------

--
-- Table structure for table `bank_master`
--

CREATE TABLE IF NOT EXISTS `bank_master` (
  `bank_id` int(3) NOT NULL AUTO_INCREMENT,
  `bank_full_name` varchar(100) NOT NULL,
  `bank_short_name` varchar(15) NOT NULL,
  `bank_organization_id` int(2) NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(30) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(30) NOT NULL,
  `state_id` int(30) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'philippines');

-- --------------------------------------------------------

--
-- Table structure for table `course_master`
--

CREATE TABLE IF NOT EXISTS `course_master` (
  `course_master_id` int(3) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(100) NOT NULL,
  `course_category_id` int(3) NOT NULL,
  `course_level` int(3) NOT NULL,
  `course_completion_hours` int(3) NOT NULL,
  `course_code` varchar(25) NOT NULL,
  `course_cost` int(9) NOT NULL,
  `course_desc` varchar(10000) NOT NULL,
  `course_created_by` int(3) NOT NULL,
  `course_creation_date` date NOT NULL,
  PRIMARY KEY (`course_master_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `course_master`
--

INSERT INTO `course_master` (`course_master_id`, `course_name`, `course_category_id`, `course_level`, `course_completion_hours`, `course_code`, `course_cost`, `course_desc`, `course_created_by`, `course_creation_date`) VALUES
(1, 'com sci', 1, 4, 462, 'comsci101', 1500, '<p>\r\n	com science</p>\r\n', 1, '2016-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `course_unit_table`
--

CREATE TABLE IF NOT EXISTS `course_unit_table` (
  `course_unit_id` int(9) NOT NULL AUTO_INCREMENT,
  `course_unit_master_id` int(3) NOT NULL,
  `course_unit_ref_code` varchar(100) NOT NULL,
  `course_unit_name` varchar(200) NOT NULL,
  `course_unit_level` int(3) NOT NULL,
  `course_unit_credit` int(3) NOT NULL,
  `course_unit_hours` int(3) NOT NULL,
  `course_unit_created_by` int(3) NOT NULL,
  `course_unit_creation_date` date NOT NULL,
  PRIMARY KEY (`course_unit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `currency_format_table`
--

CREATE TABLE IF NOT EXISTS `currency_format_table` (
  `currency_format_id` int(3) NOT NULL AUTO_INCREMENT,
  `currency_format_name` varchar(50) NOT NULL,
  `currency_format` varchar(10) NOT NULL,
  PRIMARY KEY (`currency_format_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `currency_format_table`
--

INSERT INTO `currency_format_table` (`currency_format_id`, `currency_format_name`, `currency_format`) VALUES
(1, 'Peso', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_page`
--

CREATE TABLE IF NOT EXISTS `dashboard_page` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `path` varchar(1000) DEFAULT NULL,
  `weight` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_portlet`
--

CREATE TABLE IF NOT EXISTS `dashboard_portlet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dashboard` int(10) unsigned NOT NULL DEFAULT '0',
  `uid` int(10) unsigned DEFAULT NULL,
  `settings` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int(3) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(60) NOT NULL,
  `department_organization_id` int(2) NOT NULL,
  `department_created_by` int(2) NOT NULL,
  `department_created_date` datetime NOT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `department_organization_id`, `department_created_by`, `department_created_date`) VALUES
(1, 'IT', 0, 1, '2016-04-06 22:08:09');

-- --------------------------------------------------------

--
-- Table structure for table `document_category_master`
--

CREATE TABLE IF NOT EXISTS `document_category_master` (
  `doc_category_id` int(3) NOT NULL AUTO_INCREMENT,
  `doc_category_name` varchar(30) NOT NULL,
  `created_by` int(3) NOT NULL,
  `creation_date` date NOT NULL,
  `docs_category_organization_id` int(3) DEFAULT NULL,
  PRIMARY KEY (`doc_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `eduboard`
--

CREATE TABLE IF NOT EXISTS `eduboard` (
  `eduboard_id` int(2) NOT NULL AUTO_INCREMENT,
  `eduboard_name` varchar(30) NOT NULL,
  `eduboard_organization_id` int(2) NOT NULL,
  `eduboard_created_by` int(3) NOT NULL,
  `eduboard_created_date` datetime NOT NULL,
  `for_whom` int(2) NOT NULL,
  PRIMARY KEY (`eduboard_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `eduboard`
--

INSERT INTO `eduboard` (`eduboard_id`, `eduboard_name`, `eduboard_organization_id`, `eduboard_created_by`, `eduboard_created_date`, `for_whom`) VALUES
(1, 'Educational board', 0, 1, '2016-04-06 22:09:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_academic_record_trans`
--

CREATE TABLE IF NOT EXISTS `employee_academic_record_trans` (
  `employee_academic_record_trans_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_academic_record_trans_user_id` int(5) NOT NULL,
  `employee_academic_record_trans_qualification_id` int(5) NOT NULL,
  `employee_academic_record_trans_eduboard_id` int(5) NOT NULL,
  `employee_academic_record_trans_year_id` int(5) NOT NULL,
  `theory_mark_obtained` int(3) NOT NULL,
  `theory_mark_max` int(3) NOT NULL,
  `theory_percentage` float NOT NULL,
  `practical_mark_obtained` int(3) DEFAULT NULL,
  `practical_mark_max` int(3) DEFAULT NULL,
  `practical_percentage` float DEFAULT NULL,
  `employee_academic_record_trans_oraganization_id` int(3) NOT NULL,
  PRIMARY KEY (`employee_academic_record_trans_id`),
  KEY `fk_emp_qualification` (`employee_academic_record_trans_qualification_id`),
  KEY `fk_emp_eduboard` (`employee_academic_record_trans_eduboard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_address`
--

CREATE TABLE IF NOT EXISTS `employee_address` (
  `employee_address_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_address_c_line1` varchar(100) DEFAULT NULL,
  `employee_address_c_line2` varchar(100) DEFAULT NULL,
  `employee_address_c_city` int(9) DEFAULT NULL,
  `employee_address_c_pincode` int(6) DEFAULT NULL,
  `employee_address_c_state` int(9) DEFAULT NULL,
  `employee_address_c_country` int(9) DEFAULT NULL,
  `employee_address_p_line1` varchar(100) DEFAULT NULL,
  `employee_address_p_line2` varchar(100) DEFAULT NULL,
  `employee_address_p_city` int(9) DEFAULT NULL,
  `employee_address_p_pincode` int(6) DEFAULT NULL,
  `employee_address_p_state` int(9) DEFAULT NULL,
  `employee_address_p_country` int(9) DEFAULT NULL,
  `employee_address_phone` bigint(15) DEFAULT NULL,
  `employee_address_mobile` bigint(15) DEFAULT NULL,
  `employee_address_c_taluka` varchar(50) DEFAULT NULL,
  `employee_address_c_district` varchar(50) DEFAULT NULL,
  `employee_address_p_taluka` varchar(50) DEFAULT NULL,
  `employee_address_p_district` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`employee_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendence`
--

CREATE TABLE IF NOT EXISTS `employee_attendence` (
  `employee_attendence_id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) NOT NULL,
  `attendence` varchar(5) NOT NULL,
  `date` date NOT NULL,
  `time1` time NOT NULL,
  `time2` time NOT NULL,
  `time3` time NOT NULL,
  `time4` time NOT NULL,
  `time5` time NOT NULL,
  `time6` time NOT NULL,
  `time7` time NOT NULL,
  `time8` time NOT NULL,
  `time9` time NOT NULL,
  `time10` time NOT NULL,
  `total_hour` time NOT NULL,
  `overtime_hour` time NOT NULL,
  `csvfile` varchar(150) NOT NULL,
  `employee_attendence_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`employee_attendence_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_certificate_details_table`
--

CREATE TABLE IF NOT EXISTS `employee_certificate_details_table` (
  `employee_certificate_details_table_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_certificate_details_table_emp_id` int(5) NOT NULL,
  `employee_certificate_type_id` int(5) NOT NULL,
  `employee_certificate_created_by` int(5) NOT NULL,
  `employee_certificate_creation_date` date NOT NULL,
  `employee_certificate_org_id` int(5) NOT NULL,
  PRIMARY KEY (`employee_certificate_details_table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_designation`
--

CREATE TABLE IF NOT EXISTS `employee_designation` (
  `employee_designation_id` int(2) NOT NULL AUTO_INCREMENT,
  `employee_designation_name` varchar(25) NOT NULL,
  `employee_designation_level` int(5) NOT NULL,
  `employee_designation_organization_id` int(2) NOT NULL,
  `employee_designation_created_by` int(3) NOT NULL,
  `employee_designation_created_date` datetime NOT NULL,
  PRIMARY KEY (`employee_designation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `employee_designation`
--

INSERT INTO `employee_designation` (`employee_designation_id`, `employee_designation_name`, `employee_designation_level`, `employee_designation_organization_id`, `employee_designation_created_by`, `employee_designation_created_date`) VALUES
(1, 'lab', 2, 0, 1, '2016-04-06 22:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `employee_docs`
--

CREATE TABLE IF NOT EXISTS `employee_docs` (
  `employee_docs_id` int(5) NOT NULL AUTO_INCREMENT,
  `doc_category_id` int(3) NOT NULL,
  `title` varchar(100) NOT NULL,
  `employee_docs_desc` varchar(50) DEFAULT NULL,
  `employee_docs_path` varchar(150) NOT NULL,
  `employee_docs_submit_date` date NOT NULL,
  PRIMARY KEY (`employee_docs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_docs_trans`
--

CREATE TABLE IF NOT EXISTS `employee_docs_trans` (
  `employee_docs_trans_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_docs_trans_user_id` int(5) NOT NULL,
  `employee_docs_trans_emp_docs_id` int(5) NOT NULL,
  PRIMARY KEY (`employee_docs_trans_id`),
  KEY `fk_emp_docs_id` (`employee_docs_trans_emp_docs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_experience`
--

CREATE TABLE IF NOT EXISTS `employee_experience` (
  `employee_experience_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_experience_organization_name` varchar(50) NOT NULL,
  `employee_experience_designation` varchar(25) NOT NULL,
  `employee_experience_from` date NOT NULL,
  `employee_experience_to` date NOT NULL,
  `employee_experience` varchar(50) NOT NULL,
  PRIMARY KEY (`employee_experience_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_experience_trans`
--

CREATE TABLE IF NOT EXISTS `employee_experience_trans` (
  `employee_experience_trans_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_experience_trans_user_id` int(5) NOT NULL,
  `employee_experience_trans_emp_experience_id` int(5) NOT NULL,
  `employee_experience_trans_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`employee_experience_trans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_info`
--

CREATE TABLE IF NOT EXISTS `employee_info` (
  `employee_id` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) NOT NULL,
  `employee_no` varchar(10) DEFAULT NULL,
  `employee_first_name` varchar(25) NOT NULL,
  `employee_middle_name` varchar(25) NOT NULL,
  `employee_last_name` varchar(25) NOT NULL,
  `employee_name_alias` varchar(25) DEFAULT NULL,
  `employee_mother_name` varchar(25) DEFAULT NULL,
  `employee_dob` date DEFAULT NULL,
  `employee_birthplace` varchar(25) DEFAULT NULL,
  `employee_gender` varchar(6) DEFAULT NULL,
  `employee_bloodgroup` varchar(3) DEFAULT NULL,
  `employee_marital_status` varchar(10) DEFAULT NULL,
  `employee_private_email` varchar(60) DEFAULT NULL,
  `employee_organization_mobile` bigint(15) DEFAULT NULL,
  `employee_private_mobile` bigint(15) NOT NULL,
  `employee_pancard_no` varchar(15) DEFAULT NULL,
  `employee_account_no` bigint(20) DEFAULT NULL,
  `employee_pf_id` varchar(20) DEFAULT NULL,
  `employee_joining_date` date NOT NULL,
  `employee_probation_period` varchar(10) DEFAULT NULL,
  `employee_hobbies` text,
  `employee_technical_skills` text,
  `employee_project_details` text,
  `employee_curricular` text,
  `employee_reference` varchar(25) DEFAULT NULL,
  `employee_refer_designation` varchar(20) DEFAULT NULL,
  `employee_guardian_name` varchar(100) DEFAULT NULL,
  `employee_guardian_relation` varchar(20) DEFAULT NULL,
  `employee_guardian_home_address` varchar(100) DEFAULT NULL,
  `employee_guardian_qualification` varchar(50) DEFAULT NULL,
  `employee_guardian_occupation` varchar(50) DEFAULT NULL,
  `employee_guardian_income` varchar(15) DEFAULT NULL,
  `employee_guardian_occupation_address` varchar(100) DEFAULT NULL,
  `employee_guardian_occupation_city` int(4) DEFAULT NULL,
  `employee_guardian_city_pin` int(6) DEFAULT NULL,
  `employee_guardian_phone_no` bigint(15) DEFAULT NULL,
  `employee_guardian_mobile1` bigint(15) DEFAULT NULL,
  `employee_guardian_mobile2` bigint(15) DEFAULT NULL,
  `employee_faculty_of` varchar(50) DEFAULT NULL,
  `employee_attendance_card_id` varchar(15) NOT NULL,
  `employee_tally_id` varchar(9) DEFAULT NULL,
  `employee_created_by` bigint(20) DEFAULT NULL,
  `employee_creation_date` datetime DEFAULT NULL,
  `employee_type` int(3) NOT NULL,
  `employee_aicte_id` int(5) DEFAULT NULL,
  `employee_gtu_id` int(5) DEFAULT NULL,
  `employee_left_transfer_date` date DEFAULT NULL,
  `transfer_left_remarks` varchar(200) DEFAULT NULL,
  `employee_info_transaction_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_marks`
--

CREATE TABLE IF NOT EXISTS `employee_marks` (
  `employee_marks_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_marks_obtained` int(4) NOT NULL,
  `employee_marks_out_of` int(4) NOT NULL,
  `employee_marks_percent` decimal(3,2) NOT NULL,
  `employee_marks_created_by` int(3) NOT NULL,
  `employee_marks_creation_date` datetime NOT NULL,
  PRIMARY KEY (`employee_marks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_notification`
--

CREATE TABLE IF NOT EXISTS `employee_notification` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `expire` datetime NOT NULL,
  `alert_after_date` datetime NOT NULL,
  `alert_before_date` datetime NOT NULL,
  `content` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `from` int(3) NOT NULL,
  `emp_notice_to` int(3) NOT NULL DEFAULT '0',
  `org_id` int(3) NOT NULL,
  `notifiyii_department_id` int(3) DEFAULT '0',
  `employee_notification_type` varchar(20) DEFAULT '',
  `employee_notification_creation_date` date NOT NULL,
  `employee_notification_read` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_photos`
--

CREATE TABLE IF NOT EXISTS `employee_photos` (
  `employee_photos_id` int(5) NOT NULL AUTO_INCREMENT,
  `employee_photos_desc` varchar(50) DEFAULT NULL,
  `employee_photos_path` varchar(150) NOT NULL,
  PRIMARY KEY (`employee_photos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_sms_email_details`
--

CREATE TABLE IF NOT EXISTS `employee_sms_email_details` (
  `employee_sms_email_id` int(3) NOT NULL AUTO_INCREMENT,
  `employee_sms_email_organization_id` int(3) NOT NULL,
  `department_id` int(3) NOT NULL,
  `branch_id` int(3) NOT NULL,
  `shift_id` int(3) NOT NULL,
  `message_email_text` text NOT NULL,
  `email_sms_status` int(1) NOT NULL,
  `created_by` int(3) NOT NULL,
  `creation_date` datetime NOT NULL,
  `employee_id` int(3) NOT NULL,
  `employee_sms_email_details_ack_id` varchar(20) NOT NULL,
  PRIMARY KEY (`employee_sms_email_id`),
  KEY `fk_emp_sms_bid` (`branch_id`),
  KEY `fk_emp_sms_did` (`department_id`),
  KEY `fk_emp_sms_sid` (`shift_id`),
  KEY `fk_emp_sms_eid` (`employee_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_transaction`
--

CREATE TABLE IF NOT EXISTS `employee_transaction` (
  `employee_transaction_id` int(9) NOT NULL AUTO_INCREMENT,
  `employee_transaction_user_id` int(5) NOT NULL,
  `employee_transaction_employee_id` int(5) NOT NULL,
  `employee_transaction_emp_address_id` int(5) DEFAULT NULL,
  `employee_transaction_branch_id` int(2) DEFAULT NULL,
  `employee_transaction_category_id` int(2) DEFAULT NULL,
  `employee_transaction_quota_id` int(2) DEFAULT NULL,
  `employee_transaction_religion_id` int(2) DEFAULT NULL,
  `employee_transaction_shift_id` int(5) NOT NULL,
  `employee_transaction_designation_id` int(2) NOT NULL,
  `employee_transaction_nationality_id` int(2) DEFAULT NULL,
  `employee_transaction_department_id` int(3) NOT NULL,
  `employee_transaction_organization_id` int(2) NOT NULL,
  `employee_transaction_languages_known_id` int(2) DEFAULT NULL,
  `employee_transaction_emp_photos_id` int(5) DEFAULT NULL,
  `employee_status` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`employee_transaction_id`),
  KEY `fk_designation` (`employee_transaction_designation_id`),
  KEY `fk_nationality` (`employee_transaction_nationality_id`),
  KEY `fk_department` (`employee_transaction_department_id`),
  KEY `fk_emp_info` (`employee_transaction_employee_id`),
  KEY `fk_emp_photo` (`employee_transaction_emp_photos_id`),
  KEY `employee_transaction_user_id` (`employee_transaction_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `event_master`
--

CREATE TABLE IF NOT EXISTS `event_master` (
  `event_master_id` int(3) NOT NULL AUTO_INCREMENT,
  `event_master_name` varchar(20) NOT NULL,
  `event_master_start_date` date NOT NULL,
  `event_master_created_by` int(3) NOT NULL,
  `event_master_creation_date` date NOT NULL,
  `event_master_org_id` int(3) NOT NULL,
  PRIMARY KEY (`event_master_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `important_notice`
--

CREATE TABLE IF NOT EXISTS `important_notice` (
  `notice_id` int(3) NOT NULL AUTO_INCREMENT,
  `notice` varchar(200) NOT NULL,
  `created_by` int(2) NOT NULL,
  `creation_date` datetime NOT NULL,
  `notice_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `languages_id` int(2) NOT NULL AUTO_INCREMENT,
  `languages_name` varchar(30) NOT NULL,
  `languages_organization_id` int(2) NOT NULL,
  `languages_created_by` int(3) NOT NULL,
  `languages_created_date` datetime NOT NULL,
  PRIMARY KEY (`languages_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_name`, `languages_organization_id`, `languages_created_by`, `languages_created_date`) VALUES
(1, 'english', 0, 1, '2016-04-06 22:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `languages_known`
--

CREATE TABLE IF NOT EXISTS `languages_known` (
  `languages_known_id` int(2) NOT NULL AUTO_INCREMENT,
  `languages_known1` int(2) DEFAULT NULL,
  `languages_known2` int(2) DEFAULT NULL,
  `languages_known3` int(2) DEFAULT NULL,
  `languages_known4` int(2) DEFAULT NULL,
  PRIMARY KEY (`languages_known_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `languages_known`
--

INSERT INTO `languages_known` (`languages_known_id`, `languages_known1`, `languages_known2`, `languages_known3`, `languages_known4`) VALUES
(1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE IF NOT EXISTS `login_user` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `user_id` int(3) NOT NULL,
  `status` int(1) NOT NULL,
  `log_in_time` datetime NOT NULL,
  `log_out_time` datetime DEFAULT NULL,
  `user_ip_address` varchar(16) NOT NULL,
  `login_organization_id` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `user_id`, `status`, `log_in_time`, `log_out_time`, `user_ip_address`, `login_organization_id`) VALUES
(1, 1, 0, '2016-04-06 21:21:41', '2016-04-06 22:05:18', '::1', 1),
(2, 1, 0, '2016-04-06 21:58:46', '2016-04-06 22:05:18', '::1', 1),
(3, 1, 0, '2016-04-06 22:06:42', '2016-04-06 22:16:35', '::1', 1),
(4, 2, 0, '2016-04-06 22:16:42', '2016-04-06 22:18:36', '::1', 1),
(5, 1, 0, '2016-04-06 22:18:40', '2016-04-06 22:25:23', '::1', 1),
(6, 1, 0, '2016-04-06 22:29:08', '2016-04-07 11:14:15', '::1', 1),
(7, 1, 0, '2016-04-07 11:04:26', '2016-04-07 11:14:15', '::1', 1),
(8, 1, 0, '2016-04-07 11:14:51', '2016-04-07 12:16:50', '::1', 1),
(9, 1, 1, '2016-04-07 14:02:55', NULL, '::1', 1),
(10, 1, 1, '2016-04-08 17:24:38', NULL, '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `message_of_day`
--

CREATE TABLE IF NOT EXISTS `message_of_day` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `message` varchar(250) NOT NULL,
  `created_by` int(7) NOT NULL,
  `creation_date` datetime NOT NULL,
  `message_of_day_active` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE IF NOT EXISTS `nationality` (
  `nationality_id` int(2) NOT NULL AUTO_INCREMENT,
  `nationality_name` varchar(30) NOT NULL,
  `nationality_organization_id` int(2) NOT NULL,
  `nationality_created_by` int(3) NOT NULL,
  `nationality_created_date` datetime NOT NULL,
  PRIMARY KEY (`nationality_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nationality`
--

INSERT INTO `nationality` (`nationality_id`, `nationality_name`, `nationality_organization_id`, `nationality_created_by`, `nationality_created_date`) VALUES
(1, 'Filipino', 0, 1, '2016-04-06 22:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE IF NOT EXISTS `organization` (
  `organization_id` int(2) NOT NULL AUTO_INCREMENT,
  `organization_name` varchar(50) NOT NULL,
  `organization_created_by` int(3) NOT NULL,
  `organization_creation_date` datetime NOT NULL,
  `address_line1` varchar(50) NOT NULL,
  `address_line2` varchar(50) NOT NULL,
  `city` int(3) NOT NULL,
  `state` int(3) NOT NULL,
  `country` int(3) NOT NULL,
  `pin` int(6) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `website` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `fax_no` varchar(15) DEFAULT NULL,
  `logo` longblob NOT NULL,
  `file_type` varchar(30) NOT NULL,
  `no_of_semester` int(3) NOT NULL,
  `organization_trust_id` int(3) DEFAULT NULL,
  `name_alias` varchar(100) NOT NULL,
  PRIMARY KEY (`organization_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`organization_id`, `organization_name`, `organization_created_by`, `organization_creation_date`, `address_line1`, `address_line2`, `city`, `state`, `country`, `pin`, `phone`, `website`, `email`, `fax_no`, `logo`, `file_type`, `no_of_semester`, `organization_trust_id`, `name_alias`) VALUES
(1, 'ECIT', 1, '2016-04-06 21:21:26', '', '', 0, 0, 1, 0, 9099514740, NULL, 'admin@admin.com', '', 0x89504e470d0a1a0a0000000d49484452000000c8000000aa0806000000e86400cf0000200049444154789ced9d79b01cc77ddf3f3d33bb6fdf8977e03e48108440881429522225919269ca922fd94a7cc489933867959da35276923f1227a9a452f9c349254efe71a5ecc47f388753b92a721c27b6285bb6654bb22c912278891005f10041000ff7bb7777a6bbf3c71cdbd3d3333bfbde03de02d82fea6167faf875cfccefd7bfa37b7a608411462885d8e90e0c1bae7ed77b4e6ad178143fd84fb3816834118d31b4efe3351a78cd260471ba0e1a78634d44b389f61b787e03afd980c6185e10a0031f2f684223003f40783e2208108d065a08f07c3ccf07cf630d11bcd6d1077e61717de23757c34b57a50ed11a84f188b40644efa9e9e43fbb8c2879ac55f434e781aff30f7eead436decedb1ec14e7760d820e15184f86bc2131f1208526e1442a0933f2144cc9b22f94f0b44c2681a8140c7f9c4e584ce8f44315f8a5e3e3021048f8d0befe8988fbf1a824625040d2454ecb4c2b9c66a3139afa4772afb1d21c348406c681120680113595ac9802c32467714291bc5cd22d6b12f049e100e6236c3d7452a0d765d27bd1642789b68e48ec6e88658d02e3ed425a71542a00748d7b9e3e44c987f229f86ce1fbbcadbd2d78fde084e8c04c482d00e661195a76e3a254c67f263d9f85e3485ac42a6603a358e99e732cb2ae88d90c3c8c4b210fb1076da660c9c7c8d1c0d912f91a79f0cebdbcdb4fdc8893a85ee3e8c04640b481df0f2dc1e72c260d511f689b80902520b2301b13112100b2ebe2cd32842eb8cdb0b5aa64470ca5830aeaf7bd1b191800c0546026241eb9ad60864a1da5c5a4a47144d359b8029543d2a028407dec8711e068c04c442f5085f3cde0a1d671921c013a0fa3470333092c9024602521376d4b42fac68584ea82a18319e8cdc010d524775de85180988052d74df2856efbc8a89dddce60a161534d24e38e9e5d186bb1a2301b1201c3385764acfd412e57c25dc51aca462f6937a31999008019eb703e6ce48405c1809480d944de899daa0e897546800c73c482f6fa70484825938c248408a1820cc5b8d2a47a35cbb682ff13f460232141809484d94459f4c33298ff299743b046cfa343af53f76641a64242036460262c3c123a503ab2e3af46584aa66d27be4e2a5f4783b154e1a09888d91805870994f9b0b28f55f8b656b1f21485ea4f21cbdb8d91885795d180988853a137cbdc2551c55e167249aa77ca270270464679a1c768c04a40636e7bb56cd835445b8765040461252c048402c9445a8dc4ef5d6e916ca791ef8fece2c5674be2d767763242016eab0489d2523765efd755c0284bf338efac8472f60242016ca9c74b70f5241a8df72122b2d3bf63cf03dd03bf1b2e74883d81809880d078fd83e48c6cc46463fcdd0cf9dcf2da1f7764a4046b03112101b25efa497469c7a456a2116ac92a621db2f6b6704646463d91809880d87739c5b4c8865166d86a7acb558b95fe127512c7f1384b780916c383112100b650c5f1ad9da6eb33d0bf3de620d321210274602728bd1378a25bcd8c4c2c7b955a8ade1ea94a95376b450d189a1139053fb382c048f0a8ff7a5d365e9789a3e5acf8b8ffd242ddbda3329908dbddaa8ec79c95f801002e1fbe0fbe864cf5cafd904bf094a3c86e6e0962fa44a13956c4427485d0f2f9993287b13a52a6d905081792ef6029fe0379f9f6047205ec713aff07d8f9ddb99f6dd183a0191827b3c8f1ff5e0c78d9d3d33a40b5d53bf204eccfd183b8360488ec170c2cbfe84880547432285da13e8dc7d297d1b75f0170a7379ce95c0221912c42df641e020f023c00fddea866388cfa0f9656024209510784080a0a5b5c1ecf932bd91d894947e8369a57d53ced1a593da03f81fcef995b2c6c40ef8207183cd5bdd680fa2891ebe9d3e874f400ca62fbc9a6d73593f06b5ca0b5118af8d575d07efe220a8db552d44bcdc64f878e526430c65a060f804c4887916ee57d97a0dc3cfccf9a0d6fc854bd1d462f4aa9d106b22a7ec92d5bceed9796f67c2bcc3809180d440d59a0cc368efcd66f78a154c216d95753c813ada205dc357b59eaaae561146479df452136bf42582a1c0f00988701cda336a58cc58a2418a1372ee49c03a5dd2d6f9a074720104f26f22e6b449f6caed764fb00c3986f472874f406c6d5156060a21a08c0993ba55237e9164f9ebb3767d732d5629ed92f55b82f8d5dab22a1a91c4b1ef360d329c6f340e9d80d8a15b274a1cf78c0945ff11dfae5eb1936e415e4d73a86e50cca9f14a68de9d26d648406aa1e054970cd1ae0963519117a7ebd841766a9d8a0d184ab481466feab9a6cb59dcf5ee5213cb54f94384a113101385f0ab1502c6ca4fa35665bc252a184f54be06eb8e7c09c4c07c6c4e7e3a9d7d2fe9e38eed6cb28318c24161f80424efcd96c664332de17aeb481743bc719da206c9f22a7c903268ddd3200345b10a6ddb2698a896a2ade056d32b75e01c1809480d38d75f583099df0831995ac51969aad2209be01a217a1aa47f10201f0deb1bc5b24370db855b4dcfceaf2c3f1290c1a0a9feeaac3574e7d64c393449d98a9438af7e146b33709b688efc2c53943b53b9ced9652a7a3b0cf4ead419220cb78094f96daee197e27db7cdacaac7de2f8ab55de8678e69d349a9c348853255bed410d0bb8d84038651405cc3bdc38ecdf8c8d62046da30f920ce90ae0bfdecc4b86123bfac656ddc4351472a6f123ddc5aa46a641b220c9f80b87c10c7a056a9596c8149930d1fa448726b3ec866e0e4b12a3b302d206a15342ebecaacb999f44a3461c19eb4e90f0f8677362a1db03485790834bd17e04c0148d2d265f26620284ed7f1a89f2795e555f5c59dac6bbf88977bf4d63c8849a2e87369ab7d73f4a8f00d10c6bd73a8df5b42af57247f6c3c985c5ecd9b790b31741a24bb45a996287966cec1a6cf80e58a62e5f2ca5062516c661e04dcbe518fbe3058accaf4316b5979a5a1b55b4d2f4977cdcce68ee3ba7a0835c8d0098875cf7ab08df801822b75a2509b8a62196bb14a4da5328216cc4bf244a2da73b67ec588904ab04da89076abe959b4ec62a64f939ceec4c77dab307402e2d4f6eee13b9f6fa4959abc95cd96972acd19602d568ec71c5ba764c201f808fc34da206cceb46b24c719931aa34361b4de217a050d633be73ab3b64602d20f062755eda59c9399b4bcc377cc3f169d151fb44b9ba967222ff715c228620de2e746e5aad1beeab8ba17b78e5e3f9a8906111055b4b613183e0171dd73c7fdcf06a5ea6256dae658dc1ef05d0aad8e19979673bd51d8fb8db5876f468ca83a2ecbcf5a73a4dd4a7a55b44d2aa2c2c8dd390c9d8068e3a0c023f6af7daf8dfbeb7a949bbdfd65138e1aa7b55489583194eb114f4090fc5128e53aee3f3297a7dd0a7af5686baa2d869dc2d009887079bdc5613686553663588ba1b732e29bcd39d31de679d64029b4bb0f1a7c34be1004b9d1a1aa3765f955a3f9ada467d375e7db11df61c1d00948212c5ea2ed73fe86e9f309b72f12178b1d958167d2758940e95ebd427ea5f41547cf54d884272a34487f5aeef441f4e876d3ab576ea4416a2277eb2b6e98ebddf35430ca568a0b4481684f095535e64ed6023c5d622e950c87b196cb679a757d201082c610ce09dc4c6c2e7c72f3317402528a1af7aef445a9ad912d2d679a58fd3448e97c89053f118e86170b6d9979e8ea53cf454bd94d24e9bdf39da617bbe3f97a8398bbb71a0501f9e505766b785cc047ed3ccffa15c65fbad559e0f5ca783a0e57a67be806220961d2db6bd7232e934e8e69b80778d4d9dbdc6482d18992727504c364822aeb79b3868933bfc249172402b22596b1eb6e95fdb6935ea9097702f833275e5e7c3c4baae53c8a343468b9452903e88ababd342dfcaf68c44b67deb770c3cc2e08888659e0bb35fc2dfbb20ac13a911712bb0ff6be03a98da98531a21a1d4ececbb71514d6af799118d1a6019e5f8f6479a5ed1cddfa8d9ca9837eb79958c0fb800741f4e60a4bd5b62b4d9494294bb7d2b4fe173ade17b8af8078099336cb02143927d890189be1cd3ac23acfe5e5a4cea0e9ba90a49399309852ebe0b87c52459ca44f96709c9b03575d33a142e1a189b56bd31334efbe77d27774bf555de26e141273cc5a66d36f87c675d1b085a48cb670089c43308ac94562a636aceaaab36b4644acee2da8ba4441ac419a02c6ee3e0db2a3285b2859d42069c814fa0c9d1438275b668e915fda2347be83c95dcbdad3b672c26c9b9ac238ced28b61de9e86ad3f8fdb132ab793ba1504021a77a706d951e89251d2a941325e2b6360879994d6ddd4f26f57d774353d61f745b8bb97ab4339c1cae5ee945cb2e517d6190f043d61744e14a651acec81b946a9b29ed95ea26b24bb95f4ecbb63d7779573d1bff9f474ce2ce9a1548364e72919a38d38968f93a013ba175870c149cbd00085ce983e8859c841dff5e8b66d6c766822b3ad52412d8b628958833405860619c49eadb24f77925e9f91d5995635dc6d3fbd32fba1da07b1c999698370994b38fb5d5bd28d9cd7e6d016fd68a474447654e18df7ad5f3c2f13047b8d56aebee5d89b347c0f9a9ec79837bc2f7bde89507505c45ec251d020e6f10042a22bca67dbf5585ce84a736a9034cf285f66006c076ac876ad81d935a6f98979d5285c3c6ced6a5c758789decec33574ba67d2b5a3b0e58c176e439f7b536bd988652616c6fb529ba5d82f814b284575272bc8bbfd24cd667643a92aef53e5a46f85f9869ddecec3b5ebbedbc4223611ca9cf5c2be626919d7c89e9671d92436d73986d4c2727297e967f5abd4d7d015265685e555f6114f2d44b616ab58272f38b9cbaef8c2942f3c9a4230368a62dd52d4f6414c273d1bccab020946415df6d45d425016fcb0d33c7719d76a5e9bb6538194683a2dca3541e51aafb2bc92cd215c7926824438a2bbeef3073b8bb295c44e13ab74e7c9d4f43199d31cedc16d2eb9e855095119ca8c7fd33fa2d8b75e174481db7bddb9f523b6ab455f902c5674ea2cdc37b35fb932dc6c7ab713dc6642f96a5e5d724c42c7612a69287d17235f99e2a85fd57e599e2524994c5a7d10663dcb5eea7567f0f741b270f736221590a6b333754795ba4c7ab3e9dd3ea83d0ff2068d406b664343c59b03726a56a4da22f74bbc2a37f74bbcaa5708e3d8c817bab7da372d2f746fb5af50c631567bdaea97d9df9c10095022feb499f6621347c65f931569a7ba1ae147085f83af109e023f420421041df07c4410c47fbe0f9e0f7e806836107e10e7fb3e0401c28ffff03d23cf03e1c7715ccf47a49f59f3044278d945bdfcf675de999aa7e3dd855fb9dd417841308f1085efc41704e434cd895078072f780d27a13aee853012ecfcac8ce5eb608cfac24e1fb01fc5c2064561ffa6c71221148888f4d5c46ca3394f18658d7491085d6ec4f08c7cc89634a7af3b26e584d907a36f4bcd71da7e03355a8b754b317becf8517f6c6cc24e2f08c8aae7071dc4d4052f1626734b4edbb9b4f3d2f3f4b84e796148457a6efef66bdbd5964dc713f180df17c9e6d65550129463f326dfa7f66705b50659b5bf8dd6ec9e9b63666a8ac0afeeb8d69a95f575b4524c8c8fd308b6f71db8484a965757b972fd7aa9edec7a6efd96ee54a1cef3df6e7acdc9c9a96062b270f3fadecd66b3c9d4d4146363639beee04ea2d18c98dfd365ff2185ef4d6d8956a46e70fe9d06572e4ce6d2772d2cb1ef4093a9a926b1c158054d375ce39d3705abcb2d64542c2f8027dfff7e1e7ee821e616162aa9492979e1b9e788a288071e7c90b9b9b9c12eaa0fae5fbdcacbafbeca1fbdf8e226d6200c2f3a9d0eababab846108f4cc7b1ba502924adbae5dbb78e49147387cf8f0cde8e74dc7f8e432474f5ce5d1276076fc835ba27579f5f3bcf0d569befdf2f12c4d34dee681479678e8bdf7b37be1005e9f3147a3688757f8f297bfc13b6fccd35edd8d56ad5c19017ce0e4493ef4e4931c3d79325fdf189db5d64461c898108461c8d39ffa1407efbdb7bced12ad6ed2b3f3df3a7d9af9ddbb99deb7ef8e1290f3e7cff3d24b2f71e9d2252079a3759028567aa32627273979f2240f3ffcf0cde9e9cd86bfc8ecc225e627673932fb676a55295b51d395573976b4c5dea90f800811c122337b2e70dfa11f64efcc47196f1cac495bd17afa3f70ee3d1759bab68f68e31ed03dad24a3885dcd9ebf6832aec9c0e971a3d1c0f33c3ccfab65def4a397964931bfb0c0134f3c81bfcde6db4ee2d5575fe5cd37df647171114834886304a875c5524aa268d83685ac070f89d60a50a02530d83a2d6bbc452b8554ebf8cd452616beca897b9f61cfd4c76978d305fa55f4ee99ff0b04deaff18eff3a572fb5e9ae3d805689df2765c6a0959f6570d17730b9290c83d24be92829ef280d22937bdc5b59ed9e09ab1490f47b1a4a29a49437a39f371d4a48c2a84da77b9976789eb1606f2e4aa67444a856e8845773f53caf49d39fa1e1cff612b54229896491f1a9d31c3ff21007a73f95e4c50348462fba9a53450d6f8a66308f279a5934efe0ae4f23f8bf44f2148b6b3328199bb14a4a9452d9fdf79295bd2e6753250fdaf5ed93b4ac92328bbeb982192a893ac441372fab6b968ba268883f26333894156989838b4511e9eb8368ad6f6b0d22f0585e5de5ad0ba789e40d1ed8f377732361375ae4e2caef73e6c2efa365ef764c8def62dfdc7bd93df9b12cadd35d228c6691aa8de775991b7b0cad42839a66a3fb2ee7973ecfd9cb5f47c9f821f8bec7c2f4fd1cd9fd3473e38fe64cb889603f138dfd489691c93d564ad16eb7b971ed1abbae5e656ef7eeb8bcf5003b1b1b2cbefb2edd30c433fc88ecda85a0b3b1c1f52b5798dab58bc9a92984ef1734cbcad21261a7c3f8e42493d3d3857cadd41d2720d21858d22f856dca07b9dd0584688ab0fd38e1da315ae3ff83130bdd5c7637bac68dd56f73f1cc77a3c2dda4465063ea1b2cce3d8be77d3e2bab7497f6ca13481925237c88563d7a52b7b9b6729a57def83d56cefd65b28896e87263fe6522fd3f993dfc60aefd9886444a9dbbc797af5fe7eae22237ae5ce1e37ff24f266575a605a4945cba7081fff7dfff3bcdd959a61a0d36d6d6585d5eced1bff0f6db7ce9d96779fce9a779e0d14769fa7ec1297ffdd4292e9c3dcb91e3c739febef7e5eab7d7d709c39048ca3b5240faf96b7d4dac94581a0ebb5de105617c3d322f20a82e5a4ba248a2e41aa980444bf7b2b114478452df204530fe0e5ac99896414fa955c26e87eec61c6198f83d00083a1d41a71322a3d57cf3721da9ba445190bfc7cd666c2219f30ac2d61242201a0d68b5585959e12b5ff80281e548879d0eed308c276a12d8f4f03c96979779f9f9e7f9d66bafe5ea773b1d3a4aa1c6c610ae09a0db14050d82db6fec6b62a944bddeee02e23722d0122d3bf90c198292446a95d6cc693ccf74d7145269562f7f385fa711219544ab304f4f75d02a44aae2801245927677894bcb5fcaa5af856fb3deb94614ed2dde636b94cb3176f270a5521086d06ab1a4757c6cc2f390be9f4df295857523df674308d61cf5f13c9032febb43104551ce0f29db73a86f142b35b16e770109a208ad154a6ee4d2b58a087cc1d4ee2f73f8f0750e4c7f07637e3c39d7919738b7f2055e3aff815c1d1145b1732cdb397a4ab551aa8b72dcafb5a579de7ee300efbcfd8785be45dd593a6bb348ab8e6739dfae390c2925aadfb3491cfe94868b9e528af00ed210fd90069d7af7c0bd8aa2202063b39381567a4aac25d5920846b7dbb508f6f2ede505fd269fcad0af6c19a3d4291f845d4043d44e56ee0a349a71e6393efdc31c78f81dc6bdfd04de2422b92d6be26d2e71aac0ec5e18a15404aa0bb29d34065ab7d151d739a084e12ed657dedfa7c7f93aa9515475bd4aa9be0222a22817742913b4f076f53337015b834c45d766c6a3b5fe8b15c57b8e28d10ebb7ce302d0df4977ad6fa91aadaa04c92c37485b55f4d2b24114a19444a998a155bcf82bb13d7da6bd7b01119b35228d2675d15a1186618eb69fd1eaa212134b27e5958a6ffc7668dc4632f157753fa494447dda0a0c0d5245e776b7120641640c1a00cdd5b782a6e3f20b0212ee998fc2d5f6aad6e73306bf137c90461422b44285968965fde6f2641bad8b8ce347113292e8a88dd2eb59ba521be8a8e3f4413603190495237fdc660d6134261ecb34fbdd2620d2b82700e1faca6a10ea821628fa200215affb8e71db877913c848a2d1d9889f426b8da4c386ba48cbdb4320c61189bb966a10fbdae330af44c910458f9ed21d940a51b258673350c6d63f2ee1482771fbb5e55bcc60d3ab4be74e826d6295c1b17975b29d66a23dee949b27a58c67c2a3762ebdadaf70befd1c2fbf7585a3f72cb377ec619a6206808ebe4e572d3904442602d241e91e3da53b2819665ad744d05c676ce2067e501ca5a3b0153be9517ec5b43426f54c9869aeb66c3494eabb4ca40e9d3b094ee1a8b7164b67258510b4db6d2e5cb8401445f8be9ffd0541401004d9b9e779f87dde5dd84984dd0dc2d50bac2efe2ffcf1dd78ad05fcb159a2608df5ee0a6f7ef328d7ae5ea6e1dd408825205e791bc9fb9c215bad145a75d1ba370fa27517a542a7b932b3e75d8e9ffc1647a60e43b482ec2ca3bacb84de1a1757e6f9d69b1fa07dfd40ae8e696299b02771c33eebab9a495838ade3d24677a289952e918aa228fb0bc3f8f95cba74898d8dbcb95deb955b452222c90d6db7db9c3b778ecb972f67317873f19b7d6c0a91fd670b542a54e6aff96796ddca0b3390d89caa4bfbea8b20028417ff75c6249d714977fd08e7df3856aca845611d5ab6564a4a9448994aa3d53a3adc4069c7da35dda6152e3277f6126885d6f1bc4cbb15b22c27d084853ab6a67005205221a9827238fb36bd61596fa794cafe523328ed9b4ceebbc9f0a900d8829096357d38f3afd3e91405c4018789a5e2306872f39452743a9dda37cf14225b78fa09982bcd3e760953d9b959677e7e25be89ddb55c7f43a588bc064bcb4bacafc56bb78410ec3b7c917b1ff8369e56bd37e93cc1c5b3ef61636d1ad95962f9cd5fa7db6e828ed5b512115d3fa235318e9421e9d493e74704de3a4dd6d06b966af7255aaa0283b63c8f26646bac5ccbd205d0d09a31add92831a3263c8f31079d1c3d622d33a6356b491f52c634cd6cf3d74eb7cba4d7631f97fddaed01cee3b2bfb4cf769d32a4c297d3a8839a58e6850fc3e8d24f785c7933b38af73ebcc1473ebac24c5bc52b5b4d743593cd368f3ff145a40c88df4587996687bdc11aad152fd3bc2b7b24af5ddae09b6726996c5d2614cb78eb5e6f824940ab21b87fca67fc43ff1ba56301f13dc59c58677ea98b92794da894626575853367ce70e1ecd5580b7b1e9ffce847f9e8c73ec6fdef7dafd32cf27c9ffd870ef1437ffecff385cf7d8efff37bbfc77abb5dd02e7fee077e800f3ffd34f79d384160986c26bd138f3cc258abc557fee88ff82f9ff90c5d6bdec4f55b9557c6d4fdd26cfa371305e12841414024a0c8df44a5d4964d9c9d426b2264bab9c6f1c955662e7bc565ce1d98929a8782eb9846a8b70e0d097ed82bdf55111b6bcb5c5a0cb972ad43fb78446325ef77050a76cb8899c645d2ddc884d0f852d008054ae577abe8f892eb9d3667dfbecac573f13aad46628aee3f7080ddfbf797defbf1c9498e9e38c1737ff8872c2e2eb2b4b2522833393ece9163c7989e9d2d2c774f31bbb040e7f061262727b976f52a1bdd6ea1cc9d065bdb94a1a84194cc55ccde29b84d972168adf1a4a6d1d5781b0ad75578125a1d70e958b3bcd2f10b53d7af78bcf0f516fbf6863c73a0436b49e0198ac94d4fe7f71a16b0ba4b73ea62832f3dd7e2e2f9d82e86f88529a5142231195d4819dd4b56e7866198ad76b0cb99e6a60b9ee725db1009d46dfcac07817362ba8e93aee3dab9306f1d491b56281d6f30add16cf91274cce4ed0d78fbcd06bffe1bd3f89f567c602164ae037ecd81570bcdf2bce62b6fb5f8e273137cf3f418ed75304ddb5e93f596eaf47b467597fedccecf7a10987c3d900fa2927f9037b16ed79ba69424f2159d19cd56b741ec4e811449446503defa96cf677e638a9567d6f8c07d5d76cf957d65a2070d44bee6775f1ee78b5f9ee0ad371b6cac436cdcc69062f05763d3284f65db7d680e93bf79b351676913b80444abcc07d19626b91db1b2042fbed4607d633267066d062a80d3af053913e48d6f06fc6638c1370e379899ea2f20009180975f1ee3f26240b70358865f370c79fdf5d7f9fcb3cf32f7fcf395b4a494bcf8ca2b743a1da769f4e22bafa03ff3192626271db57b58595ae295575ea15d42e74e453f8dead4209abcff61a26c31a0ab9cdd78bff54076c7ed36fb5d9829d069defa9ae0cc379bbcf12df74e918342a9e2f5bcf34683736f060891ff406819b416c9e673c555d000526bbefac20b7cf3cc99fe93af5ab3b2b6463bf55f2c7abffbe52ff3c7a74e95fa32bdeb52acadaf1325dac3752f5da3aeeb19dbcfb76cb4aea2d7eff9de0c7ab57c90b1f971e54f04eb7327aa372cbb5de0094db3216935237ba01e18da837637a0d3cddfb66643321644f8354d380d6c741b84d2cffc220f8f311a4c33de2ba54db3d85856a975ee7c6a668ce33307b23af1bc8ceefde9b59809b499a689777a8969083453638a070eb7b2b47c5b497bdae887b96b79069bcb74e158dbc9597abe0df3dc513c7f6fb445d2cc371a2c7b4273e372b519e802871404e4e03347d751fadce167ee2b21757bc1131113de06d3620db10d26d68a9a664df6cc154fb699f236687921c10012b8229b6c304e249a207c9a04dca377f301d2d9fc8439330655c979bca62cfe4d8fa3e44f257ba386f1b98a0019ffea30fe55f10c7e5c268cf7514debab30c99340525649b22d93b2b67422842a49eb098d6547c46926f3a6329ccd7b98c77130050d4aa78e742f3dbd15e679be4cba2dacce842a6b3b3b2f0aa9065abe3a2f04ebffc17a4e050139f43df7b5415fba3d673d8af05444b3bbc6f8c632fe16971a4563303dbe8b4e7306d0f82a64acb344b3d3c18f3462000db5a701ddb171bacd0922bfc5b818e7517d941f227dbd57f718d1dcd74b4768251109c36b1525c79d9e70c86e72de8d854076e2f3f41d7a959497ed8446179194d7b28bd051921ff6842d693b27445a12cff5a8accff6a81df3a3c898d364eaf4125596a793507acaec71b96c86dea89b86a3537a2a57c798e9cf09604f90ccb404570414e2900501894437a7516b799d7659731811649ad859d6a4214acefbe5d96d1b6d0a2210125f283cafa490f3828a65a5802e925077f15548d05d45743a48a99188646bbe94aeebe28d0e4ba0b38ed011ba1912053e3261b4d836b67a638c7c851e270f7da0db57458f01e9e94404447a62e68a5e21bb1517bfec205cdd280821a82ab20000178d4944415448375b9d5a1e1b1ea8055d925755d675deafbeabac8e77560489e7693c4f1b915ec32c10c9c3ca71a546e8b47c5c5602a18e885407116d4077832835db848b9e8b9601a5d1611b2d1491378e1432fe149ce80959c68c22b6f56d264df3d26f4aa6f929af9a750af428a1976c5b519b9ec84a801059cf457a3fd24f47e47ca758a8948b0f36893c7533b51e5c436541403ae93e4f651f6dbbcd20b422f41451c32310217e685d9700e569bacd464e403ca5f02385303ebca884a64344a43b681de26955885a6901321044416f2711b4c6971a3f52789619a6d1843a22d05d24b2306955f6145ce9769a2ba29625e992f47ef44c05992ba3adb4de7d1385dcd4f84ff3b6474a1cdd73a60c828280b475371979ef0c01014008da418396eed290f99ba585460682b5a089f9810f4f470442a342898a147e2b40781ed253281da2b4044f10adc58e8d3fe6e3051e91d06c4492ae6ae28f07f117a4d0047ec898e8107415d186040ffca60f0242240d1d128978994ff6be741a8d4a9c724f687ccf78e43a59eaae12075ac95868b3d11ba45274da5d9021819034921d9a53e189a48adfb6540a1f451a0c2f333e5d88adaa2223f665cb2133b15c709858bdef25e44cf52cd1916ee66194294b7719b3ae9b5466f4ba68d96956fb31e34864faedb7d4001020854e4ccbdee8dd5deeb27e7695b5b32b44ab5dc68f4c337d6c17cd058f20902822b40ef8f66fbd091ae61e9863eac814edf536174e5d446a9f7d9f3c4273b6850804a10c692f6db0716699e53796118160f2d02453f74ee1ef9d44eb10a92557ae5de3e5574eb3bebe4e66342421d9b95d533cfce07166265b84dd90cb972ff3eae933a063a75d68c5d47883837ba7b967df340097ae2cf3d55367d868af7374df1427efddc56cf29d180dbcfced6bbc7b6909a1230e2f043c72df444ec0aa042533cb92fbadc917ee69073785ed978b2d50d46ea3a9b86943b2f58c6152bbdbafe35394a557d119b45c4dfa1e1a21142a484da9e41b8168224222c264e74041b8dce5c2e7ce71e6dfbdcab5e7af00d0981de3fe9f7a88233f763fd3c767903a22ec847ce91f7d81683de2c8f71ee5c0c70fb171699d977ffe054443f0f46f7e9a5d0fcde3fb01dd4bab5c7af62dbef16f5e61ed9d78d5eef4d1298eff95f770e44f1fc73b308544f23bbff745fefe3ffe39de3977be70590f3ff81efee32ffe1c8fbdef0457ae2df1bf7feb0ff85b3ffbf3b9320f1c3bc85ffdb167f87b3ff9fd00fcd1a937f83bfffc339c3d7f8def79f27e7ee6cf3ec1a79eba0f3474ba927ff62b5fe777be768ec996cf0f7df400bff4b71f261b3ca8d622b93cc71c902e962ad4df5e21d90245e1ee69d107d1ddf85aef101f24858746a10853db42f4e2f80a4924437ce209bbab5f5de4dcafbdc1b517aee08dfb78633ee15287b77ef534c1fe319ac78ee30b4d633a60f753fbb9f2e54596deb88137e3a34285080413c7a6197b6092a8a5886497c5af5de4f57f7f9ab573ab34e69bc80dc9cad955defeecbbe803938cffd8021112dff3d8bb6781d5d535d6d6d7e976437cdf67ef9e05e6e766b3ad45ed15d6bba627680401f3b3534c8cc7efb66b40cade3cc599b3d7f8cacbeff2fd4f1e450878edad6bbc796185d58d88b18647275439056c3bea69bcc2ad5d1227bca041fab0ec26f8f9565a6445132b09050bc3dc280ba11650c7ac2a2b57c7dc72994f765957be88073889c413dd627962868b44ec2f5c3d7d8d1ba7af134c3798fde002938fce73ee97bf45fbfc3aeb8b2b6c6cb469b43c22347b3e75881b2f5f65ed9d15b4a7f15a3edeb8cf9e1f384c14c4815bd5962c9f5d62e5b51b78631ef7fc8d935cfbe225565ebcc6fabb6b2cbfb944a84322229ef98ea7989f9be5d9cf7f81cf7eeef779f5f4ebecdd3dcfbffdf97fc2fcdc0cf71ccebfb79ee2277ef4131c3bb28fc3fb6779efb1fdd9a58591cc22ac672f2e71ea9b175959ef32330ebffdc7ef707d395ea2a2942692c5b564c23e36ee6f210226dc51a474933e47d6b6e266084e711e4487c4a381716b5ca64e5dd36890b43a34fb995d157d8d844214e782621897bbb1bc41b8d4c59f0c987c6c9699a776e3fda76f2357206c47b4db1dd478130fcdf427f7e2ff5283f6c50d565e5f467882c67c93d9efdb4f142884d67497db741246c417cc7ce71e3acb1dd6df58467622c28d2e11128566efde3d7cf2e3bbb976fd06cf7ffd253c21989999e2873ffdbda0255ac7b3dbc2eaf49ffa818ff1f823c7996af9bd8942a01bf6b6fc89a4e2dd4b2b7ce9d439bef7c387f89de7dee5fa4a22205a13a5010cad2bc741fb76f70c322b2fe7943846b3819df49ed1563586baea38a959bc52cb07e9c8081187fc77eab532cff8bb09e8bfb54d94bc34a64245fb6a9b091de18d7b78133ebaa509fd089ddecdfd1e6327a7685fdc40de08c11704fbc7683d364528c2d8e1575d64ba279986f5cb2b284fe18d7b88a68096a0ab43a4e8bdea9a865435e4176e96f63afe108e54022f0ba34218e6bf0c75e9da1abffdc76ff2f8c9799e7bed122bebb1cfa9542c4069e3a9b5e48ac74031cf0ce6c6fd15c9d447320fe29a28ccad4141197f46f9927abd33ebb84420cc3ac63dcea666044a3856ebb9c2bc3704fa773d41bb30299ad01ef8eddba4525a37ffb6621a0549ca20ee47f321e0d1015bd93ecc79f8730d3a6fad73f537de65ee2f1ce2e4e79f8286c06bfac8a6461adbfd4c7c7896f5d3cbc81b21c14283c927e7e81266cf4acd0033717c56752467ffe5698efdbb47d9f3d347118140343cbaba4ba4937990e45eb8564e97e10b5f7989c54b5779f0f8018e1d9e67722cf63a3bddfc169b97aeaff3ffbe7886f71f9fa7dd35de41519a30ca0b6295455dcceb09a5fd31330168511412914e2ac65cfa0dd05f17e8b389131c4f7e66e1d464c7b6ac1915ffe9b890d01a445247abac4fc210985e5b4694b6770d5f12821bf67d2d08c8a93dbf7503f862f277cbf1be2b9f7c06f4acd03c6a4eb4a533b403cb665ac794ec3ef45a4fef62f2db7374de5827ba1672e627bec63dbff208e30f4e137f3e3ebf53e1d8e353f8bfd580d3e0cd36683d3a45a8bbc9a0a0112d41f39149a6bf67372bcf5e61e3c565defed957d8f7b3c7187f6c17c25384c9dc4adacd5ebf72a36c29fee9bffe5500fed28f3ec3cffc95efe7b19307d15ae7366080d8e43a73ee067fef17fe8076b7a74d95d6c86c8e28ef316496904e19d5721f53a14823593995e3d61e66dda4d82921f8e5e9bf787d47f8ae0c43f7d9d2ae8a7a0fa09fbf31286ad2f34fb698fef17d44ed88e5ffb64874a1cb3b7ffd15f6fed3fb99fcce79bc49eb1d8ddd1e8c2716a10fb2a50991391fa8f9f824733f7d84f04a87f6f32bac7ee11a4a6be67fea3053dfbd404884cade27c9fb7fd60a8d1825ef9807814f23f063e11782285205fe544a73e9fa86950651baee43dbb3dfc94013ab827c37acee16471c6b60b22ec46ce76638d95bc5d00948442779403b1b66f61f69b1eba70f21663c96fefd05c2b7db5cfda577902826bf7f3e573652213a799540a3915a126a6be97000c1232df6fee20916ffe6eb745e5a65fd8bd7f1e67dd4344c7db885d4d2880889cc04d1a6435082679e7c84037be7f8ce0f3fc49ef999ac78247baf4b377c0fcf1374c29e69d5f00552e9c4494f7d1030c3b95992168574e8e7cc8b729128f1d987094327209d4c83ecdcedea7c6d95f0953510d0f8c40ce3973bb43f7b83f6732bacbfb884ff9171bcd9dead8b5484ca56c76a22a26c4502805a9184afadd37d610d1d6966ffd5bd5cfbbb6f129dde60e3b965bce363841fda8b421a576d1859357c90bff3933fcc071fbe9ff99916cd40810e113ad926352973f4d02c0bbbc6f9cacbef02303f33c6fef9712e5ddfe0fa4a07d967e5a06b2d56afa7f94453684a657be028d6adc7d0094844b4d5bd15b68cb567afb2f15fafe2ed6b30f1130bb47e6496ce1f2ca3af464437ba746eb40976f5369a96d2d020baa841a2c50e1b9fbbc6fa7fbe8298f0687c6a9ae65393c8cb5dd4f588e872879008a97bef5518867f610e2133db8d3164666a825d33138cb78238cc9b70a832846b76bac5fe85e9ecfcd8c1f8bd1621044aa72f1b0d869e202462a0899d65a79eb9fd3084021252fe49c504653add4eafebd55be59452a8b6826b21e1f90e7a5f6f9775e5830c34b95d4894cc699078a596cc684b21515d895e92e850135eea20d7644cc28fdf54945ad2dbb54b646656666219705dd246a74ba713d2f4c1d392c051687a628c85d9f1ecfcc8de2916afade75e421a1485660a4e496634723b0ac9f009888a8819a40f6797dd6b3bbdee3331cb1df4f10e06a8b7bab4ffc775c46797d1cb121ac09c40cdea78c22e81b2bebfa1b42232f2f56ed0fbbcb87e5bb1fa0fcfa11623f492c43bdc84bd1e11327b610ac8a9075b405c97f433ffe417999c687164ff3c9ffec463fce49f7e1a80c0efadcb9e9e6cb2303b91d539b477926bcbedcc89cf4d15509c29df1c5207bd4fb1ad3572d33074021212e1d97384fd02f226eca75a2f889fcb131f6be1bf3381facf21fa5284be1c8106ffbb26e0fd4d64cbfcc4332819159c74614e484e82787c8ce007a7887e6d15f95a27ae1e80f7440bf1b11692086dd0cc75ab8606f9d69bf1e2c6ebd797f9e043f766e963cd4616ed1a6b04ec9a1c63b2d560ad1d7268cf24df7cfb7a8fae41b83230e544510274f6bfe8af408650386008054469728c92a16e2cd015ca75d5a9cabbd7c7fbf1191af73590cf6fc0bac63bd1c47f7a02f1c01852a85c3d3d0fe2e971bc590fef7080bec737fc09e287ffde06fe5f9f83079ba8531d6809bc07c7f03f320e271a48ad7226ce3d470ef1cc777c845dd353ecdb5bdc616662bcc5fd470ff17ddff561ba9df8b36fbe101cda37c7f1fb7aebb5de7ff2309ff8c809ae5c5be6830f1ee4c1630bfcf8f7be97738b4b3cf5f07e9452cc4d37b8b1d2e6fdc7a60beda4b7a8ff1893978074f385a1e5fc9a183a019142a613a97954ad77d8eeb40670cc47ec9bc07f720c220d733e7ace4336f3fe0700bb04e2d313f81f1f873181deed23ed3293c0c90071600affbbc6211088390f3ded239b2a5989d5ebd089f71c63f7fc2c7fe2539f64ac517c4c5393e33cf1d883fcdc3ffc6bc8a88396210245ab2158d8d5caca3df1f0510eee9ea0dbd9607e3a60ba2578cfe119d6d6d6387e709c7bf74df0e9a70e12763b4cb7dc5eba8bc5fbb17d3a71982e3ba98361f450864f40928578051fa44a0bdc8c341f9801667c233b9db5b3e003fbbd7ae5e605ccf75e584af7a64a37ec4b67d2a72627999a9c00ad103a6fd2413c21b830b78bf95d9308dd8d7730497635d1c962450dccee9a606eea00dad8d56461ba016a0a649b99710fd458b60b8a96dd726d910c5c75dc6d6ddccf5219c9afc51a4a5d33740212cf055851accd46a7ead6df2abdadd6d1a044fae1a238c1f1066b051cb3db56ea56982fa36704a38af41cd381c97fee65f02941dc83c99060e804040cfbd5f5a48b85dd656c2379bbe8a579e633ed47cf8c7296d82b0a9d855bb3ad322bc8d94dbb643ed908aab2e981e951462f9d07d106e3273f252a24db1f6b88719396946f111ab27d6c5cfe48e60092dc77cba4c931b3eefd6e073d8c727da66bb2721aecb7ed5c7d889797a4c7e5e4ccea65f29ccea3989f6bdb167a54d34b3bae8d6b28db7f5998e1fc211594e1141091fc6733616ad89acb5d35c9b930f20d5ad9e2ba6da25785b2e15018a36aca09953453262be79bcd984cb78a5e3c9ef4f6c7ca3760391d75b4fa0e62084d2c5d3d9a98de5f2ead66fe76d0ab42a9cd50205a80bdc426533ed4d300b595d94da6675bb6ee5a944bd810610835c856ef98cefd6cfd0158f4ace47c5b7d9e789ffcde9eb54587b7ac6795b2afdddf75d912bd129677a6e9f848975c77fae5af61c6f06990dcbd342d62739c2af390ad712b2724e678b6597ad6f89a13123badc49ad776dbbdb23d1fa4d766d5285e16a54aa98b2cece42eb7297aaef741b2520e829ade9b83569941de98dc290c9f8064e1fe2ac56d9eeb8a3cc80bc176d02b333e6cc3c26560d8f48c5f01429baf20175b28377bdc0c5622a235e895944f6e4f99cb5da60deace830c23864f40a06214763161ae42c9f9cda267c3f638fb0949b189defbf9c5aae5cc9c1fc7ebfabd758423472f554825b723ed7a9eb03634885d212998ad841e3e0c9f80242fe1f77723edfc7e6ee276d07309531932c3a424cfa26d98965af46240b560142d33e00abda849be36bd4cc2ebd12d6b6bd830840292daf1f688de8fd16ca6b3197fbbe841fd47e932f35c34e2cf1788c4be2f130e57af354593ac4ad4cdc4527a7dea979a6cfdc6a2db10c3272012dc36fc200ab89f89b55df4b652dfe564688cbd910aa55d86a06991d56f3b6fc515e8e19ec5cf345d492b654b4a863d525585e11390cad73ecb8628577ad968bd157a83688e4187d1bc89e232104bc30c8695562c27dcf41c1aa457b75827d56d38da4293f819795f22add36bb724f230c4183e0149a1ed933a7e89cb452d1bbd374baf0e3611374a7c90ac44c255fd0cc1aa565d627e53e85905b3bb97484f993eca0a0fb1900c9f80a884459cb1f17e7ec4660565107a5b4135a3089d5febe41ae19d79c6bdca5db9e1f80f44cf40d91051acd35bc4a873858a7b6c39b15db7789b317c0212a188f7056ee733b4f56b1fdbe8f7484ae979c4f7c5f1deef4d862afa15657c934b4bec25db244ae7f47269e5f414f1c6c5b99de67275521fa9948ecef74dbbfc8f92e727ac778e8704c327205a9f01fe0b427cadda17a8745b1d79697e1f7a5a3f89e62910f76cdfb056e6eb1848561b67a375458ca2482dcf9865237e55ef049c03fd150d2f987d8997dd6b40a1e3501b4225ddd5f147897a2f88a55a4427ee4adcaad2c95c88f14dc7e463ccd9bc89d0bc22e06c45377704c327200f2f9e07ce039fdd91f65fdab78a16c7817bd0221d3a2978cf2e94e655b0675a47f518ca0943608aa5f24ef5a088fd08ef3cc2ff0def939ff9d54d90b863317c02b2d3c8362331c7697b38ef272175359745cfa1315c8e726dcfc8611556d21be235513b859180d8c8ace03287bd0a6511afbe5e845b06755108ca8e9dc2e2f08e2be90dfc5d8b3b1f2301b1917c797947628fb9859a31361361aa4246af8fe08c10632420363201b131080b6d82dd44cab4a699d6b7cae6e1a83c32b18a1809888d820f92a29f4153359e9b3e4849dd1293aa1faab48b49ba0e462656112301b1a1d290651993979d97a5b9f25ddeb30695ce396b6b8a607088c28195a71d6923143012101ba526d6ad6a379dddd3b5fab169c6b62a8e7c1037460262436238e983b24c3fd3ab025ed1711e61e73112101be996ba9b8e646dc6f402bcd8c4d2c9acf376a0c6fc7d8691f67063242036a42bd135f1b79d2ca51313abf861ce2a26efd78b2ae77d2410f53012101b4e01a9834184c891e75b2696b698b9c6ac789d563753ef6ec648406c28459fc069c979dd32257952e75f161396c0185323558c3ea84649e99509e1dd8e9180d8c8bdf2bb9de843d3a7368316a954541c2412365221058c04c4c6a64dac7ea8e63e21b712c5728b8ce8dfec087d3012101b9a9d598b95ce83989f0fa88132bd94994c352f63e483b83112101bb989427b5d54d542f3adb058327baf05c61b45b5d07b13c4d19b01ba33120e3746026243612c35a95a4b5b861aebae5c79921c9f9794cae5f58e4541845dbdaa436f843c46026223998f28327a7a6cfea6285ba8581567b2ca69916d1c07bd4fb0d58d54f57b03a56a59fc668681bb052301b1a1ec3550bae4d8c6167d96649164bc498efb136c65069fab1759395d4f978de0c648406c6402723367ce5dedc63f22790f3edd5cd164ee2a1d654f9964bfa2776c9b59555a6584182301b151faf9859b0cdd5bc06b32eea0a37b4eac753e6da42d06c748406c64a1513b62b595d5bd45b7daddaea0ea538636b532cf2785eb3b2365f4ca68dced1809888d945b0a2f4df58f25e509f473d62dfa66042b19faabc4b25f54ca6cb55f5c2d2b3b7ae5b6809180d8c869902ac62f1300fbb84c90ac3c63524f18d92e6a66575d1aa12aa255456fa08993bb042301b1917d6b3053257681cd10ada8afb39f6c2f5dc33632e72c6dd1ec29bb8acf1594a518754662518e9180d8d044a0db20d693f318052eaaf02b5cce028eb4bc47ed29ad90483ceda97430cf8a1851ad4213c9debc7518bd474f585dd06d8c2d2b46883112101b9e7e09257e0578b6c77565f19f12cd90d611daf82d4b8b21918db7372eec7deeeaabed87761dbf30d918efc6dfdc483624cdc57193d15f982cde63f874c58a4ed452fae58ef82a92bd760589c4a5aa8b8b087d6ab09b35c20823dcd5f8ff21030f18c1603fe70000000049454e44ae426082, 'image/png', 0, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `parent_login`
--

CREATE TABLE IF NOT EXISTS `parent_login` (
  `parent_id` int(5) NOT NULL AUTO_INCREMENT,
  `parent_user_name` varchar(100) NOT NULL,
  `parent_password` varchar(200) NOT NULL,
  `created_by` int(5) NOT NULL,
  `creation_date` date NOT NULL,
  `parent_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `photo_gallery`
--

CREATE TABLE IF NOT EXISTS `photo_gallery` (
  `photo_id` int(5) NOT NULL AUTO_INCREMENT,
  `photo_path` varchar(50) NOT NULL,
  `photo_desc` varchar(50) DEFAULT NULL,
  `created_by` int(3) NOT NULL,
  `creation_date` date NOT NULL,
  `photo_gallery_org_id` int(3) NOT NULL,
  `display_status` int(2) NOT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qualification`
--

CREATE TABLE IF NOT EXISTS `qualification` (
  `qualification_id` int(2) NOT NULL AUTO_INCREMENT,
  `qualification_name` varchar(30) NOT NULL,
  `qualification_organization_id` int(2) NOT NULL,
  `qualification_created_by` int(3) NOT NULL,
  `qualification_created_date` datetime NOT NULL,
  PRIMARY KEY (`qualification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `qualification`
--

INSERT INTO `qualification` (`qualification_id`, `qualification_name`, `qualification_organization_id`, `qualification_created_by`, `qualification_created_date`) VALUES
(1, 'asdf', 0, 1, '2016-04-06 22:09:22');

-- --------------------------------------------------------

--
-- Table structure for table `qualification_type`
--

CREATE TABLE IF NOT EXISTS `qualification_type` (
  `qualification_type_id` int(3) NOT NULL AUTO_INCREMENT,
  `qualification_type_name` varchar(100) NOT NULL,
  `qualification_type_desc` varchar(500) NOT NULL,
  `qualification_type_created_by` int(3) NOT NULL,
  `qualification_type_creation_date` date NOT NULL,
  PRIMARY KEY (`qualification_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `qualification_type`
--

INSERT INTO `qualification_type` (`qualification_type_id`, `qualification_type_name`, `qualification_type_desc`, `qualification_type_created_by`, `qualification_type_creation_date`) VALUES
(1, 'ComSci', '<p>\r\n	computer science</p>\r\n', 1, '2016-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `rights`
--

CREATE TABLE IF NOT EXISTS `rights` (
  `itemname` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`itemname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `state_id` int(30) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `country_id` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`, `country_id`) VALUES
(1, 'davao del sur', '1');

-- --------------------------------------------------------

--
-- Table structure for table `student_academic_record_trans`
--

CREATE TABLE IF NOT EXISTS `student_academic_record_trans` (
  `student_academic_record_trans_id` int(5) NOT NULL AUTO_INCREMENT,
  `student_academic_record_trans_stud_id` int(5) NOT NULL,
  `student_academic_record_trans_qualification_id` int(3) NOT NULL,
  `student_academic_record_trans_eduboard_id` int(3) NOT NULL,
  `student_academic_record_trans_record_trans_year_id` int(5) NOT NULL,
  `theory_mark_obtained` int(3) NOT NULL,
  `theory_mark_max` int(3) NOT NULL,
  `theory_percentage` float NOT NULL,
  `practical_mark_obtained` int(3) DEFAULT NULL,
  `practical_mark_max` int(3) DEFAULT NULL,
  `practical_percentage` float DEFAULT NULL,
  PRIMARY KEY (`student_academic_record_trans_id`),
  KEY `fk_qualification` (`student_academic_record_trans_qualification_id`),
  KEY `fk_eduboard` (`student_academic_record_trans_eduboard_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_address`
--

CREATE TABLE IF NOT EXISTS `student_address` (
  `student_address_id` int(5) NOT NULL AUTO_INCREMENT,
  `student_address_c_line1` varchar(100) DEFAULT NULL,
  `student_address_c_line2` varchar(100) DEFAULT NULL,
  `student_address_c_taluka` varchar(50) DEFAULT NULL,
  `student_address_c_district` varchar(50) DEFAULT NULL,
  `student_address_c_country` int(9) DEFAULT NULL,
  `student_address_c_city` int(9) DEFAULT NULL,
  `student_address_c_pin` int(6) DEFAULT NULL,
  `student_address_c_state` int(9) DEFAULT NULL,
  `student_address_p_line1` varchar(100) DEFAULT NULL,
  `student_address_p_line2` varchar(100) DEFAULT NULL,
  `student_address_p_taluka` varchar(50) DEFAULT NULL,
  `student_address_p_district` varchar(50) DEFAULT NULL,
  `student_address_p_city` int(9) DEFAULT NULL,
  `student_address_p_pin` int(6) DEFAULT NULL,
  `student_address_p_state` int(9) DEFAULT NULL,
  `student_address_p_country` int(9) DEFAULT NULL,
  `student_address_phone` bigint(15) DEFAULT NULL,
  `student_address_mobile` bigint(15) DEFAULT NULL,
  PRIMARY KEY (`student_address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `student_address`
--

INSERT INTO `student_address` (`student_address_id`, `student_address_c_line1`, `student_address_c_line2`, `student_address_c_taluka`, `student_address_c_district`, `student_address_c_country`, `student_address_c_city`, `student_address_c_pin`, `student_address_c_state`, `student_address_p_line1`, `student_address_p_line2`, `student_address_p_taluka`, `student_address_p_district`, `student_address_p_city`, `student_address_p_pin`, `student_address_p_state`, `student_address_p_country`, `student_address_phone`, `student_address_mobile`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_docs`
--

CREATE TABLE IF NOT EXISTS `student_docs` (
  `student_docs_id` int(6) NOT NULL AUTO_INCREMENT,
  `doc_category_id` int(3) NOT NULL,
  `title` varchar(100) NOT NULL,
  `student_docs_desc` varchar(50) DEFAULT NULL,
  `student_docs_path` varchar(150) NOT NULL,
  `student_docs_submit_date` date NOT NULL,
  PRIMARY KEY (`student_docs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_docs_trans`
--

CREATE TABLE IF NOT EXISTS `student_docs_trans` (
  `student_docs_trans_id` int(5) NOT NULL AUTO_INCREMENT,
  `student_docs_trans_user_id` int(7) NOT NULL,
  `student_docs_trans_stud_docs_id` int(6) NOT NULL,
  PRIMARY KEY (`student_docs_trans_id`),
  KEY `fk_student_docs_id` (`student_docs_trans_stud_docs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
  `student_id` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) NOT NULL,
  `student_roll_no` varchar(15) NOT NULL,
  `student_merit_no` varchar(15) DEFAULT NULL,
  `student_enroll_no` varchar(15) NOT NULL,
  `student_gr_no` bigint(15) DEFAULT NULL,
  `student_first_name` varchar(25) NOT NULL,
  `student_middle_name` varchar(25) NOT NULL,
  `student_last_name` varchar(25) NOT NULL,
  `student_father_name` varchar(25) DEFAULT NULL,
  `student_mother_name` varchar(25) DEFAULT NULL,
  `student_living_status` varchar(15) DEFAULT NULL,
  `student_adm_date` date DEFAULT NULL,
  `student_dob` date DEFAULT NULL,
  `student_birthplace` varchar(25) DEFAULT NULL,
  `student_gender` varchar(6) DEFAULT NULL,
  `student_guardian_name` varchar(100) DEFAULT NULL,
  `student_guardian_relation` varchar(20) DEFAULT NULL,
  `student_guardian_qualification` varchar(50) DEFAULT NULL,
  `student_guardian_occupation` varchar(50) DEFAULT NULL,
  `student_guardian_income` varchar(15) DEFAULT NULL,
  `student_guardian_occupation_address` varchar(100) DEFAULT NULL,
  `student_guardian_occupation_city` int(4) DEFAULT NULL,
  `student_guardian_city_pin` int(6) DEFAULT NULL,
  `student_guardian_home_address` varchar(100) DEFAULT NULL,
  `student_guardian_phoneno` bigint(15) DEFAULT NULL,
  `student_guardian_mobile` bigint(15) DEFAULT NULL,
  `student_email_id_1` varchar(60) NOT NULL,
  `student_email_id_2` varchar(60) DEFAULT NULL,
  `student_bloodgroup` varchar(3) DEFAULT NULL,
  `student_tally_ledger_name` varchar(30) DEFAULT NULL,
  `student_created_by` int(1) DEFAULT NULL,
  `student_creation_date` datetime DEFAULT NULL,
  `student_mobile_no` bigint(15) NOT NULL,
  `student_dtod_regular_status` varchar(20) NOT NULL,
  `student_info_transaction_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`student_id`, `title`, `student_roll_no`, `student_merit_no`, `student_enroll_no`, `student_gr_no`, `student_first_name`, `student_middle_name`, `student_last_name`, `student_father_name`, `student_mother_name`, `student_living_status`, `student_adm_date`, `student_dob`, `student_birthplace`, `student_gender`, `student_guardian_name`, `student_guardian_relation`, `student_guardian_qualification`, `student_guardian_occupation`, `student_guardian_income`, `student_guardian_occupation_address`, `student_guardian_occupation_city`, `student_guardian_city_pin`, `student_guardian_home_address`, `student_guardian_phoneno`, `student_guardian_mobile`, `student_email_id_1`, `student_email_id_2`, `student_bloodgroup`, `student_tally_ledger_name`, `student_created_by`, `student_creation_date`, `student_mobile_no`, `student_dtod_regular_status`, `student_info_transaction_id`) VALUES
(1, 'Mr.', '', NULL, '1', NULL, 'Dex', '', 'Asder', NULL, NULL, NULL, '2016-04-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dex@dex.com', NULL, NULL, NULL, 1, '2016-04-06 22:12:22', 909951474, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_notification`
--

CREATE TABLE IF NOT EXISTS `student_notification` (
  `student_notification_id` int(3) NOT NULL AUTO_INCREMENT,
  `student_notification_expire` datetime NOT NULL,
  `student_notification_alert_after_date` datetime NOT NULL,
  `student_notification_alert_before_date` datetime NOT NULL,
  `student_notification_content` text NOT NULL,
  `student_notification_link` varchar(30) NOT NULL,
  `student_notification_title` varchar(50) NOT NULL,
  `student_notification_from` int(3) NOT NULL,
  `student_notification_to` int(3) DEFAULT '0',
  `student_notification_org_id` int(3) NOT NULL,
  `student_notification_academic_term_id` int(3) DEFAULT '0',
  `student_notification_academic_period_id` int(3) DEFAULT '0',
  `student_notification_branch_id` int(3) DEFAULT '0',
  `student_notification_creation_date` date NOT NULL,
  `student_notification_read` tinyint(1) NOT NULL,
  PRIMARY KEY (`student_notification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_paid_fees_details`
--

CREATE TABLE IF NOT EXISTS `student_paid_fees_details` (
  `student_paid_fees_id` int(9) NOT NULL AUTO_INCREMENT,
  `student_paid_student_id` int(9) NOT NULL,
  `student_paid_course_id` int(3) NOT NULL,
  `student_paid_amount` int(9) NOT NULL,
  `student_paid_date` date NOT NULL,
  `student_paid_to` int(3) NOT NULL,
  PRIMARY KEY (`student_paid_fees_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `student_paid_fees_details`
--

INSERT INTO `student_paid_fees_details` (`student_paid_fees_id`, `student_paid_student_id`, `student_paid_course_id`, `student_paid_amount`, `student_paid_date`, `student_paid_to`) VALUES
(1, 1, 1, 2000, '2016-04-06', 1),
(2, 1, 1, 500, '2016-04-06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_photos`
--

CREATE TABLE IF NOT EXISTS `student_photos` (
  `student_photos_id` int(5) NOT NULL AUTO_INCREMENT,
  `student_photos_desc` varchar(50) DEFAULT NULL,
  `student_photos_path` varchar(150) NOT NULL,
  PRIMARY KEY (`student_photos_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `student_photos`
--

INSERT INTO `student_photos` (`student_photos_id`, `student_photos_desc`, `student_photos_path`) VALUES
(1, NULL, 'no-images');

-- --------------------------------------------------------

--
-- Table structure for table `student_sms_email_details`
--

CREATE TABLE IF NOT EXISTS `student_sms_email_details` (
  `student_sms_email_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_id` int(3) NOT NULL,
  `academic_period_id` int(3) NOT NULL,
  `academic_name_id` int(3) NOT NULL,
  `division_id` int(3) NOT NULL,
  `student_id` int(3) NOT NULL,
  `message_email_text` text NOT NULL,
  `email_sms_status` int(3) NOT NULL,
  `created_by` int(3) NOT NULL,
  `creation_date` datetime NOT NULL,
  `shift_id` int(11) NOT NULL,
  `student_sms_email_organization_id` int(3) NOT NULL,
  `student_sms_email_details_ack` varchar(20) NOT NULL,
  `student_sms_email_details_schedule_flag` int(3) NOT NULL,
  `student_sms_email_details_schedule_minute` int(3) NOT NULL,
  `student_sms_email_details_schedule_date` int(3) DEFAULT NULL,
  `student_sms_email_details_hour` int(3) DEFAULT NULL,
  `student_sms_email_details_day` int(3) DEFAULT NULL,
  `student_sms_email_details_month` int(3) DEFAULT NULL,
  `student_sms_email_details_to_mobile` int(3) DEFAULT NULL,
  `student_sms_email_details_fees_msg_type` int(3) DEFAULT NULL,
  `student_sms_email_details_purpose` varchar(20) DEFAULT NULL,
  `student_sms_email_details_cron_no` int(3) NOT NULL,
  `student_sms_email_details_schedule_time_id` int(3) NOT NULL,
  PRIMARY KEY (`student_sms_email_id`),
  KEY `fk_acdm_period` (`academic_period_id`),
  KEY `fk_acdm_name` (`academic_name_id`),
  KEY `fk_stu_sms_bid` (`branch_id`),
  KEY `fk_stu_sms_shiftid` (`shift_id`),
  KEY `fk_stu_sms_divid` (`division_id`),
  KEY `fk_stu_sms_stuid` (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `student_status_master`
--

CREATE TABLE IF NOT EXISTS `student_status_master` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(30) NOT NULL,
  `student_status_master_detain_shift_id` int(5) DEFAULT NULL,
  `creation_date` date NOT NULL,
  `created_by` int(5) NOT NULL,
  `organization_id` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `student_status_master`
--

INSERT INTO `student_status_master` (`id`, `status_name`, `student_status_master_detain_shift_id`, `creation_date`, `created_by`, `organization_id`) VALUES
(1, 'student status', NULL, '2016-04-06', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_transaction`
--

CREATE TABLE IF NOT EXISTS `student_transaction` (
  `student_transaction_id` int(9) NOT NULL AUTO_INCREMENT,
  `student_transaction_user_id` int(5) NOT NULL,
  `student_transaction_student_id` int(5) NOT NULL,
  `student_transaction_detain_student_flag` int(5) DEFAULT NULL,
  `student_transaction_branch_id` int(2) NOT NULL,
  `student_transaction_category_id` int(2) DEFAULT NULL,
  `student_transaction_organization_id` int(2) NOT NULL,
  `student_transaction_student_address_id` int(5) DEFAULT NULL,
  `student_transaction_nationality_id` int(2) DEFAULT NULL,
  `student_transaction_quota_id` int(2) NOT NULL,
  `student_transaction_religion_id` int(2) DEFAULT NULL,
  `student_transaction_shift_id` int(2) NOT NULL,
  `student_transaction_languages_known_id` int(2) DEFAULT NULL,
  `student_transaction_student_photos_id` int(5) NOT NULL,
  `student_transaction_division_id` int(2) DEFAULT NULL,
  `student_transaction_batch_id` int(2) DEFAULT NULL,
  `student_academic_term_period_tran_id` int(2) NOT NULL,
  `student_academic_term_name_id` int(11) DEFAULT NULL,
  `student_transaction_cast_id` int(3) DEFAULT NULL,
  `student_transaction_parent_id` int(5) DEFAULT NULL,
  `student_transaction_course_id` int(3) NOT NULL,
  PRIMARY KEY (`student_transaction_id`),
  KEY `fk_organization` (`student_transaction_organization_id`),
  KEY `fk_nationality` (`student_transaction_nationality_id`),
  KEY `FK_student_id` (`student_transaction_student_id`),
  KEY `fk_std_photo` (`student_transaction_student_photos_id`),
  KEY `fk_std_term_period_id` (`student_academic_term_period_tran_id`),
  KEY `fk_lan_id` (`student_transaction_languages_known_id`),
  KEY `student_transaction_user_id` (`student_transaction_user_id`),
  KEY `student_transaction_detain_student_flag` (`student_transaction_detain_student_flag`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `student_transaction`
--

INSERT INTO `student_transaction` (`student_transaction_id`, `student_transaction_user_id`, `student_transaction_student_id`, `student_transaction_detain_student_flag`, `student_transaction_branch_id`, `student_transaction_category_id`, `student_transaction_organization_id`, `student_transaction_student_address_id`, `student_transaction_nationality_id`, `student_transaction_quota_id`, `student_transaction_religion_id`, `student_transaction_shift_id`, `student_transaction_languages_known_id`, `student_transaction_student_photos_id`, `student_transaction_division_id`, `student_transaction_batch_id`, `student_academic_term_period_tran_id`, `student_academic_term_name_id`, `student_transaction_cast_id`, `student_transaction_parent_id`, `student_transaction_course_id`) VALUES
(1, 2, 1, 1, 0, NULL, 0, 1, NULL, 0, NULL, 0, 1, 1, NULL, 0, 1, 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mailbox_conversation`
--

CREATE TABLE IF NOT EXISTS `tbl_mailbox_conversation` (
  `conversation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `initiator_id` int(10) NOT NULL,
  `interlocutor_id` int(10) NOT NULL,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `bm_read` tinyint(3) NOT NULL DEFAULT '0',
  `bm_deleted` tinyint(3) NOT NULL DEFAULT '0',
  `modified` int(10) unsigned NOT NULL,
  `is_system` enum('yes','no') NOT NULL DEFAULT 'no',
  `initiator_del` tinyint(1) unsigned DEFAULT '0',
  `interlocutor_del` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`conversation_id`),
  KEY `initiator_id` (`initiator_id`),
  KEY `interlocutor_id` (`interlocutor_id`),
  KEY `conversation_ts` (`modified`),
  KEY `subject` (`subject`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_mailbox_conversation`
--

INSERT INTO `tbl_mailbox_conversation` (`conversation_id`, `initiator_id`, `interlocutor_id`, `subject`, `bm_read`, `bm_deleted`, `modified`, `is_system`, `initiator_del`, `interlocutor_del`) VALUES
(1, 2, 1, 'paid', 1, 0, 1460006312, 'no', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mailbox_message`
--

CREATE TABLE IF NOT EXISTS `tbl_mailbox_message` (
  `message_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `conversation_id` int(10) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `sender_id` int(10) unsigned NOT NULL DEFAULT '0',
  `recipient_id` int(10) unsigned NOT NULL DEFAULT '0',
  `text` mediumtext NOT NULL,
  `crc64` bigint(20) NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `sender_profile_id` (`sender_id`),
  KEY `recipient_profile_id` (`recipient_id`),
  KEY `conversation_id` (`conversation_id`),
  KEY `timestamp` (`created`),
  KEY `crc64` (`crc64`),
  FULLTEXT KEY `text` (`text`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_mailbox_message`
--

INSERT INTO `tbl_mailbox_message` (`message_id`, `conversation_id`, `created`, `sender_id`, `recipient_id`, `text`, `crc64`) VALUES
(1, 1, 1460006312, 2, 1, 'hi po naka bayad na po ako pls paki update', 136);

-- --------------------------------------------------------

--
-- Table structure for table `unit_detail_table`
--

CREATE TABLE IF NOT EXISTS `unit_detail_table` (
  `unit_detail_id` int(9) NOT NULL AUTO_INCREMENT,
  `unit_detail_unit_master_id` int(9) NOT NULL,
  `unit_detail_course_id` int(9) NOT NULL,
  `unit_detail_title` varchar(300) NOT NULL,
  `unit_lec_date` date NOT NULL,
  `unit_detail_desc` mediumtext NOT NULL,
  `unit_detail_created_by` int(3) NOT NULL,
  `unit_detail_creation_date` date NOT NULL,
  PRIMARY KEY (`unit_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `user_organization_email_id` varchar(60) NOT NULL,
  `user_password` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_type` varchar(15) NOT NULL,
  `user_created_by` int(3) NOT NULL,
  `user_creation_date` datetime NOT NULL,
  `user_organization_id` int(5) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_organization_email_id`, `user_password`, `user_type`, `user_created_by`, `user_creation_date`, `user_organization_id`) VALUES
(1, 'admin@admin.com', '77ccb9637a53abab3809882e11b2fa68', 'admin', 1, '2016-04-06 21:21:26', 1),
(2, 'dex@dex.com', '70f4b474b8e24ac4e59d7e80191ee9a3', 'student', 1, '2016-04-06 22:12:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `user_type_id` int(3) NOT NULL AUTO_INCREMENT,
  `user_type_name` varchar(30) NOT NULL,
  `created_by` int(3) NOT NULL,
  `creation_date` date NOT NULL,
  `user_type_organization_id` int(3) NOT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academic_term`
--
ALTER TABLE `academic_term`
  ADD CONSTRAINT `academic_term_ibfk_1` FOREIGN KEY (`academic_term_period_id`) REFERENCES `academic_term_period` (`academic_terms_period_id`);

--
-- Constraints for table `authassignment`
--
ALTER TABLE `authassignment`
  ADD CONSTRAINT `AuthAssignment_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `authitemchild`
--
ALTER TABLE `authitemchild`
  ADD CONSTRAINT `AuthItemChild_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `AuthItemChild_ibfk_2` FOREIGN KEY (`child`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee_academic_record_trans`
--
ALTER TABLE `employee_academic_record_trans`
  ADD CONSTRAINT `fk_emp_eduboard` FOREIGN KEY (`employee_academic_record_trans_eduboard_id`) REFERENCES `eduboard` (`eduboard_id`),
  ADD CONSTRAINT `fk_emp_qualification` FOREIGN KEY (`employee_academic_record_trans_qualification_id`) REFERENCES `qualification` (`qualification_id`);

--
-- Constraints for table `employee_docs_trans`
--
ALTER TABLE `employee_docs_trans`
  ADD CONSTRAINT `fk_emp_docs_id` FOREIGN KEY (`employee_docs_trans_emp_docs_id`) REFERENCES `employee_docs` (`employee_docs_id`);

--
-- Constraints for table `employee_transaction`
--
ALTER TABLE `employee_transaction`
  ADD CONSTRAINT `employee_transaction_ibfk_1` FOREIGN KEY (`employee_transaction_user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `fk_department` FOREIGN KEY (`employee_transaction_department_id`) REFERENCES `department` (`department_id`),
  ADD CONSTRAINT `fk_designation` FOREIGN KEY (`employee_transaction_designation_id`) REFERENCES `employee_designation` (`employee_designation_id`),
  ADD CONSTRAINT `fk_emp_info` FOREIGN KEY (`employee_transaction_employee_id`) REFERENCES `employee_info` (`employee_id`),
  ADD CONSTRAINT `fk_emp_photo` FOREIGN KEY (`employee_transaction_emp_photos_id`) REFERENCES `employee_photos` (`employee_photos_id`),
  ADD CONSTRAINT `fk_nationality` FOREIGN KEY (`employee_transaction_nationality_id`) REFERENCES `nationality` (`nationality_id`);

--
-- Constraints for table `rights`
--
ALTER TABLE `rights`
  ADD CONSTRAINT `Rights_ibfk_1` FOREIGN KEY (`itemname`) REFERENCES `authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_academic_record_trans`
--
ALTER TABLE `student_academic_record_trans`
  ADD CONSTRAINT `fk_eduboard` FOREIGN KEY (`student_academic_record_trans_eduboard_id`) REFERENCES `eduboard` (`eduboard_id`),
  ADD CONSTRAINT `fk_qualification` FOREIGN KEY (`student_academic_record_trans_qualification_id`) REFERENCES `qualification` (`qualification_id`);

--
-- Constraints for table `student_docs_trans`
--
ALTER TABLE `student_docs_trans`
  ADD CONSTRAINT `fk_student_docs_id` FOREIGN KEY (`student_docs_trans_stud_docs_id`) REFERENCES `student_docs` (`student_docs_id`);

--
-- Constraints for table `student_transaction`
--
ALTER TABLE `student_transaction`
  ADD CONSTRAINT `batch_ibfk_4` FOREIGN KEY (`student_academic_term_period_tran_id`) REFERENCES `academic_term_period` (`academic_terms_period_id`),
  ADD CONSTRAINT `fk_lan_id` FOREIGN KEY (`student_transaction_languages_known_id`) REFERENCES `languages_known` (`languages_known_id`),
  ADD CONSTRAINT `student_transaction_ibfk_1` FOREIGN KEY (`student_transaction_user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `student_transaction_ibfk_2` FOREIGN KEY (`student_transaction_detain_student_flag`) REFERENCES `student_status_master` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
