(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3520 0)
(declare-sort var3147 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arrayStart/-417041427 (var3520) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun arrayEnd/-417041427 (var3520) String)
(declare-const null-var3520 var3520)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3765 var3520) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var3765 null-var3520)))
(declare-const var2341 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var2341 null-String)))
(declare-const var3136 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3136 null-String)))
(declare-const var1922 (Array Int Int)) ; Statement: r3 := @parameter2: char[] 
(assert (not (= var1922 null-__Array__Int__Int__)))
(define-const var2957 String (arrayStart/-417041427 var3765)) ; Statement: $r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart> 
(assert true)
;(assert (append/1560614132 var2341 var2957)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2341!1 String)
(assert (str.prefixof var2341 var2341!1))
(define-const var1169 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var483 Int (getLength-Arr-Int-1 var1922)) ; Statement: $i0 = lengthof r3 
 ; Statement: if i2 >= $i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert (>= var1169 var483)) ; Cond: i2 >= $i0 
(define-const var2076 String (arrayEnd/-417041427 var3765)) ; Statement: $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert true)
;(assert (append/1560614132 var2341!1 var2076)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var2341!2 String)
(assert (str.prefixof var2341!1 var2341!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arrayStart/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getLength-Arr-Int-1=([char[]], int), arrayEnd/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String)}
; {var3520=org.apache.commons.lang3.builder.ToStringStyle, var3765=r1, var2341=r0, var3136=r5, var3147=null_type, var1922=r3, var2957=$r2, var1169=i2, var483=$i0, var2076=$r4}
; {org.apache.commons.lang3.builder.ToStringStyle=var3520, r1=var3765, r0=var2341, r5=var3136, null_type=var3147, r3=var1922, $r2=var2957, i2=var1169, $i0=var483, $r4=var2076}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r5 := @parameter1: java.lang.String;	r3 := @parameter2: char[];	$r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	i2 = 0;	$i0 = lengthof r3;	if i2 >= $i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	$r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	return
;block_num 3