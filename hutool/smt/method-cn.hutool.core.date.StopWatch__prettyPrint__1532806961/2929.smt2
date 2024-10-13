(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1092 0)
(declare-sort var1702 0)
(declare-sort var914 0)
(declare-sort var197 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun shortSummary/-1752581510 (var1092 var1702) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var914_getLineSeparator/1136885286 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun taskList/-259216938 (var1092) var197)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1092 var1092)
(declare-const null-var1702 var1702)
(declare-const null-var197 var197)
(declare-const var3180 var1092) ; Statement: r1 := @this: cn.hutool.core.date.StopWatch 
(assert (not (= var3180 null-var1092)))
(declare-const var1647 var1702) ; Statement: r25 := @parameter0: java.util.concurrent.TimeUnit 
(assert (not (= var1647 null-var1702)))
 ; Statement: if null != r25 goto $r0 = new java.lang.StringBuilder 
(assert (not (= null-var1702 var1647))) ; Cond: null != r25 
(define-const var1811 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var3278 String (shortSummary/-1752581510 var3180 var1647)) ; Statement: $r2 = virtualinvoke r1.<cn.hutool.core.date.StopWatch: java.lang.String shortSummary(java.util.concurrent.TimeUnit)>(r25) 
(assert true)
;(assert (<init>/-1061048412 var1811 var3278)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var1811!1 String)
(assert (= var1811!1 var3278))
(define-const var2448 String var914_getLineSeparator/1136885286) ; Statement: $r3 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String getLineSeparator()>() 
(assert true)
;(assert (append/672562846 var1811!1 var2448)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1811!2 String)
(assert (= var1811!2 (str.++ var1811!1 var2448)))
(define-const var2048 var197 (taskList/-259216938 var3180)) ; Statement: $r4 = r1.<cn.hutool.core.date.StopWatch: java.util.List taskList> 
 ; Statement: if null != $r4 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("---------------------------------------------") 
(assert (not (not (= null-var197 var2048)))) ; Negate: Cond: null != $r4  
(assert true)
;(assert (append/672562846 var1811!2 "No task info kept")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No task info kept") 
(declare-const var1811!3 String)
(assert (= var1811!3 (str.++ var1811!2 "No task info kept")))
 ; Statement: goto [?= $r16 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var564 String (toString/-2075883882 var1811!3)) ; Statement: $r16 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), shortSummary/-1752581510=([cn.hutool.core.date.StopWatch, java.util.concurrent.TimeUnit], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var914_getLineSeparator/1136885286=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), taskList/-259216938=([cn.hutool.core.date.StopWatch], java.util.List), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1092=cn.hutool.core.date.StopWatch, var3180=r1, var1702=java.util.concurrent.TimeUnit, var1647=r25, var1811=$r0, var3278=$r2, var914=cn.hutool.core.io.FileUtil, var2448=$r3, var197=java.util.List, var2048=$r4, var564=$r16}
; {cn.hutool.core.date.StopWatch=var1092, r1=var3180, java.util.concurrent.TimeUnit=var1702, r25=var1647, $r0=var1811, $r2=var3278, cn.hutool.core.io.FileUtil=var914, $r3=var2448, java.util.List=var197, $r4=var2048, $r16=var564}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.date.StopWatch;	r25 := @parameter0: java.util.concurrent.TimeUnit;	if null != r25 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	$r2 = virtualinvoke r1.<cn.hutool.core.date.StopWatch: java.lang.String shortSummary(java.util.concurrent.TimeUnit)>(r25);	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	$r3 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String getLineSeparator()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = r1.<cn.hutool.core.date.StopWatch: java.util.List taskList>;	if null != $r4 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("---------------------------------------------");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No task info kept");	goto [?= $r16 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()];	$r16 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 4