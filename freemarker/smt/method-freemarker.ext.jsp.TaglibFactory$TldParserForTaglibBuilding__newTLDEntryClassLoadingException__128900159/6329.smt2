(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2809 0)
(declare-sort var3436 0)
(declare-sort var1932 0)
(declare-sort var3116 0)
(declare-sort var2397 0)
(declare-sort var3100 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3116-init () var3116)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2397_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun locator/-384195938 (var2809) var3100)
(declare-fun <init>/-1728423747 (var3116 String var3100 var3436) void)
(declare-const null-var2809 var2809)
(declare-const null-var3436 var3436)
(declare-const null-String String)
(declare-const var2632 var2809) ; Statement: r13 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding 
(assert (not (= var2632 null-var2809)))
(declare-const var2260 var3436) ; Statement: r2 := @parameter0: java.lang.Throwable 
(assert (not (= var2260 null-var3436)))
(declare-const var3361 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3361 null-String)))
(declare-const var1276 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var1276 null-String)))
(declare-const var761 String) ; Statement: r8 := @parameter3: java.lang.String 
(assert (not (= var761 null-String)))
(assert true)
(define-const var1095 Int (lastIndexOf/-1292097097 var3361 46)) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var2702 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i5 == $i7 goto $i9 = (int) -1 
(assert (= var1095 var2702)) ; Cond: i5 == $i7 
(define-const var1387 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i5 == $i9 goto $z2 = 0 
(assert (= var1095 var1387)) ; Cond: i5 == $i9 
(define-const var3864 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var3565 Bool var3864) ; Statement: z0 = $z2 
(define-const var1367 var3116 var3116-init) ; Statement: $r26 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException 
(define-const var2788 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2788)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2788!1 String)
(assert (= var2788!1 ""))
(define-const var3260 Bool false) ; Statement: $z3 = r2 instanceof java.lang.ClassNotFoundException 
 ; Statement: if $z3 == 0 goto $r21 = "Can\'t load class " 
(assert (not (= (ite var3260 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var2837 String "Not found class ") ; Statement: $r21 = "Not found class " 
 ; Statement: goto [?= $r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3219 String (append/672562846 var2788!1 var2837)) ; Statement: $r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2788!2 String)
(assert (= var2788!2 (str.++ var2788!1 var2837)))
(define-const var3288 String (var2397_jQuote/1315253176 var3361)) ; Statement: $r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0) 
(assert true)
(define-const var62 String (append/672562846 var3219 var3288)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3219!1 String)
(assert (= var3219!1 (str.++ var3219 var3288)))
(assert true)
(define-const var219 String (append/672562846 var62 " for ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ") 
(declare-const var62!1 String)
(assert (= var62!1 (str.++ var62 " for ")))
(assert true)
(define-const var3528 String (append/672562846 var219 var1276)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var219!1 String)
(assert (= var219!1 (str.++ var219 var1276)))
 ; Statement: if r8 == null goto $r22 = "" 
(assert (not (= var761 null-String))) ; Negate: Cond: r8 == null  
(define-const var3685 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3685)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3685!1 String)
(assert (= var3685!1 ""))
(assert true)
(define-const var2502 String (append/672562846 var3685!1 " ")) ; Statement: $r18 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3685!2 String)
(assert (= var3685!2 (str.++ var3685!1 " ")))
(define-const var2150 String (var2397_jQuote/1315253176 var761)) ; Statement: $r17 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r8) 
(assert true)
(define-const var86 String (append/672562846 var2502 var2150)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2502!1 String)
(assert (= var2502!1 (str.++ var2502 var2150)))
(assert true)
(define-const var3813 String (toString/-2075883882 var86)) ; Statement: $r22 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)] 
(assert true) ; Non Conditional
(assert true)
(define-const var463 String (append/672562846 var3528 var3813)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3528!1 String)
(assert (= var3528!1 (str.++ var3528 var3813)))
(assert true)
(define-const var3462 String (append/672562846 var463 ".")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var463!1 String)
(assert (= var463!1 (str.++ var463 ".")))
 ; Statement: if z0 == 0 goto $r23 = "" 
(assert (= (ite var3565 1 0) 0)) ; Cond: z0 == 0 
(define-const var3833 String "") ; Statement: $r23 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2987 String (append/672562846 var3462 var3833)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var3462!1 String)
(assert (= var3462!1 (str.++ var3462 var3833)))
(assert true)
(define-const var3496 String (toString/-2075883882 var2987)) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3182 var3100 (locator/-384195938 var2632)) ; Statement: $r14 = r13.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator> 
(assert true)
;(assert (<init>/-1728423747 var1367 var3496 var3182 var2260)) ; Statement: specialinvoke $r26.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator,java.lang.Throwable)>($r15, $r14, r2) 

(declare-const var1367!1 var3116)
(declare-const var3496!1 String)
(declare-const var3182!1 var3100)
(declare-const var2260!1 var3436)
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var3116-init=([], freemarker.ext.jsp.TaglibFactory$TldParsingSAXException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2397_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), locator/-384195938=([freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding], org.xml.sax.Locator), <init>/-1728423747=([freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, java.lang.String, org.xml.sax.Locator, java.lang.Throwable], void)}
; {var2809=freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding, var2632=r13, var3436=java.lang.Throwable, var2260=r2, var3361=r0, var1932=null_type, var1276=r6, var761=r8, var1095=i5, var2702=$i7, var1387=$i9, var3864=$z2, var3565=z0, var3116=freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, var1367=$r26, var2788=$r24, var3260=$z3, var2837=$r21, var3219=$r4, var2397=freemarker.template.utility.StringUtil, var3288=$r3, var62=$r5, var219=$r7, var3528=$r9, var3685=$r25, var2502=$r18, var2150=$r17, var86=$r19, var3813=$r22, var463=$r10, var3462=$r11, var3833=$r23, var2987=$r12, var3496=$r15, var3100=org.xml.sax.Locator, var3182=$r14}
; {freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding=var2809, r13=var2632, java.lang.Throwable=var3436, r2=var2260, r0=var3361, null_type=var1932, r6=var1276, r8=var761, i5=var1095, $i7=var2702, $i9=var1387, $z2=var3864, z0=var3565, freemarker.ext.jsp.TaglibFactory$TldParsingSAXException=var3116, $r26=var1367, $r24=var2788, $z3=var3260, $r21=var2837, $r4=var3219, freemarker.template.utility.StringUtil=var2397, $r3=var3288, $r5=var62, $r7=var219, $r9=var3528, $r25=var3685, $r18=var2502, $r17=var2150, $r19=var86, $r22=var3813, $r10=var463, $r11=var3462, $r23=var3833, $r12=var2987, $r15=var3496, org.xml.sax.Locator=var3100, $r14=var3182}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r13 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding;	r2 := @parameter0: java.lang.Throwable;	r0 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	r8 := @parameter3: java.lang.String;	i5 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	$i7 = (int) -1;	if i5 == $i7 goto $i9 = (int) -1;	$i9 = (int) -1;	if i5 == $i9 goto $z2 = 0;	$z2 = 0;	z0 = $z2;	$r26 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$z3 = r2 instanceof java.lang.ClassNotFoundException;	if $z3 == 0 goto $r21 = "Can\'t load class ";	$r21 = "Not found class ";	goto [?= $r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)];	$r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ");	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	if r8 == null goto $r22 = "";	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r17 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r8);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r22 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)];	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	if z0 == 0 goto $r23 = "";	$r23 = "";	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = r13.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator>;	specialinvoke $r26.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator,java.lang.Throwable)>($r15, $r14, r2);	return $r26
;block_num 10