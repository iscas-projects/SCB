(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2744 0)
(declare-sort var3707 0)
(declare-sort var3477 0)
(declare-sort var782 0)
(declare-sort var1935 0)
(declare-sort var466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var782-init () var782)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1935_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun locator/-384195938 (var2744) var466)
(declare-fun <init>/-1728423747 (var782 String var466 var3707) void)
(declare-const null-var2744 var2744)
(declare-const null-var3707 var3707)
(declare-const null-String String)
(declare-const var2924 var2744) ; Statement: r13 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding 
(assert (not (= var2924 null-var2744)))
(declare-const var3008 var3707) ; Statement: r2 := @parameter0: java.lang.Throwable 
(assert (not (= var3008 null-var3707)))
(declare-const var2876 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2876 null-String)))
(declare-const var2860 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var2860 null-String)))
(declare-const var3025 String) ; Statement: r8 := @parameter3: java.lang.String 
(assert (not (= var3025 null-String)))
(assert true)
(define-const var386 Int (lastIndexOf/-1292097097 var2876 46)) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var3578 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i5 == $i7 goto $i9 = (int) -1 
(assert (= var386 var3578)) ; Cond: i5 == $i7 
(define-const var1289 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i5 == $i9 goto $z2 = 0 
(assert (= var386 var1289)) ; Cond: i5 == $i9 
(define-const var3829 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var3209 Bool var3829) ; Statement: z0 = $z2 
(define-const var455 var782 var782-init) ; Statement: $r26 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException 
(define-const var2755 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2755)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2755!1 String)
(assert (= var2755!1 ""))
(define-const var340 Bool false) ; Statement: $z3 = r2 instanceof java.lang.ClassNotFoundException 
 ; Statement: if $z3 == 0 goto $r21 = "Can\'t load class " 
(assert (= (ite var340 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2377 String "Can\u0027t load class ") ; Statement: $r21 = "Can\'t load class " 
(assert true) ; Non Conditional
(assert true)
(define-const var1348 String (append/672562846 var2755!1 var2377)) ; Statement: $r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2755!2 String)
(assert (= var2755!2 (str.++ var2755!1 var2377)))
(define-const var1687 String (var1935_jQuote/1315253176 var2876)) ; Statement: $r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0) 
(assert true)
(define-const var2610 String (append/672562846 var1348 var1687)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1348!1 String)
(assert (= var1348!1 (str.++ var1348 var1687)))
(assert true)
(define-const var873 String (append/672562846 var2610 " for ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ") 
(declare-const var2610!1 String)
(assert (= var2610!1 (str.++ var2610 " for ")))
(assert true)
(define-const var2395 String (append/672562846 var873 var2860)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var873!1 String)
(assert (= var873!1 (str.++ var873 var2860)))
 ; Statement: if r8 == null goto $r22 = "" 
(assert (= var3025 null-String)) ; Cond: r8 == null 
(define-const var1895 String "") ; Statement: $r22 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var733 String (append/672562846 var2395 var1895)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2395!1 String)
(assert (= var2395!1 (str.++ var2395 var1895)))
(assert true)
(define-const var2238 String (append/672562846 var733 ".")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var733!1 String)
(assert (= var733!1 (str.++ var733 ".")))
 ; Statement: if z0 == 0 goto $r23 = "" 
(assert (not (= (ite var3209 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2929 String " Hint: Before nested classes, use \u0022$\u0022, not \u0022.\u0022.") ; Statement: $r23 = " Hint: Before nested classes, use \"$\", not \".\"." 
 ; Statement: goto [?= $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3759 String (append/672562846 var2238 var2929)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2238!1 String)
(assert (= var2238!1 (str.++ var2238 var2929)))
(assert true)
(define-const var2706 String (toString/-2075883882 var3759)) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2683 var466 (locator/-384195938 var2924)) ; Statement: $r14 = r13.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator> 
(assert true)
;(assert (<init>/-1728423747 var455 var2706 var2683 var3008)) ; Statement: specialinvoke $r26.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator,java.lang.Throwable)>($r15, $r14, r2) 

(declare-const var455!1 var782)
(declare-const var2706!1 String)
(declare-const var2683!1 var466)
(declare-const var3008!1 var3707)
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var782-init=([], freemarker.ext.jsp.TaglibFactory$TldParsingSAXException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1935_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), locator/-384195938=([freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding], org.xml.sax.Locator), <init>/-1728423747=([freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, java.lang.String, org.xml.sax.Locator, java.lang.Throwable], void)}
; {var2744=freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding, var2924=r13, var3707=java.lang.Throwable, var3008=r2, var2876=r0, var3477=null_type, var2860=r6, var3025=r8, var386=i5, var3578=$i7, var1289=$i9, var3829=$z2, var3209=z0, var782=freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, var455=$r26, var2755=$r24, var340=$z3, var2377=$r21, var1348=$r4, var1935=freemarker.template.utility.StringUtil, var1687=$r3, var2610=$r5, var873=$r7, var2395=$r9, var1895=$r22, var733=$r10, var2238=$r11, var2929=$r23, var3759=$r12, var2706=$r15, var466=org.xml.sax.Locator, var2683=$r14}
; {freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding=var2744, r13=var2924, java.lang.Throwable=var3707, r2=var3008, r0=var2876, null_type=var3477, r6=var2860, r8=var3025, i5=var386, $i7=var3578, $i9=var1289, $z2=var3829, z0=var3209, freemarker.ext.jsp.TaglibFactory$TldParsingSAXException=var782, $r26=var455, $r24=var2755, $z3=var340, $r21=var2377, $r4=var1348, freemarker.template.utility.StringUtil=var1935, $r3=var1687, $r5=var2610, $r7=var873, $r9=var2395, $r22=var1895, $r10=var733, $r11=var2238, $r23=var2929, $r12=var3759, $r15=var2706, org.xml.sax.Locator=var466, $r14=var2683}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding;	r2 := @parameter0: java.lang.Throwable;	r0 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	r8 := @parameter3: java.lang.String;	i5 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	$i7 = (int) -1;	if i5 == $i7 goto $i9 = (int) -1;	$i9 = (int) -1;	if i5 == $i9 goto $z2 = 0;	$z2 = 0;	z0 = $z2;	$r26 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$z3 = r2 instanceof java.lang.ClassNotFoundException;	if $z3 == 0 goto $r21 = "Can\'t load class ";	$r21 = "Can\'t load class ";	$r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ");	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	if r8 == null goto $r22 = "";	$r22 = "";	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	if z0 == 0 goto $r23 = "";	$r23 = " Hint: Before nested classes, use \"$\", not \".\".";	goto [?= $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23)];	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = r13.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator>;	specialinvoke $r26.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator,java.lang.Throwable)>($r15, $r14, r2);	return $r26
;block_num 10