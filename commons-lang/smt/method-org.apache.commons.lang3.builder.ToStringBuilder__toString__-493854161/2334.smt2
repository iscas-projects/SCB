(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2820 0)
(declare-sort var112 0)
(declare-sort var1987 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getObject/2026953628 (var2820) var112)
(declare-fun getStringBuffer/608998264 (var2820) String)
(declare-fun getStyle/-734950904 (var2820) var1987)
(declare-fun getNullText/1926929279 (var1987) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var2820 var2820)
(declare-const null-var112 var112)
(declare-const var3867 var2820) ; Statement: r0 := @this: org.apache.commons.lang3.builder.ToStringBuilder 
(assert (not (= var3867 null-var2820)))
(assert true)
(define-const var3190 var112 (getObject/2026953628 var3867)) ; Statement: $r1 = virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.Object getObject()>() 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.commons.lang3.builder.ToStringBuilder: org.apache.commons.lang3.builder.ToStringStyle style> 
(assert (not (not (= var3190 null-var112)))) ; Negate: Cond: $r1 != null  
(assert true)
(define-const var1088 String (getStringBuffer/608998264 var3867)) ; Statement: $r9 = virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.StringBuffer getStringBuffer()>() 
(assert true)
(define-const var2961 var1987 (getStyle/-734950904 var3867)) ; Statement: $r7 = virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringBuilder: org.apache.commons.lang3.builder.ToStringStyle getStyle()>() 
(assert true)
(define-const var273 String (getNullText/1926929279 var2961)) ; Statement: $r8 = virtualinvoke $r7.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String getNullText()>() 
(assert true)
;(assert (append/1560614132 var1088 var273)) ; Statement: virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8) 
(declare-const var1088!1 String)
(assert (str.prefixof var1088 var1088!1))
 ; Statement: goto [?= $r5 = virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.StringBuffer getStringBuffer()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2244 String (getStringBuffer/608998264 var3867)) ; Statement: $r5 = virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.StringBuffer getStringBuffer()>() 
(assert true)
(define-const var3696 String (toString/-222306083 var2244)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getObject/2026953628=([org.apache.commons.lang3.builder.ToStringBuilder], java.lang.Object), getStringBuffer/608998264=([org.apache.commons.lang3.builder.ToStringBuilder], java.lang.StringBuffer), getStyle/-734950904=([org.apache.commons.lang3.builder.ToStringBuilder], org.apache.commons.lang3.builder.ToStringStyle), getNullText/1926929279=([org.apache.commons.lang3.builder.ToStringStyle], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2820=org.apache.commons.lang3.builder.ToStringBuilder, var3867=r0, var112=java.lang.Object, var3190=$r1, var1088=$r9, var1987=org.apache.commons.lang3.builder.ToStringStyle, var2961=$r7, var273=$r8, var2244=$r5, var3696=$r6}
; {org.apache.commons.lang3.builder.ToStringBuilder=var2820, r0=var3867, java.lang.Object=var112, $r1=var3190, $r9=var1088, org.apache.commons.lang3.builder.ToStringStyle=var1987, $r7=var2961, $r8=var273, $r5=var2244, $r6=var3696}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.builder.ToStringBuilder;	$r1 = virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.Object getObject()>();	if $r1 != null goto $r2 = r0.<org.apache.commons.lang3.builder.ToStringBuilder: org.apache.commons.lang3.builder.ToStringStyle style>;	$r9 = virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.StringBuffer getStringBuffer()>();	$r7 = virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringBuilder: org.apache.commons.lang3.builder.ToStringStyle getStyle()>();	$r8 = virtualinvoke $r7.<org.apache.commons.lang3.builder.ToStringStyle: java.lang.String getNullText()>();	virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r8);	goto [?= $r5 = virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.StringBuffer getStringBuffer()>()];	$r5 = virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.StringBuffer getStringBuffer()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	return $r6
;block_num 3