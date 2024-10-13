(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2794 0)
(declare-sort var1101 0)
(declare-sort var2032 0)
(declare-sort var1619 0)
(declare-sort var1204 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun path/-424681690 (var2794) var1101)
(declare-fun append/-1031950772 (String var2032) String)
(declare-fun cast-from-var1101-to-var2032 (var1101) var2032)
(declare-fun linkOptions/-424681690 (var2794) (Array Int var1619))
(declare-fun var1204_toString/-575966009 ((Array Int var2032)) String)
(declare-fun cast-from-__Array__Int__var1619__-to-__Array__Int__var2032__ ((Array Int var1619)) (Array Int var2032))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2794 var2794)
(declare-const var3314 var2794) ; Statement: r1 := @this: org.apache.commons.io.input.Tailer$TailablePath 
(assert (not (= var3314 null-var2794)))
(define-const var733 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var733)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var733!1 String)
(assert (= var733!1 ""))
(assert true)
(define-const var2630 String (append/672562846 var733!1 "TailablePath [file=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TailablePath [file=") 
(declare-const var733!2 String)
(assert (= var733!2 (str.++ var733!1 "TailablePath [file=")))
(define-const var439 var1101 (path/-424681690 var3314)) ; Statement: $r2 = r1.<org.apache.commons.io.input.Tailer$TailablePath: java.nio.file.Path path> 
(assert true)
(define-const var1827 String (append/-1031950772 var2630 (cast-from-var1101-to-var2032 var439))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2630!1 String)
(assert (str.prefixof var2630 var2630!1))
(assert true)
(define-const var194 String (append/672562846 var1827 ", linkOptions=")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", linkOptions=") 
(declare-const var1827!1 String)
(assert (= var1827!1 (str.++ var1827 ", linkOptions=")))
(define-const var2637 (Array Int var1619) (linkOptions/-424681690 var3314)) ; Statement: $r5 = r1.<org.apache.commons.io.input.Tailer$TailablePath: java.nio.file.LinkOption[] linkOptions> 
(define-const var3565 String (var1204_toString/-575966009 (cast-from-__Array__Int__var1619__-to-__Array__Int__var2032__ var2637))) ; Statement: $r6 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r5) 
(assert true)
(define-const var3908 String (append/672562846 var194 var3565)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var194!1 String)
(assert (= var194!1 (str.++ var194 var3565)))
(assert true)
(define-const var2765 String (append/672562846 var3908 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3908!1 String)
(assert (= var3908!1 (str.++ var3908 "]")))
(assert true)
(define-const var3969 String (toString/-2075883882 var2765)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), path/-424681690=([org.apache.commons.io.input.Tailer$TailablePath], java.nio.file.Path), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1101-to-var2032=([java.nio.file.Path], java.lang.Object), linkOptions/-424681690=([org.apache.commons.io.input.Tailer$TailablePath], java.nio.file.LinkOption[]), var1204_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var1619__-to-__Array__Int__var2032__=([java.nio.file.LinkOption[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2794=org.apache.commons.io.input.Tailer$TailablePath, var3314=r1, var733=$r0, var2630=$r3, var1101=java.nio.file.Path, var439=$r2, var2032=java.lang.Object, var1827=$r4, var194=$r7, var1619=java.nio.file.LinkOption, var2637=$r5, var1204=java.util.Arrays, var3565=$r6, var3908=$r8, var2765=$r9, var3969=$r10}
; {org.apache.commons.io.input.Tailer$TailablePath=var2794, r1=var3314, $r0=var733, $r3=var2630, java.nio.file.Path=var1101, $r2=var439, java.lang.Object=var2032, $r4=var1827, $r7=var194, java.nio.file.LinkOption=var1619, $r5=var2637, java.util.Arrays=var1204, $r6=var3565, $r8=var3908, $r9=var2765, $r10=var3969}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.input.Tailer$TailablePath;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TailablePath [file=");	$r2 = r1.<org.apache.commons.io.input.Tailer$TailablePath: java.nio.file.Path path>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", linkOptions=");	$r5 = r1.<org.apache.commons.io.input.Tailer$TailablePath: java.nio.file.LinkOption[] linkOptions>;	$r6 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1