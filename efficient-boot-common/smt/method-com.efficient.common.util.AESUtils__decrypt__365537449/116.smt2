(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var232 0)
(declare-sort var358 0)
(declare-sort var3402 0)
(declare-sort var1805 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var232_isEmpty/1611114494 ((Array Int Int)) Bool)
(declare-fun var3402-init () var3402)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun <init>/76075152 (String (Array Int Int)) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var3402 String var1805) void)
(declare-fun cast-from-var358-to-var1805 (var358) var1805)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var358 var358)
(declare-const var388 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var388 null-__Array__Int__Int__)))
(define-const var3521 Bool (var232_isEmpty/1611114494 var388)) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(byte[])>(r0) 
 ; Statement: if $z0 == 0 goto r11 = staticinvoke <com.efficient.common.util.AESUtils: javax.crypto.Cipher getCipher(java.lang.String,int)>("http://tanmw.top", 2) 
(assert (not (= (ite var3521 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var767 var358) ; Statement: $r4 := @caughtexception 
(assert (not (= var767 null-var358)))
(define-const var908 var3402 var3402-init) ; Statement: $r5 = new java.lang.RuntimeException 
(define-const var1669 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1669)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1669!1 String)
(assert (= var1669!1 ""))
(assert true)
(define-const var2658 String (append/672562846 var1669!1 "\u6570\u636e\u52a0\u89e3\u5bc6\u5f02\u5e38:")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u6570\u636e\u52a0\u89e3\u5bc6\u5f02\u5e38:") 
(declare-const var1669!2 String)
(assert (= var1669!2 (str.++ var1669!1 "\u6570\u636e\u52a0\u89e3\u5bc6\u5f02\u5e38:")))
(define-const var2837 String String-init) ; Statement: $r7 = new java.lang.String 
(assert true)
;(assert (<init>/76075152 var2837 var388)) ; Statement: specialinvoke $r7.<java.lang.String: void <init>(byte[])>(r0) 

(declare-const var2837!1 String)
(declare-const var388!1 (Array Int Int))
(assert true)
(define-const var949 String (append/672562846 var2658 var2837!1)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2658!1 String)
(assert (= var2658!1 (str.++ var2658 var2837!1)))
(assert true)
(define-const var1435 String (toString/-2075883882 var949)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var908 var1435 (cast-from-var358-to-var1805 var767))) ; Statement: specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4) 

(declare-const var908!1 var3402)
(declare-const var1435!1 String)
(declare-const var767!1 var358)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var232_isEmpty/1611114494=([byte[]], boolean), var3402-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), <init>/76075152=([java.lang.String, byte[]], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var358-to-var1805=([java.lang.Exception], java.lang.Throwable)}
; {var388=r0, var232=cn.hutool.core.util.ArrayUtil, var3521=$z0, var358=java.lang.Exception, var767=$r4, var3402=java.lang.RuntimeException, var908=$r5, var1669=$r6, var2658=$r8, var2837=$r7, var949=$r9, var1435=$r10, var1805=java.lang.Throwable}
; {r0=var388, cn.hutool.core.util.ArrayUtil=var232, $z0=var3521, java.lang.Exception=var358, $r4=var767, java.lang.RuntimeException=var3402, $r5=var908, $r6=var1669, $r8=var2658, $r7=var2837, $r9=var949, $r10=var1435, java.lang.Throwable=var1805}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(byte[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: void <init>(byte[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: byte[];	$z0 = staticinvoke <cn.hutool.core.util.ArrayUtil: boolean isEmpty(byte[])>(r0);	if $z0 == 0 goto r11 = staticinvoke <com.efficient.common.util.AESUtils: javax.crypto.Cipher getCipher(java.lang.String,int)>("http://tanmw.top", 2);	$r4 := @caughtexception;	$r5 = new java.lang.RuntimeException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\u6570\u636e\u52a0\u89e3\u5bc6\u5f02\u5e38:");	$r7 = new java.lang.String;	specialinvoke $r7.<java.lang.String: void <init>(byte[])>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4);	throw $r5
;block_num 2