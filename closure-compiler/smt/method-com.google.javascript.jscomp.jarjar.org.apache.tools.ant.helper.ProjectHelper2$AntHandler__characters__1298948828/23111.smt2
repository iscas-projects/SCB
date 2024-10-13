(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1301 0)
(declare-sort var1378 0)
(declare-sort var2167 0)
(declare-sort var2852 0)
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
(declare-fun var2167-init () var2167)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocator/1367348006 (var1378) var2852)
(declare-fun <init>/723551348 (var2167 String var2852) void)
(declare-const null-var1301 var1301)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-var1378 var1378)
(declare-const var3778 var1301) ; Statement: r11 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler 
(assert (not (= var3778 null-var1301)))
(declare-const var606 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var606 null-__Array__Int__Int__)))
(declare-const var1117 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1117 null-Int)))
(declare-const var242 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var242 null-Int)))
(declare-const var2344 var1378) ; Statement: r8 := @parameter3: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext 
(assert (not (= var2344 null-var1378)))
(define-const var3981 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var3981 var606 var1117 var242)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>(r1, i0, i1) 

(declare-const var3981!1 String)
(declare-const var606!1 (Array Int Int))
(declare-const var1117!1 Int)
(declare-const var242!1 Int)
(assert true)
(define-const var37 String (trim/-847153721 var3981!1)) ; Statement: r2 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3567 Bool (isEmpty/-1285796103 var37)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var3567 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2736 var2167 var2167-init) ; Statement: $r3 = new org.xml.sax.SAXParseException 
(define-const var2902 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2902)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2902!1 String)
(assert (= var2902!1 ""))
(assert true)
(define-const var371 String (append/672562846 var2902!1 "Unexpected text \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected text \"") 
(declare-const var2902!2 String)
(assert (= var2902!2 (str.++ var2902!1 "Unexpected text \u0022")))
(assert true)
(define-const var1708 String (append/672562846 var371 var37)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var371!1 String)
(assert (= var371!1 (str.++ var371 var37)))
(assert true)
(define-const var909 String (append/672562846 var1708 "\u0022")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var1708!1 String)
(assert (= var1708!1 (str.++ var1708 "\u0022")))
(assert true)
(define-const var3048 String (toString/-2075883882 var909)) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2261 var2852 (getLocator/1367348006 var2344)) ; Statement: $r9 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>() 
(assert true)
;(assert (<init>/723551348 var2736 var3048 var2261)) ; Statement: specialinvoke $r3.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>($r10, $r9) 

(declare-const var2736!1 var2167)
(declare-const var3048!1 String)
(declare-const var2261!1 var2852)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), trim/-847153721=([java.lang.String], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var2167-init=([], org.xml.sax.SAXParseException), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocator/1367348006=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext], org.xml.sax.Locator), <init>/723551348=([org.xml.sax.SAXParseException, java.lang.String, org.xml.sax.Locator], void)}
; {var1301=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler, var3778=r11, var606=r1, var1117=i0, var242=i1, var1378=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext, var2344=r8, var3981=$r0, var37=r2, var3567=$z0, var2167=org.xml.sax.SAXParseException, var2736=$r3, var2902=$r4, var371=$r5, var1708=$r6, var909=$r7, var3048=$r10, var2852=org.xml.sax.Locator, var2261=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler=var1301, r11=var3778, r1=var606, i0=var1117, i1=var242, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext=var1378, r8=var2344, $r0=var3981, r2=var37, $z0=var3567, org.xml.sax.SAXParseException=var2167, $r3=var2736, $r4=var2902, $r5=var371, $r6=var1708, $r7=var909, $r10=var3048, org.xml.sax.Locator=var2852, $r9=var2261}
;seq <java.lang.String: void <init>(char[],int,int)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler;	r1 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	r8 := @parameter3: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext;	$r0 = new java.lang.String;	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>(r1, i0, i1);	r2 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto return;	$r3 = new org.xml.sax.SAXParseException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected text \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext: org.xml.sax.Locator getLocator()>();	specialinvoke $r3.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>($r10, $r9);	throw $r3
;block_num 2