(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2329 0)
(declare-sort var1997 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1997_builder/-1703069709 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var2415 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2415 null-String)))
(declare-const var1848 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var1848 null-String)))
 ; Statement: if null != r8 goto $i11 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= null-String var1848))) ; Cond: null != r8 
(assert true)
(define-const var2824 Int (length/-134980193 var2415)) ; Statement: $i11 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2596 Int (div var2824 2)) ; Statement: $i0 = $i11 / 2 
(define-const var2976 Int (+ var2824 var2596)) ; Statement: $i4 = $i11 + $i0 
(define-const var16 Int (div var2824 2)) ; Statement: $i2 = $i11 / 2 
(assert true)
(define-const var2760 Int (length/-134980193 var1848)) ; Statement: $i1 = virtualinvoke r8.<java.lang.String: int length()>() 
(define-const var2090 Int (* var16 var2760)) ; Statement: $i3 = $i2 * $i1 
(define-const var93 Int (+ var2976 var2090)) ; Statement: $i5 = $i4 + $i3 
(define-const var859 String (var1997_builder/-1703069709 var93)) ; Statement: $r7 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder(int)>($i5) 
(assert true)
(define-const var3719 String (append/672562846 var859 var1848)) ; Statement: $r1 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var859!1 String)
(assert (= var859!1 (str.++ var859 var1848)))
(assert (and true (and (> (str.len var2415) 0) (<= 0 0))))
(define-const var1676 Int (charAt/698050440 var2415 0)) ; Statement: $c6 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert true)
(define-const var2923 String (append/-1166366385 var3719 var1676)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c6) 
(declare-const var3719!1 String)
(assert (str.prefixof var3719 var3719!1))
(assert (not (and true (and (> (str.len var2415) 1) (<= 0 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1997_builder/-1703069709=([int], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), charAt/698050440=([java.lang.String, int], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2415=r0, var2329=null_type, var1848=r8, var2824=$i11, var2596=$i0, var2976=$i4, var16=$i2, var2760=$i1, var2090=$i3, var93=$i5, var1997=cn.hutool.core.util.StrUtil, var859=$r7, var3719=$r1, var1676=$c6, var2923=$r2, var265=$c7, var572=i12, var1632=$i13, var91=$r3}
; {r0=var2415, null_type=var2329, r8=var1848, $i11=var2824, $i0=var2596, $i4=var2976, $i2=var16, $i1=var2760, $i3=var2090, $i5=var93, cn.hutool.core.util.StrUtil=var1997, $r7=var859, $r1=var3719, $c6=var1676, $r2=var2923, $c7=var265, i12=var572, $i13=var1632, $r3=var91}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: char charAt(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.String;	if null != r8 goto $i11 = virtualinvoke r0.<java.lang.String: int length()>();	$i11 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = $i11 / 2;	$i4 = $i11 + $i0;	$i2 = $i11 / 2;	$i1 = virtualinvoke r8.<java.lang.String: int length()>();	$i3 = $i2 * $i1;	$i5 = $i4 + $i3;	$r7 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder(int)>($i5);	$r1 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$c6 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c6);	$c7 = virtualinvoke r0.<java.lang.String: char charAt(int)>(1);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c7);	i12 = 2;	$i13 = $i11 - 1;	if i12 >= $i13 goto $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 4