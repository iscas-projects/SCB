(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1130 0)
(declare-sort var850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun specialToken/197050796 (var1130) var1130)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var850_printTokenOnly/129998305 (var1130) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1130 var1130)
(declare-const var318 var1130) ; Statement: r0 := @parameter0: org.javacc.parser.Token 
(assert (not (= var318 null-var1130)))
(define-const var2079 String "") ; Statement: r11 = "" 
(define-const var2123 var1130 (specialToken/197050796 var318)) ; Statement: r12 = r0.<org.javacc.parser.Token: org.javacc.parser.Token specialToken> 
 ; Statement: if r12 == null goto $r1 = new java.lang.StringBuilder 
(assert (= var2123 null-var1130)) ; Cond: r12 == null 
(define-const var439 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var439)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var439!1 String)
(assert (= var439!1 ""))
(assert true)
(define-const var1798 String (append/672562846 var439!1 var2079)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var439!2 String)
(assert (= var439!2 (str.++ var439!1 var2079)))
(define-const var341 String (var850_printTokenOnly/129998305 var318)) ; Statement: $r2 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String printTokenOnly(org.javacc.parser.Token)>(r0) 
(assert true)
(define-const var810 String (append/672562846 var1798 var341)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1798!1 String)
(assert (= var1798!1 (str.++ var1798 var341)))
(assert true)
(define-const var3363 String (toString/-2075883882 var810)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {specialToken/197050796=([org.javacc.parser.Token], org.javacc.parser.Token), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var850_printTokenOnly/129998305=([org.javacc.parser.Token], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1130=org.javacc.parser.Token, var318=r0, var2079=r11, var2123=r12, var439=$r1, var1798=$r3, var850=org.javacc.parser.JavaCCGlobals, var341=$r2, var810=$r4, var3363=$r6}
; {org.javacc.parser.Token=var1130, r0=var318, r11=var2079, r12=var2123, $r1=var439, $r3=var1798, org.javacc.parser.JavaCCGlobals=var850, $r2=var341, $r4=var810, $r6=var3363}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.javacc.parser.Token;	r11 = "";	r12 = r0.<org.javacc.parser.Token: org.javacc.parser.Token specialToken>;	if r12 == null goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r2 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String printTokenOnly(org.javacc.parser.Token)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2