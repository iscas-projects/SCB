(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3593 0)
(declare-sort var2445 0)
(declare-sort var3802 0)
(declare-sort var2353 0)
(declare-sort var1727 0)
(declare-sort var1967 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2353-init () var2353)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1727_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun locator/-384195938 (var3593) var1967)
(declare-fun <init>/-1728423747 (var2353 String var1967 var2445) void)
(declare-const null-var3593 var3593)
(declare-const null-var2445 var2445)
(declare-const null-String String)
(declare-const var2551 var3593) ; Statement: r13 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding 
(assert (not (= var2551 null-var3593)))
(declare-const var2229 var2445) ; Statement: r2 := @parameter0: java.lang.Throwable 
(assert (not (= var2229 null-var2445)))
(declare-const var3712 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3712 null-String)))
(declare-const var429 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var429 null-String)))
(declare-const var3025 String) ; Statement: r8 := @parameter3: java.lang.String 
(assert (not (= var3025 null-String)))
(assert true)
(define-const var3108 Int (lastIndexOf/-1292097097 var3712 46)) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var2066 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i5 == $i7 goto $i9 = (int) -1 
(assert (= var3108 var2066)) ; Cond: i5 == $i7 
(define-const var3964 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i5 == $i9 goto $z2 = 0 
(assert (= var3108 var3964)) ; Cond: i5 == $i9 
(define-const var2995 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var1169 Bool var2995) ; Statement: z0 = $z2 
(define-const var2364 var2353 var2353-init) ; Statement: $r26 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException 
(define-const var1478 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1478)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1478!1 String)
(assert (= var1478!1 ""))
(define-const var2049 Bool false) ; Statement: $z3 = r2 instanceof java.lang.ClassNotFoundException 
 ; Statement: if $z3 == 0 goto $r21 = "Can\'t load class " 
(assert (= (ite var2049 1 0) 0)) ; Cond: $z3 == 0 
(define-const var233 String "Can\u0027t load class ") ; Statement: $r21 = "Can\'t load class " 
(assert true) ; Non Conditional
(assert true)
(define-const var911 String (append/672562846 var1478!1 var233)) ; Statement: $r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1478!2 String)
(assert (= var1478!2 (str.++ var1478!1 var233)))
(define-const var2502 String (var1727_jQuote/1315253176 var3712)) ; Statement: $r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0) 
(assert true)
(define-const var244 String (append/672562846 var911 var2502)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var911!1 String)
(assert (= var911!1 (str.++ var911 var2502)))
(assert true)
(define-const var3752 String (append/672562846 var244 " for ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ") 
(declare-const var244!1 String)
(assert (= var244!1 (str.++ var244 " for ")))
(assert true)
(define-const var1654 String (append/672562846 var3752 var429)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var3752!1 String)
(assert (= var3752!1 (str.++ var3752 var429)))
 ; Statement: if r8 == null goto $r22 = "" 
(assert (not (= var3025 null-String))) ; Negate: Cond: r8 == null  
(define-const var2540 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2540)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2540!1 String)
(assert (= var2540!1 ""))
(assert true)
(define-const var1888 String (append/672562846 var2540!1 " ")) ; Statement: $r18 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2540!2 String)
(assert (= var2540!2 (str.++ var2540!1 " ")))
(define-const var3845 String (var1727_jQuote/1315253176 var3025)) ; Statement: $r17 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r8) 
(assert true)
(define-const var3450 String (append/672562846 var1888 var3845)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1888!1 String)
(assert (= var1888!1 (str.++ var1888 var3845)))
(assert true)
(define-const var34 String (toString/-2075883882 var3450)) ; Statement: $r22 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2493 String (append/672562846 var1654 var34)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var1654!1 String)
(assert (= var1654!1 (str.++ var1654 var34)))
(assert true)
(define-const var2528 String (append/672562846 var2493 ".")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2493!1 String)
(assert (= var2493!1 (str.++ var2493 ".")))
 ; Statement: if z0 == 0 goto $r23 = "" 
