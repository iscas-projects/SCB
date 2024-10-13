(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1097 0)
(declare-sort var3397 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arrayStart/-417041427 (var1097) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun arrayEnd/-417041427 (var1097) String)
(declare-const null-var1097 var1097)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3455 var1097) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var3455 null-var1097)))
(declare-const var217 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var217 null-String)))
(declare-const var1797 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1797 null-String)))
(declare-const var401 (Array Int Int)) ; Statement: r3 := @parameter2: int[] 
(assert (not (= var401 null-__Array__Int__Int__)))
(define-const var3966 String (arrayStart/-417041427 var3455)) ; Statement: $r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart> 
(assert true)
;(assert (append/1560614132 var217 var3966)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var217!1 String)
(assert (str.prefixof var217 var217!1))
(define-const var1353 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var3420 Int (getLength-Arr-Int-1 var401)) ; Statement: $i0 = lengthof r3 
 ; Statement: if i2 >= $i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert (>= var1353 var3420)) ; Cond: i2 >= $i0 
(define-const var1928 String (arrayEnd/-417041427 var3455)) ; Statement: $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert true)
;(assert (append/1560614132 var217!1 var1928)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var217!2 String)
(assert (str.prefixof var217!1 var217!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arrayStart/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getLength-Arr-Int-1=([int[]], int), arrayEnd/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String)}
; {var1097=org.apache.commons.lang3.builder.ToStringStyle, var3455=r1, var217=r0, var1797=r5, var3397=null_type, var401=r3, var3966=$r2, var1353=i2, var3420=$i0, var1928=$r4}
; {org.apache.commons.lang3.builder.ToStringStyle=var1097, r1=var3455, r0=var217, r5=var1797, null_type=var3397, r3=var401, $r2=var3966, i2=var1353, $i0=var3420, $r4=var1928}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r5 := @parameter1: java.lang.String;	r3 := @parameter2: int[];	$r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	i2 = 0;	$i0 = lengthof r3;	if i2 >= $i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	$r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	return
;block_num 3