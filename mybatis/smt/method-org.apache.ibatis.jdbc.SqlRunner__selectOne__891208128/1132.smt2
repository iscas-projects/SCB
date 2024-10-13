(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var664 0)
(declare-sort var3619 0)
(declare-sort var994 0)
(declare-sort var2563 0)
(declare-sort var3686 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun selectAll/-496816773 (var664 String (Array Int var994)) var2563)
(declare-fun var2563_size/-959786421 (var2563) Int)
(declare-fun var2563_get/-1216255739 (var2563 Int) var994)
(declare-fun cast-from-var994-to-var3686 (var994) var3686)
(declare-const null-var664 var664)
(declare-const null-String String)
(declare-const null-__Array__Int__var994__ (Array Int var994))
(declare-const var504 var664) ; Statement: r0 := @this: org.apache.ibatis.jdbc.SqlRunner 
(assert (not (= var504 null-var664)))
(declare-const var3780 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3780 null-String)))
(declare-const var1387 (Array Int var994)) ; Statement: r2 := @parameter1: java.lang.Object[] 
(assert (not (= var1387 null-__Array__Int__var994__)))
(assert true)
(define-const var1722 var2563 (selectAll/-496816773 var504 var3780 var1387)) ; Statement: r3 = virtualinvoke r0.<org.apache.ibatis.jdbc.SqlRunner: java.util.List selectAll(java.lang.String,java.lang.Object[])>(r1, r2) 
(define-const var2398 Int (var2563_size/-959786421 var1722)) ; Statement: $i0 = interfaceinvoke r3.<java.util.List: int size()>() 
 ; Statement: if $i0 == 1 goto $r4 = interfaceinvoke r3.<java.util.List: java.lang.Object get(int)>(0) 
(assert (= var2398 1)) ; Cond: $i0 == 1 
(define-const var422 var994 (var2563_get/-1216255739 var1722 0)) ; Statement: $r4 = interfaceinvoke r3.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var2940 var3686 (cast-from-var994-to-var3686 var422)) ; Statement: $r5 = (java.util.Map) $r4 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {selectAll/-496816773=([org.apache.ibatis.jdbc.SqlRunner, java.lang.String, java.lang.Object[]], java.util.List), var2563_size/-959786421=([java.util.List], int), var2563_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var994-to-var3686=([java.lang.Object], java.util.Map)}
; {var664=org.apache.ibatis.jdbc.SqlRunner, var504=r0, var3780=r1, var3619=null_type, var994=java.lang.Object, var1387=r2, var2563=java.util.List, var1722=r3, var2398=$i0, var422=$r4, var3686=java.util.Map, var2940=$r5}
; {org.apache.ibatis.jdbc.SqlRunner=var664, r0=var504, r1=var3780, null_type=var3619, java.lang.Object=var994, r2=var1387, java.util.List=var2563, r3=var1722, $i0=var2398, $r4=var422, java.util.Map=var3686, $r5=var2940}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.jdbc.SqlRunner;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object[];	r3 = virtualinvoke r0.<org.apache.ibatis.jdbc.SqlRunner: java.util.List selectAll(java.lang.String,java.lang.Object[])>(r1, r2);	$i0 = interfaceinvoke r3.<java.util.List: int size()>();	if $i0 == 1 goto $r4 = interfaceinvoke r3.<java.util.List: java.lang.Object get(int)>(0);	$r4 = interfaceinvoke r3.<java.util.List: java.lang.Object get(int)>(0);	$r5 = (java.util.Map) $r4;	return $r5
;block_num 2