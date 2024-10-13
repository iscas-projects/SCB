(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var964 0)
(declare-sort var2323 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getReflectiveMethods/-650517154 (var964) (Array Int var2323))
(declare-fun getName/1227988463 (var2323) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var964 var964)
(declare-const null-Int Int)
(declare-const var1526 var964) ; Statement: r0 := @this: org.apache.ibatis.javassist.tools.reflect.ClassMetaobject 
(assert (not (= var1526 null-var964)))
(declare-const var2706 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2706 null-Int)))
(assert true)
(define-const var3555 (Array Int var2323) (getReflectiveMethods/-650517154 var1526)) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.javassist.tools.reflect.ClassMetaobject: java.lang.reflect.Method[] getReflectiveMethods()>() 
(define-const var1402 var2323 (select var3555 var2706)) ; Statement: $r2 = $r1[i0] 
(assert true)
(define-const var2840 String (getName/1227988463 var1402)) ; Statement: r3 = virtualinvoke $r2.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var818 Int 3) ; Statement: i3 = 3 
(assert true) ; Non Conditional
(define-const var1621 Int var818) ; Statement: $i1 = i3 
(define-const var818!1 Int (+ var818 1)) ; Statement: i3 = i3 + 1 
(assert (and true (and (> (str.len var2840) var1621) (<= 0 var1621))))
(define-const var2107 Int (charAt/698050440 var2840 var1621)) ; Statement: $c2 = virtualinvoke r3.<java.lang.String: char charAt(int)>($i1) 
(define-const var83 Int (cast-from-Int-to-Int var2107)) ; Statement: $i4 = (int) $c2 
 ; Statement: if $i4 < 48 goto $r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>(i3) 
(assert (< var83 48)) ; Cond: $i4 < 48 
(assert (not (and true (and (>= var818!1 0) (>= (str.len var2840) var818!1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getReflectiveMethods/-650517154=([org.apache.ibatis.javassist.tools.reflect.ClassMetaobject], java.lang.reflect.Method[]), getName/1227988463=([java.lang.reflect.Method], java.lang.String), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var964=org.apache.ibatis.javassist.tools.reflect.ClassMetaobject, var1526=r0, var2706=i0, var2323=java.lang.reflect.Method, var3555=$r1, var1402=$r2, var2840=r3, var818=i3, var1621=$i1, var2107=$c2, var83=$i4, var2409=$r4}
; {org.apache.ibatis.javassist.tools.reflect.ClassMetaobject=var964, r0=var1526, i0=var2706, java.lang.reflect.Method=var2323, $r1=var3555, $r2=var1402, r3=var2840, i3=var818, $i1=var1621, $c2=var2107, $i4=var83, $r4=var2409}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.tools.reflect.ClassMetaobject;	i0 := @parameter0: int;	$r1 = virtualinvoke r0.<org.apache.ibatis.javassist.tools.reflect.ClassMetaobject: java.lang.reflect.Method[] getReflectiveMethods()>();	$r2 = $r1[i0];	r3 = virtualinvoke $r2.<java.lang.reflect.Method: java.lang.String getName()>();	i3 = 3;	$i1 = i3;	i3 = i3 + 1;	$c2 = virtualinvoke r3.<java.lang.String: char charAt(int)>($i1);	$i4 = (int) $c2;	if $i4 < 48 goto $r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>(i3);	$r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>(i3);	return $r4
;block_num 3