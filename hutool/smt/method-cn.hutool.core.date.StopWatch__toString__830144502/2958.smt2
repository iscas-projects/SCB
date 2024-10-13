(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2050 0)
(declare-sort var575 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun shortSummary/-926608488 (var2050) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun taskList/-259216938 (var2050) var575)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2050 var2050)
(declare-const null-var575 var575)
(declare-const var1225 var2050) ; Statement: r1 := @this: cn.hutool.core.date.StopWatch 
(assert (not (= var1225 null-var2050)))
(define-const var1464 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var593 String (shortSummary/-926608488 var1225)) ; Statement: $r2 = virtualinvoke r1.<cn.hutool.core.date.StopWatch: java.lang.String shortSummary()>() 
(assert true)
;(assert (<init>/-1061048412 var1464 var593)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var1464!1 String)
(assert (= var1464!1 var593))
(define-const var2614 var575 (taskList/-259216938 var1225)) ; Statement: $r3 = r1.<cn.hutool.core.date.StopWatch: java.util.List taskList> 
 ; Statement: if null == $r3 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; no task info kept") 
(assert (= null-var575 var2614)) ; Cond: null == $r3 
(assert true)
;(assert (append/672562846 var1464!1 "; no task info kept")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; no task info kept") 
(declare-const var1464!2 String)
(assert (= var1464!2 (str.++ var1464!1 "; no task info kept")))
(assert true) ; Non Conditional
(assert true)
(define-const var817 String (toString/-2075883882 var1464!2)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), shortSummary/-926608488=([cn.hutool.core.date.StopWatch], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), taskList/-259216938=([cn.hutool.core.date.StopWatch], java.util.List), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2050=cn.hutool.core.date.StopWatch, var1225=r1, var1464=$r0, var593=$r2, var575=java.util.List, var2614=$r3, var817=$r4}
; {cn.hutool.core.date.StopWatch=var2050, r1=var1225, $r0=var1464, $r2=var593, java.util.List=var575, $r3=var2614, $r4=var817}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.date.StopWatch;	$r0 = new java.lang.StringBuilder;	$r2 = virtualinvoke r1.<cn.hutool.core.date.StopWatch: java.lang.String shortSummary()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$r3 = r1.<cn.hutool.core.date.StopWatch: java.util.List taskList>;	if null == $r3 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; no task info kept");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; no task info kept");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3