(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2021 0)
(declare-sort var2357 0)
(declare-sort var450 0)
(declare-sort var3357 0)
(declare-sort var217 0)
(declare-sort var3622 0)
(declare-sort var1636 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fName/967386610 (var2021) String)
(declare-fun var2021_assertNotNull/-1721149021 (String var2357) void)
(declare-fun cast-from-String-to-var2357 (String) var2357)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2021_fail/-736807444 (String) void)
(declare-fun getModifiers/890868286 (var450) Int)
(declare-fun var217_isPublic/-426263739 (Int) Bool)
(declare-fun arr-var2357-init () (Array Int var2357))
(declare-fun fillInStackTrace/2060917038 (var1636) var1636)
(declare-fun cast-from-var3622-to-var1636 (var3622) var1636)
(declare-const null-var2021 var2021)
(declare-const null-var450 var450)
(declare-const null-var3357 var3357)
(declare-const null-var3622 var3622)
(declare-const var1827 var2021) ; Statement: r0 := @this: junit.framework.TestCase 
(assert (not (= var1827 null-var2021)))
(define-const var913 String (fName/967386610 var1827)) ; Statement: $r1 = r0.<junit.framework.TestCase: java.lang.String fName> 
;(assert (var2021_assertNotNull/-1721149021 "TestCase.fName cannot be null" (cast-from-String-to-var2357 var913))) ; Statement: staticinvoke <junit.framework.TestCase: void assertNotNull(java.lang.String,java.lang.Object)>("TestCase.fName cannot be null", $r1) 

(declare-const var2742 String)
(declare-const var913!1 String)
(define-const var177 var450 null-var450) ; Statement: r22 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1649 var3357) ; Statement: $r15 := @caughtexception 
(assert (not (= var1649 null-var3357)))
(define-const var3944 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3944)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3944!1 String)
(assert (= var3944!1 ""))
(assert true)
(define-const var1941 String (append/672562846 var3944!1 "Method \u0022")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method \"") 
(declare-const var3944!2 String)
(assert (= var3944!2 (str.++ var3944!1 "Method \u0022")))
(define-const var1654 String (fName/967386610 var1827)) ; Statement: $r17 = r0.<junit.framework.TestCase: java.lang.String fName> 
(assert true)
(define-const var2763 String (append/672562846 var1941 var1654)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1941!1 String)
(assert (= var1941!1 (str.++ var1941 var1654)))
(assert true)
(define-const var2568 String (append/672562846 var2763 "\u0022 not found")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" not found") 
(declare-const var2763!1 String)
(assert (= var2763!1 (str.++ var2763 "\u0022 not found")))
(assert true)
(define-const var2976 String (toString/-2075883882 var2568)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2021_fail/-736807444 var2976)) ; Statement: staticinvoke <junit.framework.TestCase: void fail(java.lang.String)>($r21) 

(declare-const var2976!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var2620 Int (getModifiers/890868286 var177)) ; Statement: $i0 = virtualinvoke r22.<java.lang.reflect.Method: int getModifiers()>() 
(define-const var2234 Bool (var217_isPublic/-426263739 var2620)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isPublic(int)>($i0) 
 ; Statement: if $z0 != 0 goto $r5 = newarray (java.lang.Object)[0] 
(assert (not (= (ite var2234 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2980 (Array Int var2357) arr-var2357-init) ; Statement: $r5 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2803 var3622) ; Statement: $r12 := @caughtexception 
(assert (not (= var2803 null-var3622)))
(assert true)
;(assert (fillInStackTrace/2060917038 (cast-from-var3622-to-var1636 var2803))) ; Statement: virtualinvoke $r12.<java.lang.IllegalAccessException: java.lang.Throwable fillInStackTrace()>() 

(declare-const var2803!1 var3622)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {fName/967386610=([junit.framework.TestCase], java.lang.String), var2021_assertNotNull/-1721149021=([java.lang.String, java.lang.Object], void), cast-from-String-to-var2357=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2021_fail/-736807444=([java.lang.String], void), getModifiers/890868286=([java.lang.reflect.Method], int), var217_isPublic/-426263739=([int], boolean), arr-var2357-init=([], java.lang.Object[]), fillInStackTrace/2060917038=([java.lang.Throwable], java.lang.Throwable), cast-from-var3622-to-var1636=([java.lang.IllegalAccessException], java.lang.Throwable)}
; {var2021=junit.framework.TestCase, var1827=r0, var913=$r1, var2357=java.lang.Object, var2742="TestCase.fName cannot be null", var450=java.lang.reflect.Method, var177=r22, var3357=java.lang.NoSuchMethodException, var1649=$r15, var3944=$r16, var1941=$r18, var1654=$r17, var2763=$r19, var2568=$r20, var2976=$r21, var2620=$i0, var217=java.lang.reflect.Modifier, var2234=$z0, var2980=$r5, var3622=java.lang.IllegalAccessException, var2803=$r12, var1636=java.lang.Throwable}
; {junit.framework.TestCase=var2021, r0=var1827, $r1=var913, java.lang.Object=var2357, "TestCase.fName cannot be null"=var2742, java.lang.reflect.Method=var450, r22=var177, java.lang.NoSuchMethodException=var3357, $r15=var1649, $r16=var3944, $r18=var1941, $r17=var1654, $r19=var2763, $r20=var2568, $r21=var2976, $i0=var2620, java.lang.reflect.Modifier=var217, $z0=var2234, $r5=var2980, java.lang.IllegalAccessException=var3622, $r12=var2803, java.lang.Throwable=var1636}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: junit.framework.TestCase;	$r1 = r0.<junit.framework.TestCase: java.lang.String fName>;	staticinvoke <junit.framework.TestCase: void assertNotNull(java.lang.String,java.lang.Object)>("TestCase.fName cannot be null", $r1);	r22 = null;	$r15 := @caughtexception;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method \"");	$r17 = r0.<junit.framework.TestCase: java.lang.String fName>;	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" not found");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <junit.framework.TestCase: void fail(java.lang.String)>($r21);	$i0 = virtualinvoke r22.<java.lang.reflect.Method: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isPublic(int)>($i0);	if $z0 != 0 goto $r5 = newarray (java.lang.Object)[0];	$r5 = newarray (java.lang.Object)[0];	$r12 := @caughtexception;	virtualinvoke $r12.<java.lang.IllegalAccessException: java.lang.Throwable fillInStackTrace()>();	throw $r12
;block_num 5