(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var258 0)
(declare-sort var3122 0)
(declare-sort var3069 0)
(declare-sort var1637 0)
(declare-sort var3349 0)
(declare-sort var1597 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1637-init () var1637)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3349_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun locator/-384195938 (var258) var1597)
(declare-fun <init>/-1728423747 (var1637 String var1597 var3122) void)
(declare-const null-var258 var258)
(declare-const null-var3122 var3122)
(declare-const null-String String)
(declare-const var547 var258) ; Statement: r13 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding 
(assert (not (= var547 null-var258)))
(declare-const var2794 var3122) ; Statement: r2 := @parameter0: java.lang.Throwable 
(assert (not (= var2794 null-var3122)))
(declare-const var1167 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1167 null-String)))
(declare-const var1683 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var1683 null-String)))
(declare-const var2430 String) ; Statement: r8 := @parameter3: java.lang.String 
(assert (not (= var2430 null-String)))
(assert true)
(define-const var2344 Int (lastIndexOf/-1292097097 var1167 46)) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var3293 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i5 == $i7 goto $i9 = (int) -1 
(assert (= var2344 var3293)) ; Cond: i5 == $i7 
(define-const var2573 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i5 == $i9 goto $z2 = 0 
(assert (= var2344 var2573)) ; Cond: i5 == $i9 
(define-const var241 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var3981 Bool var241) ; Statement: z0 = $z2 
(define-const var194 var1637 var1637-init) ; Statement: $r26 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException 
(define-const var3572 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3572)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3572!1 String)
(assert (= var3572!1 ""))
(define-const var3482 Bool false) ; Statement: $z3 = r2 instanceof java.lang.ClassNotFoundException 
 ; Statement: if $z3 == 0 goto $r21 = "Can\'t load class " 
(assert (not (= (ite var3482 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var183 String "Not found class ") ; Statement: $r21 = "Not found class " 
 ; Statement: goto [?= $r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1752 String (append/672562846 var3572!1 var183)) ; Statement: $r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var3572!2 String)
(assert (= var3572!2 (str.++ var3572!1 var183)))
(define-const var3017 String (var3349_jQuote/1315253176 var1167)) ; Statement: $r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0) 
(assert true)
(define-const var3234 String (append/672562846 var1752 var3017)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1752!1 String)
(assert (= var1752!1 (str.++ var1752 var3017)))
(assert true)
(define-const var1357 String (append/672562846 var3234 " for ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ") 
(declare-const var3234!1 String)
(assert (= var3234!1 (str.++ var3234 " for ")))
(assert true)
(define-const var271 String (append/672562846 var1357 var1683)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1357!1 String)
(assert (= var1357!1 (str.++ var1357 var1683)))
 ; Statement: if r8 == null goto $r22 = "" 
(assert (= var2430 null-String)) ; Cond: r8 == null 
(define-const var3233 String "") ; Statement: $r22 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var3131 String (append/672562846 var271 var3233)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var271!1 String)
(assert (= var271!1 (str.++ var271 var3233)))
(assert true)
(define-const var3882 String (append/672562846 var3131 ".")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3131!1 String)
(assert (= var3131!1 (str.++ var3131 ".")))
 ; Statement: if z0 == 0 goto $r23 = "" 
(assert (not (= (ite var3981 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2236 String " Hint: Before nested classes, use \u0022$\u0022, not \u0022.\u0022.") ; Statement: $r23 = " Hint: Before nested classes, use \"$\", not \".\"." 
 ; Statement: goto [?= $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3032 String (append/672562846 var3882 var2236)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var3882!1 String)
(assert (= var3882!1 (str.++ var3882 var2236)))
(assert true)
(define-const var3836 String (toString/-2075883882 var3032)) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2864 var1597 (locator/-384195938 var547)) ; Statement: $r14 = r13.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator> 
(assert true)
;(assert (<init>/-1728423747 var194 var3836 var2864 var2794)) ; Statement: specialinvoke $r26.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator,java.lang.Throwable)>($r15, $r14, r2) 

(declare-const var194!1 var1637)
(declare-const var3836!1 String)
(declare-const var2864!1 var1597)
(declare-const var2794!1 var3122)
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var1637-init=([], freemarker.ext.jsp.TaglibFactory$TldParsingSAXException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3349_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), locator/-384195938=([freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding], org.xml.sax.Locator), <init>/-1728423747=([freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, java.lang.String, org.xml.sax.Locator, java.lang.Throwable], void)}
; {var258=freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding, var547=r13, var3122=java.lang.Throwable, var2794=r2, var1167=r0, var3069=null_type, var1683=r6, var2430=r8, var2344=i5, var3293=$i7, var2573=$i9, var241=$z2, var3981=z0, var1637=freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, var194=$r26, var3572=$r24, var3482=$z3, var183=$r21, var1752=$r4, var3349=freemarker.template.utility.StringUtil, var3017=$r3, var3234=$r5, var1357=$r7, var271=$r9, var3233=$r22, var3131=$r10, var3882=$r11, var2236=$r23, var3032=$r12, var3836=$r15, var1597=org.xml.sax.Locator, var2864=$r14}
; {freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding=var258, r13=var547, java.lang.Throwable=var3122, r2=var2794, r0=var1167, null_type=var3069, r6=var1683, r8=var2430, i5=var2344, $i7=var3293, $i9=var2573, $z2=var241, z0=var3981, freemarker.ext.jsp.TaglibFactory$TldParsingSAXException=var1637, $r26=var194, $r24=var3572, $z3=var3482, $r21=var183, $r4=var1752, freemarker.template.utility.StringUtil=var3349, $r3=var3017, $r5=var3234, $r7=var1357, $r9=var271, $r22=var3233, $r10=var3131, $r11=var3882, $r23=var2236, $r12=var3032, $r15=var3836, org.xml.sax.Locator=var1597, $r14=var2864}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding;	r2 := @parameter0: java.lang.Throwable;	r0 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	r8 := @parameter3: java.lang.String;	i5 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	$i7 = (int) -1;	if i5 == $i7 goto $i9 = (int) -1;	$i9 = (int) -1;	if i5 == $i9 goto $z2 = 0;	$z2 = 0;	z0 = $z2;	$r26 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$z3 = r2 instanceof java.lang.ClassNotFoundException;	if $z3 == 0 goto $r21 = "Can\'t load class ";	$r21 = "Not found class ";	goto [?= $r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)];	$r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ");	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	if r8 == null goto $r22 = "";	$r22 = "";	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	if z0 == 0 goto $r23 = "";	$r23 = " Hint: Before nested classes, use \"$\", not \".\".";	goto [?= $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23)];	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = r13.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator>;	specialinvoke $r26.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator,java.lang.Throwable)>($r15, $r14, r2);	return $r26
;block_num 10