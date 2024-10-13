(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3866 0)
(declare-sort var519 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arrayStart/-417041427 (var3866) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-Bool-1 ((Array Int Bool)) Int)
(declare-fun arrayEnd/-417041427 (var3866) String)
(declare-const null-var3866 var3866)
(declare-const null-String String)
(declare-const null-__Array__Int__Bool__ (Array Int Bool))
(declare-const var3251 var3866) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var3251 null-var3866)))
(declare-const var651 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var651 null-String)))
(declare-const var2826 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var2826 null-String)))
(declare-const var1301 (Array Int Bool)) ; Statement: r3 := @parameter2: boolean[] 
(assert (not (= var1301 null-__Array__Int__Bool__)))
(define-const var2585 String (arrayStart/-417041427 var3251)) ; Statement: $r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart> 
(assert true)
;(assert (append/1560614132 var651 var2585)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var651!1 String)
(assert (str.prefixof var651 var651!1))
(define-const var2362 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var974 Int (getLength-Arr-Bool-1 var1301)) ; Statement: $i0 = lengthof r3 
 ; Statement: if i1 >= $i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert (>= var2362 var974)) ; Cond: i1 >= $i0 
(define-const var167 String (arrayEnd/-417041427 var3251)) ; Statement: $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd> 
(assert true)
;(assert (append/1560614132 var651!1 var167)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var651!2 String)
(assert (str.prefixof var651!1 var651!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arrayStart/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getLength-Arr-Bool-1=([boolean[]], int), arrayEnd/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String)}
; {var3866=org.apache.commons.lang3.builder.ToStringStyle, var3251=r1, var651=r0, var2826=r5, var519=null_type, var1301=r3, var2585=$r2, var2362=i1, var974=$i0, var167=$r4}
; {org.apache.commons.lang3.builder.ToStringStyle=var3866, r1=var3251, r0=var651, r5=var2826, null_type=var519, r3=var1301, $r2=var2585, i1=var2362, $i0=var974, $r4=var167}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r5 := @parameter1: java.lang.String;	r3 := @parameter2: boolean[];	$r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayStart>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	i1 = 0;	$i0 = lengthof r3;	if i1 >= $i0 goto $r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	$r4 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String arrayEnd>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	return
;block_num 3