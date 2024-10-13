(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3840 0)
(declare-sort var1008 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sizeStartText/-417041427 (var3840) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1845021834 (String Int) String)
(declare-fun sizeEndText/-417041427 (var3840) String)
(declare-const null-var3840 var3840)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3863 var3840) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var3863 null-var3840)))
(declare-const var3213 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var3213 null-String)))
(declare-const var192 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var192 null-String)))
(declare-const var3462 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3462 null-Int)))
(define-const var2343 String (sizeStartText/-417041427 var3863)) ; Statement: $r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String sizeStartText> 
(assert true)
;(assert (append/1560614132 var3213 var2343)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var3213!1 String)
(assert (str.prefixof var3213 var3213!1))
(assert true)
;(assert (append/1845021834 var3213!1 var3462)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 

(declare-const var3213!2 String)
(declare-const var3462!1 Int)
(define-const var2034 String (sizeEndText/-417041427 var3863)) ; Statement: $r3 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String sizeEndText> 
(assert true)
;(assert (append/1560614132 var3213!2 var2034)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var3213!3 String)
(assert (str.prefixof var3213!2 var3213!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {sizeStartText/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), sizeEndText/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String)}
; {var3840=org.apache.commons.lang3.builder.ToStringStyle, var3863=r1, var3213=r0, var192=r4, var1008=null_type, var3462=i0, var2343=$r2, var2034=$r3}
; {org.apache.commons.lang3.builder.ToStringStyle=var3840, r1=var3863, r0=var3213, r4=var192, null_type=var1008, i0=var3462, $r2=var2343, $r3=var2034}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r4 := @parameter1: java.lang.String;	i0 := @parameter2: int;	$r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String sizeStartText>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	$r3 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String sizeEndText>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	return
;block_num 1