#!/usr/bin/perl -w

use strict;

use lib '../perldriver';

use PerfFramework;


my $options = {
	       "title"=>"Normalization performance: ICU vs. Win",
	       "headers"=>"ICU Win",
	       "operationIs"=>"File size in code points",
	       "timePerOperationIs"=>"Time per code point",
	       #"passes"=>"10",
	       #"time"=>"5",
	       "dataDir"=>"c:/src/perf/data",
	       "outputType"=>"HTML",
	       "outputDir"=>"../results"
	      };

# programs
# tests will be done for all the programs. Results will be stored and connected
my $p = "normperf.exe -b -u";

my $tests = { 
	     "NFC_NFD_Text", ["$p TestICU_NFC_NFD_Text",  "$p TestWin_NFC_NFD_Text" ],
	     "NFC_NFC_Text", ["$p TestICU_NFC_NFC_Text",  "$p TestWin_NFC_NFC_Text" ],
	     "NFC_Orig_Text", ["$p TestICU_NFC_Orig_Text", "$p TestWin_NFC_Orig_Text"],
	     "NFD_NFD_Text", ["$p TestICU_NFD_NFD_Text",  "$p TestWin_NFD_NFD_Text" ],
	     "NFD_NFC_Text", ["$p TestICU_NFD_NFC_Text",  "$p TestWin_NFD_NFC_Text" ],
	     "NFD_Orig_Text", ["$p TestICU_NFD_Orig_Text", "$p TestWin_NFD_Orig_Text"]
	    };

my $dataFiles = {
		 "",
		 [
#		  "TestNames_Asian.txt",
#		  "TestNames_Chinese.txt",
		  "TestNames_Japanese.txt",
		  "TestNames_Japanese_h.txt",
		  "TestNames_Japanese_k.txt",
#		  "TestNames_Korean.txt",
#		  "TestNames_Latin.txt",
#		  "TestNames_SerbianSH.txt",
#		  "TestNames_SerbianSR.txt",
#		  "TestNames_Thai.txt",
#		  "Testnames_Russian.txt",
#		  "th18057.txt",
#		  "thesis.txt",
#		  "vfear11a.txt",
		 ]
		};

runTests($options, $tests, $dataFiles);
