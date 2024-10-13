(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1331 0)
(declare-sort var3550 0)
(declare-sort var2385 0)
(declare-sort var2315 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun extractProjectName/-731704062 (var2385 var3550) String)
(declare-fun cast-from-var1331-to-var2385 (var1331) var2385)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1331 var1331)
(declare-const null-var3550 var3550)
(declare-const null-String String)
(declare-const var3669 var1331) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger 
(assert (not (= var3669 null-var1331)))
(declare-const var448 var3550) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var448 null-var3550)))
(assert true)
(define-const var3047 String (extractProjectName/-731704062 (cast-from-var1331-to-var2385 var3669) var448)) ; Statement: r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String extractProjectName(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent)>(r1) 
 ; Statement: if r6 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var3047 null-String))) ; Cond: r6 != null 
(define-const var3141 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3141)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3141!1 String)
(assert (= var3141!1 ""))
(assert true)
(define-const var1930 String (append/-1166366385 var3141!1 34)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var3141!2 String)
(assert (str.prefixof var3141!1 var3141!2))
(assert true)
(define-const var1411 String (append/672562846 var1930 var3047)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1930!1 String)
(assert (= var1930!1 (str.++ var1930 var3047)))
(assert true)
(define-const var2979 String (append/-1166366385 var1411 34)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34) 
(declare-const var1411!1 String)
(assert (str.prefixof var1411 var1411!1))
(assert true)
(define-const var2881 String (toString/-2075883882 var2979)) ; Statement: r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return r7 
(check-sat)
(get-model)
(get-unsat-core)
; {extractProjectName/-731704062=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], java.lang.String), cast-from-var1331-to-var2385=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1331=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger, var3669=r0, var3550=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var448=r1, var2385=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger, var3047=r6, var2315=null_type, var3141=$r2, var1930=$r3, var1411=$r4, var2979=$r5, var2881=r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger=var1331, r0=var3669, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var3550, r1=var448, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.DefaultLogger=var2385, r6=var3047, null_type=var2315, $r2=var3141, $r3=var1930, $r4=var1411, $r5=var2979, r7=var2881}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.listener.BigProjectLogger: java.lang.String extractProjectName(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent)>(r1);	if r6 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(34);	r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return r7
;block_num 3