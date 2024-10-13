(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2521 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendTo/-57322515 (var2521 String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2521 var2521)
(declare-const var1149 var2521) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp 
(assert (not (= var1149 null-var2521)))
(define-const var3394 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3394)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3394!1 String)
(assert (= var3394!1 ""))
(assert true)
;(assert (appendTo/-57322515 var1149 var3394!1)) ; Statement: specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: void appendTo(java.lang.StringBuilder)>($r0) 

(declare-const var1149!1 var2521)
(declare-const var3394!2 String)
(assert true)
(define-const var112 String (toString/-2075883882 var3394!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendTo/-57322515=([com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp, java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2521=com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp, var1149=r1, var3394=$r0, var112=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp=var2521, r1=var1149, $r0=var3394, $r2=var112}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.re2j.Regexp: void appendTo(java.lang.StringBuilder)>($r0);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1