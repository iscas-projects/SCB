(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2103 0)
(declare-sort var3565 0)
(declare-sort var2756 0)
(declare-sort var2383 0)
(declare-sort var3860 0)
(declare-sort var1228 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-1293039071 (var2103) ClassObject)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun var2383-init () var2383)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun method/-1293039071 (var2103) var3860)
(declare-fun getName/1227988463 (var3860) String)
(declare-fun var1228_access$500/482842653 (String String) String)
(declare-fun append/-1031950772 (String var2756) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var2383 String) void)
(declare-const null-var2103 var2103)
(declare-const null-var3565 var3565)
(declare-const null-var2756 var2756)
(declare-const null-ClassObject ClassObject)
(declare-const var2652 var2103) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter 
(assert (not (= var2652 null-var2103)))
(declare-const var1295 var3565) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1295 null-var3565)))
(declare-const var1476 var2756) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var1476 null-var2756)))
(declare-const var1348 var2756) ; Statement: r4 := @parameter2: java.lang.Object 
(assert (not (= var1348 null-var2756)))
(define-const var3002 ClassObject (type/-1293039071 var2652)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.Class type> 
 ; Statement: if $r1 == null goto $r5 = virtualinvoke r4.<java.lang.Object: java.lang.String toString()>() 
(assert (not (= var3002 null-ClassObject))) ; Negate: Cond: $r1 == null  
(define-const var2088 ClassObject (type/-1293039071 var2652)) ; Statement: r22 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.Class type> 
(define-const var38 ClassObject (type/-1293039071 var2652)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.Class type> 
(assert true)
(define-const var3426 Bool (isPrimitive/-473230874 var38)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var3426 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if r4 != null goto $r10 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map access$600()>() 
(assert (not (not (= var1348 null-var2756)))) ; Negate: Cond: r4 != null  
(define-const var913 var2383 var2383-init) ; Statement: $r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3961 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3961)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3961!1 String)
(assert (= var3961!1 ""))
(assert true)
(define-const var3835 String (append/672562846 var3961!1 "Attempt to set primitive ")) ; Statement: $r17 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attempt to set primitive ") 
(declare-const var3961!2 String)
(assert (= var3961!2 (str.++ var3961!1 "Attempt to set primitive ")))
(define-const var237 var3860 (method/-1293039071 var2652)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.reflect.Method method> 
(assert true)
(define-const var479 String (getName/1227988463 var237)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.reflect.Method: java.lang.String getName()>() 
(define-const var2808 String (var1228_access$500/482842653 var479 "set")) ; Statement: $r16 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.String access$500(java.lang.String,java.lang.String)>($r15, "set") 
(assert true)
(define-const var1183 String (append/672562846 var3835 var2808)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3835!1 String)
(assert (= var3835!1 (str.++ var3835 var2808)))
(assert true)
(define-const var1364 String (append/672562846 var1183 " to null on ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to null on ") 
(declare-const var1183!1 String)
(assert (= var1183!1 (str.++ var1183 " to null on ")))
(assert true)
(define-const var1224 String (append/-1031950772 var1364 var1476)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var1364!1 String)
(assert (str.prefixof var1364 var1364!1))
(assert true)
(define-const var2295 String (toString/-2075883882 var1224)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var913 var2295)) ; Statement: specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r21) 

(declare-const var913!1 var2383)
(declare-const var2295!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-1293039071=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter], java.lang.Class), isPrimitive/-473230874=([java.lang.Class], boolean), var2383-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), method/-1293039071=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter], java.lang.reflect.Method), getName/1227988463=([java.lang.reflect.Method], java.lang.String), var1228_access$500/482842653=([java.lang.String, java.lang.String], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var2103=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter, var2652=r0, var3565=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1295=r2, var2756=java.lang.Object, var1476=r3, var1348=r4, var3002=$r1, var2088=r22, var38=$r6, var3426=$z0, var2383=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var913=$r12, var3961=$r13, var3835=$r17, var3860=java.lang.reflect.Method, var237=$r14, var479=$r15, var1228=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper, var2808=$r16, var1183=$r18, var1364=$r19, var1224=$r20, var2295=$r21}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter=var2103, r0=var2652, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3565, r2=var1295, java.lang.Object=var2756, r3=var1476, r4=var1348, $r1=var3002, r22=var2088, $r6=var38, $z0=var3426, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2383, $r12=var913, $r13=var3961, $r17=var3835, java.lang.reflect.Method=var3860, $r14=var237, $r15=var479, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper=var1228, $r16=var2808, $r18=var1183, $r19=var1364, $r20=var1224, $r21=var2295}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r3 := @parameter1: java.lang.Object;	r4 := @parameter2: java.lang.Object;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.Class type>;	if $r1 == null goto $r5 = virtualinvoke r4.<java.lang.Object: java.lang.String toString()>();	r22 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.Class type>;	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.Class type>;	$z0 = virtualinvoke $r6.<java.lang.Class: boolean isPrimitive()>();	if $z0 == 0 goto (branch);	if r4 != null goto $r10 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.util.Map access$600()>();	$r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Attempt to set primitive ");	$r14 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$AttributeSetter: java.lang.reflect.Method method>;	$r15 = virtualinvoke $r14.<java.lang.reflect.Method: java.lang.String getName()>();	$r16 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper: java.lang.String access$500(java.lang.String,java.lang.String)>($r15, "set");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" to null on ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r21);	throw $r12
;block_num 4