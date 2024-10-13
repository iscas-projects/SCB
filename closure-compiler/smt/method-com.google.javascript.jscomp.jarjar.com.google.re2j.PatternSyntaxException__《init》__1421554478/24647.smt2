(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1717 0)
(declare-sort var3836 0)
(declare-sort var125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var125 String) void)
(declare-fun cast-from-var1717-to-var125 (var1717) var125)
(declare-fun error/-923640 (var1717) String)
(declare-fun input/-923640 (var1717) String)
(declare-const null-var1717 var1717)
(declare-const null-String String)
(declare-const var1012 var1717) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException 
(assert (not (= var1012 null-var1717)))
(declare-const var2521 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2521 null-String)))
(define-const var754 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var754)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var754!1 String)
(assert (= var754!1 ""))
(assert true)
(define-const var3111 String (append/672562846 var754!1 "error parsing regexp: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("error parsing regexp: ") 
(declare-const var754!2 String)
(assert (= var754!2 (str.++ var754!1 "error parsing regexp: ")))
(assert true)
(define-const var2235 String (append/672562846 var3111 var2521)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3111!1 String)
(assert (= var3111!1 (str.++ var3111 var2521)))
(assert true)
(define-const var2006 String (toString/-2075883882 var2235)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 (cast-from-var1717-to-var125 var1012) var2006)) ; Statement: specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r5) 

(declare-const var1012!1 var1717)
(declare-const var2006!1 String)
(declare-const var1012!2 var1717)
(assert (not (= var1012!2 null-var1717)))
(assert (= (error/-923640 var1012!2) var2521)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException: java.lang.String error> = r2 
(declare-const var1012!3 var1717)
(assert (not (= var1012!3 null-var1717)))
(assert (= (input/-923640 var1012!3) "")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException: java.lang.String input> = "" 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void), cast-from-var1717-to-var125=([com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException], java.lang.RuntimeException), error/-923640=([com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException], java.lang.String), input/-923640=([com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException], java.lang.String)}
; {var1717=com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException, var1012=r0, var2521=r2, var3836=null_type, var754=$r1, var3111=$r3, var2235=$r4, var2006=$r5, var125=java.lang.RuntimeException}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException=var1717, r0=var1012, r2=var2521, null_type=var3836, $r1=var754, $r3=var3111, $r4=var2235, $r5=var2006, java.lang.RuntimeException=var125}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("error parsing regexp: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r5);	r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException: java.lang.String error> = r2;	r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException: java.lang.String input> = "";	return
;block_num 1