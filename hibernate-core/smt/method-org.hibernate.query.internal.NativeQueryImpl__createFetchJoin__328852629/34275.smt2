(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1279 0)
(declare-sort var2939 0)
(declare-sort var2785 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun addFetch/-1666944323 (var1279 String String String) var2785)
(declare-const null-var1279 var1279)
(declare-const null-String String)
(declare-const var312 var1279) ; Statement: r3 := @this: org.hibernate.query.internal.NativeQueryImpl 
(assert (not (= var312 null-var1279)))
(declare-const var3843 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3843 null-String)))
(declare-const var1488 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1488 null-String)))
(assert true)
(define-const var2568 Int (indexOf/-1037706067 var1488 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if i0 >= 0 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (>= var2568 0)) ; Cond: i0 >= 0 
(assert (and true (and (>= 0 0) (>= (str.len var1488) var2568) (>= var2568 0))))
(define-const var383 String (substring/-1240304868 var1488 0 var2568)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(define-const var1983 Int (+ var2568 1)) ; Statement: $i1 = i0 + 1 
(assert (and true (and (>= var1983 0) (>= (str.len var1488) var1983))))
(define-const var2731 String (substring/850833817 var1488 var1983)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1) 
(assert true)
(define-const var2993 var2785 (addFetch/-1666944323 var312 var3843 var383 var2731)) ; Statement: $r5 = virtualinvoke r3.<org.hibernate.query.internal.NativeQueryImpl: org.hibernate.SQLQuery$FetchReturn addFetch(java.lang.String,java.lang.String,java.lang.String)>(r4, r1, r2) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), addFetch/-1666944323=([org.hibernate.query.internal.NativeQueryImpl, java.lang.String, java.lang.String, java.lang.String], org.hibernate.SQLQuery$FetchReturn)}
; {var1279=org.hibernate.query.internal.NativeQueryImpl, var312=r3, var3843=r4, var2939=null_type, var1488=r0, var2568=i0, var383=r1, var1983=$i1, var2731=r2, var2785=org.hibernate.SQLQuery$FetchReturn, var2993=$r5}
; {org.hibernate.query.internal.NativeQueryImpl=var1279, r3=var312, r4=var3843, null_type=var2939, r0=var1488, i0=var2568, r1=var383, $i1=var1983, r2=var2731, org.hibernate.SQLQuery$FetchReturn=var2785, $r5=var2993}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r3 := @this: org.hibernate.query.internal.NativeQueryImpl;	r4 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	if i0 >= 0 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$i1 = i0 + 1;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	$r5 = virtualinvoke r3.<org.hibernate.query.internal.NativeQueryImpl: org.hibernate.SQLQuery$FetchReturn addFetch(java.lang.String,java.lang.String,java.lang.String)>(r4, r1, r2);	return $r5
;block_num 2