(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3185 0)
(declare-sort var3460 0)
(declare-sort var480 0)
(declare-sort var1752 0)
(declare-sort var3586 0)
(declare-sort var3706 0)
(declare-sort var1904 0)
(declare-sort var3628 0)
(declare-sort var1915 0)
(declare-sort var2528 0)
(declare-sort var599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2528!class ClassObject)
(declare-fun var480-init () var480)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3586_getString/-1547297038 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3460) ClassObject)
(declare-fun cast-from-var1752-to-var3460 (var1752) var3460)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun session/1390366865 (var3185) var3706)
(declare-fun var3706_getExceptionInterceptor/1444984725 (var3706) var1904)
(declare-fun var1915_createException/1564359364 (ClassObject String var599 var1904) var3628)
(declare-fun cast-from-var1752-to-var599 (var1752) var599)
(declare-fun cast-from-var3628-to-var2528 (var3628) var2528)
(declare-const null-var3185 var3185)
(declare-const null-Int Int)
(declare-const null-var3460 var3460)
(declare-const null-var1752 var1752)
(declare-const var2400 var3185) ; Statement: r5 := @this: com.mysql.cj.NativeQueryBindings 
(assert (not (= var2400 null-var3185)))
(declare-const var1107 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1107 null-Int)))
(declare-const var3999 var3460) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3999 null-var3460)))
(define-const var285 var480 var480-init) ; Statement: $r0 = new java.io.ByteArrayOutputStream 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2369 var1752) ; Statement: $r9 := @caughtexception 
(assert (not (= var2369 null-var1752)))
(define-const var3159 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3159)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3159!1 String)
(assert (= var3159!1 ""))
(define-const var3744 String (var3586_getString/-1547297038 "PreparedStatement.54")) ; Statement: $r11 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("PreparedStatement.54") 
(assert true)
(define-const var2722 String (append/672562846 var3159!1 var3744)) ; Statement: $r14 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3159!2 String)
(assert (= var3159!2 (str.++ var3159!1 var3744)))
(assert true)
(define-const var3931 ClassObject (getClass/1258963082 (cast-from-var1752-to-var3460 var2369))) ; Statement: $r12 = virtualinvoke $r9.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var801 String (getName/-1958580599 var3931)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1439 String (append/672562846 var2722 var801)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2722!1 String)
(assert (= var2722!1 (str.++ var2722 var801)))
(assert true)
(define-const var2075 String (toString/-2075883882 var1439)) ; Statement: $r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var769 var3706 (session/1390366865 var2400)) ; Statement: $r16 = r5.<com.mysql.cj.NativeQueryBindings: com.mysql.cj.Session session> 
(define-const var3840 var1904 (var3706_getExceptionInterceptor/1444984725 var769)) ; Statement: $r17 = interfaceinvoke $r16.<com.mysql.cj.Session: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>() 
(define-const var1927 var3628 (var1915_createException/1564359364 var2528!class var2075 (cast-from-var1752-to-var599 var2369) var3840)) ; Statement: $r19 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,java.lang.Throwable,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r18, $r9, $r17) 
(define-const var2766 var2528 (cast-from-var3628-to-var2528 var1927)) ; Statement: $r20 = (com.mysql.cj.exceptions.WrongArgumentException) $r19 
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var480-init=([], java.io.ByteArrayOutputStream), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3586_getString/-1547297038=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1752-to-var3460=([java.lang.Exception], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), session/1390366865=([com.mysql.cj.NativeQueryBindings], com.mysql.cj.Session), var3706_getExceptionInterceptor/1444984725=([com.mysql.cj.Session], com.mysql.cj.exceptions.ExceptionInterceptor), var1915_createException/1564359364=([java.lang.Class, java.lang.String, java.lang.Throwable, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException), cast-from-var1752-to-var599=([java.lang.Exception], java.lang.Throwable), cast-from-var3628-to-var2528=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var3185=com.mysql.cj.NativeQueryBindings, var2400=r5, var1107=i0, var3460=java.lang.Object, var3999=r2, var480=java.io.ByteArrayOutputStream, var285=$r0, var1752=java.lang.Exception, var2369=$r9, var3159=$r10, var3586=com.mysql.cj.Messages, var3744=$r11, var2722=$r14, var3931=$r12, var801=$r13, var1439=$r15, var2075=$r18, var3706=com.mysql.cj.Session, var769=$r16, var1904=com.mysql.cj.exceptions.ExceptionInterceptor, var3840=$r17, var3628=com.mysql.cj.exceptions.CJException, var1915=com.mysql.cj.exceptions.ExceptionFactory, var2528=com.mysql.cj.exceptions.WrongArgumentException, var599=java.lang.Throwable, var1927=$r19, var2766=$r20}
; {com.mysql.cj.NativeQueryBindings=var3185, r5=var2400, i0=var1107, java.lang.Object=var3460, r2=var3999, java.io.ByteArrayOutputStream=var480, $r0=var285, java.lang.Exception=var1752, $r9=var2369, $r10=var3159, com.mysql.cj.Messages=var3586, $r11=var3744, $r14=var2722, $r12=var3931, $r13=var801, $r15=var1439, $r18=var2075, com.mysql.cj.Session=var3706, $r16=var769, com.mysql.cj.exceptions.ExceptionInterceptor=var1904, $r17=var3840, com.mysql.cj.exceptions.CJException=var3628, com.mysql.cj.exceptions.ExceptionFactory=var1915, com.mysql.cj.exceptions.WrongArgumentException=var2528, java.lang.Throwable=var599, $r19=var1927, $r20=var2766}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.mysql.cj.NativeQueryBindings;	i0 := @parameter0: int;	r2 := @parameter1: java.lang.Object;	$r0 = new java.io.ByteArrayOutputStream;	$r9 := @caughtexception;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = staticinvoke <com.mysql.cj.Messages: java.lang.String getString(java.lang.String)>("PreparedStatement.54");	$r14 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r12 = virtualinvoke $r9.<java.lang.Object: java.lang.Class getClass()>();	$r13 = virtualinvoke $r12.<java.lang.Class: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r18 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = r5.<com.mysql.cj.NativeQueryBindings: com.mysql.cj.Session session>;	$r17 = interfaceinvoke $r16.<com.mysql.cj.Session: com.mysql.cj.exceptions.ExceptionInterceptor getExceptionInterceptor()>();	$r19 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,java.lang.Throwable,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r18, $r9, $r17);	$r20 = (com.mysql.cj.exceptions.WrongArgumentException) $r19;	throw $r20
;block_num 2