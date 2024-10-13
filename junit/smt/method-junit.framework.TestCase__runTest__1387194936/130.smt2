(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2238 0)
(declare-sort var3358 0)
(declare-sort var2737 0)
(declare-sort var3772 0)
(declare-sort var2983 0)
(declare-sort var3163 0)
(declare-sort var3330 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fName/967386610 (var2238) String)
(declare-fun var2238_assertNotNull/-1721149021 (String var3358) void)
(declare-fun cast-from-String-to-var3358 (String) var3358)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2238_fail/-736807444 (String) void)
(declare-fun getModifiers/890868286 (var2737) Int)
(declare-fun var2983_isPublic/-426263739 (Int) Bool)
(declare-fun arr-var3358-init () (Array Int var3358))
(declare-fun fillInStackTrace/2060917038 (var3330) var3330)
(declare-fun cast-from-var3163-to-var3330 (var3163) var3330)
(declare-fun getTargetException/2075407118 (var3163) var3330)
(declare-const null-var2238 var2238)
(declare-const null-var2737 var2737)
(declare-const null-var3772 var3772)
(declare-const null-var3163 var3163)
(declare-const var2409 var2238) ; Statement: r0 := @this: junit.framework.TestCase 
(assert (not (= var2409 null-var2238)))
(define-const var2852 String (fName/967386610 var2409)) ; Statement: $r1 = r0.<junit.framework.TestCase: java.lang.String fName> 
;(assert (var2238_assertNotNull/-1721149021 "TestCase.fName cannot be null" (cast-from-String-to-var3358 var2852))) ; Statement: staticinvoke <junit.framework.TestCase: void assertNotNull(java.lang.String,java.lang.Object)>("TestCase.fName cannot be null", $r1) 

(declare-const var765 String)
(declare-const var2852!1 String)
(define-const var3403 var2737 null-var2737) ; Statement: r22 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3026 var3772) ; Statement: $r15 := @caughtexception 
(assert (not (= var3026 null-var3772)))
(define-const var827 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var827)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var827!1 String)
(assert (= var827!1 ""))
(assert true)
(define-const var1517 String (append/672562846 var827!1 "Method \u0022")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method \"") 
(declare-const var827!2 String)
(assert (= var827!2 (str.++ var827!1 "Method \u0022")))
(define-const var1862 String (fName/967386610 var2409)) ; Statement: $r17 = r0.<junit.framework.TestCase: java.lang.String fName> 
(assert true)
(define-const var1184 String (append/672562846 var1517 var1862)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1517!1 String)
(assert (= var1517!1 (str.++ var1517 var1862)))
(assert true)
(define-const var2483 String (append/672562846 var1184 "\u0022 not found")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" not found") 
(declare-const var1184!1 String)
(assert (= var1184!1 (str.++ var1184 "\u0022 not found")))
(assert true)
(define-const var997 String (toString/-2075883882 var2483)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2238_fail/-736807444 var997)) ; Statement: staticinvoke <junit.framework.TestCase: void fail(java.lang.String)>($r21) 

(declare-const var997!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var172 Int (getModifiers/890868286 var3403)) ; Statement: $i0 = virtualinvoke r22.<java.lang.reflect.Method: int getModifiers()>() 
(define-const var3751 Bool (var2983_isPublic/-426263739 var172)) ; Statement: $z0 = staticinvoke <java.lang.reflect.Modifier: boolean isPublic(int)>($i0) 
 ; Statement: if $z0 != 0 goto $r5 = newarray (java.lang.Object)[0] 
(assert (not (= (ite var3751 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1843 (Array Int var3358) arr-var3358-init) ; Statement: $r5 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2835 var3163) ; Statement: $r13 := @caughtexception 
(assert (not (= var2835 null-var3163)))
(assert true)
;(assert (fillInStackTrace/2060917038 (cast-from-var3163-to-var3330 var2835))) ; Statement: virtualinvoke $r13.<java.lang.reflect.InvocationTargetException: java.lang.Throwable fillInStackTrace()>() 

(declare-const var2835!1 var3163)
(assert true)
(define-const var2356 var3330 (getTargetException/2075407118 var2835!1)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>() 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {fName/967386610=([junit.framework.TestCase], java.lang.String), var2238_assertNotNull/-1721149021=([java.lang.String, java.lang.Object], void), cast-from-String-to-var3358=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2238_fail/-736807444=([java.lang.String], void), getModifiers/890868286=([java.lang.reflect.Method], int), var2983_isPublic/-426263739=([int], boolean), arr-var3358-init=([], java.lang.Object[]), fillInStackTrace/2060917038=([java.lang.Throwable], java.lang.Throwable), cast-from-var3163-to-var3330=([java.lang.reflect.InvocationTargetException], java.lang.Throwable), getTargetException/2075407118=([java.lang.reflect.InvocationTargetException], java.lang.Throwable)}
; {var2238=junit.framework.TestCase, var2409=r0, var2852=$r1, var3358=java.lang.Object, var765="TestCase.fName cannot be null", var2737=java.lang.reflect.Method, var3403=r22, var3772=java.lang.NoSuchMethodException, var3026=$r15, var827=$r16, var1517=$r18, var1862=$r17, var1184=$r19, var2483=$r20, var997=$r21, var172=$i0, var2983=java.lang.reflect.Modifier, var3751=$z0, var1843=$r5, var3163=java.lang.reflect.InvocationTargetException, var2835=$r13, var3330=java.lang.Throwable, var2356=$r14}
; {junit.framework.TestCase=var2238, r0=var2409, $r1=var2852, java.lang.Object=var3358, "TestCase.fName cannot be null"=var765, java.lang.reflect.Method=var2737, r22=var3403, java.lang.NoSuchMethodException=var3772, $r15=var3026, $r16=var827, $r18=var1517, $r17=var1862, $r19=var1184, $r20=var2483, $r21=var997, $i0=var172, java.lang.reflect.Modifier=var2983, $z0=var3751, $r5=var1843, java.lang.reflect.InvocationTargetException=var3163, $r13=var2835, java.lang.Throwable=var3330, $r14=var2356}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: junit.framework.TestCase;	$r1 = r0.<junit.framework.TestCase: java.lang.String fName>;	staticinvoke <junit.framework.TestCase: void assertNotNull(java.lang.String,java.lang.Object)>("TestCase.fName cannot be null", $r1);	r22 = null;	$r15 := @caughtexception;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Method \"");	$r17 = r0.<junit.framework.TestCase: java.lang.String fName>;	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" not found");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <junit.framework.TestCase: void fail(java.lang.String)>($r21);	$i0 = virtualinvoke r22.<java.lang.reflect.Method: int getModifiers()>();	$z0 = staticinvoke <java.lang.reflect.Modifier: boolean isPublic(int)>($i0);	if $z0 != 0 goto $r5 = newarray (java.lang.Object)[0];	$r5 = newarray (java.lang.Object)[0];	$r13 := @caughtexception;	virtualinvoke $r13.<java.lang.reflect.InvocationTargetException: java.lang.Throwable fillInStackTrace()>();	$r14 = virtualinvoke $r13.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>();	throw $r14
;block_num 5