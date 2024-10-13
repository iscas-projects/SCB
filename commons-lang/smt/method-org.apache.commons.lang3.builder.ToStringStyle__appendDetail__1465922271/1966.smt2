(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1643 0)
(declare-sort var717 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arrayStart/-417041427 (var1643) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun arrayEnd/-417041427 (var1643) String)
(declare-const null-var1643 var1643)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2793 var1643) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var2793 null-var1643)))
(declare-const var1217 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1217 null-String)))
(declare-const var3523 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3523 null-String)))
(declare-const var3905 (Array Int Int)) ; Statement: r3 := @parameter2: byte[] 
(assert (not (= var3905 null-__Array__Int__Int__)))
(define-const var2240 String (arrayStart/-417041427 var2793)) ; Statement: $r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart> 
(assert true)
;(assert (append/1560614132 var1217 var2240)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var1217!1 String)
(assert (str.prefixof var1217 var1217!1))
(define-const var403 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var1402 Int (getLength-Arr-Int-1 var3905)) ; Statement: $i0 = lengthof r3 
 ; Statement: if i2 >= $i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert (>= var403 var1402)) ; Cond: i2 >= $i0 
(define-const var1204 String (arrayEnd/-417041427 var2793)) ; Statement: $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert true)
;(assert (append/1560614132 var1217!1 var1204)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var1217!2 String)
(assert (str.prefixof var1217!1 var1217!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arrayStart/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getLength-Arr-Int-1=([byte[]], int), arrayEnd/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String)}
; {var1643=org.apache.commons.lang3.builder.ToStringStyle, var2793=r1, var1217=r0, var3523=r5, var717=null_type, var3905=r3, var2240=$r2, var403=i2, var1402=$i0, var1204=$r4}
; {org.apache.commons.lang3.builder.ToStringStyle=var1643, r1=var2793, r0=var1217, r5=var3523, null_type=var717, r3=var3905, $r2=var2240, i2=var403, $i0=var1402, $r4=var1204}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r5 := @parameter1: java.lang.String;	r3 := @parameter2: byte[];	$r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	i2 = 0;	$i0 = lengthof r3;	if i2 >= $i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	$r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	return
;block_num 3