(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2938 0)
(declare-sort var3292 0)
(declare-sort var3457 0)
(declare-sort var1448 0)
(declare-sort var3180 0)
(declare-sort var2747 0)
(declare-sort var3518 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3457-init () var3457)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun <init>/-2092480120 (var3457 (Array Int Int) (Array Int Int) Int Int) void)
(declare-fun getMessage/849299655 (var3180) String)
(declare-fun cast-from-var1448-to-var3180 (var1448) var3180)
(declare-fun var3518_createException/-1002763108 (String) var2747)
(declare-const null-var2938 var2938)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var1448 var1448)
(declare-const var618 var2938) ; Statement: r9 := @this: com.mysql.cj.sasl.ScramSha256SaslClient 
(assert (not (= var618 null-var2938)))
(declare-const var3209 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3209 null-String)))
(declare-const var1927 (Array Int Int)) ; Statement: r2 := @parameter1: byte[] 
(assert (not (= var1927 null-__Array__Int__Int__)))
(declare-const var984 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var984 null-Int)))
(define-const var1584 var3457 var3457-init) ; Statement: $r11 = new javax.crypto.spec.PBEKeySpec 
(assert true)
(define-const var2614 (Array Int Int) (toCharArray/415275702 var3209)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(assert true)
;(assert (<init>/-2092480120 var1584 var2614 var1927 var984 256)) ; Statement: specialinvoke $r11.<javax.crypto.spec.PBEKeySpec: void <init>(char[],byte[],int,int)>($r3, r2, i0, 256) 

(declare-const var1584!1 var3457)
(declare-const var2614!1 (Array Int Int))
(declare-const var1927!1 (Array Int Int))
(declare-const var984!1 Int)
(declare-const var1964 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3834 var1448) ; Statement: $r6 := @caughtexception 
(assert (not (= var3834 null-var1448)))
(assert true)
(define-const var356 String (getMessage/849299655 (cast-from-var1448-to-var3180 var3834))) ; Statement: $r7 = virtualinvoke $r6.<java.security.GeneralSecurityException: java.lang.String getMessage()>() 
(define-const var1740 var2747 (var3518_createException/-1002763108 var356)) ; Statement: $r8 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String)>($r7) 
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3457-init=([], javax.crypto.spec.PBEKeySpec), toCharArray/415275702=([java.lang.String], char[]), <init>/-2092480120=([javax.crypto.spec.PBEKeySpec, char[], byte[], int, int], void), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1448-to-var3180=([java.security.GeneralSecurityException], java.lang.Throwable), var3518_createException/-1002763108=([java.lang.String], com.mysql.cj.exceptions.CJException)}
; {var2938=com.mysql.cj.sasl.ScramSha256SaslClient, var618=r9, var3209=r1, var3292=null_type, var1927=r2, var984=i0, var3457=javax.crypto.spec.PBEKeySpec, var1584=$r11, var2614=$r3, var1964=256, var1448=java.security.GeneralSecurityException, var3834=$r6, var3180=java.lang.Throwable, var356=$r7, var2747=com.mysql.cj.exceptions.CJException, var3518=com.mysql.cj.exceptions.ExceptionFactory, var1740=$r8}
; {com.mysql.cj.sasl.ScramSha256SaslClient=var2938, r9=var618, r1=var3209, null_type=var3292, r2=var1927, i0=var984, javax.crypto.spec.PBEKeySpec=var3457, $r11=var1584, $r3=var2614, 256=var1964, java.security.GeneralSecurityException=var1448, $r6=var3834, java.lang.Throwable=var3180, $r7=var356, com.mysql.cj.exceptions.CJException=var2747, com.mysql.cj.exceptions.ExceptionFactory=var3518, $r8=var1740}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r9 := @this: com.mysql.cj.sasl.ScramSha256SaslClient;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: byte[];	i0 := @parameter2: int;	$r11 = new javax.crypto.spec.PBEKeySpec;	$r3 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	specialinvoke $r11.<javax.crypto.spec.PBEKeySpec: void <init>(char[],byte[],int,int)>($r3, r2, i0, 256);	$r6 := @caughtexception;	$r7 = virtualinvoke $r6.<java.security.GeneralSecurityException: java.lang.String getMessage()>();	$r8 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String)>($r7);	throw $r8
;block_num 2