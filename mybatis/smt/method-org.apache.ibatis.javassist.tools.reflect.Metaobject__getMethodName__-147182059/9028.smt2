(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1437 0)
(declare-sort var3700 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun methods/-1113215184 (var1437) (Array Int var3700))
(declare-fun getName/1227988463 (var3700) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var1437 var1437)
(declare-const null-Int Int)
(declare-const var420 var1437) ; Statement: r0 := @this: org.apache.ibatis.javassist.tools.reflect.Metaobject 
(assert (not (= var420 null-var1437)))
(declare-const var717 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var717 null-Int)))
(define-const var2504 (Array Int var3700) (methods/-1113215184 var420)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.tools.reflect.Metaobject: java.lang.reflect.Method[] methods> 
(define-const var3309 var3700 (select var2504 var717)) ; Statement: $r2 = $r1[i0] 
(assert true)
(define-const var1769 String (getName/1227988463 var3309)) ; Statement: r3 = virtualinvoke $r2.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var1078 Int 3) ; Statement: i3 = 3 
(assert true) ; Non Conditional
(define-const var2829 Int var1078) ; Statement: $i1 = i3 
(define-const var1078!1 Int (+ var1078 1)) ; Statement: i3 = i3 + 1 
(assert (and true (and (> (str.len var1769) var2829) (<= 0 var2829))))
(define-const var1689 Int (charAt/698050440 var1769 var2829)) ; Statement: $c2 = virtualinvoke r3.<java.lang.String: char charAt(int)>($i1) 
(define-const var603 Int (cast-from-Int-to-Int var1689)) ; Statement: $i4 = (int) $c2 
 ; Statement: if $i4 < 48 goto $r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>(i3) 
(assert (< var603 48)) ; Cond: $i4 < 48 
(assert (and true (and (>= var1078!1 0) (>= (str.len var1769) var1078!1))))
(define-const var1722 String (substring/850833817 var1769 var1078!1)) ; Statement: $r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>(i3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {methods/-1113215184=([org.apache.ibatis.javassist.tools.reflect.Metaobject], java.lang.reflect.Method[]), getName/1227988463=([java.lang.reflect.Method], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var1437=org.apache.ibatis.javassist.tools.reflect.Metaobject, var420=r0, var717=i0, var3700=java.lang.reflect.Method, var2504=$r1, var3309=$r2, var1769=r3, var1078=i3, var2829=$i1, var1689=$c2, var603=$i4, var1722=$r4}
; {org.apache.ibatis.javassist.tools.reflect.Metaobject=var1437, r0=var420, i0=var717, java.lang.reflect.Method=var3700, $r1=var2504, $r2=var3309, r3=var1769, i3=var1078, $i1=var2829, $c2=var1689, $i4=var603, $r4=var1722}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.tools.reflect.Metaobject;	i0 := @parameter0: int;	$r1 = r0.<org.apache.ibatis.javassist.tools.reflect.Metaobject: java.lang.reflect.Method[] methods>;	$r2 = $r1[i0];	r3 = virtualinvoke $r2.<java.lang.reflect.Method: java.lang.String getName()>();	i3 = 3;	$i1 = i3;	i3 = i3 + 1;	$c2 = virtualinvoke r3.<java.lang.String: char charAt(int)>($i1);	$i4 = (int) $c2;	if $i4 < 48 goto $r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>(i3);	$r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>(i3);	return $r4
;block_num 3