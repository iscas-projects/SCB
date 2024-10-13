(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3352 0)
(declare-sort var1192 0)
(declare-sort var812 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hibernateTypeNames/-970077672 (var3352) var1192)
(declare-fun get/932734625 (var1192 Int) String)
(declare-const null-var3352 var3352)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2049 var3352) ; Statement: r0 := @this: org.hibernate.dialect.Dialect 
(assert (not (= var2049 null-var3352)))
(declare-const var2118 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2118 null-Int)))
(define-const var2069 var1192 (hibernateTypeNames/-970077672 var2049)) ; Statement: $r1 = r0.<org.hibernate.dialect.Dialect: org.hibernate.dialect.TypeNames hibernateTypeNames> 
(assert true)
(define-const var303 String (get/932734625 var2069 var2118)) ; Statement: r2 = virtualinvoke $r1.<org.hibernate.dialect.TypeNames: java.lang.String get(int)>(i0) 
 ; Statement: if r2 != null goto return r2 
(assert (not (= var303 null-String))) ; Cond: r2 != null 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {hibernateTypeNames/-970077672=([org.hibernate.dialect.Dialect], org.hibernate.dialect.TypeNames), get/932734625=([org.hibernate.dialect.TypeNames, int], java.lang.String)}
; {var3352=org.hibernate.dialect.Dialect, var2049=r0, var2118=i0, var1192=org.hibernate.dialect.TypeNames, var2069=$r1, var303=r2, var812=null_type}
; {org.hibernate.dialect.Dialect=var3352, r0=var2049, i0=var2118, org.hibernate.dialect.TypeNames=var1192, $r1=var2069, r2=var303, null_type=var812}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.dialect.Dialect;	i0 := @parameter0: int;	$r1 = r0.<org.hibernate.dialect.Dialect: org.hibernate.dialect.TypeNames hibernateTypeNames>;	r2 = virtualinvoke $r1.<org.hibernate.dialect.TypeNames: java.lang.String get(int)>(i0);	if r2 != null goto return r2;	return r2
;block_num 2