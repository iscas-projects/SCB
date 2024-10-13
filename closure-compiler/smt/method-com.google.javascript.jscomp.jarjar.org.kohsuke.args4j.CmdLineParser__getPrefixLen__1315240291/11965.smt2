(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1042 0)
(declare-sort var3105 0)
(declare-sort var3736 0)
(declare-sort var2201 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun option/338944513 (var3105) var2201)
(declare-fun usage/-1018567273 (var2201) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1042 var1042)
(declare-const null-var3105 var3105)
(declare-const null-var3736 var3736)
(declare-const var2086 var1042) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser 
(assert (not (= var2086 null-var1042)))
(declare-const var514 var3105) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler 
(assert (not (= var514 null-var3105)))
(declare-const var1754 var3736) ; Statement: r3 := @parameter1: java.util.ResourceBundle 
(assert (not (= var1754 null-var3736)))
(define-const var1197 var2201 (option/338944513 var514)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef option> 
(assert true)
(define-const var1887 String (usage/-1018567273 var1197)) ; Statement: $r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef: java.lang.String usage()>() 
(assert true)
(define-const var2058 Int (length/-134980193 var1887)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r5 = r4.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties parserProperties> 
(assert (not (not (= var2058 0)))) ; Negate: Cond: $i0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {option/338944513=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef), usage/-1018567273=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var1042=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser, var2086=r4, var3105=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler, var514=r0, var3736=java.util.ResourceBundle, var1754=r3, var2201=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef, var1197=$r1, var1887=$r2, var2058=$i0}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser=var1042, r4=var2086, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler=var3105, r0=var514, java.util.ResourceBundle=var3736, r3=var1754, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef=var2201, $r1=var1197, $r2=var1887, $i0=var2058}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler;	r3 := @parameter1: java.util.ResourceBundle;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef option>;	$r2 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef: java.lang.String usage()>();	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i0 != 0 goto $r5 = r4.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.CmdLineParser: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.ParserProperties parserProperties>;	return 0
;block_num 2