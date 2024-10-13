(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2715 0)
(declare-sort var711 0)
(declare-sort var1271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun baseType/-772521324 (var2715) var711)
(declare-fun buffer/-772521324 (var2715) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun context/-772521324 (var2715) var1271)
(declare-fun var711_checkValid/1998149254 (var711 String var1271) void)
(declare-const null-var2715 var2715)
(declare-const var3528 var2715) ; Statement: r0 := @this: org.relaxng.datatype.helpers.StreamingValidatorImpl 
(assert (not (= var3528 null-var2715)))
(define-const var1802 var711 (baseType/-772521324 var3528)) ; Statement: $r2 = r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: org.relaxng.datatype.Datatype baseType> 
(define-const var3474 String (buffer/-772521324 var3528)) ; Statement: $r1 = r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: java.lang.StringBuffer buffer> 
(assert true)
(define-const var588 String (toString/-222306083 var3474)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var813 var1271 (context/-772521324 var3528)) ; Statement: $r3 = r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: org.relaxng.datatype.ValidationContext context> 
;(assert (var711_checkValid/1998149254 var1802 var588 var813)) ; Statement: interfaceinvoke $r2.<org.relaxng.datatype.Datatype: void checkValid(java.lang.String,org.relaxng.datatype.ValidationContext)>($r4, $r3) 

(declare-const var1802!1 var711)
(declare-const var588!1 String)
(declare-const var813!1 var1271)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {baseType/-772521324=([org.relaxng.datatype.helpers.StreamingValidatorImpl], org.relaxng.datatype.Datatype), buffer/-772521324=([org.relaxng.datatype.helpers.StreamingValidatorImpl], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), context/-772521324=([org.relaxng.datatype.helpers.StreamingValidatorImpl], org.relaxng.datatype.ValidationContext), var711_checkValid/1998149254=([org.relaxng.datatype.Datatype, java.lang.String, org.relaxng.datatype.ValidationContext], void)}
; {var2715=org.relaxng.datatype.helpers.StreamingValidatorImpl, var3528=r0, var711=org.relaxng.datatype.Datatype, var1802=$r2, var3474=$r1, var588=$r4, var1271=org.relaxng.datatype.ValidationContext, var813=$r3}
; {org.relaxng.datatype.helpers.StreamingValidatorImpl=var2715, r0=var3528, org.relaxng.datatype.Datatype=var711, $r2=var1802, $r1=var3474, $r4=var588, org.relaxng.datatype.ValidationContext=var1271, $r3=var813}
;seq <java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.relaxng.datatype.helpers.StreamingValidatorImpl;	$r2 = r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: org.relaxng.datatype.Datatype baseType>;	$r1 = r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: java.lang.StringBuffer buffer>;	$r4 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	$r3 = r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: org.relaxng.datatype.ValidationContext context>;	interfaceinvoke $r2.<org.relaxng.datatype.Datatype: void checkValid(java.lang.String,org.relaxng.datatype.ValidationContext)>($r4, $r3);	return
;block_num 1