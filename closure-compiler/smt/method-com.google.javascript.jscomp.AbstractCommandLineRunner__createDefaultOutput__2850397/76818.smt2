(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3606 0)
(declare-sort var2222 0)
(declare-sort var1560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun config/-1513802512 (var3606) var2222)
(declare-fun jsOutputFile/781817645 (var2222) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun fileNameToLegacyOutputWriter/-1327638396 (var3606 String) var1560)
(declare-const null-var3606 var3606)
(declare-const var1382 var3606) ; Statement: r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner 
(assert (not (= var1382 null-var3606)))
(define-const var1774 var2222 (config/-1513802512 var1382)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var3052 String (jsOutputFile/781817645 var1774)) ; Statement: $r2 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile> 
(assert true)
(define-const var636 Bool (isEmpty/-1285796103 var3052)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var636 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2648 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z1 == 0 goto $r3 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.PrintStream defaultJsOutput> 
(assert (not (= (ite var2648 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3212 var2222 (config/-1513802512 var1382)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var2341 String (jsOutputFile/781817645 var3212)) ; Statement: $r6 = $r5.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile> 
(assert true)
(define-const var3660 var1560 (fileNameToLegacyOutputWriter/-1327638396 var1382 var2341)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.Writer fileNameToLegacyOutputWriter(java.lang.String)>($r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {config/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig), jsOutputFile/781817645=([com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), fileNameToLegacyOutputWriter/-1327638396=([com.google.javascript.jscomp.AbstractCommandLineRunner, java.lang.String], java.io.Writer)}
; {var3606=com.google.javascript.jscomp.AbstractCommandLineRunner, var1382=r0, var2222=com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig, var1774=$r1, var3052=$r2, var636=$z0, var2648=$z1, var3212=$r5, var2341=$r6, var1560=java.io.Writer, var3660=$r7}
; {com.google.javascript.jscomp.AbstractCommandLineRunner=var3606, r0=var1382, com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig=var2222, $r1=var1774, $r2=var3052, $z0=var636, $z1=var2648, $r5=var3212, $r6=var2341, java.io.Writer=var1560, $r7=var3660}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner;	$r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r2 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= (branch)];	if $z1 == 0 goto $r3 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.PrintStream defaultJsOutput>;	$r5 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r6 = $r5.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile>;	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.Writer fileNameToLegacyOutputWriter(java.lang.String)>($r6);	return $r7
;block_num 4