(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3818 0)
(declare-sort var739 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-360596079 (var3818) Int)
(declare-fun operation/-360596079 (var3818) Int)
(declare-fun var739-init () var739)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/-360596079 (var3818) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var739 String) void)
(declare-const null-var3818 var3818)
(declare-const var1712 var3818) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry 
(assert (not (= var1712 null-var3818)))
(define-const var3627 Int (type/-360596079 var1712)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: int type> 
 ; Statement: if $i0 != 2 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String value> 
(assert (not (not (= var3627 2)))) ; Negate: Cond: $i0 != 2  
(define-const var3157 Int (operation/-360596079 var1712)) ; Statement: $i3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: int operation> 
 ; Statement: if $i3 != 1 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String value> 
(assert (not (not (= var3157 1)))) ; Negate: Cond: $i3 != 1  
(define-const var1226 var739 var739-init) ; Statement: $r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var2346 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2346)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2346!1 String)
(assert (= var2346!1 ""))
(assert true)
(define-const var2694 String (append/672562846 var2346!1 "- is not supported for string properties (key:")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("- is not supported for string properties (key:") 
(declare-const var2346!2 String)
(assert (= var2346!2 (str.++ var2346!1 "- is not supported for string properties (key:")))
(define-const var3113 String (key/-360596079 var1712)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String key> 
(assert true)
(define-const var3105 String (append/672562846 var2694 var3113)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2694!1 String)
(assert (= var2694!1 (str.++ var2694 var3113)))
(assert true)
(define-const var2534 String (append/672562846 var3105 ")")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3105!1 String)
(assert (= var3105!1 (str.++ var3105 ")")))
(assert true)
(define-const var1876 String (toString/-2075883882 var2534)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var1226 var1876)) ; Statement: specialinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r17) 

(declare-const var1226!1 var739)
(declare-const var1876!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-360596079=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry], int), operation/-360596079=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry], int), var739-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/-360596079=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var3818=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry, var1712=r0, var3627=$i0, var3157=$i3, var739=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1226=$r11, var2346=$r12, var2694=$r14, var3113=$r13, var3105=$r15, var2534=$r16, var1876=$r17}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry=var3818, r0=var1712, $i0=var3627, $i3=var3157, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var739, $r11=var1226, $r12=var2346, $r14=var2694, $r13=var3113, $r15=var3105, $r16=var2534, $r17=var1876}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry;	$i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: int type>;	if $i0 != 2 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String value>;	$i3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: int operation>;	if $i3 != 1 goto $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String value>;	$r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("- is not supported for string properties (key:");	$r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.PropertyFile$Entry: java.lang.String key>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r17);	throw $r11
;block_num 3