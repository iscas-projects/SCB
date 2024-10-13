(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1815 0)
(declare-sort var52 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1815 var1815)
(declare-const null-String String)
(declare-const var1511 var1815) ; Statement: r1 := @this: org.apache.ibatis.jdbc.ScriptRunner 
(assert (not (= var1511 null-var1815)))
(declare-const var325 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var325 null-String)))
(assert true)
(define-const var3674 Bool (startsWith/-1785782452 var325 "//")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("//") 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var3674 1 0) 0))) ; Cond: $z0 != 0 
(define-const var268 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1815=org.apache.ibatis.jdbc.ScriptRunner, var1511=r1, var325=r0, var52=null_type, var3674=$z0, var268=$z2}
; {org.apache.ibatis.jdbc.ScriptRunner=var1815, r1=var1511, r0=var325, null_type=var52, $z0=var3674, $z2=var268}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.ibatis.jdbc.ScriptRunner;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("//");	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3