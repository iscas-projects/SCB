(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3657 0)
(declare-sort var1015 0)
(declare-sort var2546 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun currentLoc/-1370994396 (var3657) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun currentText/-1370994396 (var3657) String)
(declare-fun iasDescriptor/-1370994396 (var3657) Bool)
(declare-const null-var3657 var3657)
(declare-const null-String String)
(declare-const null-var2546 var2546)
(declare-const var1618 var3657) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler 
(assert (not (= var1618 null-var3657)))
(declare-const var3900 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3900 null-String)))
(declare-const var2534 var2546) ; Statement: r13 := @parameter1: org.xml.sax.AttributeList 
(assert (not (= var2534 null-var2546)))
(define-const var2920 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2920)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2920!1 String)
(assert (= var2920!1 ""))
(define-const var1625 String (currentLoc/-1370994396 var1618)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> 
(assert true)
(define-const var726 String (append/672562846 var2920!1 var1625)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2920!2 String)
(assert (= var2920!2 (str.++ var2920!1 var1625)))
(assert true)
(define-const var1168 String (append/672562846 var726 "\u005c")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\") 
(declare-const var726!1 String)
(assert (= var726!1 (str.++ var726 "\u005c")))
(assert true)
(define-const var2381 String (append/672562846 var1168 var3900)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1168!1 String)
(assert (= var1168!1 (str.++ var1168 var3900)))
(assert true)
(define-const var3385 String (toString/-2075883882 var2381)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1618!1 var3657)
(assert (not (= var1618!1 null-var3657)))
(assert (= (currentLoc/-1370994396 var1618!1) var3385)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> = $r7 
(declare-const var1618!2 var3657)
(assert (not (= var1618!2 null-var3657)))
(assert (= (currentText/-1370994396 var1618!2) "")) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText> = "" 
(define-const var2466 String "\u005cejb-jar") ; Statement: $r9 = "\\ejb-jar" 
(define-const var938 String (currentLoc/-1370994396 var1618!2)) ; Statement: $r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> 
(assert true)
(define-const var1990 Bool (= var2466 var938)) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r8) 
 ; Statement: if $z0 == 0 goto $r11 = "\\ias-ejb-jar" 
(assert (not (= (ite var1990 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var1618!3 var3657)
(assert (not (= var1618!3 null-var3657)))
(assert (= (iasDescriptor/-1370994396 var1618!3) (ite (= 1 0) true false))) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: boolean iasDescriptor> = 0 
 ; Statement: goto [?= $r14 = "session"] 
(assert true) ; Non Conditional
(define-const var3982 String "session") ; Statement: $r14 = "session" 
(assert true)
(define-const var1785 Bool (= var3982 var3900)) ; Statement: $z3 = virtualinvoke $r14.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z3 != 0 goto r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String ejbType> = r4 
(assert (not (not (= (ite var1785 1 0) 0)))) ; Negate: Cond: $z3 != 0  
(define-const var1033 String "entity") ; Statement: $r12 = "entity" 
(assert true)
(define-const var2655 Bool (= var1033 var3900)) ; Statement: $z2 = virtualinvoke $r12.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z2 == 0 goto return 
(assert (= (ite var2655 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), currentLoc/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), currentText/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.lang.String), iasDescriptor/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], boolean)}
; {var3657=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler, var1618=r1, var3900=r4, var1015=null_type, var2546=org.xml.sax.AttributeList, var2534=r13, var2920=$r0, var1625=$r2, var726=$r3, var1168=$r5, var2381=$r6, var3385=$r7, var2466=$r9, var938=$r8, var1990=$z0, var3982=$r14, var1785=$z3, var1033=$r12, var2655=$z2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler=var3657, r1=var1618, r4=var3900, null_type=var1015, org.xml.sax.AttributeList=var2546, r13=var2534, $r0=var2920, $r2=var1625, $r3=var726, $r5=var1168, $r6=var2381, $r7=var3385, $r9=var2466, $r8=var938, $z0=var1990, $r14=var3982, $z3=var1785, $r12=var1033, $z2=var2655}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 3}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler;	r4 := @parameter0: java.lang.String;	r13 := @parameter1: org.xml.sax.AttributeList;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> = $r7;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText> = "";	$r9 = "\\ejb-jar";	$r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc>;	$z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r8);	if $z0 == 0 goto $r11 = "\\ias-ejb-jar";	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: boolean iasDescriptor> = 0;	goto [?= $r14 = "session"];	$r14 = "session";	$z3 = virtualinvoke $r14.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z3 != 0 goto r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String ejbType> = r4;	$r12 = "entity";	$z2 = virtualinvoke $r12.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z2 == 0 goto return;	return
;block_num 5