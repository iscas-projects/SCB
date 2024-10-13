(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1767 0)
(declare-sort var3183 0)
(declare-sort var3349 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun currentLoc/-1370994396 (var1767) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun currentText/-1370994396 (var1767) String)
(declare-fun iasDescriptor/-1370994396 (var1767) Bool)
(declare-fun ejbType/-1370994396 (var1767) String)
(declare-const null-var1767 var1767)
(declare-const null-String String)
(declare-const null-var3349 var3349)
(declare-const var3836 var1767) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler 
(assert (not (= var3836 null-var1767)))
(declare-const var401 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var401 null-String)))
(declare-const var3166 var3349) ; Statement: r13 := @parameter1: org.xml.sax.AttributeList 
(assert (not (= var3166 null-var3349)))
(define-const var471 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var471)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var471!1 String)
(assert (= var471!1 ""))
(define-const var2533 String (currentLoc/-1370994396 var3836)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> 
(assert true)
(define-const var2495 String (append/672562846 var471!1 var2533)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var471!2 String)
(assert (= var471!2 (str.++ var471!1 var2533)))
(assert true)
(define-const var3470 String (append/672562846 var2495 "\u005c")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\") 
(declare-const var2495!1 String)
(assert (= var2495!1 (str.++ var2495 "\u005c")))
(assert true)
(define-const var2389 String (append/672562846 var3470 var401)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3470!1 String)
(assert (= var3470!1 (str.++ var3470 var401)))
(assert true)
(define-const var2386 String (toString/-2075883882 var2389)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var3836!1 var1767)
(assert (not (= var3836!1 null-var1767)))
(assert (= (currentLoc/-1370994396 var3836!1) var2386)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> = $r7 
(declare-const var3836!2 var1767)
(assert (not (= var3836!2 null-var1767)))
(assert (= (currentText/-1370994396 var3836!2) "")) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText> = "" 
(define-const var1529 String "\u005cejb-jar") ; Statement: $r9 = "\\ejb-jar" 
(define-const var3124 String (currentLoc/-1370994396 var3836!2)) ; Statement: $r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> 
(assert true)
(define-const var2141 Bool (= var1529 var3124)) ; Statement: $z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r8) 
 ; Statement: if $z0 == 0 goto $r11 = "\\ias-ejb-jar" 
(assert (not (= (ite var2141 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var3836!3 var1767)
(assert (not (= var3836!3 null-var1767)))
(assert (= (iasDescriptor/-1370994396 var3836!3) (ite (= 1 0) true false))) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: boolean iasDescriptor> = 0 
 ; Statement: goto [?= $r14 = "session"] 
(assert true) ; Non Conditional
(define-const var2900 String "session") ; Statement: $r14 = "session" 
(assert true)
(define-const var768 Bool (= var2900 var401)) ; Statement: $z3 = virtualinvoke $r14.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z3 != 0 goto r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String ejbType> = r4 
(assert (not (= (ite var768 1 0) 0))) ; Cond: $z3 != 0 
(declare-const var3836!4 var1767)
(assert (not (= var3836!4 null-var1767)))
(assert (= (ejbType/-1370994396 var3836!4) var401)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String ejbType> = r4 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), currentLoc/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), currentText/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.lang.String), iasDescriptor/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], boolean), ejbType/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.lang.String)}
; {var1767=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler, var3836=r1, var401=r4, var3183=null_type, var3349=org.xml.sax.AttributeList, var3166=r13, var471=$r0, var2533=$r2, var2495=$r3, var3470=$r5, var2389=$r6, var2386=$r7, var1529=$r9, var3124=$r8, var2141=$z0, var2900=$r14, var768=$z3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler=var1767, r1=var3836, r4=var401, null_type=var3183, org.xml.sax.AttributeList=var3349, r13=var3166, $r0=var471, $r2=var2533, $r3=var2495, $r5=var3470, $r6=var2389, $r7=var2386, $r9=var1529, $r8=var3124, $z0=var2141, $r14=var2900, $z3=var768}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler;	r4 := @parameter0: java.lang.String;	r13 := @parameter1: org.xml.sax.AttributeList;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> = $r7;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentText> = "";	$r9 = "\\ejb-jar";	$r8 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc>;	$z0 = virtualinvoke $r9.<java.lang.String: boolean equals(java.lang.Object)>($r8);	if $z0 == 0 goto $r11 = "\\ias-ejb-jar";	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: boolean iasDescriptor> = 0;	goto [?= $r14 = "session"];	$r14 = "session";	$z3 = virtualinvoke $r14.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z3 != 0 goto r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String ejbType> = r4;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String ejbType> = r4;	return
;block_num 5