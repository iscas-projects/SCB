(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3162 0)
(declare-sort var3523 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3162 var3162)
(declare-const null-String String)
(declare-const var2656 var3162) ; Statement: r2 := @this: org.apache.ibatis.builder.xml.XMLMapperBuilder 
(assert (not (= var2656 null-var3162)))
(declare-const var490 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var490 null-String)))
(declare-const var3009 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3009 null-String)))
(declare-const var2148 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2148 null-String)))
 ; Statement: if r0 == null goto (branch) 
(assert (not (= var2148 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var570 Bool (= var2148 var3009)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3162=org.apache.ibatis.builder.xml.XMLMapperBuilder, var2656=r2, var490=r3, var3523=null_type, var3009=r1, var2148=r0, var570=$z1}
; {org.apache.ibatis.builder.xml.XMLMapperBuilder=var3162, r2=var2656, r3=var490, null_type=var3523, r1=var3009, r0=var2148, $z1=var570}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.builder.xml.XMLMapperBuilder;	r3 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	if r0 == null goto (branch);	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1);	return $z1
;block_num 2