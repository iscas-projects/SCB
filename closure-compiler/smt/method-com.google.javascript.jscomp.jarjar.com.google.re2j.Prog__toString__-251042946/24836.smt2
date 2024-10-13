(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun instSize/1283360870 (var3920) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3920 var3920)
(declare-const var3252 var3920) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Prog 
(assert (not (= var3252 null-var3920)))
(define-const var2022 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2022)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2022!1 String)
(assert (= var2022!1 ""))
(define-const var1404 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var801 Int (instSize/1283360870 var3252)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Prog: int instSize> 
 ; Statement: if i5 >= $i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1404 var801)) ; Cond: i5 >= $i0 
(assert true)
(define-const var545 String (toString/-2075883882 var2022!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), instSize/1283360870=([com.google.javascript.jscomp.jarjar.com.google.re2j.Prog], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3920=com.google.javascript.jscomp.jarjar.com.google.re2j.Prog, var3252=r1, var2022=$r0, var1404=i5, var801=$i0, var545=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Prog=var3920, r1=var3252, $r0=var2022, i5=var1404, $i0=var801, $r2=var545}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Prog;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i5 = 0;	$i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Prog: int instSize>;	if i5 >= $i0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3