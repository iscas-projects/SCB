(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2498 0)
(declare-sort var412 0)
(declare-sort var1402 0)
(declare-sort var1131 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var412) ClassObject)
(declare-fun cast-from-var2498-to-var412 (var2498) var412)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun array/1089800677 (var2498) (Array Int Float64))
(declare-fun length/1541320555 (var1402) Int)
(declare-fun cast-from-var2498-to-var1402 (var2498) var1402)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1131_copyOf/-681402282 ((Array Int Float64) Int) (Array Int Float64))
(declare-fun var1131_toString/1620760645 ((Array Int Float64)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2498 var2498)
(declare-const var2498-$assertionsDisabled Bool)
(declare-const var3101 var2498) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.arrays.NumberArrayData 
(assert (not (= var3101 null-var2498)))
(define-const var2202 Bool var2498-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.arrays.NumberArrayData: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r21 = new java.lang.StringBuilder 
(assert (not (= (ite var2202 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2091 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2091)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2091!1 String)
(assert (= var2091!1 ""))
(assert true)
(define-const var3894 ClassObject (getClass/1258963082 (cast-from-var2498-to-var412 var3101))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var442 String (getSimpleName/-390194377 var3894)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var1773 String (append/672562846 var2091!1 var442)) ; Statement: $r4 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2091!2 String)
(assert (= var2091!2 (str.++ var2091!1 var442)))
(assert true)
(define-const var2391 String (append/-1166366385 var1773 58)) ; Statement: $r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1773!1 String)
(assert (str.prefixof var1773 var1773!1))
(define-const var3632 (Array Int Float64) (array/1089800677 var3101)) ; Statement: $r5 = r1.<jdk.nashorn.internal.runtime.arrays.NumberArrayData: double[] array> 
(assert true)
(define-const var145 Int (length/1541320555 (cast-from-var2498-to-var1402 var3101))) ; Statement: $l0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.arrays.NumberArrayData: long length()>() 
(define-const var1485 Int (cast-from-Int-to-Int var145)) ; Statement: $i1 = (int) $l0 
(define-const var182 (Array Int Float64) (var1131_copyOf/-681402282 var3632 var1485)) ; Statement: $r6 = staticinvoke <java.util.Arrays: double[] copyOf(double[],int)>($r5, $i1) 
(define-const var2140 String (var1131_toString/1620760645 var182)) ; Statement: $r7 = staticinvoke <java.util.Arrays: java.lang.String toString(double[])>($r6) 
(assert true)
(define-const var2340 String (append/672562846 var2391 var2140)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2391!1 String)
(assert (= var2391!1 (str.++ var2391 var2140)))
(assert true)
(define-const var2567 String (toString/-2075883882 var2340)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2498-to-var412=([jdk.nashorn.internal.runtime.arrays.NumberArrayData], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), array/1089800677=([jdk.nashorn.internal.runtime.arrays.NumberArrayData], double[]), length/1541320555=([jdk.nashorn.internal.runtime.arrays.ArrayData], long), cast-from-var2498-to-var1402=([jdk.nashorn.internal.runtime.arrays.NumberArrayData], jdk.nashorn.internal.runtime.arrays.ArrayData), cast-from-Int-to-Int=([long], int), var1131_copyOf/-681402282=([double[], int], double[]), var1131_toString/1620760645=([double[]], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2498=jdk.nashorn.internal.runtime.arrays.NumberArrayData, var3101=r1, var2202=$z0, var2091=$r21, var412=java.lang.Object, var3894=$r2, var442=$r3, var1773=$r4, var2391=$r8, var3632=$r5, var1402=jdk.nashorn.internal.runtime.arrays.ArrayData, var145=$l0, var1485=$i1, var1131=java.util.Arrays, var182=$r6, var2140=$r7, var2340=$r9, var2567=$r10}
; {jdk.nashorn.internal.runtime.arrays.NumberArrayData=var2498, r1=var3101, $z0=var2202, $r21=var2091, java.lang.Object=var412, $r2=var3894, $r3=var442, $r4=var1773, $r8=var2391, $r5=var3632, jdk.nashorn.internal.runtime.arrays.ArrayData=var1402, $l0=var145, $i1=var1485, java.util.Arrays=var1131, $r6=var182, $r7=var2140, $r9=var2340, $r10=var2567}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.util.Arrays: java.lang.String toString(double[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.arrays.NumberArrayData;	$z0 = <jdk.nashorn.internal.runtime.arrays.NumberArrayData: boolean $assertionsDisabled>;	if $z0 != 0 goto $r21 = new java.lang.StringBuilder;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r4 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r5 = r1.<jdk.nashorn.internal.runtime.arrays.NumberArrayData: double[] array>;	$l0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.arrays.NumberArrayData: long length()>();	$i1 = (int) $l0;	$r6 = staticinvoke <java.util.Arrays: double[] copyOf(double[],int)>($r5, $i1);	$r7 = staticinvoke <java.util.Arrays: java.lang.String toString(double[])>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 2