(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var295 0)
(declare-sort var122 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProperty/1391780669 (var295 String) String)
(declare-const null-var295 var295)
(declare-const null-String String)
(declare-const var1512 var295) ; Statement: r0 := @parameter0: java.util.Properties 
(assert (not (= var1512 null-var295)))
(declare-const var1675 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1675 null-String)))
(assert true)
(define-const var2013 String (getProperty/1391780669 var1512 var1675)) ; Statement: r2 = virtualinvoke r0.<java.util.Properties: java.lang.String getProperty(java.lang.String)>(r1) 
 ; Statement: if r2 != null goto return r2 
(assert (not (= var2013 null-String))) ; Cond: r2 != null 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getProperty/1391780669=([java.util.Properties, java.lang.String], java.lang.String)}
; {var295=java.util.Properties, var1512=r0, var1675=r1, var122=null_type, var2013=r2}
; {java.util.Properties=var295, r0=var1512, r1=var1675, null_type=var122, r2=var2013}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.util.Properties;	r1 := @parameter1: java.lang.String;	r2 = virtualinvoke r0.<java.util.Properties: java.lang.String getProperty(java.lang.String)>(r1);	if r2 != null goto return r2;	return r2
;block_num 2