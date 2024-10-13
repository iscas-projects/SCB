(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var201 0)
(declare-sort var615 0)
(declare-sort var385 0)
(declare-sort var1604 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_join/1594745010 (String var1604) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun cast-from-var385-to-var1604 (var385) var1604)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun getQueryHintString/-2013154468 (var201 String String) String)
(declare-const null-var201 var201)
(declare-const null-String String)
(declare-const null-var385 var385)
(declare-const var3497 var201) ; Statement: r2 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var3497 null-var201)))
(declare-const var3873 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3873 null-String)))
(declare-const var1481 var385) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var1481 null-var385)))
(define-const var102 String (String_join/1594745010 (cast-from-String-to-String ", ") (cast-from-var385-to-var1604 var1481))) ; Statement: r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(", ", r0) 
(assert true)
(define-const var674 Bool (isEmpty/-1285796103 var102)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r2.<org.hibernate.dialect.Dialect: java.lang.String getQueryHintString(java.lang.String,java.lang.String)>(r3, r1) 
(assert (= (ite var674 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3326 String (getQueryHintString/-2013154468 var3497 var3873 var102)) ; Statement: $r4 = virtualinvoke r2.<org.hibernate.dialect.Dialect: java.lang.String getQueryHintString(java.lang.String,java.lang.String)>(r3, r1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String_join/1594745010=([java.lang.CharSequence, java.lang.Iterable], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-var385-to-var1604=([java.util.List], java.lang.Iterable), isEmpty/-1285796103=([java.lang.String], boolean), getQueryHintString/-2013154468=([org.hibernate.dialect.Dialect, java.lang.String, java.lang.String], java.lang.String)}
; {var201=org.hibernate.dialect.Dialect, var3497=r2, var3873=r3, var615=null_type, var385=java.util.List, var1481=r0, var1604=java.lang.Iterable, var102=r1, var674=$z0, var3326=$r4}
; {org.hibernate.dialect.Dialect=var201, r2=var3497, r3=var3873, null_type=var615, java.util.List=var385, r0=var1481, java.lang.Iterable=var1604, r1=var102, $z0=var674, $r4=var3326}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: org.hibernate.dialect.Dialect;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.util.List;	r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(", ", r0);	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r4 = virtualinvoke r2.<org.hibernate.dialect.Dialect: java.lang.String getQueryHintString(java.lang.String,java.lang.String)>(r3, r1);	$r4 = virtualinvoke r2.<org.hibernate.dialect.Dialect: java.lang.String getQueryHintString(java.lang.String,java.lang.String)>(r3, r1);	return $r4
;block_num 2