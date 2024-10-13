(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2860 0)
(declare-sort var364 0)
(declare-sort var2294 0)
(declare-sort var2736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var2736 String var2294) void)
(declare-fun cast-from-var2860-to-var2736 (var2860) var2736)
(declare-const null-var2860 var2860)
(declare-const null-String String)
(declare-const null-var2294 var2294)
(declare-const var766 var2860) ; Statement: r0 := @this: freemarker.core.BugException 
(assert (not (= var766 null-var2860)))
(declare-const var61 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var61 null-String)))
(declare-const var2056 var2294) ; Statement: r5 := @parameter1: java.lang.Throwable 
(assert (not (= var2056 null-var2294)))
(define-const var3582 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3582)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3582!1 String)
(assert (= var3582!1 ""))
(assert true)
(define-const var3265 String (append/672562846 var3582!1 "A bug was detected in FreeMarker; please report it with stack-trace: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A bug was detected in FreeMarker; please report it with stack-trace: ") 
(declare-const var3582!2 String)
(assert (= var3582!2 (str.++ var3582!1 "A bug was detected in FreeMarker; please report it with stack-trace: ")))
(assert true)
(define-const var2031 String (append/672562846 var3265 var61)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3265!1 String)
(assert (= var3265!1 (str.++ var3265 var61)))
(assert true)
(define-const var1224 String (toString/-2075883882 var2031)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 (cast-from-var2860-to-var2736 var766) var1224 var2056)) ; Statement: specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r6, r5) 

(declare-const var766!1 var2860)
(declare-const var1224!1 String)
(declare-const var2056!1 var2294)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var2860-to-var2736=([freemarker.core.BugException], java.lang.RuntimeException)}
; {var2860=freemarker.core.BugException, var766=r0, var61=r2, var364=null_type, var2294=java.lang.Throwable, var2056=r5, var3582=$r1, var3265=$r3, var2031=$r4, var1224=$r6, var2736=java.lang.RuntimeException}
; {freemarker.core.BugException=var2860, r0=var766, r2=var61, null_type=var364, java.lang.Throwable=var2294, r5=var2056, $r1=var3582, $r3=var3265, $r4=var2031, $r6=var1224, java.lang.RuntimeException=var2736}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.BugException;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.Throwable;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A bug was detected in FreeMarker; please report it with stack-trace: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r6, r5);	return
;block_num 1