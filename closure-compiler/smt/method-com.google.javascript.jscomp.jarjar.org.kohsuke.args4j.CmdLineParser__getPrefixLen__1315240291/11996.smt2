(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2588 0)
(declare-sort var1421 0)
(declare-sort var3388 0)
(declare-sort var2373 0)
(declare-sort var920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun option/338944513 (var1421) var2373)
(declare-fun usage/-1018567273 (var2373) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun parserProperties/-2095635781 (var2588) var920)
(declare-fun getNameAndMeta/1861373746 (var1421 var3388 var920) String)
(declare-const null-var2588 var2588)
(declare-const null-var1421 var1421)
(declare-const null-var3388 var3388)
(declare-const var3525 var2588) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser 
(assert (not (= var3525 null-var2588)))
(declare-const var464 var1421) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler 
(assert (not (= var464 null-var1421)))
(declare-const var2838 var3388) ; Statement: r3 := @parameter1: java.util.ResourceBundle 
(assert (not (= var2838 null-var3388)))
(define-const var3268 var2373 (option/338944513 var464)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef option> 
(assert true)
(define-const var1108 String (usage/-1018567273 var3268)) ; Statement: $r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef: java.lang.String usage()>() 
(assert true)
(define-const var1439 Int (length/-134980193 var1108)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r5 = r4.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties parserProperties> 
(assert (not (= var1439 0))) ; Cond: $i0 != 0 
(define-const var454 var920 (parserProperties/-2095635781 var3525)) ; Statement: $r5 = r4.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties parserProperties> 
(assert true)
(define-const var3530 String (getNameAndMeta/1861373746 var464 var2838 var454)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler: java.lang.String getNameAndMeta(java.util.ResourceBundle,com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties)>(r3, $r5) 
(assert true)
(define-const var3326 Int (length/-134980193 var3530)) ; Statement: $i1 = virtualinvoke $r6.<java.lang.String: int length()>() 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {option/338944513=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef), usage/-1018567273=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef], java.lang.String), length/-134980193=([java.lang.String], int), parserProperties/-2095635781=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties), getNameAndMeta/1861373746=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler, java.util.ResourceBundle, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties], java.lang.String)}
; {var2588=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, var3525=r4, var1421=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler, var464=r0, var3388=java.util.ResourceBundle, var2838=r3, var2373=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef, var3268=$r1, var1108=$r2, var1439=$i0, var920=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties, var454=$r5, var3530=$r6, var3326=$i1}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser=var2588, r4=var3525, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler=var1421, r0=var464, java.util.ResourceBundle=var3388, r3=var2838, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef=var2373, $r1=var3268, $r2=var1108, $i0=var1439, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties=var920, $r5=var454, $r6=var3530, $i1=var3326}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler;	r3 := @parameter1: java.util.ResourceBundle;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef option>;	$r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef: java.lang.String usage()>();	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i0 != 0 goto $r5 = r4.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties parserProperties>;	$r5 = r4.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties parserProperties>;	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler: java.lang.String getNameAndMeta(java.util.ResourceBundle,com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties)>(r3, $r5);	$i1 = virtualinvoke $r6.<java.lang.String: int length()>();	return $i1
;block_num 2