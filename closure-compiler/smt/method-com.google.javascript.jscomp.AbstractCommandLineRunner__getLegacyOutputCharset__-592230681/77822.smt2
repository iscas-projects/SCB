(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1387 0)
(declare-sort var517 0)
(declare-sort var797 0)
(declare-sort var3633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun config/-1513802512 (var1387) var517)
(declare-fun charset/781817645 (var517) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1387 var1387)
(declare-const var3633-US_ASCII var797)
(declare-const var772 var1387) ; Statement: r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner 
(assert (not (= var772 null-var1387)))
(define-const var1871 var517 (config/-1513802512 var772)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config> 
(define-const var3997 String (charset/781817645 var1871)) ; Statement: $r2 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String charset> 
(assert true)
(define-const var2719 Bool (isEmpty/-1285796103 var3997)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert (not (= (ite var2719 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2730 var797 var3633-US_ASCII) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {config/-1513802512=([com.google.javascript.jscomp.AbstractCommandLineRunner], com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig), charset/781817645=([com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1387=com.google.javascript.jscomp.AbstractCommandLineRunner, var772=r0, var517=com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig, var1871=$r1, var3997=$r2, var2719=$z0, var797=java.nio.charset.Charset, var3633=java.nio.charset.StandardCharsets, var2730=$r3}
; {com.google.javascript.jscomp.AbstractCommandLineRunner=var1387, r0=var772, com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig=var517, $r1=var1871, $r2=var3997, $z0=var2719, java.nio.charset.Charset=var797, java.nio.charset.StandardCharsets=var3633, $r3=var2730}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.AbstractCommandLineRunner;	$r1 = r0.<com.google.javascript.jscomp.AbstractCommandLineRunner: com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig config>;	$r2 = $r1.<com.google.javascript.jscomp.AbstractCommandLineRunner$CommandLineConfig: java.lang.String charset>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	return $r3
;block_num 2