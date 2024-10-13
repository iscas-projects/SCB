(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3101 0)
(declare-sort var2828 0)
(declare-sort var3444 0)
(declare-sort var3973 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2828-init () var2828)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun helperImpl/2111030186 (var3101) var3444)
(declare-fun var3444_access$100/-2046293021 (var3444) var3973)
(declare-fun <init>/723551348 (var2828 String var3973) void)
(declare-const null-var3101 var3101)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2239 var3101) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler 
(assert (not (= var2239 null-var3101)))
(declare-const var1859 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var1859 null-__Array__Int__Int__)))
(declare-const var2348 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2348 null-Int)))
(declare-const var2290 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2290 null-Int)))
(define-const var607 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var607 var1859 var2348 var2290)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>(r1, i0, i1) 

(declare-const var607!1 String)
(declare-const var1859!1 (Array Int Int))
(declare-const var2348!1 Int)
(declare-const var2290!1 Int)
(assert true)
(define-const var1853 String (trim/-847153721 var607!1)) ; Statement: r2 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var251 Bool (isEmpty/-1285796103 var1853)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var251 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1292 var2828 var2828-init) ; Statement: $r3 = new org.xml.sax.SAXParseException 
(define-const var2354 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2354)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2354!1 String)
(assert (= var2354!1 ""))
(assert true)
(define-const var755 String (append/672562846 var2354!1 "Unexpected text \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected text \"") 
(declare-const var2354!2 String)
(assert (= var2354!2 (str.++ var2354!1 "Unexpected text \u0022")))
(assert true)
(define-const var2121 String (append/672562846 var755 var1853)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var755!1 String)
(assert (= var755!1 (str.++ var755 var1853)))
(assert true)
(define-const var2220 String (append/672562846 var2121 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var2121!1 String)
(assert (= var2121!1 (str.++ var2121 "\u0022")))
(assert true)
(define-const var3051 String (toString/-2075883882 var2220)) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3227 var3444 (helperImpl/2111030186 var2239)) ; Statement: $r9 = r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl> 
(define-const var3807 var3973 (var3444_access$100/-2046293021 var3227)) ; Statement: $r10 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: org.xml.sax.Locator access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl)>($r9) 
(assert true)
;(assert (<init>/723551348 var1292 var3051 var3807)) ; Statement: specialinvoke $r3.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>($r11, $r10) 

(declare-const var1292!1 var2828)
(declare-const var3051!1 String)
(declare-const var3807!1 var3973)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var2828-init=([], org.xml.sax.SAXParseException), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), helperImpl/2111030186=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl), var3444_access$100/-2046293021=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl], org.xml.sax.Locator), <init>/723551348=([org.xml.sax.SAXParseException, java.lang.String, org.xml.sax.Locator], void)}
; {var3101=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler, var2239=r8, var1859=r1, var2348=i0, var2290=i1, var607=$r0, var1853=r2, var251=$z0, var2828=org.xml.sax.SAXParseException, var1292=$r3, var2354=$r4, var755=$r5, var2121=$r6, var2220=$r7, var3051=$r11, var3444=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl, var3227=$r9, var3973=org.xml.sax.Locator, var3807=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler=var3101, r8=var2239, r1=var1859, i0=var2348, i1=var2290, $r0=var607, r2=var1853, $z0=var251, org.xml.sax.SAXParseException=var2828, $r3=var1292, $r4=var2354, $r5=var755, $r6=var2121, $r7=var2220, $r11=var3051, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl=var3444, $r9=var3227, org.xml.sax.Locator=var3973, $r10=var3807}
;seq <java.lang.String: void <init>(char[],int,int)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler;	r1 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r0 = new java.lang.String;	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>(r1, i0, i1);	r2 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto return;	$r3 = new org.xml.sax.SAXParseException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected text \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl>;	$r10 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: org.xml.sax.Locator access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl)>($r9);	specialinvoke $r3.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>($r11, $r10);	throw $r3
;block_num 2