(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var949 0)
(declare-sort var729 0)
(declare-sort var2837 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun config/-1513802512 (var949) var729)
(declare-fun jsOutputFile/781817645 (var729) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun fileNameToLegacyOutputWriter/-1327638396 (var949 String) var2837)
(declare-const null-var949 var949)
(declare-const var2717 var949) ; Statement: r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner 
(assert (not (= var2717 null-var949)))
(define-const var1310 var729 (config/-1513802512 var2717)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var16 String (jsOutputFile/781817645 var1310)) ; Statement: $r2 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile> 
(assert true)
(define-const var1144 Bool (isEmpty/-1285796103 var16)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var1144 1 0) 0))) ; Cond: $z0 != 0 
(define-const var752 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 == 0 goto $r3 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.PrintStream defaultJsOutput> 
(assert (not (= (ite var752 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var890 var729 (config/-1513802512 var2717)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var861 String (jsOutputFile/781817645 var890)) ; Statement: $r6 = $r5.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile> 
(assert true)
(define-const var2746 var2837 (fileNameToLegacyOutputWriter/-1327638396 var2717 var861)) ; Statement: $r7 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.Writer fileNameToLegacyOutputWriter(java.lang.String)>($r6) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {config/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig), jsOutputFile/781817645=([com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), fileNameToLegacyOutputWriter/-1327638396=([com.google.javascript.jscomp.AbstractCommandLineRunner, java.lang.String], java.io.Writer)}
; {var949=com.google.javascript.jscomp.AbstractCommandLineRunner, var2717=r0, var729=com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig, var1310=$r1, var16=$r2, var1144=$z0, var752=$z1, var890=$r5, var861=$r6, var2837=java.io.Writer, var2746=$r7}
; {com.google.javascript.jscomp.AbstractCommandLineRunner=var949, r0=var2717, com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig=var729, $r1=var1310, $r2=var16, $z0=var1144, $z1=var752, $r5=var890, $r6=var861, java.io.Writer=var2837, $r7=var2746}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner;	$r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r2 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	if $z1 == 0 goto $r3 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.PrintStream defaultJsOutput>;	$r5 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r6 = $r5.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String jsOutputFile>;	$r7 = virtualinvoke r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: java.io.Writer fileNameToLegacyOutputWriter(java.lang.String)>($r6);	return $r7
;block_num 4