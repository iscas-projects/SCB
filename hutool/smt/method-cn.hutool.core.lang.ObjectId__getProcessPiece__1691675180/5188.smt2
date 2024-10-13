(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1677 0)
(declare-sort var1757 0)
(declare-sort var839 0)
(declare-sort var709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1757_randomInt/-546077332 () Int)
(declare-fun var709_getClassLoader/1023612555 () var839)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun Int_toHexString/1865784998 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun hashCode/-467973558 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1677 var1677)
(declare-const null-var839 var839)
(declare-const var2634 var1677) ; Statement: $r6 := @caughtexception 
(assert (not (= var2634 null-var1677)))
(define-const var3239 Int var1757_randomInt/-546077332) ; Statement: i2 = staticinvoke <cn.hutool.core.util.RandomUtil: int randomInt()>() 
(assert true) ; Non Conditional
(define-const var3939 var839 var709_getClassLoader/1023612555) ; Statement: $r7 = staticinvoke <cn.hutool.core.util.ClassLoaderUtil: java.lang.ClassLoader getClassLoader()>() 
 ; Statement: if $r7 == null goto $i3 = 0 
(assert (= var3939 null-var839)) ; Cond: $r7 == null 
(define-const var3745 Int 0) ; Statement: $i3 = 0 
(assert true) ; Non Conditional
(define-const var2289 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2289)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2289!1 String)
(assert (= var2289!1 ""))
(define-const var2655 String (Int_toHexString/1865784998 var3239)) ; Statement: $r1 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i2) 
(assert true)
(define-const var1445 String (append/672562846 var2289!1 var2655)) ; Statement: $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var2289!2 String)
(assert (= var2289!2 (str.++ var2289!1 var2655)))
(define-const var2095 String (Int_toHexString/1865784998 var3745)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i3) 
(assert true)
(define-const var944 String (append/672562846 var1445 var2095)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1445!1 String)
(assert (= var1445!1 (str.++ var1445 var2095)))
(assert true)
(define-const var3601 String (toString/-2075883882 var944)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var766 Int (hashCode/-467973558 var3601)) ; Statement: $i0 = virtualinvoke $r5.<java.lang.String: int hashCode()>() 
(define-const var2139 Int (cast-from-Int-to-Int 65535)) ; Statement: $i5 = (int) 65535 
(define-const var1135 Int (bv2nat (bvand ((_ int2bv 64) var766) ((_ int2bv 64) var2139)))) ; Statement: $i1 = $i0 & $i5 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1757_randomInt/-546077332=([], int), var709_getClassLoader/1023612555=([], java.lang.ClassLoader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), Int_toHexString/1865784998=([int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), hashCode/-467973558=([java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var1677=java.lang.Throwable, var2634=$r6, var1757=cn.hutool.core.util.RandomUtil, var3239=i2, var839=java.lang.ClassLoader, var709=cn.hutool.core.util.ClassLoaderUtil, var3939=$r7, var3745=$i3, var2289=$r8, var2655=$r1, var1445=$r3, var2095=$r2, var944=$r4, var3601=$r5, var766=$i0, var2139=$i5, var1135=$i1}
; {java.lang.Throwable=var1677, $r6=var2634, cn.hutool.core.util.RandomUtil=var1757, i2=var3239, java.lang.ClassLoader=var839, cn.hutool.core.util.ClassLoaderUtil=var709, $r7=var3939, $i3=var3745, $r8=var2289, $r1=var2655, $r3=var1445, $r2=var2095, $r4=var944, $r5=var3601, $i0=var766, $i5=var2139, $i1=var1135}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int hashCode()>": 1}
;stmts $r6 := @caughtexception;	i2 = staticinvoke <cn.hutool.core.util.RandomUtil: int randomInt()>();	$r7 = staticinvoke <cn.hutool.core.util.ClassLoaderUtil: java.lang.ClassLoader getClassLoader()>();	if $r7 == null goto $i3 = 0;	$i3 = 0;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r1 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i2);	$r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r2 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i3);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$i0 = virtualinvoke $r5.<java.lang.String: int hashCode()>();	$i5 = (int) 65535;	$i1 = $i0 & $i5;	return $i1
;block_num 4