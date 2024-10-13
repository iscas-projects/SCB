(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2590 0)
(declare-sort var17 0)
(declare-sort var1383 0)
(declare-sort var2884 0)
(declare-sort var1377 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var17) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1383_compare/303529685 (var1383 var1377 var1377) Int)
(declare-fun cast-from-var17-to-var1377 (var17) var1377)
(declare-const null-var2590 var2590)
(declare-const null-var17 var17)
(declare-const var2884-NAME_ASCENDING var1383)
(declare-const var460 var2590) ; Statement: r5 := @this: org.junit.internal.MethodSorter$1 
(assert (not (= var460 null-var2590)))
(declare-const var977 var17) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var977 null-var17)))
(declare-const var2560 var17) ; Statement: r2 := @parameter1: java.lang.reflect.Method 
(assert (not (= var2560 null-var17)))
(assert true)
(define-const var401 String (getName/1227988463 var977)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var535 Int (hashCode/-467973558 var401)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(assert true)
(define-const var1107 String (getName/1227988463 var2560)) ; Statement: $r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1266 Int (hashCode/-467973558 var1107)) ; Statement: i1 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
 ; Statement: if i0 == i1 goto $r4 = <org.junit.internal.MethodSorter: java.util.Comparator NAME_ASCENDING> 
(assert (= var535 var1266)) ; Cond: i0 == i1 
(define-const var2459 var1383 var2884-NAME_ASCENDING) ; Statement: $r4 = <org.junit.internal.MethodSorter: java.util.Comparator NAME_ASCENDING> 
(define-const var927 Int (var1383_compare/303529685 var2459 (cast-from-var17-to-var1377 var977) (cast-from-var17-to-var1377 var2560))) ; Statement: $i2 = interfaceinvoke $r4.<java.util.Comparator: int compare(java.lang.Object,java.lang.Object)>(r0, r2) 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1383_compare/303529685=([java.util.Comparator, java.lang.Object, java.lang.Object], int), cast-from-var17-to-var1377=([java.lang.reflect.Method], java.lang.Object)}
; {var2590=org.junit.internal.MethodSorter$1, var460=r5, var17=java.lang.reflect.Method, var977=r0, var2560=r2, var401=$r1, var535=i0, var1107=$r3, var1266=i1, var1383=java.util.Comparator, var2884=org.junit.internal.MethodSorter, var2459=$r4, var1377=java.lang.Object, var927=$i2}
; {org.junit.internal.MethodSorter$1=var2590, r5=var460, java.lang.reflect.Method=var17, r0=var977, r2=var2560, $r1=var401, i0=var535, $r3=var1107, i1=var1266, java.util.Comparator=var1383, org.junit.internal.MethodSorter=var2884, $r4=var2459, java.lang.Object=var1377, $i2=var927}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r5 := @this: org.junit.internal.MethodSorter$1;	r0 := @parameter0: java.lang.reflect.Method;	r2 := @parameter1: java.lang.reflect.Method;	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$r3 = virtualinvoke r2.<java.lang.reflect.Method: java.lang.String getName()>();	i1 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	if i0 == i1 goto $r4 = <org.junit.internal.MethodSorter: java.util.Comparator NAME_ASCENDING>;	$r4 = <org.junit.internal.MethodSorter: java.util.Comparator NAME_ASCENDING>;	$i2 = interfaceinvoke $r4.<java.util.Comparator: int compare(java.lang.Object,java.lang.Object)>(r0, r2);	return $i2
;block_num 2