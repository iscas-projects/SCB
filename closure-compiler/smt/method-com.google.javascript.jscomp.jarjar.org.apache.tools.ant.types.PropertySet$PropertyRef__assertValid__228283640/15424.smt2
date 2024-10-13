(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var301 0)
(declare-sort var727 0)
(declare-sort var3033 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3033-init () var3033)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var3033 String) void)
(declare-const null-var301 var301)
(declare-const null-String String)
(declare-const var729 var301) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef 
(assert (not (= var729 null-var301)))
(declare-const var2443 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2443 null-String)))
(declare-const var1830 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1830 null-String)))
 ; Statement: if r0 == null goto $r1 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (= var1830 null-String)) ; Cond: r0 == null 
(define-const var3102 var3033 var3033-init) ; Statement: $r1 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3353 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3353)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3353!1 String)
(assert (= var3353!1 ""))
(assert true)
(define-const var2791 String (append/672562846 var3353!1 "Invalid attribute: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid attribute: ") 
(declare-const var3353!2 String)
(assert (= var3353!2 (str.++ var3353!1 "Invalid attribute: ")))
(assert true)
(define-const var2305 String (append/672562846 var2791 var2443)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2791!1 String)
(assert (= var2791!1 (str.++ var2791 var2443)))
(assert true)
(define-const var62 String (toString/-2075883882 var2305)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var3102 var62)) ; Statement: specialinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r6) 

(declare-const var3102!1 var3033)
(declare-const var62!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3033-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var301=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef, var729=r7, var2443=r3, var727=null_type, var1830=r0, var3033=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3102=$r1, var3353=$r2, var2791=$r4, var2305=$r5, var62=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef=var301, r7=var729, r3=var2443, null_type=var727, r0=var1830, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3033, $r1=var3102, $r2=var3353, $r4=var2791, $r5=var2305, $r6=var62}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.PropertySet$PropertyRef;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	if r0 == null goto $r1 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r1 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid attribute: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 2