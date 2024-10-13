(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var758 0)
(declare-sort var1526 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1526_unqualify/-238008441 (String) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-String String)
(declare-const var2471 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2471 null-String)))
(define-const var2832 String (var1526_unqualify/-238008441 var2471)) ; Statement: r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r0) 
(assert true)
(define-const var123 Int (indexOf/-1037706067 var2832 47)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(47) 
 ; Statement: if i0 <= 0 goto return r1 
(assert (<= var123 0)) ; Cond: i0 <= 0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1526_unqualify/-238008441=([java.lang.String], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int)}
; {var2471=r0, var758=null_type, var1526=org.hibernate.internal.util.StringHelper, var2832=r1, var123=i0}
; {r0=var2471, null_type=var758, org.hibernate.internal.util.StringHelper=var1526, r1=var2832, i0=var123}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String unqualify(java.lang.String)>(r0);	i0 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(47);	if i0 <= 0 goto return r1;	return r1
;block_num 2