(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2828 0)
(declare-sort var3505 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newName/-1339797740 (var2828) String)
(declare-fun oldName/-1339797740 (var2828) String)
(declare-const null-var2828 var2828)
(declare-const null-String String)
(declare-const var705 var2828) ; Statement: r1 := @this: jdk.xml.internal.XMLLimitAnalyzer$NameMap 
(assert (not (= var705 null-var2828)))
(declare-const var806 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var806 null-String)))
(define-const var2077 String (newName/-1339797740 var705)) ; Statement: $r2 = r1.<jdk.xml.internal.XMLLimitAnalyzer$NameMap: java.lang.String newName> 
(assert true)
(define-const var143 Bool (= var806 var2077)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto return null 
(assert (not (= (ite var143 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3628 String (oldName/-1339797740 var705)) ; Statement: $r3 = r1.<jdk.xml.internal.XMLLimitAnalyzer$NameMap: java.lang.String oldName> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {newName/-1339797740=([jdk.xml.internal.XMLLimitAnalyzer$NameMap], java.lang.String), oldName/-1339797740=([jdk.xml.internal.XMLLimitAnalyzer$NameMap], java.lang.String)}
; {var2828=jdk.xml.internal.XMLLimitAnalyzer$NameMap, var705=r1, var806=r0, var3505=null_type, var2077=$r2, var143=$z0, var3628=$r3}
; {jdk.xml.internal.XMLLimitAnalyzer$NameMap=var2828, r1=var705, r0=var806, null_type=var3505, $r2=var2077, $z0=var143, $r3=var3628}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.xml.internal.XMLLimitAnalyzer$NameMap;	r0 := @parameter0: java.lang.String;	$r2 = r1.<jdk.xml.internal.XMLLimitAnalyzer$NameMap: java.lang.String newName>;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto return null;	$r3 = r1.<jdk.xml.internal.XMLLimitAnalyzer$NameMap: java.lang.String oldName>;	return $r3
;block_num 2