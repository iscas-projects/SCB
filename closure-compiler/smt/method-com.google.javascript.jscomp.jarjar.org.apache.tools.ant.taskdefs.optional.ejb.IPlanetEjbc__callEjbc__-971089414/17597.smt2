(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var620 0)
(declare-sort var2915 0)
(declare-sort var473 0)
(declare-sort var1173 0)
(declare-sort var2216 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun iasHomeDir/1631179044 (var620) var2915)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun log/2105092484 (var620 String) void)
(declare-fun var1173_getStackTrace/-253691410 (var2216) String)
(declare-fun cast-from-var473-to-var2216 (var473) var2216)
(declare-const null-var620 var620)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var2915 var2915)
(declare-const null-var473 var473)
(declare-const var2809 var620) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc 
(assert (not (= var2809 null-var620)))
(declare-const var565 (Array Int String)) ; Statement: r14 := @parameter0: java.lang.String[] 
(assert (not (= var565 null-__Array__Int__String__)))
(define-const var2675 var2915 (iasHomeDir/1631179044 var2809)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File iasHomeDir> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= var2675 null-var2915)))) ; Negate: Cond: $r1 != null  
(define-const var1037 String "") ; Statement: r34 = "" 
 ; Statement: goto [?= $r11 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1413 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1413)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1413!1 String)
(assert (= var1413!1 ""))
(assert true)
(define-const var2060 String (append/672562846 var1413!1 var1037)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r34) 
(declare-const var1413!2 String)
(assert (= var1413!2 (str.++ var1413!1 var1037)))
(assert true)
(define-const var2210 String (append/672562846 var2060 "ejbc ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ejbc ") 
(declare-const var2060!1 String)
(assert (= var2060!1 (str.++ var2060 "ejbc ")))
(assert true)
(define-const var894 String (toString/-2075883882 var2210)) ; Statement: $r28 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2712 String (String_join/-1520935655 (cast-from-String-to-String " ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var565))) ; Statement: $r29 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" ", r14) 
(define-const var397 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var397)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var397!1 String)
(assert (= var397!1 ""))
(assert true)
(define-const var3779 String (append/672562846 var397!1 var894)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var397!2 String)
(assert (= var397!2 (str.++ var397!1 var894)))
(assert true)
(define-const var1310 String (append/672562846 var3779 var2712)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var3779!1 String)
(assert (= var3779!1 (str.++ var3779 var2712)))
(assert true)
(define-const var2158 String (toString/-2075883882 var1310)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2105092484 var2809 var2158)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void log(java.lang.String)>($r18) 

(declare-const var2809!1 var620)
(declare-const var2158!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2019 var473) ; Statement: $r32 := @caughtexception 
(assert (not (= var2019 null-var473)))
(assert true)
;(assert (log/2105092484 var2809!1 "An IOException has occurred while trying to execute ejbc.")) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void log(java.lang.String)>("An IOException has occurred while trying to execute ejbc.") 

(declare-const var2809!2 var620)
(declare-const var1549 String)
(define-const var287 String (var1173_getStackTrace/-253691410 (cast-from-var473-to-var2216 var2019))) ; Statement: $r33 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils: java.lang.String getStackTrace(java.lang.Throwable)>($r32) 
(assert true)
;(assert (log/2105092484 var2809!2 var287)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void log(java.lang.String)>($r33) 

(declare-const var2809!3 var620)
(declare-const var287!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {iasHomeDir/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), log/2105092484=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, java.lang.String], void), var1173_getStackTrace/-253691410=([java.lang.Throwable], java.lang.String), cast-from-var473-to-var2216=([java.io.IOException], java.lang.Throwable)}
; {var620=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, var2809=r0, var565=r14, var2915=java.io.File, var2675=$r1, var1037=r34, var1413=$r11, var2060=$r12, var2210=$r13, var894=$r28, var2712=$r29, var397=$r15, var3779=$r16, var1310=$r17, var2158=$r18, var473=java.io.IOException, var2019=$r32, var1549="An IOException has occurred while trying to execute ejbc.", var1173=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils, var2216=java.lang.Throwable, var287=$r33}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc=var620, r0=var2809, r14=var565, java.io.File=var2915, $r1=var2675, r34=var1037, $r11=var1413, $r12=var2060, $r13=var2210, $r28=var894, $r29=var2712, $r15=var397, $r16=var3779, $r17=var1310, $r18=var2158, java.io.IOException=var473, $r32=var2019, "An IOException has occurred while trying to execute ejbc."=var1549, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils=var1173, java.lang.Throwable=var2216, $r33=var287}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc;	r14 := @parameter0: java.lang.String[];	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File iasHomeDir>;	if $r1 != null goto $r2 = new java.lang.StringBuilder;	r34 = "";	goto [?= $r11 = new java.lang.StringBuilder];	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r34);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ejbc ");	$r28 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r29 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" ", r14);	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void log(java.lang.String)>($r18);	$r32 := @caughtexception;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void log(java.lang.String)>("An IOException has occurred while trying to execute ejbc.");	$r33 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.StringUtils: java.lang.String getStackTrace(java.lang.Throwable)>($r32);	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void log(java.lang.String)>($r33);	goto [?= return];	return
;block_num 5