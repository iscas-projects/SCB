(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3274 0)
(declare-sort var1695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3274 var3274)
(declare-const null-String String)
(declare-const var2221 var3274) ; Statement: r2 := @this: org.apache.ibatis.builder.xml.XMLStatementBuilder 
(assert (not (= var2221 null-var3274)))
(declare-const var3452 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var3452 null-String)))
(declare-const var2331 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2331 null-String)))
(declare-const var2767 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2767 null-String)))
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var2767 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var2841 Bool (= var2767 var2331)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3274=org.apache.ibatis.builder.xml.XMLStatementBuilder, var2221=r2, var3452=r8, var1695=null_type, var2331=r1, var2767=r0, var2841=$z1}
; {org.apache.ibatis.builder.xml.XMLStatementBuilder=var3274, r2=var2221, r8=var3452, null_type=var1695, r1=var2331, r0=var2767, $z1=var2841}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.builder.xml.XMLStatementBuilder;	r8 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	if r0 == null goto (branch);	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1);	return $z1
;block_num 2