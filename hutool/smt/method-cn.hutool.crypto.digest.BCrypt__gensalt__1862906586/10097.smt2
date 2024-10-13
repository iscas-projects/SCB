(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1656 0)
(declare-sort var626 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun nextBytes/1531620509 (var1656 (Array Int Int)) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var626-init () var626)
(declare-fun <init>/875830710 (var626 String) void)
(declare-const null-Int Int)
(declare-const null-var1656 var1656)
(declare-const var3372 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3372 null-Int)))
(declare-const var3530 var1656) ; Statement: r2 := @parameter1: java.security.SecureRandom 
(assert (not (= var3530 null-var1656)))
(define-const var1106 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1106)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1106!1 String)
(assert (= var1106!1 ""))
(define-const var1496 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (byte)[16] 
(assert true)
;(assert (nextBytes/1531620509 var3530 var1496)) ; Statement: virtualinvoke r2.<java.security.SecureRandom: void nextBytes(byte[])>(r1) 

(declare-const var3530!1 var1656)
(declare-const var1496!1 (Array Int Int))
(assert true)
;(assert (append/672562846 var1106!1 "$2a$")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$2a$") 
(declare-const var1106!2 String)
(assert (= var1106!2 (str.++ var1106!1 "$2a$")))
 ; Statement: if i0 >= 10 goto (branch) 
(assert (>= var3372 10)) ; Cond: i0 >= 10 
 ; Statement: if i0 <= 30 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(assert (not (<= var3372 30))) ; Negate: Cond: i0 <= 30  
(define-const var384 var626 var626-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var384 "log_rounds exceeds maximum (30)")) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("log_rounds exceeds maximum (30)") 

(declare-const var384!1 var626)
(declare-const var978 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), arr-Int-init=([], byte[]), nextBytes/1531620509=([java.security.SecureRandom, byte[]], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var626-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3372=i0, var1656=java.security.SecureRandom, var3530=r2, var1106=$r0, var1496=r1, var626=java.lang.IllegalArgumentException, var384=$r5, var978="log_rounds exceeds maximum (30)"}
; {i0=var3372, java.security.SecureRandom=var1656, r2=var3530, $r0=var1106, r1=var1496, java.lang.IllegalArgumentException=var626, $r5=var384, "log_rounds exceeds maximum (30)"=var978}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts i0 := @parameter0: int;	r2 := @parameter1: java.security.SecureRandom;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r1 = newarray (byte)[16];	virtualinvoke r2.<java.security.SecureRandom: void nextBytes(byte[])>(r1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$2a$");	if i0 >= 10 goto (branch);	if i0 <= 30 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r5 = new java.lang.IllegalArgumentException;	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("log_rounds exceeds maximum (30)");	throw $r5
;block_num 3