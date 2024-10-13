(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2815 0)
(declare-sort var2516 0)
(declare-sort var562 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun config/-1513802512 (var2815) var562)
(declare-fun moduleOutputPathPrefix/781817645 (var562) String)
(declare-const null-var2815 var2815)
(declare-const null-String String)
(declare-const var2594 var2815) ; Statement: r4 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner 
(assert (not (= var2594 null-var2815)))
(declare-const var643 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var643 null-String)))
(assert true)
(define-const var2211 Bool (isEmpty/-1285796103 var643)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.io.File 
(assert (not (= (ite var2211 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var763 var562 (config/-1513802512 var2594)) ; Statement: $r5 = r4.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var1905 String (moduleOutputPathPrefix/781817645 var763)) ; Statement: $r6 = $r5.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String moduleOutputPathPrefix> 
(assert true)
(define-const var396 Bool (isEmpty/-1285796103 var1905)) ; Statement: $z2 = virtualinvoke $r6.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto r8 = "jscompiler" 
(assert (not (not (= (ite var396 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var2519 var562 (config/-1513802512 var2594)) ; Statement: $r7 = r4.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var2535 String (moduleOutputPathPrefix/781817645 var2519)) ; Statement: r8 = $r7.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String moduleOutputPathPrefix> 
 ; Statement: goto [?= return r8] 
(assert true) ; Non Conditional
 ; Statement: return r8 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), config/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig), moduleOutputPathPrefix/781817645=([com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig], java.lang.String)}
; {var2815=com.google.javascript.jscomp.AbstractCommandLineRunner, var2594=r4, var643=r0, var2516=null_type, var2211=$z0, var562=com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig, var763=$r5, var1905=$r6, var396=$z2, var2519=$r7, var2535=r8}
; {com.google.javascript.jscomp.AbstractCommandLineRunner=var2815, r4=var2594, r0=var643, null_type=var2516, $z0=var2211, com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig=var562, $r5=var763, $r6=var1905, $z2=var396, $r7=var2519, r8=var2535}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 2}
;stmts r4 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r1 = new java.io.File;	$r5 = r4.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r6 = $r5.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String moduleOutputPathPrefix>;	$z2 = virtualinvoke $r6.<java.lang.String: boolean isEmpty()>();	if $z2 != 0 goto r8 = "jscompiler";	$r7 = r4.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	r8 = $r7.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String moduleOutputPathPrefix>;	goto [?= return r8];	return r8
;block_num 4