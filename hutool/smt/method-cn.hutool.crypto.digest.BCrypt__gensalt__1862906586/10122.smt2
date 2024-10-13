(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3263 0)
(declare-sort var1124 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun nextBytes/1531620509 (var3263 (Array Int Int)) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun var1124_encode_base64/715006748 ((Array Int Int) Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const null-var3263 var3263)
(declare-const var2636 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2636 null-Int)))
(declare-const var2360 var3263) ; Statement: r2 := @parameter1: java.security.SecureRandom 
(assert (not (= var2360 null-var3263)))
(define-const var3911 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3911)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3911!1 String)
(assert (= var3911!1 ""))
(define-const var2128 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (byte)[16] 
(assert true)
;(assert (nextBytes/1531620509 var2360 var2128)) ; Statement: virtualinvoke r2.<java.security.SecureRandom: void nextBytes(byte[])>(r1) 

(declare-const var2360!1 var3263)
(declare-const var2128!1 (Array Int Int))
(assert true)
;(assert (append/672562846 var3911!1 "$2a$")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$2a$") 
(declare-const var3911!2 String)
(assert (= var3911!2 (str.++ var3911!1 "$2a$")))
 ; Statement: if i0 >= 10 goto (branch) 
(assert (>= var2636 10)) ; Cond: i0 >= 10 
 ; Statement: if i0 <= 30 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(assert (<= var2636 30)) ; Cond: i0 <= 30 
(assert true)
;(assert (append/-1001720160 var3911!2 var2636)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3911!3 String)
(assert (str.prefixof var3911!2 var3911!3))
(assert true)
;(assert (append/672562846 var3911!3 "$")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$") 
(declare-const var3911!4 String)
(assert (= var3911!4 (str.++ var3911!3 "$")))
(define-const var2722 Int (getLength-Arr-Int-1 var2128!1)) ; Statement: $i1 = lengthof r1 
(define-const var3313 String (var1124_encode_base64/715006748 var2128!1 var2722)) ; Statement: $r3 = staticinvoke <cn.hutool.crypto.digest.BCrypt: java.lang.String encode_base64(byte[],int)>(r1, $i1) 
(assert true)
;(assert (append/672562846 var3911!4 var3313)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3911!5 String)
(assert (= var3911!5 (str.++ var3911!4 var3313)))
(assert true)
(define-const var1857 String (toString/-2075883882 var3911!5)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), arr-Int-init=([], byte[]), nextBytes/1531620509=([java.security.SecureRandom, byte[]], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), getLength-Arr-Int-1=([byte[]], int), var1124_encode_base64/715006748=([byte[], int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2636=i0, var3263=java.security.SecureRandom, var2360=r2, var3911=$r0, var2128=r1, var2722=$i1, var1124=cn.hutool.crypto.digest.BCrypt, var3313=$r3, var1857=$r4}
; {i0=var2636, java.security.SecureRandom=var3263, r2=var2360, $r0=var3911, r1=var2128, $i1=var2722, cn.hutool.crypto.digest.BCrypt=var1124, $r3=var3313, $r4=var1857}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r2 := @parameter1: java.security.SecureRandom;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r1 = newarray (byte)[16];	virtualinvoke r2.<java.security.SecureRandom: void nextBytes(byte[])>(r1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$2a$");	if i0 >= 10 goto (branch);	if i0 <= 30 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$");	$i1 = lengthof r1;	$r3 = staticinvoke <cn.hutool.crypto.digest.BCrypt: java.lang.String encode_base64(byte[],int)>(r1, $i1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3