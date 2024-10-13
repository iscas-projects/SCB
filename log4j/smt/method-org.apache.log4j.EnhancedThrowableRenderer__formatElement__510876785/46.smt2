(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3787 0)
(declare-sort var3857 0)
(declare-sort var1299 0)
(declare-sort var2740 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/2110755883 (String String) void)
(declare-fun append/-143899486 (String var3857) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3787 var3787)
(declare-const null-var3857 var3857)
(declare-const null-var1299 var1299)
(declare-const null-var2740 var2740)
(declare-const var1842 var3787) ; Statement: r2 := @this: org.apache.log4j.EnhancedThrowableRenderer 
(assert (not (= var1842 null-var3787)))
(declare-const var1612 var3857) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var1612 null-var3857)))
(declare-const var1853 var1299) ; Statement: r6 := @parameter1: java.util.Map 
(assert (not (= var1853 null-var1299)))
(define-const var3039 String String-init) ; Statement: $r23 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/2110755883 var3039 "\tat ")) ; Statement: specialinvoke $r23.<java.lang.StringBuffer: void <init>(java.lang.String)>("\tat ") 

(declare-const var3039!1 String)
(declare-const var620 String)
(assert true)
;(assert (append/-143899486 var3039!1 var1612)) ; Statement: virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1) 

(declare-const var3039!2 String)
(declare-const var1612!1 var3857)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var214 var2740) ; Statement: $r15 := @caughtexception 
(assert (not (= var214 null-var2740)))
(assert true) ; Non Conditional
(assert true)
(define-const var3788 String (toString/-222306083 var3039!2)) ; Statement: $r10 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/2110755883=([java.lang.StringBuffer, java.lang.String], void), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3787=org.apache.log4j.EnhancedThrowableRenderer, var1842=r2, var3857=java.lang.Object, var1612=r1, var1299=java.util.Map, var1853=r6, var3039=$r23, var620="\tat ", var2740=java.lang.Exception, var214=$r15, var3788=$r10}
; {org.apache.log4j.EnhancedThrowableRenderer=var3787, r2=var1842, java.lang.Object=var3857, r1=var1612, java.util.Map=var1299, r6=var1853, $r23=var3039, "\tat "=var620, java.lang.Exception=var2740, $r15=var214, $r10=var3788}
;seq <java.lang.StringBuffer: void <init>(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.log4j.EnhancedThrowableRenderer;	r1 := @parameter0: java.lang.Object;	r6 := @parameter1: java.util.Map;	$r23 = new java.lang.StringBuffer;	specialinvoke $r23.<java.lang.StringBuffer: void <init>(java.lang.String)>("\tat ");	virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>(r1);	$r15 := @caughtexception;	$r10 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.String toString()>();	return $r10
;block_num 3