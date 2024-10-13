(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2929 0)
(declare-sort var3993 0)
(declare-sort var1040 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun summaryObjectStartText/-417041427 (var2929) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1040) ClassObject)
(declare-fun getShortClassName/-873297214 (var2929 ClassObject) String)
(declare-fun summaryObjectEndText/-417041427 (var2929) String)
(declare-const null-var2929 var2929)
(declare-const null-String String)
(declare-const null-var1040 var1040)
(declare-const var3282 var2929) ; Statement: r1 := @this: org.apache.commons.lang3.builder.ToStringStyle 
(assert (not (= var3282 null-var2929)))
(declare-const var1286 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1286 null-String)))
(declare-const var355 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var355 null-String)))
(declare-const var1988 var1040) ; Statement: r3 := @parameter2: java.lang.Object 
(assert (not (= var1988 null-var1040)))
(define-const var885 String (summaryObjectStartText/-417041427 var3282)) ; Statement: $r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String summaryObjectStartText> 
(assert true)
;(assert (append/1560614132 var1286 var885)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var1286!1 String)
(assert (str.prefixof var1286 var1286!1))
(assert true)
(define-const var1551 ClassObject (getClass/1258963082 var1988)) ; Statement: $r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3151 String (getShortClassName/-873297214 var3282 var1551)) ; Statement: $r5 = virtualinvoke r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String getShortClassName(java.lang.Class)>($r4) 
(assert true)
;(assert (append/1560614132 var1286!1 var3151)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5) 
(declare-const var1286!2 String)
(assert (str.prefixof var1286!1 var1286!2))
(define-const var2111 String (summaryObjectEndText/-417041427 var3282)) ; Statement: $r6 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String summaryObjectEndText> 
(assert true)
;(assert (append/1560614132 var1286!2 var2111)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6) 
(declare-const var1286!3 String)
(assert (str.prefixof var1286!2 var1286!3))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {summaryObjectStartText/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getClass/1258963082=([java.lang.Object], java.lang.Class), getShortClassName/-873297214=([org.apache.commons.lang3.builder.ToStringStyle, java.lang.Class], java.lang.String), summaryObjectEndText/-417041427=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String)}
; {var2929=org.apache.commons.lang3.builder.ToStringStyle, var3282=r1, var1286=r0, var355=r7, var3993=null_type, var1040=java.lang.Object, var1988=r3, var885=$r2, var1551=$r4, var3151=$r5, var2111=$r6}
; {org.apache.commons.lang3.builder.ToStringStyle=var2929, r1=var3282, r0=var1286, r7=var355, null_type=var3993, java.lang.Object=var1040, r3=var1988, $r2=var885, $r4=var1551, $r5=var3151, $r6=var2111}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3}
;stmts r1 := @this: org.apache.commons.lang3.builder.ToStringStyle;	r0 := @parameter0: java.lang.StringBuffer;	r7 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.Object;	$r2 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String summaryObjectStartText>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r4 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String getShortClassName(java.lang.Class)>($r4);	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r5);	$r6 = r1.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String summaryObjectEndText>;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r6);	return
;block_num 1