(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1795 0)
(declare-sort var1608 0)
(declare-sort var1430 0)
(declare-sort var510 0)
(declare-sort var111 0)
(declare-sort var2288 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/1823352142 (var1795) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var1430_getContextTrusted/-302620867 () var1430)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-String-init () (Array Int String))
(declare-fun var2288_typeError/-1487832051 (String (Array Int String)) var111)
(declare-const null-var1795 var1795)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var510 var510)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var1851 var1795) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.NativeJavaPackage 
(assert (not (= var1851 null-var1795)))
(declare-const var2920 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2920 null-String)))
(define-const var1454 String (name/1823352142 var1851)) ; Statement: $r1 = r0.<jdk.nashorn.internal.runtime.NativeJavaPackage: java.lang.String name> 
(assert true)
(define-const var190 Bool (isEmpty/-1285796103 var1454)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r33 = new java.lang.StringBuilder 
(assert (not (= (ite var190 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1117 String var2920) ; Statement: $r28 = r5 
 ; Statement: goto [?= r8 = $r28] 
(assert true) ; Non Conditional
(define-const var187 String var1117) ; Statement: r8 = $r28 
(define-const var2831 var1430 var1430_getContextTrusted/-302620867) ; Statement: $r23 = staticinvoke <jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.Context getContextTrusted()>() 
(define-const var920 ClassObject null-ClassObject) ; Statement: r29 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var653 var510) ; Statement: $r27 := @caughtexception 
(assert (not (= var653 null-var510)))
(assert true) ; Non Conditional
(assert true)
(define-const var2832 Int (indexOf/-1037706067 var2920 40)) ; Statement: $i3 = virtualinvoke r5.<java.lang.String: int indexOf(int)>(40) 
(assert true)
(define-const var464 Int (lastIndexOf/-1292097097 var2920 41)) ; Statement: $i4 = virtualinvoke r5.<java.lang.String: int lastIndexOf(int)>(41) 
(define-const var2 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if $i3 != $i6 goto $i0 = virtualinvoke r5.<java.lang.String: int length()>() 
(assert (not (= var2832 var2))) ; Cond: $i3 != $i6 
(assert true)
(define-const var116 Int (length/-134980193 var2920)) ; Statement: $i0 = virtualinvoke r5.<java.lang.String: int length()>() 
(define-const var690 Int (- var116 1)) ; Statement: $i2 = $i0 - 1 
(define-const var1849 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i3 == $i10 goto $r9 = newarray (java.lang.String)[1] 
(assert (= var2832 var1849)) ; Cond: $i3 == $i10 
(define-const var3436 (Array Int String) arr-String-init) ; Statement: $r9 = newarray (java.lang.String)[1] 
(declare-const var3436!1 (Array Int String))
(assert (not (= var3436!1 null-__Array__Int__String__)))
(assert (= (select var3436!1 0) var2920)) ; Statement: $r9[0] = r5 
(define-const var815 var111 (var2288_typeError/-1487832051 "improper.constructor.signature" var3436!1)) ; Statement: $r10 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(java.lang.String,java.lang.String[])>("improper.constructor.signature", $r9) 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {name/1823352142=([jdk.nashorn.internal.runtime.NativeJavaPackage], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var1430_getContextTrusted/-302620867=([], jdk.nashorn.internal.runtime.Context), indexOf/-1037706067=([java.lang.String, int], int), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), arr-String-init=([], java.lang.String[]), var2288_typeError/-1487832051=([java.lang.String, java.lang.String[]], jdk.nashorn.internal.runtime.ECMAException)}
; {var1795=jdk.nashorn.internal.runtime.NativeJavaPackage, var1851=r0, var2920=r5, var1608=null_type, var1454=$r1, var190=$z0, var1117=$r28, var187=r8, var1430=jdk.nashorn.internal.runtime.Context, var2831=$r23, var920=r29, var510=java.lang.Throwable, var653=$r27, var2832=$i3, var464=$i4, var2=$i6, var116=$i0, var690=$i2, var1849=$i10, var3436=$r9, var111=jdk.nashorn.internal.runtime.ECMAException, var2288=jdk.nashorn.internal.runtime.ECMAErrors, var815=$r10}
; {jdk.nashorn.internal.runtime.NativeJavaPackage=var1795, r0=var1851, r5=var2920, null_type=var1608, $r1=var1454, $z0=var190, $r28=var1117, r8=var187, jdk.nashorn.internal.runtime.Context=var1430, $r23=var2831, r29=var920, java.lang.Throwable=var510, $r27=var653, $i3=var2832, $i4=var464, $i6=var2, $i0=var116, $i2=var690, $i10=var1849, $r9=var3436, jdk.nashorn.internal.runtime.ECMAException=var111, jdk.nashorn.internal.runtime.ECMAErrors=var2288, $r10=var815}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.NativeJavaPackage;	r5 := @parameter0: java.lang.String;	$r1 = r0.<jdk.nashorn.internal.runtime.NativeJavaPackage: java.lang.String name>;	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r33 = new java.lang.StringBuilder;	$r28 = r5;	goto [?= r8 = $r28];	r8 = $r28;	$r23 = staticinvoke <jdk.nashorn.internal.runtime.Context: jdk.nashorn.internal.runtime.Context getContextTrusted()>();	r29 = null;	$r27 := @caughtexception;	$i3 = virtualinvoke r5.<java.lang.String: int indexOf(int)>(40);	$i4 = virtualinvoke r5.<java.lang.String: int lastIndexOf(int)>(41);	$i6 = (int) -1;	if $i3 != $i6 goto $i0 = virtualinvoke r5.<java.lang.String: int length()>();	$i0 = virtualinvoke r5.<java.lang.String: int length()>();	$i2 = $i0 - 1;	$i10 = (int) -1;	if $i3 == $i10 goto $r9 = newarray (java.lang.String)[1];	$r9 = newarray (java.lang.String)[1];	$r9[0] = r5;	$r10 = staticinvoke <jdk.nashorn.internal.runtime.ECMAErrors: jdk.nashorn.internal.runtime.ECMAException typeError(java.lang.String,java.lang.String[])>("improper.constructor.signature", $r9);	throw $r10
;block_num 7