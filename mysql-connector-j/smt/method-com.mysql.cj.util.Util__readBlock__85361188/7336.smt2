(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1368 0)
(declare-sort var415 0)
(declare-sort var509 0)
(declare-sort var862 0)
(declare-sort var1584 0)
(declare-sort var1014 0)
(declare-sort var57 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var862_getString/-1547297038 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1584) ClassObject)
(declare-fun cast-from-var509-to-var1584 (var509) var1584)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var57_createException/-1494009588 (String var415) var1014)
(declare-const null-var1368 var1368)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var415 var415)
(declare-const null-var509 var509)
(declare-const var494 var1368) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var494 null-var1368)))
(declare-const var113 (Array Int Int)) ; Statement: r0 := @parameter1: byte[] 
(assert (not (= var113 null-__Array__Int__Int__)))
(declare-const var3274 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3274 null-Int)))
(declare-const var80 var415) ; Statement: r9 := @parameter3: com.mysql.cj.exceptions.ExceptionInterceptor 
(assert (not (= var80 null-var415)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3753 var509) ; Statement: $r2 := @caughtexception 
(assert (not (= var3753 null-var509)))
(define-const var892 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var892)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var892!1 String)
(assert (= var892!1 ""))
(define-const var2913 String (var862_getString/-1547297038 "Util.5")) ; Statement: $r4 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("Util.5") 
(assert true)
(define-const var2713 String (append/672562846 var892!1 var2913)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var892!2 String)
(assert (= var892!2 (str.++ var892!1 var2913)))
(assert true)
(define-const var912 ClassObject (getClass/1258963082 (cast-from-var509-to-var1584 var3753))) ; Statement: $r5 = virtualinvoke $r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1040 String (getName/-1958580599 var912)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3688 String (append/672562846 var2713 var1040)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2713!1 String)
(assert (= var2713!1 (str.++ var2713 var1040)))
(assert true)
(define-const var2814 String (toString/-2075883882 var3688)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1502 var1014 (var57_createException/-1494009588 var2814 var80)) ; Statement: $r11 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r10, r9) 
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var862_getString/-1547297038=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var509-to-var1584=([java.lang.Throwable], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var57_createException/-1494009588=([java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException)}
; {var1368=java.io.InputStream, var494=r1, var113=r0, var3274=i0, var415=com.mysql.cj.exceptions.ExceptionInterceptor, var80=r9, var509=java.lang.Throwable, var3753=$r2, var892=$r3, var862=com.mysql.cj.Messages, var2913=$r4, var2713=$r7, var1584=java.lang.Object, var912=$r5, var1040=$r6, var3688=$r8, var2814=$r10, var1014=com.mysql.cj.exceptions.CJException, var57=com.mysql.cj.exceptions.ExceptionFactory, var1502=$r11}
; {java.io.InputStream=var1368, r1=var494, r0=var113, i0=var3274, com.mysql.cj.exceptions.ExceptionInterceptor=var415, r9=var80, java.lang.Throwable=var509, $r2=var3753, $r3=var892, com.mysql.cj.Messages=var862, $r4=var2913, $r7=var2713, java.lang.Object=var1584, $r5=var912, $r6=var1040, $r8=var3688, $r10=var2814, com.mysql.cj.exceptions.CJException=var1014, com.mysql.cj.exceptions.ExceptionFactory=var57, $r11=var1502}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.io.InputStream;	r0 := @parameter1: byte[];	i0 := @parameter2: int;	r9 := @parameter3: com.mysql.cj.exceptions.ExceptionInterceptor;	$r2 := @caughtexception;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("Util.5");	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = virtualinvoke $r2.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>($r10, r9);	throw $r11
;block_num 2