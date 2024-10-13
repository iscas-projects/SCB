(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-171891354 (String) Int)
(declare-fun setLength/1276735992 (String Int) void)
(declare-const null-String String)
(declare-const var743 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var743 null-String)))
(assert true)
(define-const var294 Int (length/-171891354 var743)) ; Statement: i4 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i4 == 0 goto virtualinvoke r0.<java.lang.StringBuilder: void setLength(int)>(0) 
(assert (= var294 0)) ; Cond: i4 == 0 
(assert true)
;(assert (setLength/1276735992 var743 0)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: void setLength(int)>(0) 

(declare-const var743!1 String)
(declare-const var544 Int)
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-171891354=([java.lang.StringBuilder], int), setLength/1276735992=([java.lang.StringBuilder, int], void)}
; {var743=r0, var294=i4, var544=0}
; {r0=var743, i4=var294, 0=var544}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: void setLength(int)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: void setLength(int)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	i4 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	if i4 == 0 goto virtualinvoke r0.<java.lang.StringBuilder: void setLength(int)>(0);	virtualinvoke r0.<java.lang.StringBuilder: void setLength(int)>(0);	return 1
;block_num 3