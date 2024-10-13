(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1941 0)
(declare-sort var3288 0)
(declare-sort var998 0)
(declare-sort var1714 0)
(declare-sort var1639 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun config/-1513802512 (var1941) var3288)
(declare-fun jsOutputFile/781817645 (var3288) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun defaultJsOutput/-1513802512 (var1941) var998)
(declare-fun streamToLegacyOutputWriter/719798371 (var1941 var1639) var1714)
(declare-fun cast-from-var998-to-var1639 (var998) var1639)
(declare-const null-var1941 var1941)
(declare-const var950 var1941) ; Statement: r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner 
(assert (not (= var950 null-var1941)))
(define-const var2366 var3288 (config/-1513802512 var950)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var401 String (jsOutputFile/781817645 var2366)) ; Statement: $r2 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile> 
(assert true)
(define-const var3114 Bool (isEmpty/-1285796103 var401)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var3114 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2649 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 == 0 goto $r3 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.PrintStream defaultJsOutput> 
(assert (= (ite var2649 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2414 var998 (defaultJsOutput/-1513802512 var950)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.PrintStream defaultJsOutput> 
(assert true)
(define-const var3905 var1714 (streamToLegacyOutputWriter/719798371 var950 (cast-from-var998-to-var1639 var2414))) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.Writer streamToLegacyOutputWriter(java.io.OutputStream)>($r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {config/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig), jsOutputFile/781817645=([com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), defaultJsOutput/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], java.io.PrintStream), streamToLegacyOutputWriter/719798371=([com.google.javascript.jscomp.AbstractCommandLineRunner, java.io.OutputStream], java.io.Writer), cast-from-var998-to-var1639=([java.io.PrintStream], java.io.OutputStream)}
; {var1941=com.google.javascript.jscomp.AbstractCommandLineRunner, var950=r0, var3288=com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig, var2366=$r1, var401=$r2, var3114=$z0, var2649=$z1, var998=java.io.PrintStream, var2414=$r3, var1714=java.io.Writer, var1639=java.io.OutputStream, var3905=$r4}
; {com.google.javascript.jscomp.AbstractCommandLineRunner=var1941, r0=var950, com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig=var3288, $r1=var2366, $r2=var401, $z0=var3114, $z1=var2649, java.io.PrintStream=var998, $r3=var2414, java.io.Writer=var1714, java.io.OutputStream=var1639, $r4=var3905}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner;	$r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r2 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	if $z1 == 0 goto $r3 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.PrintStream defaultJsOutput>;	$r3 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.PrintStream defaultJsOutput>;	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.Writer streamToLegacyOutputWriter(java.io.OutputStream)>($r3);	return $r4
;block_num 4