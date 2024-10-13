(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var873 0)
(declare-sort var3369 0)
(declare-sort var587 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arrayStart/-417041427 (var873) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-var587-1 ((Array Int var587)) Int)
(declare-fun arrayEnd/-417041427 (var873) String)
(declare-const null-var873 var873)
(declare-const null-String String)
(declare-const null-__Array__Int__var587__ (Array Int var587))
(declare-const var1080 var873) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var1080 null-var873)))
(declare-const var57 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var57 null-String)))
(declare-const var3771 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3771 null-String)))
(declare-const var2436 (Array Int var587)) ; Statement: r3 := @parameter2: java.lang.Object[] 
(assert (not (= var2436 null-__Array__Int__var587__)))
(define-const var2082 String (arrayStart/-417041427 var1080)) ; Statement: $r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart> 
(assert true)
;(assert (append/1560614132 var57 var2082)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var57!1 String)
(assert (str.prefixof var57 var57!1))
(define-const var3783 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var3532 Int (getLength-Arr-var587-1 var2436)) ; Statement: $i0 = lengthof r3 
 ; Statement: if i1 >= $i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert (>= var3783 var3532)) ; Cond: i1 >= $i0 
(define-const var3939 String (arrayEnd/-417041427 var1080)) ; Statement: $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert true)
;(assert (append/1560614132 var57!1 var3939)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var57!2 String)
(assert (str.prefixof var57!1 var57!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arrayStart/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getLength-Arr-var587-1=([java.lang.Object[]], int), arrayEnd/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String)}
; {var873=org.apache.commons.lang3.builder.ToStringStyle, var1080=r1, var57=r0, var3771=r5, var3369=null_type, var587=java.lang.Object, var2436=r3, var2082=$r2, var3783=i1, var3532=$i0, var3939=$r4}
; {org.apache.commons.lang3.builder.ToStringStyle=var873, r1=var1080, r0=var57, r5=var3771, null_type=var3369, java.lang.Object=var587, r3=var2436, $r2=var2082, i1=var3783, $i0=var3532, $r4=var3939}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r5 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.Object[];	$r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	i1 = 0;	$i0 = lengthof r3;	if i1 >= $i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	$r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	return
;block_num 3