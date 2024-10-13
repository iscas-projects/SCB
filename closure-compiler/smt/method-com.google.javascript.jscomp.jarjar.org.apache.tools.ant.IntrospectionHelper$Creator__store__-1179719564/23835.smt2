(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3159 0)
(declare-sort var2113 0)
(declare-sort var1479 0)
(declare-sort var2746 0)
(declare-sort var20 0)
(declare-sort var3937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nestedCreator/-985051630 (var3159) var2113)
(declare-fun parent/-985051630 (var3159) var1479)
(declare-fun nestedObject/-985051630 (var3159) var1479)
(declare-fun polyType/-985051630 (var3159) String)
(declare-fun var3937-init () var3937)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var3937 String) void)
(declare-const null-var3159 var3159)
(declare-const null-var2746 var2746)
(declare-const null-String String)
(declare-const var604 var3159) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator 
(assert (not (= var604 null-var3159)))
(define-const var3818 var2113 (nestedCreator/-985051630 var604)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator nestedCreator> 
(define-const var2943 var1479 (parent/-985051630 var604)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: java.lang.Object parent> 
(define-const var2894 var1479 (nestedObject/-985051630 var604)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: java.lang.Object nestedObject> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var989 var2746) ; Statement: $r6 := @caughtexception 
(assert (not (= var989 null-var2746)))
(define-const var1585 String (polyType/-985051630 var604)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: java.lang.String polyType> 
 ; Statement: if $r7 != null goto $r8 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (not (= var1585 null-String))) ; Cond: $r7 != null 
(define-const var2665 var3937 var3937-init) ; Statement: $r8 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3766 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3766)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3766!1 String)
(assert (= var3766!1 ""))
(assert true)
(define-const var1720 String (append/672562846 var3766!1 "Invalid type used ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid type used ") 
(declare-const var3766!2 String)
(assert (= var3766!2 (str.++ var3766!1 "Invalid type used ")))
(define-const var1937 String (polyType/-985051630 var604)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: java.lang.String polyType> 
(assert true)
(define-const var1733 String (append/672562846 var1720 var1937)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1720!1 String)
(assert (= var1720!1 (str.++ var1720 var1937)))
(assert true)
(define-const var1305 String (toString/-2075883882 var1733)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var2665 var1305)) ; Statement: specialinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r13) 

(declare-const var2665!1 var3937)
(declare-const var1305!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {nestedCreator/-985051630=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator), parent/-985051630=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator], java.lang.Object), nestedObject/-985051630=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator], java.lang.Object), polyType/-985051630=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator], java.lang.String), var3937-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var3159=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator, var604=r0, var2113=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator, var3818=$r3, var1479=java.lang.Object, var2943=$r2, var2894=$r1, var2746=java.lang.IllegalArgumentException, var989=$r6, var1585=$r7, var20=null_type, var3937=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2665=$r8, var3766=$r9, var1720=$r11, var1937=$r10, var1733=$r12, var1305=$r13}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator=var3159, r0=var604, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator=var2113, $r3=var3818, java.lang.Object=var1479, $r2=var2943, $r1=var2894, java.lang.IllegalArgumentException=var2746, $r6=var989, $r7=var1585, null_type=var20, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3937, $r8=var2665, $r9=var3766, $r11=var1720, $r10=var1937, $r12=var1733, $r13=var1305}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$NestedCreator nestedCreator>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: java.lang.Object parent>;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: java.lang.Object nestedObject>;	$r6 := @caughtexception;	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: java.lang.String polyType>;	if $r7 != null goto $r8 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r8 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid type used ");	$r10 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$Creator: java.lang.String polyType>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r13);	throw $r8
;block_num 3