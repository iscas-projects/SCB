(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3609 0)
(declare-sort var3868 0)
(declare-sort var2486 0)
(declare-sort var2979 0)
(declare-sort var2697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getMessage/849299655 (var3868) String)
(declare-fun cast-from-var3609-to-var3868 (var3609) var3868)
(declare-fun var2979_requireNonNull/-961817614 (var2486) var2486)
(declare-fun cast-from-String-to-var2486 (String) var2486)
(declare-fun cast-from-var2486-to-String (var2486) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun cast-from-var2697-to-var3868 (var2697) var3868)
(declare-fun conflictingStackTrace/1053496247 (var3609) var2697)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3609 var3609)
(declare-const null-var3868 var3868)
(declare-const var3725 var3609) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$PotentialDeadlockException 
(assert (not (= var3725 null-var3609)))
(define-const var2006 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var1332 String (getMessage/849299655 (cast-from-var3609-to-var3868 var3725))) ; Statement: $r2 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$ExampleStackTrace: java.lang.String getMessage()>() 
(define-const var2481 var2486 (var2979_requireNonNull/-961817614 (cast-from-String-to-var2486 var1332))) ; Statement: $r3 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r2) 
(define-const var3259 String (cast-from-var2486-to-String var2481)) ; Statement: $r4 = (java.lang.String) $r3 
(assert true)
;(assert (<init>/-1061048412 var2006 var3259)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4) 
(declare-const var2006!1 String)
(assert (= var2006!1 var3259))
(define-const var2287 var3868 (cast-from-var2697-to-var3868 (conflictingStackTrace/1053496247 var3725))) ; Statement: r8 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$PotentialDeadlockException: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$ExampleStackTrace conflictingStackTrace> 
(assert true) ; Non Conditional
 ; Statement: if r8 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2287 null-var3868)) ; Cond: r8 == null 
(assert true)
(define-const var3688 String (toString/-2075883882 var2006!1)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var3609-to-var3868=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$PotentialDeadlockException], java.lang.Throwable), var2979_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var2486=([java.lang.String], java.lang.Object), cast-from-var2486-to-String=([java.lang.Object], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), cast-from-var2697-to-var3868=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$ExampleStackTrace], java.lang.Throwable), conflictingStackTrace/1053496247=([com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$PotentialDeadlockException], com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$ExampleStackTrace), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3609=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$PotentialDeadlockException, var3725=r1, var2006=$r0, var3868=java.lang.Throwable, var1332=$r2, var2486=java.lang.Object, var2979=java.util.Objects, var2481=$r3, var3259=$r4, var2697=com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$ExampleStackTrace, var2287=r8, var3688=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$PotentialDeadlockException=var3609, r1=var3725, $r0=var2006, java.lang.Throwable=var3868, $r2=var1332, java.lang.Object=var2486, java.util.Objects=var2979, $r3=var2481, $r4=var3259, com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$ExampleStackTrace=var2697, r8=var2287, $r5=var3688}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$PotentialDeadlockException;	$r0 = new java.lang.StringBuilder;	$r2 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$ExampleStackTrace: java.lang.String getMessage()>();	$r3 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r2);	$r4 = (java.lang.String) $r3;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r4);	r8 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$PotentialDeadlockException: com.google.javascript.jscomp.jarjar.com.google.common.util.concurrent.CycleDetectingLockFactory$ExampleStackTrace conflictingStackTrace>;	if r8 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3