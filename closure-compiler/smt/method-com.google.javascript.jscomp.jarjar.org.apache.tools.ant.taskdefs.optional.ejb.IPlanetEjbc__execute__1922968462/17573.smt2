(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3043 0)
(declare-sort var1685 0)
(declare-sort var2109 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkConfiguration/-1702206391 (var3043) void)
(declare-fun getEjbs/334443454 (var3043) (Array Int var1685))
(declare-fun getLength-Arr-var1685-1 ((Array Int var1685)) Int)
(declare-fun destDirectory/1631179044 (var3043) var2109)
(declare-fun var1685_access$000/1301856341 (var1685 var2109) void)
(declare-fun mustBeRecompiled/-1356918368 (var1685 var2109) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-455022710 (var1685) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/2105092484 (var3043 String) void)
(declare-const null-var3043 var3043)
(declare-const var2598 var3043) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc 
(assert (not (= var2598 null-var3043)))
(assert true)
;(assert (checkConfiguration/-1702206391 var2598)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void checkConfiguration()>() 

(declare-const var2598!1 var3043)
(assert true)
(define-const var2476 (Array Int var1685) (getEjbs/334443454 var2598!1)) ; Statement: r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo[] getEjbs()>() 
(define-const var332 Int (getLength-Arr-var1685-1 var2476)) ; Statement: i0 = lengthof r1 
(define-const var3453 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto i2 = lengthof r1 
(assert (>= var3453 var332)) ; Cond: i1 >= i0 
(define-const var3383 Int (getLength-Arr-var1685-1 var2476)) ; Statement: i2 = lengthof r1 
(define-const var3042 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i2 goto return 
(assert (not (>= var3042 var3383))) ; Negate: Cond: i3 >= i2  
(define-const var3452 var1685 (select var2476 var3042)) ; Statement: r17 = r1[i3] 
(define-const var1212 var2109 (destDirectory/1631179044 var2598!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory> 
;(assert (var1685_access$000/1301856341 var3452 var1212)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: void access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo,java.io.File)>(r17, $r2) 

(declare-const var3452!1 var1685)
(declare-const var1212!1 var2109)
(define-const var1895 var2109 (destDirectory/1631179044 var2598!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory> 
(assert true)
(define-const var3322 Bool (mustBeRecompiled/-1356918368 var3452!1 var1895)) ; Statement: $z0 = virtualinvoke r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean mustBeRecompiled(java.io.File)>($r3) 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.StringBuilder 
(assert (= (ite var3322 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2013 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2013)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2013!1 String)
(assert (= var2013!1 ""))
(assert true)
(define-const var2666 String (getName/-455022710 var3452!1)) ; Statement: $r5 = virtualinvoke r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String getName()>() 
(assert true)
(define-const var797 String (append/672562846 var2013!1 var2666)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2013!2 String)
(assert (= var2013!2 (str.++ var2013!1 var2666)))
(assert true)
(define-const var2323 String (append/672562846 var797 " is up to date.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is up to date.") 
(declare-const var797!1 String)
(assert (= var797!1 (str.++ var797 " is up to date.")))
(assert true)
(define-const var1507 String (toString/-2075883882 var2323)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2105092484 var2598!1 var1507)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void log(java.lang.String)>($r8) 

(declare-const var2598!2 var3043)
(declare-const var1507!1 String)
(assert true) ; Non Conditional
(define-const var3042!1 Int (+ var3042 1)) ; Statement: i3 = i3 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i2 goto return 
(assert (>= var3042!1 var3383)) ; Cond: i3 >= i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {checkConfiguration/-1702206391=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], void), getEjbs/334443454=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo[]), getLength-Arr-var1685-1=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo[]], int), destDirectory/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], java.io.File), var1685_access$000/1301856341=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo, java.io.File], void), mustBeRecompiled/-1356918368=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo, java.io.File], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-455022710=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/2105092484=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, java.lang.String], void)}
; {var3043=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, var2598=r0, var1685=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo, var2476=r1, var332=i0, var3453=i1, var3383=i2, var3042=i3, var3452=r17, var2109=java.io.File, var1212=$r2, var1895=$r3, var3322=$z0, var2013=$r4, var2666=$r5, var797=$r6, var2323=$r7, var1507=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc=var3043, r0=var2598, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo=var1685, r1=var2476, i0=var332, i1=var3453, i2=var3383, i3=var3042, r17=var3452, java.io.File=var2109, $r2=var1212, $r3=var1895, $z0=var3322, $r4=var2013, $r5=var2666, $r6=var797, $r7=var2323, $r8=var1507}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void checkConfiguration()>();	r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo[] getEjbs()>();	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto i2 = lengthof r1;	i2 = lengthof r1;	i3 = 0;	if i3 >= i2 goto return;	r17 = r1[i3];	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory>;	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: void access$000(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo,java.io.File)>(r17, $r2);	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory>;	$z0 = virtualinvoke r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: boolean mustBeRecompiled(java.io.File)>($r3);	if $z0 == 0 goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke r17.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: java.lang.String getName()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is up to date.");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void log(java.lang.String)>($r8);	i3 = i3 + 1;	goto [?= (branch)];	if i3 >= i2 goto return;	return
;block_num 9