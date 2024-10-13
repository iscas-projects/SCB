(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2555 0)
(declare-sort var3749 0)
(declare-sort var525 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var525_getScriptFrames/-538166452 (var2555) (Array Int var3749))
(declare-fun getLength-Arr-var3749-1 ((Array Int var3749)) Int)
(declare-fun length/-171891354 (String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2555 var2555)
(declare-const var2110 var2555) ; Statement: r1 := @parameter0: java.lang.Throwable 
(assert (not (= var2110 null-var2555)))
(define-const var2305 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2305)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2305!1 String)
(assert (= var2305!1 ""))
(define-const var3308 (Array Int var3749) (var525_getScriptFrames/-538166452 var2110)) ; Statement: r2 = staticinvoke <jdk.nashorn.api.scripting.NashornException: java.lang.StackTraceElement[] getScriptFrames(java.lang.Throwable)>(r1) 
(define-const var1443 Int (getLength-Arr-var3749-1 var3308)) ; Statement: i0 = lengthof r2 
(define-const var2755 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto i6 = virtualinvoke $r8.<java.lang.StringBuilder: int length()>() 
(assert (>= var2755 var1443)) ; Cond: i5 >= i0 
(assert true)
(define-const var1348 Int (length/-171891354 var2305!1)) ; Statement: i6 = virtualinvoke $r8.<java.lang.StringBuilder: int length()>() 
 ; Statement: if i6 <= 0 goto $r7 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var1348 0)) ; Cond: i6 <= 0 
(assert true)
(define-const var442 String (toString/-2075883882 var2305!1)) ; Statement: $r7 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var525_getScriptFrames/-538166452=([java.lang.Throwable], java.lang.StackTraceElement[]), getLength-Arr-var3749-1=([java.lang.StackTraceElement[]], int), length/-171891354=([java.lang.StringBuilder], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2555=java.lang.Throwable, var2110=r1, var2305=$r8, var3749=java.lang.StackTraceElement, var525=jdk.nashorn.api.scripting.NashornException, var3308=r2, var1443=i0, var2755=i5, var1348=i6, var442=$r7}
; {java.lang.Throwable=var2555, r1=var2110, $r8=var2305, java.lang.StackTraceElement=var3749, jdk.nashorn.api.scripting.NashornException=var525, r2=var3308, i0=var1443, i5=var2755, i6=var1348, $r7=var442}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.Throwable;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	r2 = staticinvoke <jdk.nashorn.api.scripting.NashornException: java.lang.StackTraceElement[] getScriptFrames(java.lang.Throwable)>(r1);	i0 = lengthof r2;	i5 = 0;	if i5 >= i0 goto i6 = virtualinvoke $r8.<java.lang.StringBuilder: int length()>();	i6 = virtualinvoke $r8.<java.lang.StringBuilder: int length()>();	if i6 <= 0 goto $r7 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 4