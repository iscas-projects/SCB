(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3262 0)
(declare-sort var833 0)
(declare-sort var3403 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun currentLoc/-1370994396 (var3262) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun currentText/-1370994396 (var3262) String)
(declare-const null-var3262 var3262)
(declare-const null-String String)
(declare-const null-var3403 var3403)
(declare-const var2467 var3262) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler 
(assert (not (= var2467 null-var3262)))
(declare-const var1088 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1088 null-String)))
(declare-const var795 var3403) ; Statement: r13 := @parameter1: org.xml.sax.AttributeList 
(assert (not (= var795 null-var3403)))
(define-const var715 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var715)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var715!1 String)
(assert (= var715!1 ""))
(define-const var1572 String (currentLoc/-1370994396 var2467)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> 
(assert true)
(define-const var3993 String (append/672562846 var715!1 var1572)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var715!2 String)
(assert (= var715!2 (str.++ var715!1 var1572)))
(assert true)
(define-const var2304 String (append/672562846 var3993 "\u005c")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\") 
(declare-const var3993!1 String)
(assert (= var3993!1 (str.++ var3993 "\u005c")))
(assert true)
(define-const var3076 String (append/672562846 var2304 var1088)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2304!1 String)
(assert (= var2304!1 (str.++ var2304 var1088)))
(assert true)
(define-const var2330 String (toString/-2075883882 var3076)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2467!1 var3262)
(assert (not (= var2467!1 null-var3262)))
(assert (= (currentLoc/-1370994396 var2467!1) var2330)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> = $r7 
(declare-const var2467!2 var3262)
(assert (not (= var2467!2 null-var3262)))
(assert (= (currentText/-1370994396 var2467!2) "")) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText> = "" 
(define-const var2316 String "\u005cejb-jar") ; Statement: $r9 = "\\ejb-jar" 
(define-const var205 String (currentLoc/-1370994396 var2467!2)) ; Statement: $r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> 
(assert true)
(define-const var3673 Bool (= var2316 var205)) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r8) 
 ; Statement: if $z0 == 0 goto $r11 = "\\ias-ejb-jar" 
(assert (= (ite var3673 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1260 String "\u005cias-ejb-jar") ; Statement: $r11 = "\\ias-ejb-jar" 
(define-const var551 String (currentLoc/-1370994396 var2467!2)) ; Statement: $r10 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> 
(assert true)
(define-const var2067 Bool (= var1260 var551)) ; Statement: $z1 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10) 
 ; Statement: if $z1 == 0 goto $r14 = "session" 
(assert (= (ite var2067 1 0) 0)) ; Cond: $z1 == 0 
(define-const var829 String "session") ; Statement: $r14 = "session" 
(assert true)
(define-const var3735 Bool (= var829 var1088)) ; Statement: $z3 = virtualinvoke $r14.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z3 != 0 goto r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String ejbType> = r4 
(assert (not (not (= (ite var3735 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(define-const var995 String "entity") ; Statement: $r12 = "entity" 
(assert true)
(define-const var2946 Bool (= var995 var1088)) ; Statement: $z2 = virtualinvoke $r12.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z2 == 0 goto return 
(assert (= (ite var2946 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), currentLoc/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), currentText/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.lang.String)}
; {var3262=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler, var2467=r1, var1088=r4, var833=null_type, var3403=org.xml.sax.AttributeList, var795=r13, var715=$r0, var1572=$r2, var3993=$r3, var2304=$r5, var3076=$r6, var2330=$r7, var2316=$r9, var205=$r8, var3673=$z0, var1260=$r11, var551=$r10, var2067=$z1, var829=$r14, var3735=$z3, var995=$r12, var2946=$z2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler=var3262, r1=var2467, r4=var1088, null_type=var833, org.xml.sax.AttributeList=var3403, r13=var795, $r0=var715, $r2=var1572, $r3=var3993, $r5=var2304, $r6=var3076, $r7=var2330, $r9=var2316, $r8=var205, $z0=var3673, $r11=var1260, $r10=var551, $z1=var2067, $r14=var829, $z3=var3735, $r12=var995, $z2=var2946}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 4}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler;	r4 := @parameter0: java.lang.String;	r13 := @parameter1: org.xml.sax.AttributeList;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> = $r7;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText> = "";	$r9 = "\\ejb-jar";	$r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc>;	$z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r8);	if $z0 == 0 goto $r11 = "\\ias-ejb-jar";	$r11 = "\\ias-ejb-jar";	$r10 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc>;	$z1 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10);	if $z1 == 0 goto $r14 = "session";	$r14 = "session";	$z3 = virtualinvoke $r14.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z3 != 0 goto r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String ejbType> = r4;	$r12 = "entity";	$z2 = virtualinvoke $r12.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z2 == 0 goto return;	return
;block_num 5