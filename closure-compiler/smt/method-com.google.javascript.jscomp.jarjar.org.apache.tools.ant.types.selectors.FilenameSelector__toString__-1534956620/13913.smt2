(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1543 0)
(declare-sort var3840 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun pattern/1541239828 (var1543) String)
(declare-fun regex/1541239828 (var1543) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun negated/1541239828 (var1543) Bool)
(declare-fun append/-388390247 (String Bool) String)
(declare-fun casesensitive/1541239828 (var1543) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1543 var1543)
(declare-const null-String String)
(declare-const var1710 var1543) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector 
(assert (not (= var1710 null-var1543)))
(define-const var3381 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3381 "{filenameselector name: ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{filenameselector name: ") 
(declare-const var3381!1 String)
(assert (= var3381!1 "{filenameselector name: "))
(define-const var2851 String (pattern/1541239828 var1710)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector: java.lang.String pattern> 
 ; Statement: if $r2 == null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector: java.lang.String regex> 
(assert (= var2851 null-String)) ; Cond: $r2 == null 
(define-const var3469 String (regex/1541239828 var1710)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector: java.lang.String regex> 
 ; Statement: if $r3 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" negate: ") 
(assert (= var3469 null-String)) ; Cond: $r3 == null 
(assert true)
(define-const var1373 String (append/672562846 var3381!1 " negate: ")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" negate: ") 
(declare-const var3381!2 String)
(assert (= var3381!2 (str.++ var3381!1 " negate: ")))
(define-const var3704 Bool (negated/1541239828 var1710)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector: boolean negated> 
(assert true)
;(assert (append/-388390247 var1373 var3704)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0) 
(declare-const var1373!1 String)
(assert (str.prefixof var1373 var1373!1))
(assert true)
(define-const var2796 String (append/672562846 var3381!2 " casesensitive: ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" casesensitive: ") 
(declare-const var3381!3 String)
(assert (= var3381!3 (str.++ var3381!2 " casesensitive: ")))
(define-const var2315 Bool (casesensitive/1541239828 var1710)) ; Statement: $z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector: boolean casesensitive> 
(assert true)
;(assert (append/-388390247 var2796 var2315)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z1) 
(declare-const var2796!1 String)
(assert (str.prefixof var2796 var2796!1))
(assert true)
;(assert (append/672562846 var3381!3 "}")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var3381!4 String)
(assert (= var3381!4 (str.++ var3381!3 "}")))
(assert true)
(define-const var217 String (toString/-2075883882 var3381!4)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), pattern/1541239828=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector], java.lang.String), regex/1541239828=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), negated/1541239828=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector], boolean), append/-388390247=([java.lang.StringBuilder, boolean], java.lang.StringBuilder), casesensitive/1541239828=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1543=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector, var1710=r1, var3381=$r0, var2851=$r2, var3840=null_type, var3469=$r3, var1373=$r4, var3704=$z0, var2796=$r5, var2315=$z1, var217=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector=var1543, r1=var1710, $r0=var3381, $r2=var2851, null_type=var3840, $r3=var3469, $r4=var1373, $z0=var3704, $r5=var2796, $z1=var2315, $r6=var217}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("{filenameselector name: ");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector: java.lang.String pattern>;	if $r2 == null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector: java.lang.String regex>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector: java.lang.String regex>;	if $r3 == null goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" negate: ");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" negate: ");	$z0 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector: boolean negated>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z0);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" casesensitive: ");	$z1 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.FilenameSelector: boolean casesensitive>;	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>($z1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3