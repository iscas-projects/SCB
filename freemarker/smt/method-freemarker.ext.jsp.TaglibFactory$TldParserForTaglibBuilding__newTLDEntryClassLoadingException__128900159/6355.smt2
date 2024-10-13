(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1138 0)
(declare-sort var1987 0)
(declare-sort var3697 0)
(declare-sort var855 0)
(declare-sort var3463 0)
(declare-sort var1730 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var855-init () var855)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3463_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun locator/-384195938 (var1138) var1730)
(declare-fun <init>/-1728423747 (var855 String var1730 var1987) void)
(declare-const null-var1138 var1138)
(declare-const null-var1987 var1987)
(declare-const null-String String)
(declare-const var2239 var1138) ; Statement: r13 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding 
(assert (not (= var2239 null-var1138)))
(declare-const var449 var1987) ; Statement: r2 := @parameter0: java.lang.Throwable 
(assert (not (= var449 null-var1987)))
(declare-const var3031 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3031 null-String)))
(declare-const var2607 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var2607 null-String)))
(declare-const var1304 String) ; Statement: r8 := @parameter3: java.lang.String 
(assert (not (= var1304 null-String)))
(assert true)
(define-const var933 Int (lastIndexOf/-1292097097 var3031 46)) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var2010 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i5 == $i7 goto $i9 = (int) -1 
(assert (= var933 var2010)) ; Cond: i5 == $i7 
(define-const var445 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i5 == $i9 goto $z2 = 0 
(assert (= var933 var445)) ; Cond: i5 == $i9 
(define-const var3233 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var2621 Bool var3233) ; Statement: z0 = $z2 
(define-const var965 var855 var855-init) ; Statement: $r26 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException 
(define-const var1721 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1721)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1721!1 String)
(assert (= var1721!1 ""))
(define-const var1174 Bool false) ; Statement: $z3 = r2 instanceof java.lang.ClassNotFoundException 
 ; Statement: if $z3 == 0 goto $r21 = "Can\'t load class " 
(assert (not (= (ite var1174 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var1660 String "Not found class ") ; Statement: $r21 = "Not found class " 
 ; Statement: goto [?= $r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3869 String (append/672562846 var1721!1 var1660)) ; Statement: $r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1721!2 String)
(assert (= var1721!2 (str.++ var1721!1 var1660)))
(define-const var2158 String (var3463_jQuote/1315253176 var3031)) ; Statement: $r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0) 
(assert true)
(define-const var3917 String (append/672562846 var3869 var2158)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3869!1 String)
(assert (= var3869!1 (str.++ var3869 var2158)))
(assert true)
(define-const var582 String (append/672562846 var3917 " for ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ") 
(declare-const var3917!1 String)
(assert (= var3917!1 (str.++ var3917 " for ")))
(assert true)
(define-const var953 String (append/672562846 var582 var2607)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var582!1 String)
(assert (= var582!1 (str.++ var582 var2607)))
 ; Statement: if r8 == null goto $r22 = "" 
(assert (= var1304 null-String)) ; Cond: r8 == null 
(define-const var1277 String "") ; Statement: $r22 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2184 String (append/672562846 var953 var1277)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var953!1 String)
(assert (= var953!1 (str.++ var953 var1277)))
(assert true)
(define-const var2557 String (append/672562846 var2184 ".")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2184!1 String)
(assert (= var2184!1 (str.++ var2184 ".")))
 ; Statement: if z0 == 0 goto $r23 = "" 
(assert (= (ite var2621 1 0) 0)) ; Cond: z0 == 0 
(define-const var2133 String "") ; Statement: $r23 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2192 String (append/672562846 var2557 var2133)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2557!1 String)
(assert (= var2557!1 (str.++ var2557 var2133)))
(assert true)
(define-const var3297 String (toString/-2075883882 var2192)) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var467 var1730 (locator/-384195938 var2239)) ; Statement: $r14 = r13.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator> 
(assert true)
;(assert (<init>/-1728423747 var965 var3297 var467 var449)) ; Statement: specialinvoke $r26.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator,java.lang.Throwable)>($r15, $r14, r2) 

(declare-const var965!1 var855)
(declare-const var3297!1 String)
(declare-const var467!1 var1730)
(declare-const var449!1 var1987)
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var855-init=([], freemarker.ext.jsp.TaglibFactory$TldParsingSAXException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3463_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), locator/-384195938=([freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding], org.xml.sax.Locator), <init>/-1728423747=([freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, java.lang.String, org.xml.sax.Locator, java.lang.Throwable], void)}
; {var1138=freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding, var2239=r13, var1987=java.lang.Throwable, var449=r2, var3031=r0, var3697=null_type, var2607=r6, var1304=r8, var933=i5, var2010=$i7, var445=$i9, var3233=$z2, var2621=z0, var855=freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, var965=$r26, var1721=$r24, var1174=$z3, var1660=$r21, var3869=$r4, var3463=freemarker.template.utility.StringUtil, var2158=$r3, var3917=$r5, var582=$r7, var953=$r9, var1277=$r22, var2184=$r10, var2557=$r11, var2133=$r23, var2192=$r12, var3297=$r15, var1730=org.xml.sax.Locator, var467=$r14}
; {freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding=var1138, r13=var2239, java.lang.Throwable=var1987, r2=var449, r0=var3031, null_type=var3697, r6=var2607, r8=var1304, i5=var933, $i7=var2010, $i9=var445, $z2=var3233, z0=var2621, freemarker.ext.jsp.TaglibFactory$TldParsingSAXException=var855, $r26=var965, $r24=var1721, $z3=var1174, $r21=var1660, $r4=var3869, freemarker.template.utility.StringUtil=var3463, $r3=var2158, $r5=var3917, $r7=var582, $r9=var953, $r22=var1277, $r10=var2184, $r11=var2557, $r23=var2133, $r12=var2192, $r15=var3297, org.xml.sax.Locator=var1730, $r14=var467}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding;	r2 := @parameter0: java.lang.Throwable;	r0 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	r8 := @parameter3: java.lang.String;	i5 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	$i7 = (int) -1;	if i5 == $i7 goto $i9 = (int) -1;	$i9 = (int) -1;	if i5 == $i9 goto $z2 = 0;	$z2 = 0;	z0 = $z2;	$r26 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$z3 = r2 instanceof java.lang.ClassNotFoundException;	if $z3 == 0 goto $r21 = "Can\'t load class ";	$r21 = "Not found class ";	goto [?= $r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)];	$r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ");	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	if r8 == null goto $r22 = "";	$r22 = "";	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	if z0 == 0 goto $r23 = "";	$r23 = "";	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = r13.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator>;	specialinvoke $r26.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator,java.lang.Throwable)>($r15, $r14, r2);	return $r26
;block_num 10