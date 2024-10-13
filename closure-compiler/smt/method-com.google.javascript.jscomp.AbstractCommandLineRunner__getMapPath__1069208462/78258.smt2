(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1600 0)
(declare-sort var2675 0)
(declare-sort var3414 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun config/-1513802512 (var1600) var3414)
(declare-fun moduleOutputPathPrefix/781817645 (var3414) String)
(declare-const null-var1600 var1600)
(declare-const null-String String)
(declare-const var3640 var1600) ; Statement: r4 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner 
(assert (not (= var3640 null-var1600)))
(declare-const var3122 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3122 null-String)))
(assert true)
(define-const var1783 Bool (isEmpty/-1285796103 var3122)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.io.File 
(assert (not (= (ite var1783 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var202 var3414 (config/-1513802512 var3640)) ; Statement: $r5 = r4.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var455 String (moduleOutputPathPrefix/781817645 var202)) ; Statement: $r6 = $r5.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String moduleOutputPathPrefix> 
(assert true)
(define-const var1410 Bool (isEmpty/-1285796103 var455)) ; Statement: $z2 = virtualinvoke $r6.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto r8 = "jscompiler" 
(assert (not (= (ite var1410 1 0) 0))) ; Cond: $z2 != 0 
(define-const var2385 String "jscompiler") ; Statement: r8 = "jscompiler" 
 ; Statement: goto [?= return r8] 
(assert true) ; Non Conditional
 ; Statement: return r8 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), config/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig), moduleOutputPathPrefix/781817645=([com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig], java.lang.String)}
; {var1600=com.google.javascript.jscomp.AbstractCommandLineRunner, var3640=r4, var3122=r0, var2675=null_type, var1783=$z0, var3414=com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig, var202=$r5, var455=$r6, var1410=$z2, var2385=r8}
; {com.google.javascript.jscomp.AbstractCommandLineRunner=var1600, r4=var3640, r0=var3122, null_type=var2675, $z0=var1783, com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig=var3414, $r5=var202, $r6=var455, $z2=var1410, r8=var2385}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 2}
;stmts r4 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r1 = new java.io.File;	$r5 = r4.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r6 = $r5.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String moduleOutputPathPrefix>;	$z2 = virtualinvoke $r6.<java.lang.String: boolean isEmpty()>();	if $z2 != 0 goto r8 = "jscompiler";	r8 = "jscompiler";	goto [?= return r8];	return r8
;block_num 4