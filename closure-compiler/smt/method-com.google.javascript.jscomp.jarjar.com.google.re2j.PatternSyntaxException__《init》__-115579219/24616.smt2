(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3144 0)
(declare-sort var3047 0)
(declare-sort var888 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var888 String) void)
(declare-fun cast-from-var3144-to-var888 (var3144) var888)
(declare-fun error/-923640 (var3144) String)
(declare-fun input/-923640 (var3144) String)
(declare-const null-var3144 var3144)
(declare-const null-String String)
(declare-const var1145 var3144) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException 
(assert (not (= var1145 null-var3144)))
(declare-const var3184 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3184 null-String)))
(declare-const var3307 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var3307 null-String)))
(define-const var2951 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2951)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2951!1 String)
(assert (= var2951!1 ""))
(assert true)
(define-const var3342 String (append/672562846 var2951!1 "error parsing regexp: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("error parsing regexp: ") 
(declare-const var2951!2 String)
(assert (= var2951!2 (str.++ var2951!1 "error parsing regexp: ")))
(assert true)
(define-const var2177 String (append/672562846 var3342 var3184)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3342!1 String)
(assert (= var3342!1 (str.++ var3342 var3184)))
(assert true)
(define-const var2414 String (append/672562846 var2177 ": `")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": `") 
(declare-const var2177!1 String)
(assert (= var2177!1 (str.++ var2177 ": `")))
(assert true)
(define-const var851 String (append/672562846 var2414 var3307)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2414!1 String)
(assert (= var2414!1 (str.++ var2414 var3307)))
(assert true)
(define-const var910 String (append/672562846 var851 "`")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`") 
(declare-const var851!1 String)
(assert (= var851!1 (str.++ var851 "`")))
(assert true)
(define-const var646 String (toString/-2075883882 var910)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 (cast-from-var3144-to-var888 var1145) var646)) ; Statement: specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r9) 

(declare-const var1145!1 var3144)
(declare-const var646!1 String)
(declare-const var1145!2 var3144)
(assert (not (= var1145!2 null-var3144)))
(assert (= (error/-923640 var1145!2) var3184)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException: java.lang.String error> = r2 
(declare-const var1145!3 var3144)
(assert (not (= var1145!3 null-var3144)))
(assert (= (input/-923640 var1145!3) var3307)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException: java.lang.String input> = r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void), cast-from-var3144-to-var888=([com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException], java.lang.RuntimeException), error/-923640=([com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException], java.lang.String), input/-923640=([com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException], java.lang.String)}
; {var3144=com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException, var1145=r0, var3184=r2, var3047=null_type, var3307=r5, var2951=$r1, var3342=$r3, var2177=$r4, var2414=$r6, var851=$r7, var910=$r8, var646=$r9, var888=java.lang.RuntimeException}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException=var3144, r0=var1145, r2=var3184, null_type=var3047, r5=var3307, $r1=var2951, $r3=var3342, $r4=var2177, $r6=var2414, $r7=var851, $r8=var910, $r9=var646, java.lang.RuntimeException=var888}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("error parsing regexp: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": `");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r9);	r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException: java.lang.String error> = r2;	r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.PatternSyntaxException: java.lang.String input> = r5;	return
;block_num 1