(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3386 0)
(declare-sort var403 0)
(declare-sort var672 0)
(declare-sort var1069 0)
(declare-sort var1752 0)
(declare-sort var2511 0)
(declare-sort var2692 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var672-init () var672)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun <init>/-2092480120 (var672 (Array Int Int) (Array Int Int) Int Int) void)
(declare-fun getMessage/849299655 (var1752) String)
(declare-fun cast-from-var1069-to-var1752 (var1069) var1752)
(declare-fun var2692_createException/-1002763108 (String) var2511)
(declare-const null-var3386 var3386)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var1069 var1069)
(declare-const var869 var3386) ; Statement: r9 := @this: com.mysql.cj.sasl.ScramSha1SaslClient 
(assert (not (= var869 null-var3386)))
(declare-const var2435 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2435 null-String)))
(declare-const var2355 (Array Int Int)) ; Statement: r2 := @parameter1: byte[] 
(assert (not (= var2355 null-__Array__Int__Int__)))
(declare-const var3290 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3290 null-Int)))
(define-const var3632 var672 var672-init) ; Statement: $r11 = new javax.crypto.spec.PBEKeySpec 
(assert true)
(define-const var1404 (Array Int Int) (toCharArray/415275702 var2435)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(assert true)
;(assert (<init>/-2092480120 var3632 var1404 var2355 var3290 160)) ; Statement: specialinvoke $r11.<javax.crypto.spec.PBEKeySpec: void <init>(char[],byte[],int,int)>($r3, r2, i0, 160) 

(declare-const var3632!1 var672)
(declare-const var1404!1 (Array Int Int))
(declare-const var2355!1 (Array Int Int))
(declare-const var3290!1 Int)
(declare-const var138 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1339 var1069) ; Statement: $r6 := @caughtexception 
(assert (not (= var1339 null-var1069)))
(assert true)
(define-const var1802 String (getMessage/849299655 (cast-from-var1069-to-var1752 var1339))) ; Statement: $r7 = virtualinvoke $r6.<java.security.GeneralSecurityException: java.lang.String getMessage()>() 
(define-const var3754 var2511 (var2692_createException/-1002763108 var1802)) ; Statement: $r8 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String)>($r7) 
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var672-init=([], javax.crypto.spec.PBEKeySpec), toCharArray/415275702=([java.lang.String], char[]), <init>/-2092480120=([javax.crypto.spec.PBEKeySpec, char[], byte[], int, int], void), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1069-to-var1752=([java.security.GeneralSecurityException], java.lang.Throwable), var2692_createException/-1002763108=([java.lang.String], com.mysql.cj.exceptions.CJException)}
; {var3386=com.mysql.cj.sasl.ScramSha1SaslClient, var869=r9, var2435=r1, var403=null_type, var2355=r2, var3290=i0, var672=javax.crypto.spec.PBEKeySpec, var3632=$r11, var1404=$r3, var138=160, var1069=java.security.GeneralSecurityException, var1339=$r6, var1752=java.lang.Throwable, var1802=$r7, var2511=com.mysql.cj.exceptions.CJException, var2692=com.mysql.cj.exceptions.ExceptionFactory, var3754=$r8}
; {com.mysql.cj.sasl.ScramSha1SaslClient=var3386, r9=var869, r1=var2435, null_type=var403, r2=var2355, i0=var3290, javax.crypto.spec.PBEKeySpec=var672, $r11=var3632, $r3=var1404, 160=var138, java.security.GeneralSecurityException=var1069, $r6=var1339, java.lang.Throwable=var1752, $r7=var1802, com.mysql.cj.exceptions.CJException=var2511, com.mysql.cj.exceptions.ExceptionFactory=var2692, $r8=var3754}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r9 := @this: com.mysql.cj.sasl.ScramSha1SaslClient;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: byte[];	i0 := @parameter2: int;	$r11 = new javax.crypto.spec.PBEKeySpec;	$r3 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	specialinvoke $r11.<javax.crypto.spec.PBEKeySpec: void <init>(char[],byte[],int,int)>($r3, r2, i0, 160);	$r6 := @caughtexception;	$r7 = virtualinvoke $r6.<java.security.GeneralSecurityException: java.lang.String getMessage()>();	$r8 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String)>($r7);	throw $r8
;block_num 2