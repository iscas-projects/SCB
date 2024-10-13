(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3750 0)
(declare-sort var1219 0)
(declare-sort var562 0)
(declare-sort var1367 0)
(declare-sort var3387 0)
(declare-sort var2280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1367-init () var1367)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3387_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun locator/-384195938 (var3750) var2280)
(declare-fun <init>/-1728423747 (var1367 String var2280 var1219) void)
(declare-const null-var3750 var3750)
(declare-const null-var1219 var1219)
(declare-const null-String String)
(declare-const var988 var3750) ; Statement: r13 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding 
(assert (not (= var988 null-var3750)))
(declare-const var1818 var1219) ; Statement: r2 := @parameter0: java.lang.Throwable 
(assert (not (= var1818 null-var1219)))
(declare-const var3429 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3429 null-String)))
(declare-const var1584 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var1584 null-String)))
(declare-const var1726 String) ; Statement: r8 := @parameter3: java.lang.String 
(assert (not (= var1726 null-String)))
(assert true)
(define-const var185 Int (lastIndexOf/-1292097097 var3429 46)) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var1447 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i5 == $i7 goto $i9 = (int) -1 
(assert (= var185 var1447)) ; Cond: i5 == $i7 
(define-const var3745 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i5 == $i9 goto $z2 = 0 
(assert (= var185 var3745)) ; Cond: i5 == $i9 
(define-const var3672 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var2996 Bool var3672) ; Statement: z0 = $z2 
(define-const var669 var1367 var1367-init) ; Statement: $r26 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException 
(define-const var2997 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2997)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2997!1 String)
(assert (= var2997!1 ""))
(define-const var1459 Bool false) ; Statement: $z3 = r2 instanceof java.lang.ClassNotFoundException 
 ; Statement: if $z3 == 0 goto $r21 = "Can\'t load class " 
(assert (= (ite var1459 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3575 String "Can\u0027t load class ") ; Statement: $r21 = "Can\'t load class " 
(assert true) ; Non Conditional
(assert true)
(define-const var229 String (append/672562846 var2997!1 var3575)) ; Statement: $r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2997!2 String)
(assert (= var2997!2 (str.++ var2997!1 var3575)))
(define-const var772 String (var3387_jQuote/1315253176 var3429)) ; Statement: $r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0) 
(assert true)
(define-const var941 String (append/672562846 var229 var772)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var229!1 String)
(assert (= var229!1 (str.++ var229 var772)))
(assert true)
(define-const var426 String (append/672562846 var941 " for ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ") 
(declare-const var941!1 String)
(assert (= var941!1 (str.++ var941 " for ")))
(assert true)
(define-const var2895 String (append/672562846 var426 var1584)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var426!1 String)
(assert (= var426!1 (str.++ var426 var1584)))
 ; Statement: if r8 == null goto $r22 = "" 
(assert (not (= var1726 null-String))) ; Negate: Cond: r8 == null  
(define-const var429 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var429)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var429!1 String)
(assert (= var429!1 ""))
(assert true)
(define-const var3112 String (append/672562846 var429!1 " ")) ; Statement: $r18 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var429!2 String)
(assert (= var429!2 (str.++ var429!1 " ")))
(define-const var471 String (var3387_jQuote/1315253176 var1726)) ; Statement: $r17 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r8) 
(assert true)
(define-const var954 String (append/672562846 var3112 var471)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3112!1 String)
(assert (= var3112!1 (str.++ var3112 var471)))
(assert true)
(define-const var488 String (toString/-2075883882 var954)) ; Statement: $r22 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3290 String (append/672562846 var2895 var488)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2895!1 String)
(assert (= var2895!1 (str.++ var2895 var488)))
(assert true)
(define-const var3846 String (append/672562846 var3290 ".")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3290!1 String)
(assert (= var3290!1 (str.++ var3290 ".")))
 ; Statement: if z0 == 0 goto $r23 = "" 
(assert (= (ite var2996 1 0) 0)) ; Cond: z0 == 0 
(define-const var3212 String "") ; Statement: $r23 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var1148 String (append/672562846 var3846 var3212)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var3846!1 String)
(assert (= var3846!1 (str.++ var3846 var3212)))
(assert true)
(define-const var1262 String (toString/-2075883882 var1148)) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2150 var2280 (locator/-384195938 var988)) ; Statement: $r14 = r13.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator> 
(assert true)
;(assert (<init>/-1728423747 var669 var1262 var2150 var1818)) ; Statement: specialinvoke $r26.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator,java.lang.Throwable)>($r15, $r14, r2) 

(declare-const var669!1 var1367)
(declare-const var1262!1 String)
(declare-const var2150!1 var2280)
(declare-const var1818!1 var1219)
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var1367-init=([], freemarker.ext.jsp.TaglibFactory$TldParsingSAXException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3387_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), locator/-384195938=([freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding], org.xml.sax.Locator), <init>/-1728423747=([freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, java.lang.String, org.xml.sax.Locator, java.lang.Throwable], void)}
; {var3750=freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding, var988=r13, var1219=java.lang.Throwable, var1818=r2, var3429=r0, var562=null_type, var1584=r6, var1726=r8, var185=i5, var1447=$i7, var3745=$i9, var3672=$z2, var2996=z0, var1367=freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, var669=$r26, var2997=$r24, var1459=$z3, var3575=$r21, var229=$r4, var3387=freemarker.template.utility.StringUtil, var772=$r3, var941=$r5, var426=$r7, var2895=$r9, var429=$r25, var3112=$r18, var471=$r17, var954=$r19, var488=$r22, var3290=$r10, var3846=$r11, var3212=$r23, var1148=$r12, var1262=$r15, var2280=org.xml.sax.Locator, var2150=$r14}
; {freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding=var3750, r13=var988, java.lang.Throwable=var1219, r2=var1818, r0=var3429, null_type=var562, r6=var1584, r8=var1726, i5=var185, $i7=var1447, $i9=var3745, $z2=var3672, z0=var2996, freemarker.ext.jsp.TaglibFactory$TldParsingSAXException=var1367, $r26=var669, $r24=var2997, $z3=var1459, $r21=var3575, $r4=var229, freemarker.template.utility.StringUtil=var3387, $r3=var772, $r5=var941, $r7=var426, $r9=var2895, $r25=var429, $r18=var3112, $r17=var471, $r19=var954, $r22=var488, $r10=var3290, $r11=var3846, $r23=var3212, $r12=var1148, $r15=var1262, org.xml.sax.Locator=var2280, $r14=var2150}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r13 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding;	r2 := @parameter0: java.lang.Throwable;	r0 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	r8 := @parameter3: java.lang.String;	i5 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	$i7 = (int) -1;	if i5 == $i7 goto $i9 = (int) -1;	$i9 = (int) -1;	if i5 == $i9 goto $z2 = 0;	$z2 = 0;	z0 = $z2;	$r26 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$z3 = r2 instanceof java.lang.ClassNotFoundException;	if $z3 == 0 goto $r21 = "Can\'t load class ";	$r21 = "Can\'t load class ";	$r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ");	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	if r8 == null goto $r22 = "";	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r17 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r8);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r22 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)];	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	if z0 == 0 goto $r23 = "";	$r23 = "";	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = r13.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator>;	specialinvoke $r26.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator,java.lang.Throwable)>($r15, $r14, r2);	return $r26
;block_num 10