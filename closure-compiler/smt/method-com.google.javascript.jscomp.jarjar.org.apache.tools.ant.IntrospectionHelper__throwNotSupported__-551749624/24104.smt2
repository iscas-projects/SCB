(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2928 0)
(declare-sort var2572 0)
(declare-sort var2167 0)
(declare-sort var3233 0)
(declare-sort var1456 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getElementName/682871808 (var2572 var2167) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1456-init () var1456)
(declare-fun <init>/-719485332 (var1456 String String) void)
(declare-const null-var2928 var2928)
(declare-const null-var2572 var2572)
(declare-const null-var2167 var2167)
(declare-const null-String String)
(declare-const var1763 var2928) ; Statement: r11 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper 
(assert (not (= var1763 null-var2928)))
(declare-const var1931 var2572) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1931 null-var2572)))
(declare-const var3114 var2167) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3114 null-var2167)))
(declare-const var1970 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var1970 null-String)))
(define-const var1840 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1840)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1840!1 String)
(assert (= var1840!1 ""))
(assert true)
(define-const var1373 String (getElementName/682871808 var1931 var3114)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getElementName(java.lang.Object)>(r2) 
(assert true)
(define-const var1602 String (append/672562846 var1840!1 var1373)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1840!2 String)
(assert (= var1840!2 (str.++ var1840!1 var1373)))
(assert true)
(define-const var1292 String (append/672562846 var1602 " doesn\u0027t support the nested \u0022")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the nested \"") 
(declare-const var1602!1 String)
(assert (= var1602!1 (str.++ var1602 " doesn\u0027t support the nested \u0022")))
(assert true)
(define-const var2544 String (append/672562846 var1292 var1970)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1292!1 String)
(assert (= var1292!1 (str.++ var1292 var1970)))
(assert true)
(define-const var613 String (append/672562846 var2544 "\u0022 element.")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" element.") 
(declare-const var2544!1 String)
(assert (= var2544!1 (str.++ var2544 "\u0022 element.")))
(assert true)
(define-const var75 String (toString/-2075883882 var613)) ; Statement: r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2866 var1456 var1456-init) ; Statement: $r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException 
(assert true)
;(assert (<init>/-719485332 var2866 var75 var1970)) ; Statement: specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException: void <init>(java.lang.String,java.lang.String)>(r9, r5) 

(declare-const var2866!1 var1456)
(declare-const var75!1 String)
(declare-const var1970!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getElementName/682871808=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.Object], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1456-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException), <init>/-719485332=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException, java.lang.String, java.lang.String], void)}
; {var2928=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var1763=r11, var2572=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1931=r1, var2167=java.lang.Object, var3114=r2, var1970=r5, var3233=null_type, var1840=$r0, var1373=$r3, var1602=$r4, var1292=$r6, var2544=$r7, var613=$r8, var75=r9, var1456=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException, var2866=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var2928, r11=var1763, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2572, r1=var1931, java.lang.Object=var2167, r2=var3114, r5=var1970, null_type=var3233, $r0=var1840, $r3=var1373, $r4=var1602, $r6=var1292, $r7=var2544, $r8=var613, r9=var75, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException=var1456, $r10=var2866}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r2 := @parameter1: java.lang.Object;	r5 := @parameter2: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getElementName(java.lang.Object)>(r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" doesn\'t support the nested \"");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\" element.");	r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException;	specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.UnsupportedElementException: void <init>(java.lang.String,java.lang.String)>(r9, r5);	throw $r10
;block_num 1