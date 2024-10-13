(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3469 0)
(declare-sort var2016 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun statementType/-714503615 (var3469 String) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3469 var3469)
(declare-const null-String String)
(declare-const var3525 var3469) ; Statement: r0 := @this: org.hibernate.dialect.Oracle8iDialect 
(assert (not (= var3525 null-var3469)))
(declare-const var2191 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var2191 null-String)))
(declare-const var3544 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var3544 null-String)))
(assert true)
(define-const var206 String (statementType/-714503615 var3525 var2191)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.dialect.Oracle8iDialect: java.lang.String statementType(java.lang.String)>(r10) 
(assert true)
(define-const var3129 Int (indexOf/-1209756239 var2191 var206)) ; Statement: i0 = virtualinvoke r10.<java.lang.String: int indexOf(java.lang.String)>(r1) 
(define-const var931 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if i0 <= $i8 goto return r10 
(assert (<= var3129 var931)) ; Cond: i0 <= $i8 
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {statementType/-714503615=([org.hibernate.dialect.Oracle8iDialect, java.lang.String], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var3469=org.hibernate.dialect.Oracle8iDialect, var3525=r0, var2191=r10, var2016=null_type, var3544=r3, var206=r1, var3129=i0, var931=$i8}
; {org.hibernate.dialect.Oracle8iDialect=var3469, r0=var3525, r10=var2191, null_type=var2016, r3=var3544, r1=var206, i0=var3129, $i8=var931}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @this: org.hibernate.dialect.Oracle8iDialect;	r10 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<org.hibernate.dialect.Oracle8iDialect: java.lang.String statementType(java.lang.String)>(r10);	i0 = virtualinvoke r10.<java.lang.String: int indexOf(java.lang.String)>(r1);	$i8 = (int) -1;	if i0 <= $i8 goto return r10;	return r10
;block_num 2