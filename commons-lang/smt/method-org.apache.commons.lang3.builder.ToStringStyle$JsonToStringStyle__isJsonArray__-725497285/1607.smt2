(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3896 0)
(declare-sort var3258 0)
(declare-sort var2747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getArrayStart/559431594 (var2747) String)
(declare-fun cast-from-var3896-to-var2747 (var3896) var2747)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var3896 var3896)
(declare-const null-String String)
(declare-const var3545 var3896) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle 
(assert (not (= var3545 null-var3896)))
(declare-const var500 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var500 null-String)))
(assert true)
(define-const var552 String (getArrayStart/559431594 (cast-from-var3896-to-var2747 var3545))) ; Statement: $r2 = virtualinvoke r1.<org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle: java.lang.String getArrayStart()>() 
(assert true)
(define-const var2046 Bool (startsWith/-1785782452 var500 var552)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r2) 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var2046 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3794 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {getArrayStart/559431594=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String), cast-from-var3896-to-var2747=([org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle], org.apache.commons.lang3.builder.ToStringStyle), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var3896=org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle, var3545=r1, var500=r0, var3258=null_type, var2747=org.apache.commons.lang3.builder.ToStringStyle, var552=$r2, var2046=$z0, var3794=$z2}
; {org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle=var3896, r1=var3545, r0=var500, null_type=var3258, org.apache.commons.lang3.builder.ToStringStyle=var2747, $r2=var552, $z0=var2046, $z2=var3794}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle;	r0 := @parameter0: java.lang.String;	$r2 = virtualinvoke r1.<org.apache.commons.lang3.builder.ToStringStyle$JsonToStringStyle: java.lang.String getArrayStart()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r2);	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3