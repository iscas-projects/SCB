(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3265 0)
(declare-sort var1650 0)
(declare-sort var2700 0)
(declare-sort var2449 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arrayStart/-417041427 (var3265) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2449_getLength/133105635 (var2700) Int)
(declare-fun arrayEnd/-417041427 (var3265) String)
(declare-const null-var3265 var3265)
(declare-const null-String String)
(declare-const null-var2700 var2700)
(declare-const var1799 var3265) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var1799 null-var3265)))
(declare-const var2588 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var2588 null-String)))
(declare-const var637 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var637 null-String)))
(declare-const var1211 var2700) ; Statement: r3 := @parameter2: java.lang.Object 
(assert (not (= var1211 null-var2700)))
(define-const var2629 String (arrayStart/-417041427 var1799)) ; Statement: $r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart> 
(assert true)
;(assert (append/1560614132 var2588 var2629)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2588!1 String)
(assert (str.prefixof var2588 var2588!1))
(define-const var610 Int (var2449_getLength/133105635 var1211)) ; Statement: i0 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r3) 
(define-const var902 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert (>= var902 var610)) ; Cond: i1 >= i0 
(define-const var3875 String (arrayEnd/-417041427 var1799)) ; Statement: $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert true)
;(assert (append/1560614132 var2588!1 var3875)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var2588!2 String)
(assert (str.prefixof var2588!1 var2588!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arrayStart/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var2449_getLength/133105635=([java.lang.Object], int), arrayEnd/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String)}
; {var3265=org.apache.commons.lang3.builder.ToStringStyle, var1799=r1, var2588=r0, var637=r5, var1650=null_type, var2700=java.lang.Object, var1211=r3, var2629=$r2, var2449=java.lang.reflect.Array, var610=i0, var902=i1, var3875=$r4}
; {org.apache.commons.lang3.builder.ToStringStyle=var3265, r1=var1799, r0=var2588, r5=var637, null_type=var1650, java.lang.Object=var2700, r3=var1211, $r2=var2629, java.lang.reflect.Array=var2449, i0=var610, i1=var902, $r4=var3875}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r5 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.Object;	$r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	i0 = staticinvoke <java.lang.reflect.Array: int getLength(java.lang.Object)>(r3);	i1 = 0;	if i1 >= i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	$r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	return
;block_num 3