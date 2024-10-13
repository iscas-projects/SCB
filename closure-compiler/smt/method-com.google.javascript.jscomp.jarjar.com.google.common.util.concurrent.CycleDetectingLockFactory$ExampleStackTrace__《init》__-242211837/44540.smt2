(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var845 0)
(declare-sort var1163 0)
(declare-sort var3376 0)
(declare-sort var524 0)
(declare-sort var2357 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLockName/2048163282 (var1163) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3376 String) void)
(declare-fun cast-from-var845-to-var3376 (var845) var3376)
(declare-fun getStackTrace/1942967699 (var2357) (Array Int var524))
(declare-fun cast-from-var845-to-var2357 (var845) var2357)
(declare-fun getLength-Arr-var524-1 ((Array Int var524)) Int)
(declare-const null-var845 var845)
(declare-const null-var1163 var1163)
(declare-const var2500 var845) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$ExampleStackTrace 
(assert (not (= var2500 null-var845)))
(declare-const var3739 var1163) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$LockGraphNode 
(assert (not (= var3739 null-var1163)))
(declare-const var2193 var1163) ; Statement: r5 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$LockGraphNode 
(assert (not (= var2193 null-var1163)))
(define-const var3263 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3263)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3263!1 String)
(assert (= var3263!1 ""))
(assert true)
(define-const var741 String (getLockName/2048163282 var3739)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$LockGraphNode: java.lang.String getLockName()>() 
(assert true)
(define-const var1668 String (append/672562846 var3263!1 var741)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3263!2 String)
(assert (= var3263!2 (str.++ var3263!1 var741)))
(assert true)
(define-const var3343 String (append/672562846 var1668 " -> ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var1668!1 String)
(assert (= var1668!1 (str.++ var1668 " -> ")))
(assert true)
(define-const var252 String (getLockName/2048163282 var2193)) ; Statement: $r6 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$LockGraphNode: java.lang.String getLockName()>() 
(assert true)
(define-const var3903 String (append/672562846 var3343 var252)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3343!1 String)
(assert (= var3343!1 (str.++ var3343 var252)))
(assert true)
(define-const var1611 String (toString/-2075883882 var3903)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 (cast-from-var845-to-var3376 var2500) var1611)) ; Statement: specialinvoke r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9) 

(declare-const var2500!1 var845)
(declare-const var1611!1 String)
(assert true)
(define-const var2664 (Array Int var524) (getStackTrace/1942967699 (cast-from-var845-to-var2357 var2500!1))) ; Statement: r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$ExampleStackTrace: java.lang.StackTraceElement[] getStackTrace()>() 
(define-const var3914 Int 0) ; Statement: i1 = 0 
(define-const var2177 Int (getLength-Arr-var524-1 var2664)) ; Statement: i0 = lengthof r10 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return 
(assert (>= var3914 var2177)) ; Cond: i1 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLockName/2048163282=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$LockGraphNode], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void), cast-from-var845-to-var3376=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$ExampleStackTrace], java.lang.IllegalStateException), getStackTrace/1942967699=([java.lang.Throwable], java.lang.StackTraceElement[]), cast-from-var845-to-var2357=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$ExampleStackTrace], java.lang.Throwable), getLength-Arr-var524-1=([java.lang.StackTraceElement[]], int)}
; {var845=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$ExampleStackTrace, var2500=r0, var1163=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$LockGraphNode, var3739=r2, var2193=r5, var3263=$r1, var741=$r3, var1668=$r4, var3343=$r7, var252=$r6, var3903=$r8, var1611=$r9, var3376=java.lang.IllegalStateException, var524=java.lang.StackTraceElement, var2357=java.lang.Throwable, var2664=r10, var3914=i1, var2177=i0}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$ExampleStackTrace=var845, r0=var2500, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$LockGraphNode=var1163, r2=var3739, r5=var2193, $r1=var3263, $r3=var741, $r4=var1668, $r7=var3343, $r6=var252, $r8=var3903, $r9=var1611, java.lang.IllegalStateException=var3376, java.lang.StackTraceElement=var524, java.lang.Throwable=var2357, r10=var2664, i1=var3914, i0=var2177}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$ExampleStackTrace;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$LockGraphNode;	r5 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$LockGraphNode;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$LockGraphNode: java.lang.String getLockName()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r6 = virtualinvoke r5.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$LockGraphNode: java.lang.String getLockName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9);	r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$ExampleStackTrace: java.lang.StackTraceElement[] getStackTrace()>();	i1 = 0;	i0 = lengthof r10;	if i1 >= i0 goto return;	return
;block_num 3