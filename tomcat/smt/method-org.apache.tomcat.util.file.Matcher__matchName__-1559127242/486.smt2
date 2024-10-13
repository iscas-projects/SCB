(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2692 0)
(declare-sort var668 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun var2692_iterator/1911472585 (var2692) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var2692 var2692)
(declare-const null-String String)
(declare-const var2192 var2692) ; Statement: r2 := @parameter0: java.util.Set 
(assert (not (= var2192 null-var2692)))
(declare-const var1715 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1715 null-String)))
(assert true)
(define-const var2614 (Array Int Int) (toCharArray/415275702 var1715)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var2836 Iterator (var2692_iterator/1911472585 var2192)) ; Statement: r3 = interfaceinvoke r2.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var939 Bool (Iterator_hasNext/-1669924200 var2836)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var939 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), var2692_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var2692=java.util.Set, var2192=r2, var1715=r0, var668=null_type, var2614=r1, var2836=r3, var939=$z0}
; {java.util.Set=var2692, r2=var2192, r0=var1715, null_type=var668, r1=var2614, r3=var2836, $z0=var939}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r2 := @parameter0: java.util.Set;	r0 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	r3 = interfaceinvoke r2.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto return 0;	return 0
;block_num 3