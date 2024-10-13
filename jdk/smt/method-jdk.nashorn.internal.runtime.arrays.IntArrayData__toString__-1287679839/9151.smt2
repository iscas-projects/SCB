(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var259 0)
(declare-sort var2576 0)
(declare-sort var2035 0)
(declare-sort var1432 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var2576) ClassObject)
(declare-fun cast-from-var259-to-var2576 (var259) var2576)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun array/-271431479 (var259) (Array Int Int))
(declare-fun length/1541320555 (var2035) Int)
(declare-fun cast-from-var259-to-var2035 (var259) var2035)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1432_copyOf/-955536808 ((Array Int Int) Int) (Array Int Int))
(declare-fun var1432_toString/1240813769 ((Array Int Int)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var259 var259)
(declare-const var259-$assertionsDisabled Bool)
(declare-const var1222 var259) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.arrays.IntArrayData 
(assert (not (= var1222 null-var259)))
(define-const var1195 Bool var259-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.arrays.IntArrayData: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r21 = new java.lang.StringBuilder 
(assert (not (= (ite var1195 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1122 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1122)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1122!1 String)
(assert (= var1122!1 ""))
(assert true)
(define-const var3411 ClassObject (getClass/1258963082 (cast-from-var259-to-var2576 var1222))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1152 String (getSimpleName/-390194377 var3411)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var3788 String (append/672562846 var1122!1 var1152)) ; Statement: $r4 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1122!2 String)
(assert (= var1122!2 (str.++ var1122!1 var1152)))
(assert true)
(define-const var3935 String (append/-1166366385 var3788 58)) ; Statement: $r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var3788!1 String)
(assert (str.prefixof var3788 var3788!1))
(define-const var2749 (Array Int Int) (array/-271431479 var1222)) ; Statement: $r5 = r1.<jdk.nashorn.internal.runtime.arrays.IntArrayData: int[] array> 
(assert true)
(define-const var511 Int (length/1541320555 (cast-from-var259-to-var2035 var1222))) ; Statement: $l0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.arrays.IntArrayData: long length()>() 
(define-const var3410 Int (cast-from-Int-to-Int var511)) ; Statement: $i1 = (int) $l0 
(define-const var544 (Array Int Int) (var1432_copyOf/-955536808 var2749 var3410)) ; Statement: $r6 = staticinvoke <java.util.Arrays: int[] copyOf(int[],int)>($r5, $i1) 
(define-const var821 String (var1432_toString/1240813769 var544)) ; Statement: $r7 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>($r6) 
(assert true)
(define-const var3530 String (append/672562846 var3935 var821)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3935!1 String)
(assert (= var3935!1 (str.++ var3935 var821)))
(assert true)
(define-const var1586 String (toString/-2075883882 var3530)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var259-to-var2576=([jdk.nashorn.internal.runtime.arrays.IntArrayData], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), array/-271431479=([jdk.nashorn.internal.runtime.arrays.IntArrayData], int[]), length/1541320555=([jdk.nashorn.internal.runtime.arrays.ArrayData], long), cast-from-var259-to-var2035=([jdk.nashorn.internal.runtime.arrays.IntArrayData], jdk.nashorn.internal.runtime.arrays.ArrayData), cast-from-Int-to-Int=([long], int), var1432_copyOf/-955536808=([int[], int], int[]), var1432_toString/1240813769=([int[]], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var259=jdk.nashorn.internal.runtime.arrays.IntArrayData, var1222=r1, var1195=$z0, var1122=$r21, var2576=java.lang.Object, var3411=$r2, var1152=$r3, var3788=$r4, var3935=$r8, var2749=$r5, var2035=jdk.nashorn.internal.runtime.arrays.ArrayData, var511=$l0, var3410=$i1, var1432=java.util.Arrays, var544=$r6, var821=$r7, var3530=$r9, var1586=$r10}
; {jdk.nashorn.internal.runtime.arrays.IntArrayData=var259, r1=var1222, $z0=var1195, $r21=var1122, java.lang.Object=var2576, $r2=var3411, $r3=var1152, $r4=var3788, $r8=var3935, $r5=var2749, jdk.nashorn.internal.runtime.arrays.ArrayData=var2035, $l0=var511, $i1=var3410, java.util.Arrays=var1432, $r6=var544, $r7=var821, $r9=var3530, $r10=var1586}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.util.Arrays: java.lang.String toString(int[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.arrays.IntArrayData;	$z0 = <jdk.nashorn.internal.runtime.arrays.IntArrayData: boolean $assertionsDisabled>;	if $z0 != 0 goto $r21 = new java.lang.StringBuilder;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r4 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<jdk.nashorn.internal.runtime.arrays.IntArrayData: int[] array>;	$l0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.arrays.IntArrayData: long length()>();	$i1 = (int) $l0;	$r6 = staticinvoke <java.util.Arrays: int[] copyOf(int[],int)>($r5, $i1);	$r7 = staticinvoke <java.util.Arrays: java.lang.String toString(int[])>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 2