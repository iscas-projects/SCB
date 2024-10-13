(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3068 0)
(declare-sort var3141 0)
(declare-sort var265 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getObject/2026953628 (var3068) var3141)
(declare-fun style/761308887 (var3068) var265)
(declare-fun getStringBuffer/608998264 (var3068) String)
(declare-fun appendEnd/-712887925 (var265 String var3141) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3068 var3068)
(declare-const null-var3141 var3141)
(declare-const var1396 var3068) ; Statement: r0 := @this: org.apache.commons.lang3.builder.ToStringBuilder 
(assert (not (= var1396 null-var3068)))
(assert true)
(define-const var240 var3141 (getObject/2026953628 var1396)) ; Statement: $r1 = virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.Object getObject()>() 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.commons.lang3.builder.ToStringBuilder: org.apache.commons.lang3.builder.ToStringStyle style> 
(assert (not (= var240 null-var3141))) ; Cond: $r1 != null 
(define-const var3189 var265 (style/761308887 var1396)) ; Statement: $r2 = r0.<org.apache.commons.lang3.builder.ToStringBuilder: org.apache.commons.lang3.builder.ToStringStyle style> 
(assert true)
(define-const var2450 String (getStringBuffer/608998264 var1396)) ; Statement: $r4 = virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.StringBuffer getStringBuffer()>() 
(assert true)
(define-const var2858 var3141 (getObject/2026953628 var1396)) ; Statement: $r3 = virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.Object getObject()>() 
(assert true)
;(assert (appendEnd/-712887925 var3189 var2450 var2858)) ; Statement: virtualinvoke $r2.<org.apache.commons.lang3.builder.ToStringStyle: void appendEnd(java.lang.StringBuffer,java.lang.Object)>($r4, $r3) 

(declare-const var3189!1 var265)
(declare-const var2450!1 String)
(declare-const var2858!1 var3141)
(assert true) ; Non Conditional
(assert true)
(define-const var3751 String (getStringBuffer/608998264 var1396)) ; Statement: $r5 = virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.StringBuffer getStringBuffer()>() 
(assert true)
(define-const var1416 String (toString/-222306083 var3751)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getObject/2026953628=([org.apache.commons.lang3.builder.ToStringBuilder], java.lang.Object), style/761308887=([org.apache.commons.lang3.builder.ToStringBuilder], org.apache.commons.lang3.builder.ToStringStyle), getStringBuffer/608998264=([org.apache.commons.lang3.builder.ToStringBuilder], java.lang.StringBuffer), appendEnd/-712887925=([org.apache.commons.lang3.builder.ToStringStyle, java.lang.StringBuffer, java.lang.Object], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3068=org.apache.commons.lang3.builder.ToStringBuilder, var1396=r0, var3141=java.lang.Object, var240=$r1, var265=org.apache.commons.lang3.builder.ToStringStyle, var3189=$r2, var2450=$r4, var2858=$r3, var3751=$r5, var1416=$r6}
; {org.apache.commons.lang3.builder.ToStringBuilder=var3068, r0=var1396, java.lang.Object=var3141, $r1=var240, org.apache.commons.lang3.builder.ToStringStyle=var265, $r2=var3189, $r4=var2450, $r3=var2858, $r5=var3751, $r6=var1416}
;seq <java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.builder.ToStringBuilder;	$r1 = virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.Object getObject()>();	if $r1 != null goto $r2 = r0.<org.apache.commons.lang3.builder.ToStringBuilder: org.apache.commons.lang3.builder.ToStringStyle style>;	$r2 = r0.<org.apache.commons.lang3.builder.ToStringBuilder: org.apache.commons.lang3.builder.ToStringStyle style>;	$r4 = virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.StringBuffer getStringBuffer()>();	$r3 = virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.Object getObject()>();	virtualinvoke $r2.<org.apache.commons.lang3.builder.ToStringStyle: void appendEnd(java.lang.StringBuffer,java.lang.Object)>($r4, $r3);	$r5 = virtualinvoke r0.<org.apache.commons.lang3.builder.ToStringBuilder: java.lang.StringBuffer getStringBuffer()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	return $r6
;block_num 3