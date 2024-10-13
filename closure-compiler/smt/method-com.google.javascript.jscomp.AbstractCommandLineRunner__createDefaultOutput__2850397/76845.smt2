(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2686 0)
(declare-sort var2653 0)
(declare-sort var3643 0)
(declare-sort var631 0)
(declare-sort var3190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun config/-1513802512 (var2686) var2653)
(declare-fun jsOutputFile/781817645 (var2653) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun defaultJsOutput/-1513802512 (var2686) var3643)
(declare-fun streamToLegacyOutputWriter/719798371 (var2686 var3190) var631)
(declare-fun cast-from-var3643-to-var3190 (var3643) var3190)
(declare-const null-var2686 var2686)
(declare-const var3949 var2686) ; Statement: r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner 
(assert (not (= var3949 null-var2686)))
(define-const var2292 var2653 (config/-1513802512 var3949)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var3675 String (jsOutputFile/781817645 var2292)) ; Statement: $r2 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile> 
(assert true)
(define-const var1292 Bool (isEmpty/-1285796103 var3675)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var1292 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var381 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z1 == 0 goto $r3 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.PrintStream defaultJsOutput> 
(assert (= (ite var381 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3268 var3643 (defaultJsOutput/-1513802512 var3949)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.PrintStream defaultJsOutput> 
(assert true)
(define-const var3046 var631 (streamToLegacyOutputWriter/719798371 var3949 (cast-from-var3643-to-var3190 var3268))) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.Writer streamToLegacyOutputWriter(java.io.OutputStream)>($r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {config/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig), jsOutputFile/781817645=([com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), defaultJsOutput/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], java.io.PrintStream), streamToLegacyOutputWriter/719798371=([com.google.javascript.jscomp.AbstractCommandLineRunner, java.io.OutputStream], java.io.Writer), cast-from-var3643-to-var3190=([java.io.PrintStream], java.io.OutputStream)}
; {var2686=com.google.javascript.jscomp.AbstractCommandLineRunner, var3949=r0, var2653=com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig, var2292=$r1, var3675=$r2, var1292=$z0, var381=$z1, var3643=java.io.PrintStream, var3268=$r3, var631=java.io.Writer, var3190=java.io.OutputStream, var3046=$r4}
; {com.google.javascript.jscomp.AbstractCommandLineRunner=var2686, r0=var3949, com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig=var2653, $r1=var2292, $r2=var3675, $z0=var1292, $z1=var381, java.io.PrintStream=var3643, $r3=var3268, java.io.Writer=var631, java.io.OutputStream=var3190, $r4=var3046}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner;	$r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r2 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= (branch)];	if $z1 == 0 goto $r3 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.PrintStream defaultJsOutput>;	$r3 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.PrintStream defaultJsOutput>;	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.Writer streamToLegacyOutputWriter(java.io.OutputStream)>($r3);	return $r4
;block_num 4