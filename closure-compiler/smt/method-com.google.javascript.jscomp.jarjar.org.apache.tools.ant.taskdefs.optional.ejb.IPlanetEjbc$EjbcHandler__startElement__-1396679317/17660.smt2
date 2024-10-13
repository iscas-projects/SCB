(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1544 0)
(declare-sort var3929 0)
(declare-sort var1839 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun currentLoc/-1370994396 (var1544) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun currentText/-1370994396 (var1544) String)
(declare-fun ejbType/-1370994396 (var1544) String)
(declare-const null-var1544 var1544)
(declare-const null-String String)
(declare-const null-var1839 var1839)
(declare-const var2923 var1544) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler 
(assert (not (= var2923 null-var1544)))
(declare-const var1116 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1116 null-String)))
(declare-const var3127 var1839) ; Statement: r13 := @parameter1: org.xml.sax.AttributeList 
(assert (not (= var3127 null-var1839)))
(define-const var3091 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3091)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3091!1 String)
(assert (= var3091!1 ""))
(define-const var2319 String (currentLoc/-1370994396 var2923)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> 
(assert true)
(define-const var1440 String (append/672562846 var3091!1 var2319)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3091!2 String)
(assert (= var3091!2 (str.++ var3091!1 var2319)))
(assert true)
(define-const var1508 String (append/672562846 var1440 "\u005c")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\") 
(declare-const var1440!1 String)
(assert (= var1440!1 (str.++ var1440 "\u005c")))
(assert true)
(define-const var2440 String (append/672562846 var1508 var1116)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1508!1 String)
(assert (= var1508!1 (str.++ var1508 var1116)))
(assert true)
(define-const var2604 String (toString/-2075883882 var2440)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2923!1 var1544)
(assert (not (= var2923!1 null-var1544)))
(assert (= (currentLoc/-1370994396 var2923!1) var2604)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> = $r7 
(declare-const var2923!2 var1544)
(assert (not (= var2923!2 null-var1544)))
(assert (= (currentText/-1370994396 var2923!2) "")) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText> = "" 
(define-const var57 String "\u005cejb-jar") ; Statement: $r9 = "\\ejb-jar" 
(define-const var3673 String (currentLoc/-1370994396 var2923!2)) ; Statement: $r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> 
(assert true)
(define-const var2710 Bool (= var57 var3673)) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r8) 
 ; Statement: if $z0 == 0 goto $r11 = "\\ias-ejb-jar" 
(assert (= (ite var2710 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2317 String "\u005cias-ejb-jar") ; Statement: $r11 = "\\ias-ejb-jar" 
(define-const var1310 String (currentLoc/-1370994396 var2923!2)) ; Statement: $r10 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> 
(assert true)
(define-const var2728 Bool (= var2317 var1310)) ; Statement: $z1 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10) 
 ; Statement: if $z1 == 0 goto $r14 = "session" 
(assert (= (ite var2728 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3483 String "session") ; Statement: $r14 = "session" 
(assert true)
(define-const var2173 Bool (= var3483 var1116)) ; Statement: $z3 = virtualinvoke $r14.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z3 != 0 goto r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String ejbType> = r4 
(assert (not (= (ite var2173 1 0) 0))) ; Cond: $z3 != 0 
(declare-const var2923!3 var1544)
(assert (not (= var2923!3 null-var1544)))
(assert (= (ejbType/-1370994396 var2923!3) var1116)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String ejbType> = r4 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), currentLoc/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), currentText/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.lang.String), ejbType/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.lang.String)}
; {var1544=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler, var2923=r1, var1116=r4, var3929=null_type, var1839=org.xml.sax.AttributeList, var3127=r13, var3091=$r0, var2319=$r2, var1440=$r3, var1508=$r5, var2440=$r6, var2604=$r7, var57=$r9, var3673=$r8, var2710=$z0, var2317=$r11, var1310=$r10, var2728=$z1, var3483=$r14, var2173=$z3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler=var1544, r1=var2923, r4=var1116, null_type=var3929, org.xml.sax.AttributeList=var1839, r13=var3127, $r0=var3091, $r2=var2319, $r3=var1440, $r5=var1508, $r6=var2440, $r7=var2604, $r9=var57, $r8=var3673, $z0=var2710, $r11=var2317, $r10=var1310, $z1=var2728, $r14=var3483, $z3=var2173}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 3}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler;	r4 := @parameter0: java.lang.String;	r13 := @parameter1: org.xml.sax.AttributeList;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> = $r7;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText> = "";	$r9 = "\\ejb-jar";	$r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc>;	$z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r8);	if $z0 == 0 goto $r11 = "\\ias-ejb-jar";	$r11 = "\\ias-ejb-jar";	$r10 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc>;	$z1 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>($r10);	if $z1 == 0 goto $r14 = "session";	$r14 = "session";	$z3 = virtualinvoke $r14.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z3 != 0 goto r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String ejbType> = r4;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String ejbType> = r4;	return
;block_num 5