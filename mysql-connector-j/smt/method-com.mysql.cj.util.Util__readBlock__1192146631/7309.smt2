(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2041 0)
(declare-sort var1935 0)
(declare-sort var3204 0)
(declare-sort var3483 0)
(declare-sort var502 0)
(declare-sort var491 0)
(declare-sort var1879 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3483_getString/-1547297038 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var502) ClassObject)
(declare-fun cast-from-var3204-to-var502 (var3204) var502)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1879_createException/-1494009588 (String var1935) var491)
(declare-const null-var2041 var2041)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var1935 var1935)
(declare-const null-var3204 var3204)
(declare-const var2259 var2041) ; Statement: r0 := @parameter0: java.io.InputStream 
(assert (not (= var2259 null-var2041)))
(declare-const var2363 (Array Int Int)) ; Statement: r1 := @parameter1: byte[] 
(assert (not (= var2363 null-__Array__Int__Int__)))
(declare-const var1117 var1935) ; Statement: r9 := @parameter2: com.mysql.cj.exceptions.ExceptionInterceptor 
(assert (not (= var1117 null-var1935)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2160 var3204) ; Statement: $r2 := @caughtexception 
(assert (not (= var2160 null-var3204)))
(define-const var2731 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2731)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2731!1 String)
(assert (= var2731!1 ""))
(define-const var356 String (var3483_getString/-1547297038 "Util.5")) ; Statement: $r4 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("Util.5") 
(assert true)
(define-const var1380 String (append/672562846 var2731!1 var356)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2731!2 String)
(assert (= var2731!2 (str.++ var2731!1 var356)))
(assert true)
(define-const var2426 ClassObject (getClass/1258963082 (cast-from-var3204-to-var502 var2160))) ; Statement: $r5 = virtualinvoke $r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3574 String (getName/-1958580599 var2426)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2768 String (append/672562846 var1380 var3574)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1380!1 String)
(assert (= var1380!1 (str.++ var1380 var3574)))
(assert true)
(define-const var558 String (toString/-2075883882 var2768)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var918 var491 (var1879_createException/-1494009588 var558 var1117)) ; Statement: $r11 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r10, r9) 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3483_getString/-1547297038=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3204-to-var502=([java.lang.Throwable], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1879_createException/-1494009588=([java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException)}
; {var2041=java.io.InputStream, var2259=r0, var2363=r1, var1935=com.mysql.cj.exceptions.ExceptionInterceptor, var1117=r9, var3204=java.lang.Throwable, var2160=$r2, var2731=$r3, var3483=com.mysql.cj.Messages, var356=$r4, var1380=$r7, var502=java.lang.Object, var2426=$r5, var3574=$r6, var2768=$r8, var558=$r10, var491=com.mysql.cj.exceptions.CJException, var1879=com.mysql.cj.exceptions.ExceptionFactory, var918=$r11}
; {java.io.InputStream=var2041, r0=var2259, r1=var2363, com.mysql.cj.exceptions.ExceptionInterceptor=var1935, r9=var1117, java.lang.Throwable=var3204, $r2=var2160, $r3=var2731, com.mysql.cj.Messages=var3483, $r4=var356, $r7=var1380, java.lang.Object=var502, $r5=var2426, $r6=var3574, $r8=var2768, $r10=var558, com.mysql.cj.exceptions.CJException=var491, com.mysql.cj.exceptions.ExceptionFactory=var1879, $r11=var918}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.InputStream;	r1 := @parameter1: byte[];	r9 := @parameter2: com.mysql.cj.exceptions.ExceptionInterceptor;	$r2 := @caughtexception;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("Util.5");	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = virtualinvoke $r2.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r10, r9);	throw $r11
;block_num 2