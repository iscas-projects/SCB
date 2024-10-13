(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2688 0)
(declare-sort var1916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2688_trim/104521694 (String) String)
(declare-const null-String String)
(declare-const var2043 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2043 null-String)))
(define-const var257 String (var2688_trim/104521694 var2043)) ; Statement: r1 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String trim(java.lang.CharSequence)>(r0) 
(define-const var1379 String "") ; Statement: $r2 = "" 
(assert true)
(define-const var3726 Bool (= var1379 var257)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = r1 
(assert (not (= (ite var3726 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3965 String null-String) ; Statement: $r3 = null 
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2688_trim/104521694=([java.lang.CharSequence], java.lang.String)}
; {var2043=r0, var2688=cn.hutool.core.text.CharSequenceUtil, var257=r1, var1379=$r2, var3726=$z0, var1916=null_type, var3965=$r3}
; {r0=var2043, cn.hutool.core.text.CharSequenceUtil=var2688, r1=var257, $r2=var1379, $z0=var3726, null_type=var1916, $r3=var3965}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String trim(java.lang.CharSequence)>(r0);	$r2 = "";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = r1;	$r3 = null;	goto [?= return $r3];	return $r3
;block_num 3