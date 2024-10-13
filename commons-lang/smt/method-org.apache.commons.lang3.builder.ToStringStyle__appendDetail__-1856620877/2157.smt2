(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3011 0)
(declare-sort var13 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arrayStart/-417041427 (var3011) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-Float32-1 ((Array Int Float32)) Int)
(declare-fun arrayEnd/-417041427 (var3011) String)
(declare-const null-var3011 var3011)
(declare-const null-String String)
(declare-const null-__Array__Int__Float32__ (Array Int Float32))
(declare-const var1253 var3011) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var1253 null-var3011)))
(declare-const var2890 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var2890 null-String)))
(declare-const var1166 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1166 null-String)))
(declare-const var3816 (Array Int Float32)) ; Statement: r3 := @parameter2: float[] 
(assert (not (= var3816 null-__Array__Int__Float32__)))
(define-const var2533 String (arrayStart/-417041427 var1253)) ; Statement: $r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart> 
(assert true)
;(assert (append/1560614132 var2890 var2533)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2890!1 String)
(assert (str.prefixof var2890 var2890!1))
(define-const var566 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var3134 Int (getLength-Arr-Float32-1 var3816)) ; Statement: $i0 = lengthof r3 
 ; Statement: if i1 >= $i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert (>= var566 var3134)) ; Cond: i1 >= $i0 
(define-const var3900 String (arrayEnd/-417041427 var1253)) ; Statement: $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert true)
;(assert (append/1560614132 var2890!1 var3900)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var2890!2 String)
(assert (str.prefixof var2890!1 var2890!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arrayStart/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getLength-Arr-Float32-1=([float[]], int), arrayEnd/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String)}
; {var3011=org.apache.commons.lang3.builder.ToStringStyle, var1253=r1, var2890=r0, var1166=r5, var13=null_type, var3816=r3, var2533=$r2, var566=i1, var3134=$i0, var3900=$r4}
; {org.apache.commons.lang3.builder.ToStringStyle=var3011, r1=var1253, r0=var2890, r5=var1166, null_type=var13, r3=var3816, $r2=var2533, i1=var566, $i0=var3134, $r4=var3900}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r5 := @parameter1: java.lang.String;	r3 := @parameter2: float[];	$r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	i1 = 0;	$i0 = lengthof r3;	if i1 >= $i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	$r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	return
;block_num 3