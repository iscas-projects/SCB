(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3213 0)
(declare-sort var1994 0)
(declare-sort var2415 0)
(declare-sort var1269 0)
(declare-sort var3430 0)
(declare-sort var916 0)
(declare-sort var2227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lookup/-920752463 (var3213) var1269)
(declare-fun var916-init () var916)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3213_methodDescription/283838376 (ClassObject String var2415) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-251936199 (var916 String) void)
(declare-fun initCause/2003336360 (var2227 var2227) var2227)
(declare-fun cast-from-var916-to-var2227 (var916) var2227)
(declare-fun cast-from-var3430-to-var2227 (var3430) var2227)
(declare-const null-var3213 var3213)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const null-var2415 var2415)
(declare-const null-var3430 var3430)
(declare-const var3093 var3213) ; Statement: r0 := @this: jdk.internal.dynalink.support.Lookup 
(assert (not (= var3093 null-var3213)))
(declare-const var1189 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var1189 null-ClassObject)))
(declare-const var1306 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1306 null-String)))
(declare-const var1419 var2415) ; Statement: r3 := @parameter2: java.lang.invoke.MethodType 
(assert (not (= var1419 null-var2415)))
(define-const var3600 var1269 (lookup/-920752463 var3093)) ; Statement: $r4 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2046 var3430) ; Statement: $r6 := @caughtexception 
(assert (not (= var2046 null-var3430)))
(define-const var3788 var916 var916-init) ; Statement: $r7 = new java.lang.NoSuchMethodError 
(define-const var562 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var562)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var562!1 String)
(assert (= var562!1 ""))
(assert true)
(define-const var2894 String (append/672562846 var562!1 "Failed to find static method ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to find static method ") 
(declare-const var562!2 String)
(assert (= var562!2 (str.++ var562!1 "Failed to find static method ")))
(define-const var1938 String (var3213_methodDescription/283838376 var1189 var1306 var1419)) ; Statement: $r9 = staticinvoke <jdk.internal.dynalink.support.Lookup: java.lang.String methodDescription(java.lang.Class,java.lang.String,java.lang.invoke.MethodType)>(r1, r2, r3) 
(assert true)
(define-const var3566 String (append/672562846 var2894 var1938)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2894!1 String)
(assert (= var2894!1 (str.++ var2894 var1938)))
(assert true)
(define-const var3626 String (toString/-2075883882 var3566)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-251936199 var3788 var3626)) ; Statement: specialinvoke $r7.<java.lang.NoSuchMethodError: void <init>(java.lang.String)>($r12) 

(declare-const var3788!1 var916)
(declare-const var3626!1 String)
(assert true)
;(assert (initCause/2003336360 (cast-from-var916-to-var2227 var3788!1) (cast-from-var3430-to-var2227 var2046))) ; Statement: virtualinvoke $r7.<java.lang.NoSuchMethodError: java.lang.Throwable initCause(java.lang.Throwable)>($r6) 

(declare-const var3788!2 var916)
(declare-const var2046!1 var3430)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {lookup/-920752463=([jdk.internal.dynalink.support.Lookup], java.lang.invoke.MethodHandles$Lookup), var916-init=([], java.lang.NoSuchMethodError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3213_methodDescription/283838376=([java.lang.Class, java.lang.String, java.lang.invoke.MethodType], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-251936199=([java.lang.NoSuchMethodError, java.lang.String], void), initCause/2003336360=([java.lang.Throwable, java.lang.Throwable], java.lang.Throwable), cast-from-var916-to-var2227=([java.lang.NoSuchMethodError], java.lang.Throwable), cast-from-var3430-to-var2227=([java.lang.NoSuchMethodException], java.lang.Throwable)}
; {var3213=jdk.internal.dynalink.support.Lookup, var3093=r0, var1189=r1, var1306=r2, var1994=null_type, var2415=java.lang.invoke.MethodType, var1419=r3, var1269=java.lang.invoke.MethodHandles$Lookup, var3600=$r4, var3430=java.lang.NoSuchMethodException, var2046=$r6, var916=java.lang.NoSuchMethodError, var3788=$r7, var562=$r8, var2894=$r10, var1938=$r9, var3566=$r11, var3626=$r12, var2227=java.lang.Throwable}
; {jdk.internal.dynalink.support.Lookup=var3213, r0=var3093, r1=var1189, r2=var1306, null_type=var1994, java.lang.invoke.MethodType=var2415, r3=var1419, java.lang.invoke.MethodHandles$Lookup=var1269, $r4=var3600, java.lang.NoSuchMethodException=var3430, $r6=var2046, java.lang.NoSuchMethodError=var916, $r7=var3788, $r8=var562, $r10=var2894, $r9=var1938, $r11=var3566, $r12=var3626, java.lang.Throwable=var2227}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.dynalink.support.Lookup;	r1 := @parameter0: java.lang.Class;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.invoke.MethodType;	$r4 = r0.<jdk.internal.dynalink.support.Lookup: java.lang.invoke.MethodHandles$Lookup lookup>;	$r6 := @caughtexception;	$r7 = new java.lang.NoSuchMethodError;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to find static method ");	$r9 = staticinvoke <jdk.internal.dynalink.support.Lookup: java.lang.String methodDescription(java.lang.Class,java.lang.String,java.lang.invoke.MethodType)>(r1, r2, r3);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.NoSuchMethodError: void <init>(java.lang.String)>($r12);	virtualinvoke $r7.<java.lang.NoSuchMethodError: java.lang.Throwable initCause(java.lang.Throwable)>($r6);	throw $r7
;block_num 2