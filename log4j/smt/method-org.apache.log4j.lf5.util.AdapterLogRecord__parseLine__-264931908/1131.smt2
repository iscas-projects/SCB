(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var186 0)
(declare-sort var1739 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var186 var186)
(declare-const null-String String)
(declare-const var2899 var186) ; Statement: r1 := @this: org.apache.log4j.lf5.util.AdapterLogRecord 
(assert (not (= var2899 null-var186)))
(declare-const var3092 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3092 null-String)))
(declare-const var918 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var918 null-String)))
(assert true)
(define-const var3343 Int (indexOf/-1209756239 var3092 var918)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int indexOf(java.lang.String)>(r0) 
(define-const var2922 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i0 != $i4 goto r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>(i0) 
(assert (not (not (= var3343 var2922)))) ; Negate: Cond: i0 != $i4  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var186=org.apache.log4j.lf5.util.AdapterLogRecord, var2899=r1, var3092=r2, var1739=null_type, var918=r0, var3343=i0, var2922=$i4}
; {org.apache.log4j.lf5.util.AdapterLogRecord=var186, r1=var2899, r2=var3092, null_type=var1739, r0=var918, i0=var3343, $i4=var2922}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.util.AdapterLogRecord;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r2.<java.lang.String: int indexOf(java.lang.String)>(r0);	$i4 = (int) -1;	if i0 != $i4 goto r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>(i0);	return null
;block_num 2