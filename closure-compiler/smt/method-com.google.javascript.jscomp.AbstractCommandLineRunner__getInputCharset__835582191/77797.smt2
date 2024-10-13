(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var580 0)
(declare-sort var3147 0)
(declare-sort var90 0)
(declare-sort var3165 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun config/-1513802512 (var580) var3147)
(declare-fun charset/781817645 (var3147) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var580 var580)
(declare-const var3165-UTF_8 var90)
(declare-const var1343 var580) ; Statement: r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner 
(assert (not (= var1343 null-var580)))
(define-const var1270 var3147 (config/-1513802512 var1343)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var65 String (charset/781817645 var1270)) ; Statement: $r2 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String charset> 
(assert true)
(define-const var996 Bool (isEmpty/-1285796103 var65)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert (not (= (ite var996 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3738 var90 var3165-UTF_8) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {config/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig), charset/781817645=([com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var580=com.google.javascript.jscomp.AbstractCommandLineRunner, var1343=r0, var3147=com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig, var1270=$r1, var65=$r2, var996=$z0, var90=java.nio.charset.Charset, var3165=java.nio.charset.StandardCharsets, var3738=$r3}
; {com.google.javascript.jscomp.AbstractCommandLineRunner=var580, r0=var1343, com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig=var3147, $r1=var1270, $r2=var65, $z0=var996, java.nio.charset.Charset=var90, java.nio.charset.StandardCharsets=var3165, $r3=var3738}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner;	$r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r2 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String charset>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	return $r3
;block_num 2