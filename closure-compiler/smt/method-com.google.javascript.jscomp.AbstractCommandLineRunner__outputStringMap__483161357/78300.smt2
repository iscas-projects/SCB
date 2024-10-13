(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3642 0)
(declare-sort var358 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun config/-1513802512 (var3642) var358)
(declare-fun stringMapOutputPath/781817645 (var358) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3642 var3642)
(declare-const var1257 var3642) ; Statement: r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner 
(assert (not (= var1257 null-var3642)))
(define-const var55 var358 (config/-1513802512 var1257)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var1057 String (stringMapOutputPath/781817645 var55)) ; Statement: $r2 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String stringMapOutputPath> 
(assert true)
(define-const var168 Bool (isEmpty/-1285796103 var1057)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var168 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {config/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig), stringMapOutputPath/781817645=([com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3642=com.google.javascript.jscomp.AbstractCommandLineRunner, var1257=r0, var358=com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig, var55=$r1, var1057=$r2, var168=$z0}
; {com.google.javascript.jscomp.AbstractCommandLineRunner=var3642, r0=var1257, com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig=var358, $r1=var55, $r2=var1057, $z0=var168}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner;	$r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r2 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String stringMapOutputPath>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto return;	return
;block_num 2