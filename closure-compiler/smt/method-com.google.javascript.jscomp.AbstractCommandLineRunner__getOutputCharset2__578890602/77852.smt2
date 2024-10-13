(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2311 0)
(declare-sort var2926 0)
(declare-sort var3234 0)
(declare-sort var740 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun config/-1513802512 (var2311) var2926)
(declare-fun charset/781817645 (var2926) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var2311 var2311)
(declare-const var740-UTF_8 var3234)
(declare-const var1971 var2311) ; Statement: r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner 
(assert (not (= var1971 null-var2311)))
(define-const var989 var2926 (config/-1513802512 var1971)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var3226 String (charset/781817645 var989)) ; Statement: $r2 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String charset> 
(assert true)
(define-const var1761 Bool (isEmpty/-1285796103 var3226)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert (not (= (ite var1761 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1295 var3234 var740-UTF_8) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {config/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig), charset/781817645=([com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2311=com.google.javascript.jscomp.AbstractCommandLineRunner, var1971=r0, var2926=com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig, var989=$r1, var3226=$r2, var1761=$z0, var3234=java.nio.charset.Charset, var740=java.nio.charset.StandardCharsets, var1295=$r3}
; {com.google.javascript.jscomp.AbstractCommandLineRunner=var2311, r0=var1971, com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig=var2926, $r1=var989, $r2=var3226, $z0=var1761, java.nio.charset.Charset=var3234, java.nio.charset.StandardCharsets=var740, $r3=var1295}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner;	$r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r2 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String charset>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	return $r3
;block_num 2