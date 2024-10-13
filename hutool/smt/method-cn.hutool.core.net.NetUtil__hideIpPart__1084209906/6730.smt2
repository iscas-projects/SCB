(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1748 0)
(declare-sort var233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var233_builder/-1703069709 (Int) String)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-fun append/50905802 (String String Int Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var7 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var7 null-String)))
(assert true)
(define-const var3631 Int (length/-134980193 var7)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1832 String (var233_builder/-1703069709 var3631)) ; Statement: $r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder(int)>($i0) 
(assert true)
(define-const var1639 Int (lastIndexOf/-618837785 var7 ".")) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(".") 
(define-const var205 Int (+ var1639 1)) ; Statement: $i2 = $i1 + 1 
(assert true)
(define-const var2191 String (append/50905802 var1832 (cast-from-String-to-String var7) 0 var205)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, $i2) 
(declare-const var1832!1 String)
(assert (str.prefixof var1832 var1832!1))
(assert true)
(define-const var3309 String (append/672562846 var2191 "*")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("*") 
(declare-const var2191!1 String)
(assert (= var2191!1 (str.++ var2191 "*")))
(assert true)
(define-const var2487 String (toString/-2075883882 var3309)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var233_builder/-1703069709=([int], java.lang.StringBuilder), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var7=r0, var1748=null_type, var3631=$i0, var233=cn.hutool.core.util.StrUtil, var1832=$r1, var1639=$i1, var205=$i2, var2191=$r2, var3309=$r3, var2487=$r4}
; {r0=var7, null_type=var1748, $i0=var3631, cn.hutool.core.util.StrUtil=var233, $r1=var1832, $i1=var1639, $i2=var205, $r2=var2191, $r3=var3309, $r4=var2487}
;seq <java.lang.String: int length()>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r1 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder(int)>($i0);	$i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(".");	$i2 = $i1 + 1;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r0, 0, $i2);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("*");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1