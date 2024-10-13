(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1037 0)
(declare-sort var3690 0)
(declare-sort var3037 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun baseType/-772521324 (var1037) var3690)
(declare-fun buffer/-772521324 (var1037) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun context/-772521324 (var1037) var3037)
(declare-fun var3690_isValid/596794656 (var3690 String var3037) Bool)
(declare-const null-var1037 var1037)
(declare-const var3105 var1037) ; Statement: r0 := @this: org.relaxng.datatype.helpers.StreamingValidatorImpl 
(assert (not (= var3105 null-var1037)))
(define-const var3654 var3690 (baseType/-772521324 var3105)) ; Statement: $r2 = r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: org.relaxng.datatype.Datatype baseType> 
(define-const var1957 String (buffer/-772521324 var3105)) ; Statement: $r1 = r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: java.lang.StringBuffer buffer> 
(assert true)
(define-const var2685 String (toString/-222306083 var1957)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var682 var3037 (context/-772521324 var3105)) ; Statement: $r3 = r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: org.relaxng.datatype.ValidationContext context> 
(define-const var1357 Bool (var3690_isValid/596794656 var3654 var2685 var682)) ; Statement: $z0 = interfaceinvoke $r2.<org.relaxng.datatype.Datatype: boolean isValid(java.lang.String,org.relaxng.datatype.ValidationContext)>($r4, $r3) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {baseType/-772521324=([org.relaxng.datatype.helpers.StreamingValidatorImpl], org.relaxng.datatype.Datatype), buffer/-772521324=([org.relaxng.datatype.helpers.StreamingValidatorImpl], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), context/-772521324=([org.relaxng.datatype.helpers.StreamingValidatorImpl], org.relaxng.datatype.ValidationContext), var3690_isValid/596794656=([org.relaxng.datatype.Datatype, java.lang.String, org.relaxng.datatype.ValidationContext], boolean)}
; {var1037=org.relaxng.datatype.helpers.StreamingValidatorImpl, var3105=r0, var3690=org.relaxng.datatype.Datatype, var3654=$r2, var1957=$r1, var2685=$r4, var3037=org.relaxng.datatype.ValidationContext, var682=$r3, var1357=$z0}
; {org.relaxng.datatype.helpers.StreamingValidatorImpl=var1037, r0=var3105, org.relaxng.datatype.Datatype=var3690, $r2=var3654, $r1=var1957, $r4=var2685, org.relaxng.datatype.ValidationContext=var3037, $r3=var682, $z0=var1357}
;seq <java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.relaxng.datatype.helpers.StreamingValidatorImpl;	$r2 = r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: org.relaxng.datatype.Datatype baseType>;	$r1 = r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: java.lang.StringBuffer buffer>;	$r4 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	$r3 = r0.<org.relaxng.datatype.helpers.StreamingValidatorImpl: org.relaxng.datatype.ValidationContext context>;	$z0 = interfaceinvoke $r2.<org.relaxng.datatype.Datatype: boolean isValid(java.lang.String,org.relaxng.datatype.ValidationContext)>($r4, $r3);	return $z0
;block_num 1