(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1836 0)
(declare-sort var3286 0)
(declare-sort var1810 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1836 var1836)
(declare-const null-String String)
(declare-const null-var1810 var1810)
(declare-const var482 var1836) ; Statement: r7 := @this: jdk.internal.dynalink.beans.AbstractJavaLinker 
(assert (not (= var482 null-var1836)))
(declare-const var1413 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1413 null-String)))
(declare-const var1023 var1810) ; Statement: r3 := @parameter1: java.util.Map 
(assert (not (= var1023 null-var1810)))
(assert true)
(define-const var3616 Int (length/-134980193 var1413)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2518 Int (- var3616 1)) ; Statement: i1 = $i0 - 1 
(assert (not (and true (and (> (str.len var1413) var2518) (<= 0 var2518)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var1836=jdk.internal.dynalink.beans.AbstractJavaLinker, var482=r7, var1413=r0, var3286=null_type, var1810=java.util.Map, var1023=r3, var3616=$i0, var2518=i1, var436=$c2, var3888=$i5}
; {jdk.internal.dynalink.beans.AbstractJavaLinker=var1836, r7=var482, r0=var1413, null_type=var3286, java.util.Map=var1810, r3=var1023, $i0=var3616, i1=var2518, $c2=var436, $i5=var3888}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r7 := @this: jdk.internal.dynalink.beans.AbstractJavaLinker;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.util.Map;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	i1 = $i0 - 1;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i1);	$i5 = (int) $c2;	if $i5 == 41 goto i3 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(40);	return null
;block_num 2