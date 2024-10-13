(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3684 0)
(declare-sort var2641 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arrayStart/-417041427 (var3684) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun arrayEnd/-417041427 (var3684) String)
(declare-const null-var3684 var3684)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var57 var3684) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var57 null-var3684)))
(declare-const var3456 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var3456 null-String)))
(declare-const var138 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var138 null-String)))
(declare-const var3433 (Array Int Int)) ; Statement: r3 := @parameter2: long[] 
(assert (not (= var3433 null-__Array__Int__Int__)))
(define-const var2321 String (arrayStart/-417041427 var57)) ; Statement: $r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart> 
(assert true)
;(assert (append/1560614132 var3456 var2321)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3456!1 String)
(assert (str.prefixof var3456 var3456!1))
(define-const var1188 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var3090 Int (getLength-Arr-Int-1 var3433)) ; Statement: $i0 = lengthof r3 
 ; Statement: if i2 >= $i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert (>= var1188 var3090)) ; Cond: i2 >= $i0 
(define-const var1499 String (arrayEnd/-417041427 var57)) ; Statement: $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert true)
;(assert (append/1560614132 var3456!1 var1499)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var3456!2 String)
(assert (str.prefixof var3456!1 var3456!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arrayStart/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getLength-Arr-Int-1=([long[]], int), arrayEnd/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String)}
; {var3684=org.apache.commons.lang3.builder.ToStringStyle, var57=r1, var3456=r0, var138=r5, var2641=null_type, var3433=r3, var2321=$r2, var1188=i2, var3090=$i0, var1499=$r4}
; {org.apache.commons.lang3.builder.ToStringStyle=var3684, r1=var57, r0=var3456, r5=var138, null_type=var2641, r3=var3433, $r2=var2321, i2=var1188, $i0=var3090, $r4=var1499}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r5 := @parameter1: java.lang.String;	r3 := @parameter2: long[];	$r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	i2 = 0;	$i0 = lengthof r3;	if i2 >= $i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	$r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	return
;block_num 3