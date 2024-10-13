(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var273 0)
(declare-sort var2049 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newName/-1339797740 (var273) String)
(declare-const null-var273 var273)
(declare-const null-String String)
(declare-const var2174 var273) ; Statement: r1 := @this: jdk.xml.internal.XMLLimitAnalyzer$NameMap 
(assert (not (= var2174 null-var273)))
(declare-const var441 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var441 null-String)))
(define-const var3826 String (newName/-1339797740 var2174)) ; Statement: $r2 = r1.<jdk.xml.internal.XMLLimitAnalyzer$NameMap: java.lang.String newName> 
(assert true)
(define-const var1199 Bool (= var441 var3826)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var1199 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {newName/-1339797740=([jdk.xml.internal.XMLLimitAnalyzer$NameMap], java.lang.String)}
; {var273=jdk.xml.internal.XMLLimitAnalyzer$NameMap, var2174=r1, var441=r0, var2049=null_type, var3826=$r2, var1199=$z0}
; {jdk.xml.internal.XMLLimitAnalyzer$NameMap=var273, r1=var2174, r0=var441, null_type=var2049, $r2=var3826, $z0=var1199}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.xml.internal.XMLLimitAnalyzer$NameMap;	r0 := @parameter0: java.lang.String;	$r2 = r1.<jdk.xml.internal.XMLLimitAnalyzer$NameMap: java.lang.String newName>;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto return null;	return null
;block_num 2