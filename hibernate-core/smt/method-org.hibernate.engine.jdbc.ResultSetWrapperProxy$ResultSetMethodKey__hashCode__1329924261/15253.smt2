(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2301 0)
(declare-sort var420 0)
(declare-sort var1671 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun methodName/1503392170 (var2301) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun parameterTypes/1503392170 (var2301) (Array Int ClassObject))
(declare-fun var420_hashCode/1826207050 ((Array Int var1671)) Int)
(declare-fun cast-from-__Array__Int__ClassObject__-to-__Array__Int__var1671__ ((Array Int ClassObject)) (Array Int var1671))
(declare-const null-var2301 var2301)
(declare-const var1959 var2301) ; Statement: r0 := @this: org.hibernate.engine.jdbc.ResultSetWrapperProxy$ResultSetMethodKey 
(assert (not (= var1959 null-var2301)))
(define-const var2353 String (methodName/1503392170 var1959)) ; Statement: $r1 = r0.<org.hibernate.engine.jdbc.ResultSetWrapperProxy$ResultSetMethodKey: java.lang.String methodName> 
(assert true)
(define-const var1170 Int (hashCode/-467973558 var2353)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var276 Int (+ 31 var1170)) ; Statement: i3 = 31 + $i0 
(define-const var1321 Int (* 31 var276)) ; Statement: $i2 = 31 * i3 
(define-const var1623 (Array Int ClassObject) (parameterTypes/1503392170 var1959)) ; Statement: $r2 = r0.<org.hibernate.engine.jdbc.ResultSetWrapperProxy$ResultSetMethodKey: java.lang.Class[] parameterTypes> 
(define-const var449 Int (var420_hashCode/1826207050 (cast-from-__Array__Int__ClassObject__-to-__Array__Int__var1671__ var1623))) ; Statement: $i1 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r2) 
(define-const var2018 Int (+ var1321 var449)) ; Statement: i4 = $i2 + $i1 
 ; Statement: return i4 
(check-sat)
(get-model)
(get-unsat-core)
; {methodName/1503392170=([org.hibernate.engine.jdbc.ResultSetWrapperProxy$ResultSetMethodKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), parameterTypes/1503392170=([org.hibernate.engine.jdbc.ResultSetWrapperProxy$ResultSetMethodKey], java.lang.Class[]), var420_hashCode/1826207050=([java.lang.Object[]], int), cast-from-__Array__Int__ClassObject__-to-__Array__Int__var1671__=([java.lang.Class[]], java.lang.Object[])}
; {var2301=org.hibernate.engine.jdbc.ResultSetWrapperProxy$ResultSetMethodKey, var1959=r0, var2353=$r1, var1170=$i0, var276=i3, var1321=$i2, var1623=$r2, var420=java.util.Arrays, var1671=java.lang.Object, var449=$i1, var2018=i4}
; {org.hibernate.engine.jdbc.ResultSetWrapperProxy$ResultSetMethodKey=var2301, r0=var1959, $r1=var2353, $i0=var1170, i3=var276, $i2=var1321, $r2=var1623, java.util.Arrays=var420, java.lang.Object=var1671, $i1=var449, i4=var2018}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.jdbc.ResultSetWrapperProxy$ResultSetMethodKey;	$r1 = r0.<org.hibernate.engine.jdbc.ResultSetWrapperProxy$ResultSetMethodKey: java.lang.String methodName>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i3 = 31 + $i0;	$i2 = 31 * i3;	$r2 = r0.<org.hibernate.engine.jdbc.ResultSetWrapperProxy$ResultSetMethodKey: java.lang.Class[] parameterTypes>;	$i1 = staticinvoke <java.util.Arrays: int hashCode(java.lang.Object[])>($r2);	i4 = $i2 + $i1;	return i4
;block_num 1