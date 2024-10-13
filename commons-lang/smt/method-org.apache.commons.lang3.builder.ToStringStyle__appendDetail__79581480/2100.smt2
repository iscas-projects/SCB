(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var262 0)
(declare-sort var3374 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arrayStart/-417041427 (var262) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-Float64-1 ((Array Int Float64)) Int)
(declare-fun arrayEnd/-417041427 (var262) String)
(declare-const null-var262 var262)
(declare-const null-String String)
(declare-const null-__Array__Int__Float64__ (Array Int Float64))
(declare-const var585 var262) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var585 null-var262)))
(declare-const var1703 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1703 null-String)))
(declare-const var3289 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3289 null-String)))
(declare-const var1427 (Array Int Float64)) ; Statement: r3 := @parameter2: double[] 
(assert (not (= var1427 null-__Array__Int__Float64__)))
(define-const var82 String (arrayStart/-417041427 var585)) ; Statement: $r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart> 
(assert true)
;(assert (append/1560614132 var1703 var82)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var1703!1 String)
(assert (str.prefixof var1703 var1703!1))
(define-const var847 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var2656 Int (getLength-Arr-Float64-1 var1427)) ; Statement: $i0 = lengthof r3 
 ; Statement: if i1 >= $i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert (>= var847 var2656)) ; Cond: i1 >= $i0 
(define-const var2793 String (arrayEnd/-417041427 var585)) ; Statement: $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert true)
;(assert (append/1560614132 var1703!1 var2793)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var1703!2 String)
(assert (str.prefixof var1703!1 var1703!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arrayStart/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getLength-Arr-Float64-1=([double[]], int), arrayEnd/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String)}
; {var262=org.apache.commons.lang3.builder.ToStringStyle, var585=r1, var1703=r0, var3289=r5, var3374=null_type, var1427=r3, var82=$r2, var847=i1, var2656=$i0, var2793=$r4}
; {org.apache.commons.lang3.builder.ToStringStyle=var262, r1=var585, r0=var1703, r5=var3289, null_type=var3374, r3=var1427, $r2=var82, i1=var847, $i0=var2656, $r4=var2793}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r5 := @parameter1: java.lang.String;	r3 := @parameter2: double[];	$r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	i1 = 0;	$i0 = lengthof r3;	if i1 >= $i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	$r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	return
;block_num 3