(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3022 0)
(declare-sort var3012 0)
(declare-sort var2287 0)
(declare-sort var3610 0)
(declare-sort var2874 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getUnwrappedArguments/1016106144 (var3012) (Array Int var3610))
(declare-fun arr-var3610-init () (Array Int var3610))
(declare-fun getErrorDescription/-65313640 (var3012) var3610)
(declare-fun cast-from-String-to-var2874 (String) var2874)
(declare-fun cast-from-var2874-to-var3610 (var2874) var3610)
(declare-const null-var3022 var3022)
(declare-const null-var3012 var3012)
(declare-const null-var2287 var2287)
(declare-const null-__Array__Int__var3610__ (Array Int var3610))
(declare-const var800 var3022) ; Statement: r6 := @this: freemarker.ext.beans.OverloadedMethods 
(assert (not (= var800 null-var3022)))
(declare-const var3041 var3012) ; Statement: r0 := @parameter0: freemarker.ext.beans.EmptyMemberAndArguments 
(assert (not (= var3041 null-var3012)))
(declare-const var3341 var2287) ; Statement: r4 := @parameter1: java.util.List 
(assert (not (= var3341 null-var2287)))
(assert true)
(define-const var143 (Array Int var3610) (getUnwrappedArguments/1016106144 var3041)) ; Statement: r1 = virtualinvoke r0.<freemarker.ext.beans.EmptyMemberAndArguments: java.lang.Object[] getUnwrappedArguments()>() 
(define-const var513 (Array Int var3610) arr-var3610-init) ; Statement: $r2 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var199 var3610 (getErrorDescription/-65313640 var3041)) ; Statement: $r3 = virtualinvoke r0.<freemarker.ext.beans.EmptyMemberAndArguments: java.lang.Object getErrorDescription()>() 
(declare-const var513!1 (Array Int var3610))
(assert (not (= var513!1 null-__Array__Int__var3610__)))
(assert (= (select var513!1 0) var199)) ; Statement: $r2[0] = $r3 
 ; Statement: if r4 == null goto $r12 = "" 
(assert (= var3341 null-var2287)) ; Cond: r4 == null 
(define-const var1812 var2874 (cast-from-String-to-var2874 "")) ; Statement: $r12 = "" 
(assert true) ; Non Conditional
(declare-const var513!2 (Array Int var3610))
(assert (not (= var513!2 null-__Array__Int__var3610__)))
(assert (= (select var513!2 1) (cast-from-var2874-to-var3610 var1812))) ; Statement: $r2[1] = $r12 
 ; Statement: if r1 == null goto $r13 = "" 
(assert (= var143 null-__Array__Int__var3610__)) ; Cond: r1 == null 
(define-const var1556 var2874 (cast-from-String-to-var2874 "")) ; Statement: $r13 = "" 
(assert true) ; Non Conditional
(declare-const var513!3 (Array Int var3610))
(assert (not (= var513!3 null-__Array__Int__var3610__)))
(assert (= (select var513!3 2) (cast-from-var2874-to-var3610 var1556))) ; Statement: $r2[2] = $r13 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getUnwrappedArguments/1016106144=([freemarker.ext.beans.EmptyMemberAndArguments], java.lang.Object[]), arr-var3610-init=([], java.lang.Object[]), getErrorDescription/-65313640=([freemarker.ext.beans.EmptyMemberAndArguments], java.lang.Object), cast-from-String-to-var2874=([java.lang.String], java.io.Serializable), cast-from-var2874-to-var3610=([java.io.Serializable], java.lang.Object)}
; {var3022=freemarker.ext.beans.OverloadedMethods, var800=r6, var3012=freemarker.ext.beans.EmptyMemberAndArguments, var3041=r0, var2287=java.util.List, var3341=r4, var3610=java.lang.Object, var143=r1, var513=$r2, var199=$r3, var2874=java.io.Serializable, var1812=$r12, var1556=$r13}
; {freemarker.ext.beans.OverloadedMethods=var3022, r6=var800, freemarker.ext.beans.EmptyMemberAndArguments=var3012, r0=var3041, java.util.List=var2287, r4=var3341, java.lang.Object=var3610, r1=var143, $r2=var513, $r3=var199, java.io.Serializable=var2874, $r12=var1812, $r13=var1556}
;seq 
;cnt {}
;stmts r6 := @this: freemarker.ext.beans.OverloadedMethods;	r0 := @parameter0: freemarker.ext.beans.EmptyMemberAndArguments;	r4 := @parameter1: java.util.List;	r1 = virtualinvoke r0.<freemarker.ext.beans.EmptyMemberAndArguments: java.lang.Object[] getUnwrappedArguments()>();	$r2 = newarray (java.lang.Object)[3];	$r3 = virtualinvoke r0.<freemarker.ext.beans.EmptyMemberAndArguments: java.lang.Object getErrorDescription()>();	$r2[0] = $r3;	if r4 == null goto $r12 = "";	$r12 = "";	$r2[1] = $r12;	if r1 == null goto $r13 = "";	$r13 = "";	$r2[2] = $r13;	return $r2
;block_num 5