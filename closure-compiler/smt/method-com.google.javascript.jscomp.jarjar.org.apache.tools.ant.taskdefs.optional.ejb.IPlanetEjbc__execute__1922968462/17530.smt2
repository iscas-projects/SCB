(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2353 0)
(declare-sort var2077 0)
(declare-sort var1361 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkConfiguration/-1702206391 (var2353) void)
(declare-fun getEjbs/334443454 (var2353) (Array Int var2077))
(declare-fun getLength-Arr-var2077-1 ((Array Int var2077)) Int)
(declare-fun destDirectory/1631179044 (var2353) var1361)
(declare-fun var2077_access$000/1301856341 (var2077 var1361) void)
(declare-fun mustBeRecompiled/-1356918368 (var2077 var1361) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-455022710 (var2077) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/2105092484 (var2353 String) void)
(declare-fun buildArgumentList/-1926934094 (var2353 var2077) (Array Int String))
(declare-fun callEjbc/-971089414 (var2353 (Array Int String)) void)
(declare-const null-var2353 var2353)
(declare-const var2767 var2353) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc 
(assert (not (= var2767 null-var2353)))
(assert true)
;(assert (checkConfiguration/-1702206391 var2767)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void checkConfiguration()>() 

(declare-const var2767!1 var2353)
(assert true)
(define-const var1017 (Array Int var2077) (getEjbs/334443454 var2767!1)) ; Statement: r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo[] getEjbs()>() 
(define-const var2831 Int (getLength-Arr-var2077-1 var1017)) ; Statement: i0 = lengthof r1 
(define-const var2111 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto i2 = lengthof r1 
(assert (>= var2111 var2831)) ; Cond: i1 >= i0 
(define-const var432 Int (getLength-Arr-var2077-1 var1017)) ; Statement: i2 = lengthof r1 
(define-const var3520 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i2 goto return 
(assert (not (>= var3520 var432))) ; Negate: Cond: i3 >= i2  
(define-const var1819 var2077 (select var1017 var3520)) ; Statement: r17 = r1[i3] 
(define-const var2379 var1361 (destDirectory/1631179044 var2767!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory> 
;(assert (var2077_access$000/1301856341 var1819 var2379)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: void access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo,java.io.File)>(r17, $r2) 

(declare-const var1819!1 var2077)
(declare-const var2379!1 var1361)
(define-const var2491 var1361 (destDirectory/1631179044 var2767!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory> 
(assert true)
(define-const var3169 Bool (mustBeRecompiled/-1356918368 var1819!1 var2491)) ; Statement: $z0 = virtualinvoke r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean mustBeRecompiled(java.io.File)>($r3) 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.StringBuilder 
(assert (not (= (ite var3169 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2951 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2951)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2951!1 String)
(assert (= var2951!1 ""))
(assert true)
(define-const var605 String (getName/-455022710 var1819!1)) ; Statement: $r10 = virtualinvoke r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String getName()>() 
(assert true)
(define-const var2265 String (append/672562846 var2951!1 var605)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2951!2 String)
(assert (= var2951!2 (str.++ var2951!1 var605)))
(assert true)
(define-const var1063 String (append/672562846 var2265 " must be recompiled using ejbc.")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be recompiled using ejbc.") 
(declare-const var2265!1 String)
(assert (= var2265!1 (str.++ var2265 " must be recompiled using ejbc.")))
(assert true)
(define-const var2402 String (toString/-2075883882 var1063)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2105092484 var2767!1 var2402)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void log(java.lang.String)>($r13) 

(declare-const var2767!2 var2353)
(declare-const var2402!1 String)
(assert true)
(define-const var1026 (Array Int String) (buildArgumentList/-1926934094 var2767!2 var1819!1)) ; Statement: $r14 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.lang.String[] buildArgumentList(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo)>(r17) 
(assert true)
;(assert (callEjbc/-971089414 var2767!2 var1026)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void callEjbc(java.lang.String[])>($r14) 

(declare-const var2767!3 var2353)
(declare-const var1026!1 (Array Int String))
 ; Statement: goto [?= i3 = i3 + 1] 
(assert true) ; Non Conditional
(define-const var3520!1 Int (+ var3520 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i2 goto return 
(assert (>= var3520!1 var432)) ; Cond: i3 >= i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {checkConfiguration/-1702206391=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], void), getEjbs/334443454=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo[]), getLength-Arr-var2077-1=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo[]], int), destDirectory/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], java.io.File), var2077_access$000/1301856341=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo, java.io.File], void), mustBeRecompiled/-1356918368=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo, java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-455022710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/2105092484=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, java.lang.String], void), buildArgumentList/-1926934094=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], java.lang.String[]), callEjbc/-971089414=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, java.lang.String[]], void)}
; {var2353=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, var2767=r0, var2077=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo, var1017=r1, var2831=i0, var2111=i1, var432=i2, var3520=i3, var1819=r17, var1361=java.io.File, var2379=$r2, var2491=$r3, var3169=$z0, var2951=$r9, var605=$r10, var2265=$r11, var1063=$r12, var2402=$r13, var1026=$r14}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc=var2353, r0=var2767, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo=var2077, r1=var1017, i0=var2831, i1=var2111, i2=var432, i3=var3520, r17=var1819, java.io.File=var1361, $r2=var2379, $r3=var2491, $z0=var3169, $r9=var2951, $r10=var605, $r11=var2265, $r12=var1063, $r13=var2402, $r14=var1026}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void checkConfiguration()>();	r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo[] getEjbs()>();	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto i2 = lengthof r1;	i2 = lengthof r1;	i3 = 0;	if i3 >= i2 goto return;	r17 = r1[i3];	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory>;	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: void access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo,java.io.File)>(r17, $r2);	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory>;	$z0 = virtualinvoke r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean mustBeRecompiled(java.io.File)>($r3);	if $z0 == 0 goto $r4 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String getName()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be recompiled using ejbc.");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void log(java.lang.String)>($r13);	$r14 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.lang.String[] buildArgumentList(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo)>(r17);	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void callEjbc(java.lang.String[])>($r14);	goto [?= i3 = i3 + 1];	i3 = i3 + 1;	goto [?= (branch)];	if i3 >= i2 goto return;	return
;block_num 9