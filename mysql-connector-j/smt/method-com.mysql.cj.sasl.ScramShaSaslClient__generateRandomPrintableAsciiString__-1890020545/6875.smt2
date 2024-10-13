(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var727 0)
(declare-sort var1400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1400-init () var1400)
(declare-fun <init>/-1939188131 (var1400) void)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var727 var727)
(declare-const null-Int Int)
(declare-const var2457 var727) ; Statement: r3 := @this: com.mysql.cj.sasl.ScramShaSaslClient 
(assert (not (= var2457 null-var727)))
(declare-const var296 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var296 null-Int)))
(define-const var898 var1400 var1400-init) ; Statement: $r0 = new java.security.SecureRandom 
(assert true)
;(assert (<init>/-1939188131 var898)) ; Statement: specialinvoke $r0.<java.security.SecureRandom: void <init>()>() 

(declare-const var898!1 var1400)
(define-const var3390 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[i0] 
(define-const var2270 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto $r2 = new java.lang.String 
(assert (>= var2270 var296)) ; Cond: i5 >= i0 
(define-const var3585 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var3585 var3390)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1) 

(declare-const var3585!1 String)
(declare-const var3390!1 (Array Int Int))
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1400-init=([], java.security.SecureRandom), <init>/-1939188131=([java.security.SecureRandom], void), arr-Int-init=([], char[]), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var727=com.mysql.cj.sasl.ScramShaSaslClient, var2457=r3, var296=i0, var1400=java.security.SecureRandom, var898=$r0, var3390=r1, var2270=i5, var3585=$r2}
; {com.mysql.cj.sasl.ScramShaSaslClient=var727, r3=var2457, i0=var296, java.security.SecureRandom=var1400, $r0=var898, r1=var3390, i5=var2270, $r2=var3585}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r3 := @this: com.mysql.cj.sasl.ScramShaSaslClient;	i0 := @parameter0: int;	$r0 = new java.security.SecureRandom;	specialinvoke $r0.<java.security.SecureRandom: void <init>()>();	r1 = newarray (char)[i0];	i5 = 0;	if i5 >= i0 goto $r2 = new java.lang.String;	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(char[])>(r1);	return $r2
;block_num 3