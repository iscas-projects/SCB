(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2747 0)
(declare-sort var1441 0)
(declare-sort var3427 0)
(declare-sort var3005 0)
(declare-sort var2254 0)
(declare-sort var1395 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3005-init () var3005)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2254_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun locator/-384195938 (var2747) var1395)
(declare-fun <init>/-1728423747 (var3005 String var1395 var1441) void)
(declare-const null-var2747 var2747)
(declare-const null-var1441 var1441)
(declare-const null-String String)
(declare-const var2010 var2747) ; Statement: r13 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding 
(assert (not (= var2010 null-var2747)))
(declare-const var1456 var1441) ; Statement: r2 := @parameter0: java.lang.Throwable 
(assert (not (= var1456 null-var1441)))
(declare-const var2502 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2502 null-String)))
(declare-const var865 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var865 null-String)))
(declare-const var3397 String) ; Statement: r8 := @parameter3: java.lang.String 
(assert (not (= var3397 null-String)))
(assert true)
(define-const var876 Int (lastIndexOf/-1292097097 var2502 46)) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var2901 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i5 == $i7 goto $i9 = (int) -1 
(assert (= var876 var2901)) ; Cond: i5 == $i7 
(define-const var1855 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i5 == $i9 goto $z2 = 0 
(assert (= var876 var1855)) ; Cond: i5 == $i9 
(define-const var3628 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var1620 Bool var3628) ; Statement: z0 = $z2 
(define-const var2172 var3005 var3005-init) ; Statement: $r26 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException 
(define-const var1924 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1924)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1924!1 String)
(assert (= var1924!1 ""))
(define-const var2293 Bool false) ; Statement: $z3 = r2 instanceof java.lang.ClassNotFoundException 
 ; Statement: if $z3 == 0 goto $r21 = "Can\'t load class " 
(assert (= (ite var2293 1 0) 0)) ; Cond: $z3 == 0 
(define-const var1989 String "Can\u0027t load class ") ; Statement: $r21 = "Can\'t load class " 
(assert true) ; Non Conditional
(assert true)
(define-const var1582 String (append/672562846 var1924!1 var1989)) ; Statement: $r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1924!2 String)
(assert (= var1924!2 (str.++ var1924!1 var1989)))
(define-const var692 String (var2254_jQuote/1315253176 var2502)) ; Statement: $r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0) 
(assert true)
(define-const var2533 String (append/672562846 var1582 var692)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1582!1 String)
(assert (= var1582!1 (str.++ var1582 var692)))
(assert true)
(define-const var3917 String (append/672562846 var2533 " for ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ") 
(declare-const var2533!1 String)
(assert (= var2533!1 (str.++ var2533 " for ")))
(assert true)
(define-const var1363 String (append/672562846 var3917 var865)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var3917!1 String)
(assert (= var3917!1 (str.++ var3917 var865)))
 ; Statement: if r8 == null goto $r22 = "" 
(assert (= var3397 null-String)) ; Cond: r8 == null 
(define-const var3822 String "") ; Statement: $r22 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var96 String (append/672562846 var1363 var3822)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var1363!1 String)
(assert (= var1363!1 (str.++ var1363 var3822)))
(assert true)
(define-const var2400 String (append/672562846 var96 ".")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var96!1 String)
(assert (= var96!1 (str.++ var96 ".")))
 ; Statement: if z0 == 0 goto $r23 = "" 
(assert (= (ite var1620 1 0) 0)) ; Cond: z0 == 0 
(define-const var1743 String "") ; Statement: $r23 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2784 String (append/672562846 var2400 var1743)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2400!1 String)
(assert (= var2400!1 (str.++ var2400 var1743)))
(assert true)
(define-const var949 String (toString/-2075883882 var2784)) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2726 var1395 (locator/-384195938 var2010)) ; Statement: $r14 = r13.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator> 
(assert true)
;(assert (<init>/-1728423747 var2172 var949 var2726 var1456)) ; Statement: specialinvoke $r26.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator,java.lang.Throwable)>($r15, $r14, r2) 

(declare-const var2172!1 var3005)
(declare-const var949!1 String)
(declare-const var2726!1 var1395)
(declare-const var1456!1 var1441)
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var3005-init=([], freemarker.ext.jsp.TaglibFactory$TldParsingSAXException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2254_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), locator/-384195938=([freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding], org.xml.sax.Locator), <init>/-1728423747=([freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, java.lang.String, org.xml.sax.Locator, java.lang.Throwable], void)}
; {var2747=freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding, var2010=r13, var1441=java.lang.Throwable, var1456=r2, var2502=r0, var3427=null_type, var865=r6, var3397=r8, var876=i5, var2901=$i7, var1855=$i9, var3628=$z2, var1620=z0, var3005=freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, var2172=$r26, var1924=$r24, var2293=$z3, var1989=$r21, var1582=$r4, var2254=freemarker.template.utility.StringUtil, var692=$r3, var2533=$r5, var3917=$r7, var1363=$r9, var3822=$r22, var96=$r10, var2400=$r11, var1743=$r23, var2784=$r12, var949=$r15, var1395=org.xml.sax.Locator, var2726=$r14}
; {freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding=var2747, r13=var2010, java.lang.Throwable=var1441, r2=var1456, r0=var2502, null_type=var3427, r6=var865, r8=var3397, i5=var876, $i7=var2901, $i9=var1855, $z2=var3628, z0=var1620, freemarker.ext.jsp.TaglibFactory$TldParsingSAXException=var3005, $r26=var2172, $r24=var1924, $z3=var2293, $r21=var1989, $r4=var1582, freemarker.template.utility.StringUtil=var2254, $r3=var692, $r5=var2533, $r7=var3917, $r9=var1363, $r22=var3822, $r10=var96, $r11=var2400, $r23=var1743, $r12=var2784, $r15=var949, org.xml.sax.Locator=var1395, $r14=var2726}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding;	r2 := @parameter0: java.lang.Throwable;	r0 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	r8 := @parameter3: java.lang.String;	i5 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	$i7 = (int) -1;	if i5 == $i7 goto $i9 = (int) -1;	$i9 = (int) -1;	if i5 == $i9 goto $z2 = 0;	$z2 = 0;	z0 = $z2;	$r26 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$z3 = r2 instanceof java.lang.ClassNotFoundException;	if $z3 == 0 goto $r21 = "Can\'t load class ";	$r21 = "Can\'t load class ";	$r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ");	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	if r8 == null goto $r22 = "";	$r22 = "";	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	if z0 == 0 goto $r23 = "";	$r23 = "";	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = r13.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator>;	specialinvoke $r26.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator,java.lang.Throwable)>($r15, $r14, r2);	return $r26
;block_num 10