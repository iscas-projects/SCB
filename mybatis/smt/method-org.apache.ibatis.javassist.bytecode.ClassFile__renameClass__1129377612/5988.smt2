(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2471 0)
(declare-sort var3463 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2471 var2471)
(declare-const null-String String)
(declare-const var2505 var2471) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.ClassFile 
(assert (not (= var2505 null-var2471)))
(declare-const var2619 String) ; Statement: r15 := @parameter0: java.lang.String 
(assert (not (= var2619 null-String)))
(declare-const var3956 String) ; Statement: r16 := @parameter1: java.lang.String 
(assert (not (= var3956 null-String)))
(assert true)
(define-const var3647 Bool (= var2619 var3956)) ; Statement: $z0 = virtualinvoke r15.<java.lang.String: boolean equals(java.lang.Object)>(r16) 
 ; Statement: if $z0 == 0 goto $r1 = r0.<org.apache.ibatis.javassist.bytecode.ClassFile: java.lang.String thisclassname> 
(assert (not (= (ite var3647 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2471=org.apache.ibatis.javassist.bytecode.ClassFile, var2505=r0, var2619=r15, var3463=null_type, var3956=r16, var3647=$z0}
; {org.apache.ibatis.javassist.bytecode.ClassFile=var2471, r0=var2505, r15=var2619, null_type=var3463, r16=var3956, $z0=var3647}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.ClassFile;	r15 := @parameter0: java.lang.String;	r16 := @parameter1: java.lang.String;	$z0 = virtualinvoke r15.<java.lang.String: boolean equals(java.lang.Object)>(r16);	if $z0 == 0 goto $r1 = r0.<org.apache.ibatis.javassist.bytecode.ClassFile: java.lang.String thisclassname>;	return
;block_num 2