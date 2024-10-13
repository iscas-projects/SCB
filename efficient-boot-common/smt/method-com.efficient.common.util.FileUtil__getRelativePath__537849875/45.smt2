(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2336 0)
(declare-sort var1137 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-const null-String String)
(declare-const var1137-DOWNLOAD_PATH String)
(declare-const var1453 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1453 null-String)))
(define-const var646 String var1137-DOWNLOAD_PATH) ; Statement: $r1 = <com.efficient.common.util.FileUtil: java.lang.String DOWNLOAD_PATH> 
(assert true)
(define-const var37 Int (lastIndexOf/-618837785 var1453 var646)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>($r1) 
 ; Statement: if i1 >= 0 goto (branch) 
(assert (>= var37 0)) ; Cond: i1 >= 0 
 ; Statement: if i1 >= 0 goto $i0 = i1 - 1 
(assert (not (>= var37 0))) ; Negate: Cond: i1 >= 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-618837785=([java.lang.String, java.lang.String], int)}
; {var1453=r0, var2336=null_type, var1137=com.efficient.common.util.FileUtil, var646=$r1, var37=i1}
; {r0=var1453, null_type=var2336, com.efficient.common.util.FileUtil=var1137, $r1=var646, i1=var37}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <com.efficient.common.util.FileUtil: java.lang.String DOWNLOAD_PATH>;	i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>($r1);	if i1 >= 0 goto (branch);	if i1 >= 0 goto $i0 = i1 - 1;	return r0
;block_num 3