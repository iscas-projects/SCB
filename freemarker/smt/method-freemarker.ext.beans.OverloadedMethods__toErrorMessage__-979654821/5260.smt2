(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1479 0)
(declare-sort var143 0)
(declare-sort var3686 0)
(declare-sort var212 0)
(declare-sort var2856 0)
(declare-sort var2975 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getUnwrappedArguments/1016106144 (var143) (Array Int var212))
(declare-fun arr-var212-init () (Array Int var212))
(declare-fun getErrorDescription/-65313640 (var143) var212)
(declare-fun cast-from-__Array__Int__var212__-to-var2856 ((Array Int var212)) var2856)
(declare-fun cast-from-var2856-to-__Array__Int__var2856__ (var2856) (Array Int var2856))
(declare-fun cast-from-String-to-var2856 (String) var2856)
(declare-fun getTMActualParameterTypes/1774738791 (var1479 var3686) var2975)
(declare-fun cast-from-var2975-to-var2856 (var2975) var2856)
(declare-fun cast-from-var2856-to-var212 (var2856) var212)
(declare-const null-var1479 var1479)
(declare-const null-var143 var143)
(declare-const null-var3686 var3686)
(declare-const null-__Array__Int__var212__ (Array Int var212))
(declare-const null-__Array__Int__var2856__ (Array Int var2856))
(declare-const var3704 var1479) ; Statement: r6 := @this: freemarker.ext.beans.OverloadedMethods 
(assert (not (= var3704 null-var1479)))
(declare-const var1870 var143) ; Statement: r0 := @parameter0: freemarker.ext.beans.EmptyMemberAndArguments 
(assert (not (= var1870 null-var143)))
(declare-const var2925 var3686) ; Statement: r4 := @parameter1: java.util.List 
(assert (not (= var2925 null-var3686)))
(assert true)
(define-const var168 (Array Int var212) (getUnwrappedArguments/1016106144 var1870)) ; Statement: r1 = virtualinvoke r0.<freemarker.ext.beans.EmptyMemberAndArguments: java.lang.Object[] getUnwrappedArguments()>() 
(define-const var124 (Array Int var212) arr-var212-init) ; Statement: $r2 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var2682 var212 (getErrorDescription/-65313640 var1870)) ; Statement: $r3 = virtualinvoke r0.<freemarker.ext.beans.EmptyMemberAndArguments: java.lang.Object getErrorDescription()>() 
(declare-const var124!1 (Array Int var212))
(assert (not (= var124!1 null-__Array__Int__var212__)))
(assert (= (select var124!1 0) var2682)) ; Statement: $r2[0] = $r3 
 ; Statement: if r4 == null goto $r12 = "" 
(assert (not (= var2925 null-var3686))) ; Negate: Cond: r4 == null  
(define-const var927 var2856 (cast-from-__Array__Int__var212__-to-var2856 arr-var212-init)) ; Statement: $r12 = newarray (java.lang.Object)[3] 
(define-const var3472 (Array Int var2856) (cast-from-var2856-to-__Array__Int__var2856__ var927)) ; Statement: $r15 = (java.io.Serializable[]) $r12 
(declare-const var3472!1 (Array Int var2856))
(assert (not (= var3472!1 null-__Array__Int__var2856__)))
(assert (= (select var3472!1 0) (cast-from-String-to-var2856 "\nThe FTL type of the argument values were: "))) ; Statement: $r15[0] = "\nThe FTL type of the argument values were: " 
(assert true)
(define-const var1547 var2975 (getTMActualParameterTypes/1774738791 var3704 var2925)) ; Statement: $r11 = specialinvoke r6.<freemarker.ext.beans.OverloadedMethods: freemarker.core._DelayedConversionToString getTMActualParameterTypes(java.util.List)>(r4) 
(define-const var1332 (Array Int var2856) (cast-from-var2856-to-__Array__Int__var2856__ var927)) ; Statement: $r16 = (java.io.Serializable[]) $r12 
(define-const var3509 var2856 (cast-from-var2975-to-var2856 var1547)) ; Statement: $r17 = (java.io.Serializable) $r11 
(declare-const var1332!1 (Array Int var2856))
(assert (not (= var1332!1 null-__Array__Int__var2856__)))
(assert (= (select var1332!1 1) var3509)) ; Statement: $r16[1] = $r17 
(define-const var2229 (Array Int var2856) (cast-from-var2856-to-__Array__Int__var2856__ var927)) ; Statement: $r18 = (java.io.Serializable[]) $r12 
(declare-const var2229!1 (Array Int var2856))
(assert (not (= var2229!1 null-__Array__Int__var2856__)))
(assert (= (select var2229!1 2) (cast-from-String-to-var2856 "."))) ; Statement: $r18[2] = "." 
 ; Statement: goto [?= $r2[1] = $r12] 
