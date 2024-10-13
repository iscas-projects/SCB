(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2923 0)
(declare-sort var855 0)
(declare-sort var1459 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getContentStart/-743629750 (var1459) String)
(declare-fun cast-from-var2923-to-var1459 (var2923) var1459)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var2923 var2923)
(declare-const null-String String)
(declare-const var2929 var2923) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle 
(assert (not (= var2929 null-var2923)))
(declare-const var2817 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2817 null-String)))
(assert true)
(define-const var2523 String (getContentStart/-743629750 (cast-from-var2923-to-var1459 var2929))) ; Statement: $r2 = virtualinvoke r1.<org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle: java.lang.String getContentStart()>() 
(assert true)
(define-const var847 Bool (startsWith/-1785782452 var2817 var2523)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r2) 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var847 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3846 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {getContentStart/-743629750=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String), cast-from-var2923-to-var1459=([org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle], org.apache.commons.lang3.builder.ToStringStyle), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2923=org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle, var2929=r1, var2817=r0, var855=null_type, var1459=org.apache.commons.lang3.builder.ToStringStyle, var2523=$r2, var847=$z0, var3846=$z2}
; {org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle=var2923, r1=var2929, r0=var2817, null_type=var855, org.apache.commons.lang3.builder.ToStringStyle=var1459, $r2=var2523, $z0=var847, $z2=var3846}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle;	r0 := @parameter0: java.lang.String;	$r2 = virtualinvoke r1.<org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle: java.lang.String getContentStart()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r2);	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3