(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1314 0)
(declare-sort var1247 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1314 var1314)
(declare-const null-String String)
(declare-const var3854 var1314) ; Statement: r1 := @this: org.apache.ibatis.javassist.tools.reflect.Reflection 
(assert (not (= var3854 null-var1314)))
(declare-const var628 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var628 null-String)))
(assert true)
(define-const var2074 Bool (startsWith/-1785782452 var628 "_m_")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("_m_") 
 ; Statement: if $z0 != 0 goto $z6 = 1 
(assert (not (= (ite var2074 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3361 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= return $z6] 
(assert true) ; Non Conditional
 ; Statement: return $z6 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1314=org.apache.ibatis.javassist.tools.reflect.Reflection, var3854=r1, var628=r0, var1247=null_type, var2074=$z0, var3361=$z6}
; {org.apache.ibatis.javassist.tools.reflect.Reflection=var1314, r1=var3854, r0=var628, null_type=var1247, $z0=var2074, $z6=var3361}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.tools.reflect.Reflection;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("_m_");	if $z0 != 0 goto $z6 = 1;	$z6 = 1;	goto [?= return $z6];	return $z6
;block_num 3