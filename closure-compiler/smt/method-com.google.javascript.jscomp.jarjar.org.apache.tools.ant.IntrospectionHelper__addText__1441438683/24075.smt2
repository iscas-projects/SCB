(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var778 0)
(declare-sort var2880 0)
(declare-sort var3197 0)
(declare-sort var201 0)
(declare-sort var341 0)
(declare-sort var2394 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addText/1960194218 (var778) var341)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2394-init () var2394)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getElementName/682871808 (var2880 var3197) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun condenseText/768353641 (var778 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var2394 String) void)
(declare-const null-var778 var778)
(declare-const null-var2880 var2880)
(declare-const null-var3197 var3197)
(declare-const null-String String)
(declare-const null-var341 var341)
(declare-const var536 var778) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var536 null-var778)))
(declare-const var170 var2880) ; Statement: r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var170 null-var2880)))
(declare-const var504 var3197) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var504 null-var3197)))
(declare-const var1809 String) ; Statement: r19 := @parameter2: java.lang.String 
(assert (not (= var1809 null-String)))
(define-const var3714 var341 (addText/1960194218 var536)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText> 
 ; Statement: if $r1 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText> 
(assert (not (not (= var3714 null-var341)))) ; Negate: Cond: $r1 != null  
(assert true)
(define-const var3057 String (trim/-847153721 var1809)) ; Statement: r20 = virtualinvoke r19.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3156 Bool (isEmpty/-1285796103 var3057)) ; Statement: $z0 = virtualinvoke r20.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (= (ite var3156 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3374 var2394 var2394-init) ; Statement: $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3003 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3003)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3003!1 String)
(assert (= var3003!1 ""))
(assert true)
(define-const var2714 String (getElementName/682871808 var170 var504)) ; Statement: $r8 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getElementName(java.lang.Object)>(r2) 
(assert true)
(define-const var454 String (append/672562846 var3003!1 var2714)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3003!2 String)
(assert (= var3003!2 (str.++ var3003!1 var2714)))
(assert true)
(define-const var2978 String (append/672562846 var454 " doesn\u0027t support nested text data (\u0022")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support nested text data (\"") 
(declare-const var454!1 String)
(assert (= var454!1 (str.++ var454 " doesn\u0027t support nested text data (\u0022")))
(assert true)
(define-const var1840 String (condenseText/768353641 var536 var3057)) ; Statement: $r10 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.String condenseText(java.lang.String)>(r20) 
(assert true)
(define-const var3886 String (append/672562846 var2978 var1840)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2978!1 String)
(assert (= var2978!1 (str.++ var2978 var1840)))
(assert true)
(define-const var44 String (append/672562846 var3886 "\u0022).")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\").") 
(declare-const var3886!1 String)
(assert (= var3886!1 (str.++ var3886 "\u0022).")))
(assert true)
(define-const var3623 String (toString/-2075883882 var44)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var3374 var3623)) ; Statement: specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r14) 

(declare-const var3374!1 var2394)
(declare-const var3623!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {addText/1960194218=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper], java.lang.reflect.Method), trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var2394-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getElementName/682871808=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.Object], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), condenseText/768353641=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var778=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var536=r0, var2880=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var170=r7, var3197=java.lang.Object, var504=r2, var1809=r19, var201=null_type, var341=java.lang.reflect.Method, var3714=$r1, var3057=r20, var3156=$z0, var2394=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3374=$r5, var3003=$r6, var2714=$r8, var454=$r9, var2978=$r11, var1840=$r10, var3886=$r12, var44=$r13, var3623=$r14}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var778, r0=var536, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2880, r7=var170, java.lang.Object=var3197, r2=var504, r19=var1809, null_type=var201, java.lang.reflect.Method=var341, $r1=var3714, r20=var3057, $z0=var3156, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2394, $r5=var3374, $r6=var3003, $r8=var2714, $r9=var454, $r11=var2978, $r10=var1840, $r12=var3886, $r13=var44, $r14=var3623}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r7 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r2 := @parameter1: java.lang.Object;	r19 := @parameter2: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText>;	if $r1 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.reflect.Method addText>;	r20 = virtualinvoke r19.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke r20.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r5 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getElementName(java.lang.Object)>(r2);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support nested text data (\"");	$r10 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.String condenseText(java.lang.String)>(r20);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\").");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r14);	throw $r5
;block_num 3