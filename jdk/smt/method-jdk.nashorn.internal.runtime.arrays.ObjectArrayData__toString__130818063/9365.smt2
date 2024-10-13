(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1393 0)
(declare-sort var872 0)
(declare-sort var2294 0)
(declare-sort var1371 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var872) ClassObject)
(declare-fun cast-from-var1393-to-var872 (var1393) var872)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun array/-508569937 (var1393) (Array Int var872))
(declare-fun length/1541320555 (var2294) Int)
(declare-fun cast-from-var1393-to-var2294 (var1393) var2294)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1371_copyOf/-1140654950 ((Array Int var872) Int) (Array Int var872))
(declare-fun var1371_toString/-575966009 ((Array Int var872)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1393 var1393)
(declare-const var1393-$assertionsDisabled Bool)
(declare-const var3488 var1393) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.arrays.ObjectArrayData 
(assert (not (= var3488 null-var1393)))
(define-const var345 Bool var1393-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.arrays.ObjectArrayData: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r21 = new java.lang.StringBuilder 
(assert (not (= (ite var345 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2097 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2097)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2097!1 String)
(assert (= var2097!1 ""))
(assert true)
(define-const var1390 ClassObject (getClass/1258963082 (cast-from-var1393-to-var872 var3488))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3897 String (getSimpleName/-390194377 var1390)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2863 String (append/672562846 var2097!1 var3897)) ; Statement: $r4 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2097!2 String)
(assert (= var2097!2 (str.++ var2097!1 var3897)))
(assert true)
(define-const var1865 String (append/-1166366385 var2863 58)) ; Statement: $r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var2863!1 String)
(assert (str.prefixof var2863 var2863!1))
(define-const var1549 (Array Int var872) (array/-508569937 var3488)) ; Statement: $r5 = r1.<jdk.nashorn.internal.runtime.arrays.ObjectArrayData: java.lang.Object[] array> 
(assert true)
(define-const var2051 Int (length/1541320555 (cast-from-var1393-to-var2294 var3488))) ; Statement: $l0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.arrays.ObjectArrayData: long length()>() 
(define-const var2253 Int (cast-from-Int-to-Int var2051)) ; Statement: $i1 = (int) $l0 
(define-const var1556 (Array Int var872) (var1371_copyOf/-1140654950 var1549 var2253)) ; Statement: $r6 = staticinvoke <java.util.Arrays: java.lang.Object[] copyOf(java.lang.Object[],int)>($r5, $i1) 
(define-const var669 String (var1371_toString/-575966009 var1556)) ; Statement: $r7 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r6) 
(assert true)
(define-const var3904 String (append/672562846 var1865 var669)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1865!1 String)
(assert (= var1865!1 (str.++ var1865 var669)))
(assert true)
(define-const var2386 String (toString/-2075883882 var3904)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1393-to-var872=([jdk.nashorn.internal.runtime.arrays.ObjectArrayData], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), array/-508569937=([jdk.nashorn.internal.runtime.arrays.ObjectArrayData], java.lang.Object[]), length/1541320555=([jdk.nashorn.internal.runtime.arrays.ArrayData], long), cast-from-var1393-to-var2294=([jdk.nashorn.internal.runtime.arrays.ObjectArrayData], jdk.nashorn.internal.runtime.arrays.ArrayData), cast-from-Int-to-Int=([long], int), var1371_copyOf/-1140654950=([java.lang.Object[], int], java.lang.Object[]), var1371_toString/-575966009=([java.lang.Object[]], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1393=jdk.nashorn.internal.runtime.arrays.ObjectArrayData, var3488=r1, var345=$z0, var2097=$r21, var872=java.lang.Object, var1390=$r2, var3897=$r3, var2863=$r4, var1865=$r8, var1549=$r5, var2294=jdk.nashorn.internal.runtime.arrays.ArrayData, var2051=$l0, var2253=$i1, var1371=java.util.Arrays, var1556=$r6, var669=$r7, var3904=$r9, var2386=$r10}
; {jdk.nashorn.internal.runtime.arrays.ObjectArrayData=var1393, r1=var3488, $z0=var345, $r21=var2097, java.lang.Object=var872, $r2=var1390, $r3=var3897, $r4=var2863, $r8=var1865, $r5=var1549, jdk.nashorn.internal.runtime.arrays.ArrayData=var2294, $l0=var2051, $i1=var2253, java.util.Arrays=var1371, $r6=var1556, $r7=var669, $r9=var3904, $r10=var2386}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.arrays.ObjectArrayData;	$z0 = <jdk.nashorn.internal.runtime.arrays.ObjectArrayData: boolean $assertionsDisabled>;	if $z0 != 0 goto $r21 = new java.lang.StringBuilder;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r4 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<jdk.nashorn.internal.runtime.arrays.ObjectArrayData: java.lang.Object[] array>;	$l0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.arrays.ObjectArrayData: long length()>();	$i1 = (int) $l0;	$r6 = staticinvoke <java.util.Arrays: java.lang.Object[] copyOf(java.lang.Object[],int)>($r5, $i1);	$r7 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 2