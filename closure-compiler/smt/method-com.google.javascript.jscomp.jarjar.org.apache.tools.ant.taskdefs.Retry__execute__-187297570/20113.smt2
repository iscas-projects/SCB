(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var703 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun retryCount/563415756 (var703) Int)
(declare-const null-var703 var703)
(declare-const var1605 var703) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Retry 
(assert (not (= var1605 null-var703)))
(define-const var3448 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3448)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3448!1 String)
(assert (= var3448!1 ""))
(define-const var3707 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
(define-const var3612 Int (retryCount/563415756 var1605)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Retry: int retryCount> 
 ; Statement: if i8 > $i0 goto return 
(assert (> var3707 var3612)) ; Cond: i8 > $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), retryCount/563415756=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Retry], int)}
; {var703=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Retry, var1605=r1, var3448=$r0, var3707=i8, var3612=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Retry=var703, r1=var1605, $r0=var3448, i8=var3707, $i0=var3612}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Retry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i8 = 0;	$i0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Retry: int retryCount>;	if i8 > $i0 goto return;	return
;block_num 3