(assert true) ; Non Conditional
(declare-const var124!2 (Array Int var212))
(assert (not (= var124!2 null-__Array__Int__var212__)))
(assert (= (select var124!2 1) (cast-from-var2856-to-var212 var927))) ; Statement: $r2[1] = $r12 
 ; Statement: if r1 == null goto $r13 = "" 
(assert (= var168 null-__Array__Int__var212__)) ; Cond: r1 == null 
(define-const var3860 var2856 (cast-from-String-to-var2856 "")) ; Statement: $r13 = "" 
(assert true) ; Non Conditional
(declare-const var124!3 (Array Int var212))
(assert (not (= var124!3 null-__Array__Int__var212__)))
(assert (= (select var124!3 2) (cast-from-var2856-to-var212 var3860))) ; Statement: $r2[2] = $r13 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getUnwrappedArguments/1016106144=([freemarker.ext.beans.EmptyMemberAndArguments], java.lang.Object[]), arr-var212-init=([], java.lang.Object[]), getErrorDescription/-65313640=([freemarker.ext.beans.EmptyMemberAndArguments], java.lang.Object), cast-from-__Array__Int__var212__-to-var2856=([java.lang.Object[]], java.io.Serializable), cast-from-var2856-to-__Array__Int__var2856__=([java.io.Serializable], java.io.Serializable[]), cast-from-String-to-var2856=([java.lang.String], java.io.Serializable), getTMActualParameterTypes/1774738791=([freemarker.ext.beans.OverloadedMethods, java.util.List], freemarker.core._DelayedConversionToString), cast-from-var2975-to-var2856=([freemarker.core._DelayedConversionToString], java.io.Serializable), cast-from-var2856-to-var212=([java.io.Serializable], java.lang.Object)}
; {var1479=freemarker.ext.beans.OverloadedMethods, var3704=r6, var143=freemarker.ext.beans.EmptyMemberAndArguments, var1870=r0, var3686=java.util.List, var2925=r4, var212=java.lang.Object, var168=r1, var124=$r2, var2682=$r3, var2856=java.io.Serializable, var927=$r12, var3472=$r15, var2975=freemarker.core._DelayedConversionToString, var1547=$r11, var1332=$r16, var3509=$r17, var2229=$r18, var3860=$r13}
; {freemarker.ext.beans.OverloadedMethods=var1479, r6=var3704, freemarker.ext.beans.EmptyMemberAndArguments=var143, r0=var1870, java.util.List=var3686, r4=var2925, java.lang.Object=var212, r1=var168, $r2=var124, $r3=var2682, java.io.Serializable=var2856, $r12=var927, $r15=var3472, freemarker.core._DelayedConversionToString=var2975, $r11=var1547, $r16=var1332, $r17=var3509, $r18=var2229, $r13=var3860}
;seq 
;cnt {}
;stmts r6 := @this: freemarker.ext.beans.OverloadedMethods;	r0 := @parameter0: freemarker.ext.beans.EmptyMemberAndArguments;	r4 := @parameter1: java.util.List;	r1 = virtualinvoke r0.<freemarker.ext.beans.EmptyMemberAndArguments: java.lang.Object[] getUnwrappedArguments()>();	$r2 = newarray (java.lang.Object)[3];	$r3 = virtualinvoke r0.<freemarker.ext.beans.EmptyMemberAndArguments: java.lang.Object getErrorDescription()>();	$r2[0] = $r3;	if r4 == null goto $r12 = "";	$r12 = newarray (java.lang.Object)[3];	$r15 = (java.io.Serializable[]) $r12;	$r15[0] = "\nThe FTL type of the argument values were: ";	$r11 = specialinvoke r6.<freemarker.ext.beans.OverloadedMethods: freemarker.core._DelayedConversionToString getTMActualParameterTypes(java.util.List)>(r4);	$r16 = (java.io.Serializable[]) $r12;	$r17 = (java.io.Serializable) $r11;	$r16[1] = $r17;	$r18 = (java.io.Serializable[]) $r12;	$r18[2] = ".";	goto [?= $r2[1] = $r12];	$r2[1] = $r12;	if r1 == null goto $r13 = "";	$r13 = "";	$r2[2] = $r13;	return $r2
;block_num 5