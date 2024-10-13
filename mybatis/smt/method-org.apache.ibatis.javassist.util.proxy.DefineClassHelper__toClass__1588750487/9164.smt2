(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var779 0)
(declare-sort var356 0)
(declare-sort var1567 0)
(declare-sort var411 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var779!class ClassObject)
(declare-fun var1567-init () var1567)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMessage/849299655 (var411) String)
(declare-fun cast-from-var356-to-var411 (var356) var411)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-874668403 (var1567 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-var356 var356)
(declare-const var3721 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var3721 null-ClassObject)))
(declare-const var2378 (Array Int Int)) ; Statement: r5 := @parameter1: byte[] 
(assert (not (= var2378 null-__Array__Int__Int__)))
(define-const var3010 ClassObject var779!class) ; Statement: $r0 = class "Lorg/apache/ibatis/javassist/util/proxy/DefineClassHelper;" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1454 var356) ; Statement: $r7 := @caughtexception 
(assert (not (= var1454 null-var356)))
(define-const var1286 var1567 var1567-init) ; Statement: $r8 = new org.apache.ibatis.javassist.CannotCompileException 
(define-const var352 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var352)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var352!1 String)
(assert (= var352!1 ""))
(assert true)
(define-const var1322 String (getMessage/849299655 (cast-from-var356-to-var411 var1454))) ; Statement: $r10 = virtualinvoke $r7.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var3408 String (append/672562846 var352!1 var1322)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var352!2 String)
(assert (= var352!2 (str.++ var352!1 var1322)))
(assert true)
(define-const var3805 String (append/672562846 var3408 ": ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3408!1 String)
(assert (= var3408!1 (str.++ var3408 ": ")))
(assert true)
(define-const var1144 String (getName/-1958580599 var3721)) ; Statement: $r12 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1588 String (append/672562846 var3805 var1144)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3805!1 String)
(assert (= var3805!1 (str.++ var3805 var1144)))
(assert true)
(define-const var2953 String (append/672562846 var1588 " has no permission to define the class")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has no permission to define the class") 
(declare-const var1588!1 String)
(assert (= var1588!1 (str.++ var1588 " has no permission to define the class")))
(assert true)
(define-const var2461 String (toString/-2075883882 var2953)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-874668403 var1286 var2461)) ; Statement: specialinvoke $r8.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>($r16) 

(declare-const var1286!1 var1567)
(declare-const var2461!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1567-init=([], org.apache.ibatis.javassist.CannotCompileException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var356-to-var411=([java.lang.Exception], java.lang.Throwable), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-874668403=([org.apache.ibatis.javassist.CannotCompileException, java.lang.String], void)}
; {var3721=r1, var2378=r5, var779=org.apache.ibatis.javassist.util.proxy.DefineClassHelper, var3010=$r0, var356=java.lang.Exception, var1454=$r7, var1567=org.apache.ibatis.javassist.CannotCompileException, var1286=$r8, var352=$r9, var411=java.lang.Throwable, var1322=$r10, var3408=$r11, var3805=$r13, var1144=$r12, var1588=$r14, var2953=$r15, var2461=$r16}
; {r1=var3721, r5=var2378, org.apache.ibatis.javassist.util.proxy.DefineClassHelper=var779, $r0=var3010, java.lang.Exception=var356, $r7=var1454, org.apache.ibatis.javassist.CannotCompileException=var1567, $r8=var1286, $r9=var352, java.lang.Throwable=var411, $r10=var1322, $r11=var3408, $r13=var3805, $r12=var1144, $r14=var1588, $r15=var2953, $r16=var2461}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Class;	r5 := @parameter1: byte[];	$r0 = class "Lorg/apache/ibatis/javassist/util/proxy/DefineClassHelper;";	$r7 := @caughtexception;	$r8 = new org.apache.ibatis.javassist.CannotCompileException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r7.<java.lang.Exception: java.lang.String getMessage()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r12 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" has no permission to define the class");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>($r16);	throw $r8
;block_num 2