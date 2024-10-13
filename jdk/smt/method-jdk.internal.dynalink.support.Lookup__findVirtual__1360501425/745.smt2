(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var750 0)
(declare-sort var1293 0)
(declare-sort var231 0)
(declare-sort var2989 0)
(declare-sort var2659 0)
(declare-sort var1533 0)
(declare-sort var475 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lookup/-920752463 (var750) var2989)
(declare-fun var1533-init () var1533)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var750_methodDescription/283838376 (ClassObject String var231) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-251936199 (var1533 String) void)
(declare-fun initCause/2003336360 (var475 var475) var475)
(declare-fun cast-from-var1533-to-var475 (var1533) var475)
(declare-fun cast-from-var2659-to-var475 (var2659) var475)
(declare-const null-var750 var750)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var231 var231)
(declare-const null-var2659 var2659)
(declare-const var2680 var750) ; Statement: r0 := @this: jdk.internal.dynalink.support.Lookup 
(assert (not (= var2680 null-var750)))
(declare-const var2042 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2042 null-ClassObject)))
(declare-const var2871 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2871 null-String)))
(declare-const var2110 var231) ; Statement: r3 := @parameter2: java.lang.invoke.MethodType 
(assert (not (= var2110 null-var231)))
(define-const var1362 var2989 (lookup/-920752463 var2680)) ; Statement: $r4 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var677 var2659) ; Statement: $r6 := @caughtexception 
(assert (not (= var677 null-var2659)))
(define-const var3357 var1533 var1533-init) ; Statement: $r7 = new java.lang.NoSuchMethodError 
(define-const var99 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var99)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var99!1 String)
(assert (= var99!1 ""))
(assert true)
(define-const var3630 String (append/672562846 var99!1 "Failed to find virtual method ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to find virtual method ") 
(declare-const var99!2 String)
(assert (= var99!2 (str.++ var99!1 "Failed to find virtual method ")))
(define-const var978 String (var750_methodDescription/283838376 var2042 var2871 var2110)) ; Statement: $r9 = staticinvoke <jdk.internal.dynalink.support.Lookup: java.lang.String methodDescription(java.lang.Class,java.lang.String,java.lang.invoke.MethodType)>(r1, r2, r3) 
(assert true)
(define-const var395 String (append/672562846 var3630 var978)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3630!1 String)
(assert (= var3630!1 (str.++ var3630 var978)))
(assert true)
(define-const var1811 String (toString/-2075883882 var395)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-251936199 var3357 var1811)) ; Statement: specialinvoke $r7.<java.lang.NoSuchMethodError: void <init>(java.lang.String)>($r12) 

(declare-const var3357!1 var1533)
(declare-const var1811!1 String)
(assert true)
;(assert (initCause/2003336360 (cast-from-var1533-to-var475 var3357!1) (cast-from-var2659-to-var475 var677))) ; Statement: virtualinvoke $r7.<java.lang.NoSuchMethodError: java.lang.Throwable initCause(java.lang.Throwable)>($r6) 

(declare-const var3357!2 var1533)
(declare-const var677!1 var2659)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {lookup/-920752463=([jdk.internal.dynalink.support.Lookup], java.lang.invoke.MethodHandles$Lookup), var1533-init=([], java.lang.NoSuchMethodError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var750_methodDescription/283838376=([java.lang.Class, java.lang.String, java.lang.invoke.MethodType], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-251936199=([java.lang.NoSuchMethodError, java.lang.String], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var1533-to-var475=([java.lang.NoSuchMethodError], java.lang.Throwable), cast-from-var2659-to-var475=([java.lang.NoSuchMethodException], java.lang.Throwable)}
; {var750=jdk.internal.dynalink.support.Lookup, var2680=r0, var2042=r1, var2871=r2, var1293=null_type, var231=java.lang.invoke.MethodType, var2110=r3, var2989=java.lang.invoke.MethodHandles$Lookup, var1362=$r4, var2659=java.lang.NoSuchMethodException, var677=$r6, var1533=java.lang.NoSuchMethodError, var3357=$r7, var99=$r8, var3630=$r10, var978=$r9, var395=$r11, var1811=$r12, var475=java.lang.Throwable}
; {jdk.internal.dynalink.support.Lookup=var750, r0=var2680, r1=var2042, r2=var2871, null_type=var1293, java.lang.invoke.MethodType=var231, r3=var2110, java.lang.invoke.MethodHandles$Lookup=var2989, $r4=var1362, java.lang.NoSuchMethodException=var2659, $r6=var677, java.lang.NoSuchMethodError=var1533, $r7=var3357, $r8=var99, $r10=var3630, $r9=var978, $r11=var395, $r12=var1811, java.lang.Throwable=var475}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.dynalink.support.Lookup;	r1 := @parameter0: java.lang.Class;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.invoke.MethodType;	$r4 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup>;	$r6 := @caughtexception;	$r7 = new java.lang.NoSuchMethodError;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to find virtual method ");	$r9 = staticinvoke <jdk.internal.dynalink.support.Lookup: java.lang.String methodDescription(java.lang.Class,java.lang.String,java.lang.invoke.MethodType)>(r1, r2, r3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.NoSuchMethodError: void <init>(java.lang.String)>($r12);	virtualinvoke $r7.<java.lang.NoSuchMethodError: java.lang.Throwable initCause(java.lang.Throwable)>($r6);	throw $r7
;block_num 2