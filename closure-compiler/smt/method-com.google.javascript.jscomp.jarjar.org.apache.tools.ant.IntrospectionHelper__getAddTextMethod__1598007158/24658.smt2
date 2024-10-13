(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1492 0)
(declare-sort var3340 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun supportsCharacters/148905355 (var1492) Bool)
(declare-fun var3340-init () var3340)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun bean/1960194218 (var1492) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var3340 String) void)
(declare-const null-var1492 var1492)
(declare-const var3665 var1492) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var3665 null-var1492)))
(assert true)
(define-const var1697 Bool (supportsCharacters/148905355 var3665)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: boolean supportsCharacters()>() 
 ; Statement: if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText> 
(assert (not (not (= (ite var1697 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var385 var3340 var3340-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3584 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3584)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3584!1 String)
(assert (= var3584!1 ""))
(assert true)
(define-const var3071 String (append/672562846 var3584!1 "Class ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ") 
(declare-const var3584!2 String)
(assert (= var3584!2 (str.++ var3584!1 "Class ")))
(define-const var2635 ClassObject (bean/1960194218 var3665)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.Class bean> 
(assert true)
(define-const var3506 String (getName/-1958580599 var2635)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1714 String (append/672562846 var3071 var3506)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3071!1 String)
(assert (= var3071!1 (str.++ var3071 var3506)))
(assert true)
(define-const var837 String (append/672562846 var1714 " doesn\u0027t support nested text data.")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support nested text data.") 
(declare-const var1714!1 String)
(assert (= var1714!1 (str.++ var1714 " doesn\u0027t support nested text data.")))
(assert true)
(define-const var1280 String (toString/-2075883882 var837)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var385 var1280)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r9) 

(declare-const var385!1 var3340)
(declare-const var1280!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {supportsCharacters/148905355=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], boolean), var3340-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), bean/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1492=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var3665=r0, var1697=$z0, var3340=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var385=$r2, var3584=$r3, var3071=$r6, var2635=$r4, var3506=$r5, var1714=$r7, var837=$r8, var1280=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var1492, r0=var3665, $z0=var1697, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3340, $r2=var385, $r3=var3584, $r6=var3071, $r4=var2635, $r5=var3506, $r7=var1714, $r8=var837, $r9=var1280}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: boolean supportsCharacters()>();	if $z0 != 0 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText>;	$r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class ");	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.Class bean>;	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support nested text data.");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r9);	throw $r2
;block_num 2