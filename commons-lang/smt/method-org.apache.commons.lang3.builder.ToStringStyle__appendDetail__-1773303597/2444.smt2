(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2351 0)
(declare-sort var1566 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arrayStart/-417041427 (var2351) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun arrayEnd/-417041427 (var2351) String)
(declare-const null-var2351 var2351)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var356 var2351) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var356 null-var2351)))
(declare-const var3839 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var3839 null-String)))
(declare-const var3674 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3674 null-String)))
(declare-const var447 (Array Int Int)) ; Statement: r3 := @parameter2: short[] 
(assert (not (= var447 null-__Array__Int__Int__)))
(define-const var2413 String (arrayStart/-417041427 var356)) ; Statement: $r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart> 
(assert true)
;(assert (append/1560614132 var3839 var2413)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3839!1 String)
(assert (str.prefixof var3839 var3839!1))
(define-const var2606 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var2293 Int (getLength-Arr-Int-1 var447)) ; Statement: $i0 = lengthof r3 
 ; Statement: if i2 >= $i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert (>= var2606 var2293)) ; Cond: i2 >= $i0 
(define-const var273 String (arrayEnd/-417041427 var356)) ; Statement: $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert true)
;(assert (append/1560614132 var3839!1 var273)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var3839!2 String)
(assert (str.prefixof var3839!1 var3839!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arrayStart/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getLength-Arr-Int-1=([short[]], int), arrayEnd/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String)}
; {var2351=org.apache.commons.lang3.builder.ToStringStyle, var356=r1, var3839=r0, var3674=r5, var1566=null_type, var447=r3, var2413=$r2, var2606=i2, var2293=$i0, var273=$r4}
; {org.apache.commons.lang3.builder.ToStringStyle=var2351, r1=var356, r0=var3839, r5=var3674, null_type=var1566, r3=var447, $r2=var2413, i2=var2606, $i0=var2293, $r4=var273}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r5 := @parameter1: java.lang.String;	r3 := @parameter2: short[];	$r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	i2 = 0;	$i0 = lengthof r3;	if i2 >= $i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	$r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	return
;block_num 3