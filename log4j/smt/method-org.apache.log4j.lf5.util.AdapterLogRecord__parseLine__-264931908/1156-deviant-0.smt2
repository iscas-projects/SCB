(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var365 0)
(declare-sort var2071 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var365 var365)
(declare-const null-String String)
(declare-const var1357 var365) ; Statement: r1 := @this: org.apache.log4j.lf5.util.AdapterLogRecord 
(assert (not (= var1357 null-var365)))
(declare-const var131 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var131 null-String)))
(declare-const var3666 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3666 null-String)))
(assert true)
(define-const var1793 Int (indexOf/-1209756239 var131 var3666)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int indexOf(java.lang.String)>(r0) 
(define-const var3464 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i0 != $i4 goto r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>(i0) 
(assert (not (= var1793 var3464))) ; Cond: i0 != $i4 
(assert (not (and true (and (>= var1793 0) (>= (str.len var131) var1793)))))
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), substring/850833817=([java.lang.String, int], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var365=org.apache.log4j.lf5.util.AdapterLogRecord, var1357=r1, var131=r2, var2071=null_type, var3666=r0, var1793=i0, var3464=$i4, var483=r3, var1087=$i1, var1794=$i2, var3736=r4}
; {org.apache.log4j.lf5.util.AdapterLogRecord=var365, r1=var1357, r2=var131, null_type=var2071, r0=var3666, i0=var1793, $i4=var3464, r3=var483, $i1=var1087, $i2=var1794, r4=var3736}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 2,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.util.AdapterLogRecord;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r2.<java.lang.String: int indexOf(java.lang.String)>(r0);	$i4 = (int) -1;	if i0 != $i4 goto r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>(i0);	r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>(i0);	$i1 = virtualinvoke r3.<java.lang.String: int indexOf(java.lang.String)>(")");	$i2 = $i1 + 1;	r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int,int)>(0, $i2);	return r4
;block_num 2