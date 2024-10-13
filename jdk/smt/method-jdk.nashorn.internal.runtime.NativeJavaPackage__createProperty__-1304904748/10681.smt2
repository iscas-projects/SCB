(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3559 0)
(declare-sort var2064 0)
(declare-sort var714 0)
(declare-sort var192 0)
(declare-sort var2278 0)
(declare-sort var1781 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1823352142 (var3559) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var714_getContextTrusted/-302620867 () var714)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-String-init () (Array Int String))
(declare-fun var1781_typeError/-1487832051 (String (Array Int String)) var2278)
(declare-const null-var3559 var3559)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var192 var192)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1551 var3559) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.NativeJavaPackage 
(assert (not (= var1551 null-var3559)))
(declare-const var1966 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1966 null-String)))
(define-const var1598 String (name/1823352142 var1551)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.NativeJavaPackage: java.lang.String name> 
(assert true)
(define-const var3412 Bool (isEmpty/-1285796103 var1598)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r33 = new java.lang.StringBuilder 
(assert (= (ite var3412 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1490 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1490)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1490!1 String)
(assert (= var1490!1 ""))
(define-const var3903 String (name/1823352142 var1551)) ; Statement: $r3 = r0.<jdk.nashorn.internal.runtime.NativeJavaPackage: java.lang.String name> 
(assert true)
(define-const var2828 String (append/672562846 var1490!1 var3903)) ; Statement: $r4 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1490!2 String)
(assert (= var1490!2 (str.++ var1490!1 var3903)))
(assert true)
(define-const var279 String (append/672562846 var2828 ".")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2828!1 String)
(assert (= var2828!1 (str.++ var2828 ".")))
(assert true)
(define-const var3851 String (append/672562846 var279 var1966)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var279!1 String)
(assert (= var279!1 (str.++ var279 var1966)))
(assert true)
(define-const var3546 String (toString/-2075883882 var3851)) ; Statement: $r28 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var671 String var3546) ; Statement: r8 = $r28 
(define-const var263 var714 var714_getContextTrusted/-302620867) ; Statement: $r23 = staticinvoke <jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.Context getContextTrusted()>() 
(define-const var3030 ClassObject null-ClassObject) ; Statement: r29 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3036 var192) ; Statement: $r27 := @caughtexception 
(assert (not (= var3036 null-var192)))
(assert true) ; Non Conditional
(assert true)
(define-const var427 Int (indexOf/-1037706067 var1966 40)) ; Statement: $i3 = virtualinvoke r5.<java.lang.String: int indexOf(int)>(40) 
(assert true)
(define-const var3417 Int (lastIndexOf/-1292097097 var1966 41)) ; Statement: $i4 = virtualinvoke r5.<java.lang.String: int lastIndexOf(int)>(41) 
(define-const var1823 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if $i3 != $i6 goto $i0 = virtualinvoke r5.<java.lang.String: int length()>() 
(assert (not (= var427 var1823))) ; Cond: $i3 != $i6 
(assert true)
(define-const var827 Int (length/-134980193 var1966)) ; Statement: $i0 = virtualinvoke r5.<java.lang.String: int length()>() 
(define-const var1904 Int (- var827 1)) ; Statement: $i2 = $i0 - 1 
(define-const var663 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 == $i10 goto $r9 = newarray (java.lang.String)[1] 
(assert (= var427 var663)) ; Cond: $i3 == $i10 
(define-const var1323 (Array Int String) arr-String-init) ; Statement: $r9 = newarray (java.lang.String)[1] 
(declare-const var1323!1 (Array Int String))
(assert (not (= var1323!1 null-__Array__Int__String__)))
(assert (= (select var1323!1 0) var1966)) ; Statement: $r9[0] = r5 
(define-const var931 var2278 (var1781_typeError/-1487832051 "improper.constructor.signature" var1323!1)) ; Statement: $r10 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(java.lang.String,java.lang.String[])>("improper.constructor.signature", $r9) 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1823352142=([jdk.nashorn.internal.runtime.NativeJavaPackage], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var714_getContextTrusted/-302620867=([], jdk.nashorn.internal.runtime.Context), indexOf/-1037706067=([java.lang.String, int], int), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), arr-String-init=([], java.lang.String[]), var1781_typeError/-1487832051=([java.lang.String, java.lang.String[]], jdk.nashorn.internal.runtime.ECMAException)}
; {var3559=jdk.nashorn.internal.runtime.NativeJavaPackage, var1551=r0, var1966=r5, var2064=null_type, var1598=$r1, var3412=$z0, var1490=$r33, var3903=$r3, var2828=$r4, var279=$r6, var3851=$r7, var3546=$r28, var671=r8, var714=jdk.nashorn.internal.runtime.Context, var263=$r23, var3030=r29, var192=java.lang.Throwable, var3036=$r27, var427=$i3, var3417=$i4, var1823=$i6, var827=$i0, var1904=$i2, var663=$i10, var1323=$r9, var2278=jdk.nashorn.internal.runtime.ECMAException, var1781=jdk.nashorn.internal.runtime.ECMAErrors, var931=$r10}
; {jdk.nashorn.internal.runtime.NativeJavaPackage=var3559, r0=var1551, r5=var1966, null_type=var2064, $r1=var1598, $z0=var3412, $r33=var1490, $r3=var3903, $r4=var2828, $r6=var279, $r7=var3851, $r28=var3546, r8=var671, jdk.nashorn.internal.runtime.Context=var714, $r23=var263, r29=var3030, java.lang.Throwable=var192, $r27=var3036, $i3=var427, $i4=var3417, $i6=var1823, $i0=var827, $i2=var1904, $i10=var663, $r9=var1323, jdk.nashorn.internal.runtime.ECMAException=var2278, jdk.nashorn.internal.runtime.ECMAErrors=var1781, $r10=var931}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.NativeJavaPackage;	r5 := @parameter0: java.lang.String;	$r1 = r0.<jdk.nashorn.internal.runtime.NativeJavaPackage: java.lang.String name>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r33 = new java.lang.StringBuilder;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<jdk.nashorn.internal.runtime.NativeJavaPackage: java.lang.String name>;	$r4 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r28 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r8 = $r28;	$r23 = staticinvoke <jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.Context getContextTrusted()>();	r29 = null;	$r27 := @caughtexception;	$i3 = virtualinvoke r5.<java.lang.String: int indexOf(int)>(40);	$i4 = virtualinvoke r5.<java.lang.String: int lastIndexOf(int)>(41);	$i6 = (int) -1;	if $i3 != $i6 goto $i0 = virtualinvoke r5.<java.lang.String: int length()>();	$i0 = virtualinvoke r5.<java.lang.String: int length()>();	$i2 = $i0 - 1;	$i10 = (int) -1;	if $i3 == $i10 goto $r9 = newarray (java.lang.String)[1];	$r9 = newarray (java.lang.String)[1];	$r9[0] = r5;	$r10 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(java.lang.String,java.lang.String[])>("improper.constructor.signature", $r9);	throw $r10
;block_num 7