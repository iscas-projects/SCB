(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1410 0)
(declare-sort var1080 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const var1080-DOWNLOAD_PATH String)
(declare-const var970 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var970 null-String)))
(define-const var2073 String var1080-DOWNLOAD_PATH) ; Statement: $r1 = <com.efficient.common.util.FileUtil: java.lang.String DOWNLOAD_PATH> 
(assert true)
(define-const var3675 Int (lastIndexOf/-618837785 var970 var2073)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>($r1) 
 ; Statement: if i1 >= 0 goto (branch) 
(assert (>= var3675 0)) ; Cond: i1 >= 0 
 ; Statement: if i1 >= 0 goto $i0 = i1 - 1 
(assert (>= var3675 0)) ; Cond: i1 >= 0 
(define-const var505 Int (- var3675 1)) ; Statement: $i0 = i1 - 1 
(assert (not (and true (and (>= var505 0) (>= (str.len var970) var505)))))
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var970=r0, var1410=null_type, var1080=com.efficient.common.util.FileUtil, var2073=$r1, var3675=i1, var505=$i0, var3438=$r2}
; {r0=var970, null_type=var1410, com.efficient.common.util.FileUtil=var1080, $r1=var2073, i1=var3675, $i0=var505, $r2=var3438}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <com.efficient.common.util.FileUtil: java.lang.String DOWNLOAD_PATH>;	i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>($r1);	if i1 >= 0 goto (branch);	if i1 >= 0 goto $i0 = i1 - 1;	$i0 = i1 - 1;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i0);	return $r2
;block_num 3