(assert (not (= (ite var1169 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3481 String " Hint: Before nested classes, use \u0022$\u0022, not \u0022.\u0022.") ; Statement: $r23 = " Hint: Before nested classes, use \"$\", not \".\"." 
 ; Statement: goto [?= $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3782 String (append/672562846 var2528 var3481)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2528!1 String)
(assert (= var2528!1 (str.++ var2528 var3481)))
(assert true)
(define-const var221 String (toString/-2075883882 var3782)) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1122 var1967 (locator/-384195938 var2551)) ; Statement: $r14 = r13.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator> 
(assert true)
;(assert (<init>/-1728423747 var2364 var221 var1122 var2229)) ; Statement: specialinvoke $r26.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator,java.lang.Throwable)>($r15, $r14, r2) 

(declare-const var2364!1 var2353)
(declare-const var221!1 String)
(declare-const var1122!1 var1967)
(declare-const var2229!1 var2445)
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var2353-init=([], freemarker.ext.jsp.TaglibFactory$TldParsingSAXException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1727_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), locator/-384195938=([freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding], org.xml.sax.Locator), <init>/-1728423747=([freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, java.lang.String, org.xml.sax.Locator, java.lang.Throwable], void)}
; {var3593=freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding, var2551=r13, var2445=java.lang.Throwable, var2229=r2, var3712=r0, var3802=null_type, var429=r6, var3025=r8, var3108=i5, var2066=$i7, var3964=$i9, var2995=$z2, var1169=z0, var2353=freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, var2364=$r26, var1478=$r24, var2049=$z3, var233=$r21, var911=$r4, var1727=freemarker.template.utility.StringUtil, var2502=$r3, var244=$r5, var3752=$r7, var1654=$r9, var2540=$r25, var1888=$r18, var3845=$r17, var3450=$r19, var34=$r22, var2493=$r10, var2528=$r11, var3481=$r23, var3782=$r12, var221=$r15, var1967=org.xml.sax.Locator, var1122=$r14}
; {freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding=var3593, r13=var2551, java.lang.Throwable=var2445, r2=var2229, r0=var3712, null_type=var3802, r6=var429, r8=var3025, i5=var3108, $i7=var2066, $i9=var3964, $z2=var2995, z0=var1169, freemarker.ext.jsp.TaglibFactory$TldParsingSAXException=var2353, $r26=var2364, $r24=var1478, $z3=var2049, $r21=var233, $r4=var911, freemarker.template.utility.StringUtil=var1727, $r3=var2502, $r5=var244, $r7=var3752, $r9=var1654, $r25=var2540, $r18=var1888, $r17=var3845, $r19=var3450, $r22=var34, $r10=var2493, $r11=var2528, $r23=var3481, $r12=var3782, $r15=var221, org.xml.sax.Locator=var1967, $r14=var1122}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r13 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding;	r2 := @parameter0: java.lang.Throwable;	r0 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	r8 := @parameter3: java.lang.String;	i5 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	$i7 = (int) -1;	if i5 == $i7 goto $i9 = (int) -1;	$i9 = (int) -1;	if i5 == $i9 goto $z2 = 0;	$z2 = 0;	z0 = $z2;	$r26 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$z3 = r2 instanceof java.lang.ClassNotFoundException;	if $z3 == 0 goto $r21 = "Can\'t load class ";	$r21 = "Can\'t load class ";	$r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ");	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	if r8 == null goto $r22 = "";	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r17 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r8);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r22 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)];	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	if z0 == 0 goto $r23 = "";	$r23 = " Hint: Before nested classes, use \"$\", not \".\".";	goto [?= $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23)];	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = r13.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator>;	specialinvoke $r26.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator,java.lang.Throwable)>($r15, $r14, r2);	return $r26
;block_num 10