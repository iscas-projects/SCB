(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3807 0)
(declare-sort var1702 0)
(declare-sort var580 0)
(declare-sort var2120 0)
(declare-sort var2596 0)
(declare-sort var2814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1702_randomInt/-546077332 () Int)
(declare-fun var2120_getClassLoader/1023612555 () var580)
(declare-fun var2596_identityHashCode/1096208673 (var2814) Int)
(declare-fun cast-from-var580-to-var2814 (var580) var2814)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun hashCode/-467973558 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3807 var3807)
(declare-const null-var580 var580)
(declare-const var66 var3807) ; Statement: $r6 := @caughtexception 
(assert (not (= var66 null-var3807)))
(define-const var2538 Int var1702_randomInt/-546077332) ; Statement: i2 = staticinvoke <cn.hutool.core.util.RandomUtil: int randomInt()>() 
(assert true) ; Non Conditional
(define-const var3220 var580 var2120_getClassLoader/1023612555) ; Statement: $r7 = staticinvoke <cn.hutool.core.util.ClassLoaderUtil: java.lang.ClassLoader getClassLoader()>() 
 ; Statement: if $r7 == null goto $i3 = 0 
(assert (not (= var3220 null-var580))) ; Negate: Cond: $r7 == null  
(define-const var450 Int (var2596_identityHashCode/1096208673 (cast-from-var580-to-var2814 var3220))) ; Statement: $i3 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>($r7) 
 ; Statement: goto [?= $r8 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var3865 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3865)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3865!1 String)
(assert (= var3865!1 ""))
(define-const var1540 String (Int_toHexString/1865784998 var2538)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i2) 
(assert true)
(define-const var1243 String (append/672562846 var3865!1 var1540)) ; Statement: $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var3865!2 String)
(assert (= var3865!2 (str.++ var3865!1 var1540)))
(define-const var3419 String (Int_toHexString/1865784998 var450)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i3) 
(assert true)
(define-const var997 String (append/672562846 var1243 var3419)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1243!1 String)
(assert (= var1243!1 (str.++ var1243 var3419)))
(assert true)
(define-const var3036 String (toString/-2075883882 var997)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1477 Int (hashCode/-467973558 var3036)) ; Statement: $i0 = virtualinvoke $r5.<java.lang.String: int hashCode()>() 
(define-const var2472 Int (cast-from-Int-to-Int 65535)) ; Statement: $i5 = (int) 65535 
(define-const var3190 Int (bv2nat (bvand ((_ int2bv 64) var1477) ((_ int2bv 64) var2472)))) ; Statement: $i1 = $i0 & $i5 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1702_randomInt/-546077332=([], int), var2120_getClassLoader/1023612555=([], java.lang.ClassLoader), var2596_identityHashCode/1096208673=([java.lang.Object], int), cast-from-var580-to-var2814=([java.lang.ClassLoader], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), Int_toHexString/1865784998=([int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), hashCode/-467973558=([java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var3807=java.lang.Throwable, var66=$r6, var1702=cn.hutool.core.util.RandomUtil, var2538=i2, var580=java.lang.ClassLoader, var2120=cn.hutool.core.util.ClassLoaderUtil, var3220=$r7, var2596=java.lang.System, var2814=java.lang.Object, var450=$i3, var3865=$r8, var1540=$r1, var1243=$r3, var3419=$r2, var997=$r4, var3036=$r5, var1477=$i0, var2472=$i5, var3190=$i1}
; {java.lang.Throwable=var3807, $r6=var66, cn.hutool.core.util.RandomUtil=var1702, i2=var2538, java.lang.ClassLoader=var580, cn.hutool.core.util.ClassLoaderUtil=var2120, $r7=var3220, java.lang.System=var2596, java.lang.Object=var2814, $i3=var450, $r8=var3865, $r1=var1540, $r3=var1243, $r2=var3419, $r4=var997, $r5=var3036, $i0=var1477, $i5=var2472, $i1=var3190}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int hashCode()>": 1}
;stmts $r6 := @caughtexception;	i2 = staticinvoke <cn.hutool.core.util.RandomUtil: int randomInt()>();	$r7 = staticinvoke <cn.hutool.core.util.ClassLoaderUtil: java.lang.ClassLoader getClassLoader()>();	if $r7 == null goto $i3 = 0;	$i3 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>($r7);	goto [?= $r8 = new java.lang.StringBuilder];	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r1 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i2);	$r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r2 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i3);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$i0 = virtualinvoke $r5.<java.lang.String: int hashCode()>();	$i5 = (int) 65535;	$i1 = $i0 & $i5;	return $i1
;block_num 4