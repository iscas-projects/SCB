(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3160 0)
(declare-sort var1586 0)
(declare-sort var744 0)
(declare-sort var1028 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_join/1594745010 (String var1028) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun cast-from-var744-to-var1028 (var744) var1028)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3160 var3160)
(declare-const null-String String)
(declare-const null-var744 var744)
(declare-const var1472 var3160) ; Statement: r2 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var1472 null-var3160)))
(declare-const var27 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var27 null-String)))
(declare-const var1375 var744) ; Statement: r0 := @parameter1: java.util.List 
(assert (not (= var1375 null-var744)))
(define-const var2259 String (String_join/1594745010 (cast-from-String-to-String ", ") (cast-from-var744-to-var1028 var1375))) ; Statement: r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(", ", r0) 
(assert true)
(define-const var109 Bool (isEmpty/-1285796103 var2259)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r2.<org.hibernate.dialect.Dialect: java.lang.String getQueryHintString(java.lang.String,java.lang.String)>(r3, r1) 
(assert (not (= (ite var109 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_join/1594745010=([java.lang.CharSequence, java.lang.Iterable], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-var744-to-var1028=([java.util.List], java.lang.Iterable), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3160=org.hibernate.dialect.Dialect, var1472=r2, var27=r3, var1586=null_type, var744=java.util.List, var1375=r0, var1028=java.lang.Iterable, var2259=r1, var109=$z0}
; {org.hibernate.dialect.Dialect=var3160, r2=var1472, r3=var27, null_type=var1586, java.util.List=var744, r0=var1375, java.lang.Iterable=var1028, r1=var2259, $z0=var109}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r2 := @this: org.hibernate.dialect.Dialect;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.util.List;	r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(", ", r0);	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r4 = virtualinvoke r2.<org.hibernate.dialect.Dialect: java.lang.String getQueryHintString(java.lang.String,java.lang.String)>(r3, r1);	return r3
;block_num 2