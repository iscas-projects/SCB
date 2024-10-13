(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3657 0)
(declare-sort var1312 0)
(declare-sort var1440 0)
(declare-sort var855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun option/338944513 (var3657) var1440)
(declare-fun metaVar/-1134977546 (var1440) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3657 var3657)
(declare-const null-var1312 var1312)
(declare-const null-String String)
(declare-const var894 var3657) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler 
(assert (not (= var894 null-var3657)))
(declare-const var1063 var1312) ; Statement: r2 := @parameter0: java.util.ResourceBundle 
(assert (not (= var1063 null-var1312)))
(define-const var3545 var1440 (option/338944513 var894)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef option> 
(assert true)
(define-const var1563 String (metaVar/-1134977546 var3545)) ; Statement: r4 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef: java.lang.String metaVar()>() 
(assert true)
(define-const var3034 Int (length/-134980193 var1563)) ; Statement: $i0 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto (branch) 
(assert (not (= var3034 0))) ; Cond: $i0 != 0 
 ; Statement: if r4 != null goto (branch) 
(assert (not (not (= var1563 null-String)))) ; Negate: Cond: r4 != null  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {option/338944513=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler], com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef), metaVar/-1134977546=([com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var3657=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler, var894=r0, var1312=java.util.ResourceBundle, var1063=r2, var1440=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef, var3545=$r1, var1563=r4, var3034=$i0, var855=null_type}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler=var3657, r0=var894, java.util.ResourceBundle=var1312, r2=var1063, com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef=var1440, $r1=var3545, r4=var1563, $i0=var3034, null_type=var855}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler;	r2 := @parameter0: java.util.ResourceBundle;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.OptionHandler: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef option>;	r4 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.OptionDef: java.lang.String metaVar()>();	$i0 = virtualinvoke r4.<java.lang.String: int length()>();	if $i0 != 0 goto (branch);	if r4 != null goto (branch);	return null
;block_num 3