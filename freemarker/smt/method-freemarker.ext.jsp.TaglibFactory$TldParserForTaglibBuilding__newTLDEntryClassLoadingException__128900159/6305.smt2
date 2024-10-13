(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1493 0)
(declare-sort var3636 0)
(declare-sort var1017 0)
(declare-sort var2303 0)
(declare-sort var3162 0)
(declare-sort var3485 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2303-init () var2303)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3162_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun locator/-384195938 (var1493) var3485)
(declare-fun <init>/-1728423747 (var2303 String var3485 var3636) void)
(declare-const null-var1493 var1493)
(declare-const null-var3636 var3636)
(declare-const null-String String)
(declare-const var1921 var1493) ; Statement: r13 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding 
(assert (not (= var1921 null-var1493)))
(declare-const var1449 var3636) ; Statement: r2 := @parameter0: java.lang.Throwable 
(assert (not (= var1449 null-var3636)))
(declare-const var2825 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2825 null-String)))
(declare-const var3055 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var3055 null-String)))
(declare-const var2424 String) ; Statement: r8 := @parameter3: java.lang.String 
(assert (not (= var2424 null-String)))
(assert true)
(define-const var13 Int (lastIndexOf/-1292097097 var2825 46)) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var1098 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i5 == $i7 goto $i9 = (int) -1 
(assert (= var13 var1098)) ; Cond: i5 == $i7 
(define-const var1072 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if i5 == $i9 goto $z2 = 0 
(assert (= var13 var1072)) ; Cond: i5 == $i9 
(define-const var122 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var1243 Bool var122) ; Statement: z0 = $z2 
(define-const var2769 var2303 var2303-init) ; Statement: $r26 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException 
(define-const var3590 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3590)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3590!1 String)
(assert (= var3590!1 ""))
(define-const var917 Bool false) ; Statement: $z3 = r2 instanceof java.lang.ClassNotFoundException 
 ; Statement: if $z3 == 0 goto $r21 = "Can\'t load class " 
(assert (not (= (ite var917 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var2519 String "Not found class ") ; Statement: $r21 = "Not found class " 
 ; Statement: goto [?= $r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2858 String (append/672562846 var3590!1 var2519)) ; Statement: $r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var3590!2 String)
(assert (= var3590!2 (str.++ var3590!1 var2519)))
(define-const var2528 String (var3162_jQuote/1315253176 var2825)) ; Statement: $r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0) 
(assert true)
(define-const var616 String (append/672562846 var2858 var2528)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2858!1 String)
(assert (= var2858!1 (str.++ var2858 var2528)))
(assert true)
(define-const var471 String (append/672562846 var616 " for ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ") 
(declare-const var616!1 String)
(assert (= var616!1 (str.++ var616 " for ")))
(assert true)
(define-const var2078 String (append/672562846 var471 var3055)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var471!1 String)
(assert (= var471!1 (str.++ var471 var3055)))
 ; Statement: if r8 == null goto $r22 = "" 
(assert (not (= var2424 null-String))) ; Negate: Cond: r8 == null  
(define-const var1321 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1321)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1321!1 String)
(assert (= var1321!1 ""))
(assert true)
(define-const var447 String (append/672562846 var1321!1 " ")) ; Statement: $r18 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1321!2 String)
(assert (= var1321!2 (str.++ var1321!1 " ")))
(define-const var271 String (var3162_jQuote/1315253176 var2424)) ; Statement: $r17 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r8) 
(assert true)
(define-const var1010 String (append/672562846 var447 var271)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var447!1 String)
(assert (= var447!1 (str.++ var447 var271)))
(assert true)
(define-const var151 String (toString/-2075883882 var1010)) ; Statement: $r22 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2607 String (append/672562846 var2078 var151)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2078!1 String)
(assert (= var2078!1 (str.++ var2078 var151)))
(assert true)
(define-const var3274 String (append/672562846 var2607 ".")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2607!1 String)
(assert (= var2607!1 (str.++ var2607 ".")))
 ; Statement: if z0 == 0 goto $r23 = "" 
(assert (not (= (ite var1243 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var811 String " Hint: Before nested classes, use \u0022$\u0022, not \u0022.\u0022.") ; Statement: $r23 = " Hint: Before nested classes, use \"$\", not \".\"." 
 ; Statement: goto [?= $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2677 String (append/672562846 var3274 var811)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var3274!1 String)
(assert (= var3274!1 (str.++ var3274 var811)))
(assert true)
(define-const var3591 String (toString/-2075883882 var2677)) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1942 var3485 (locator/-384195938 var1921)) ; Statement: $r14 = r13.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator> 
(assert true)
;(assert (<init>/-1728423747 var2769 var3591 var1942 var1449)) ; Statement: specialinvoke $r26.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator,java.lang.Throwable)>($r15, $r14, r2) 

(declare-const var2769!1 var2303)
(declare-const var3591!1 String)
(declare-const var1942!1 var3485)
(declare-const var1449!1 var3636)
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var2303-init=([], freemarker.ext.jsp.TaglibFactory$TldParsingSAXException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3162_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), locator/-384195938=([freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding], org.xml.sax.Locator), <init>/-1728423747=([freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, java.lang.String, org.xml.sax.Locator, java.lang.Throwable], void)}
; {var1493=freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding, var1921=r13, var3636=java.lang.Throwable, var1449=r2, var2825=r0, var1017=null_type, var3055=r6, var2424=r8, var13=i5, var1098=$i7, var1072=$i9, var122=$z2, var1243=z0, var2303=freemarker.ext.jsp.TaglibFactory$TldParsingSAXException, var2769=$r26, var3590=$r24, var917=$z3, var2519=$r21, var2858=$r4, var3162=freemarker.template.utility.StringUtil, var2528=$r3, var616=$r5, var471=$r7, var2078=$r9, var1321=$r25, var447=$r18, var271=$r17, var1010=$r19, var151=$r22, var2607=$r10, var3274=$r11, var811=$r23, var2677=$r12, var3591=$r15, var3485=org.xml.sax.Locator, var1942=$r14}
; {freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding=var1493, r13=var1921, java.lang.Throwable=var3636, r2=var1449, r0=var2825, null_type=var1017, r6=var3055, r8=var2424, i5=var13, $i7=var1098, $i9=var1072, $z2=var122, z0=var1243, freemarker.ext.jsp.TaglibFactory$TldParsingSAXException=var2303, $r26=var2769, $r24=var3590, $z3=var917, $r21=var2519, $r4=var2858, freemarker.template.utility.StringUtil=var3162, $r3=var2528, $r5=var616, $r7=var471, $r9=var2078, $r25=var1321, $r18=var447, $r17=var271, $r19=var1010, $r22=var151, $r10=var2607, $r11=var3274, $r23=var811, $r12=var2677, $r15=var3591, org.xml.sax.Locator=var3485, $r14=var1942}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r13 := @this: freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding;	r2 := @parameter0: java.lang.Throwable;	r0 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	r8 := @parameter3: java.lang.String;	i5 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	$i7 = (int) -1;	if i5 == $i7 goto $i9 = (int) -1;	$i9 = (int) -1;	if i5 == $i9 goto $z2 = 0;	$z2 = 0;	z0 = $z2;	$r26 = new freemarker.ext.jsp.TaglibFactory$TldParsingSAXException;	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$z3 = r2 instanceof java.lang.ClassNotFoundException;	if $z3 == 0 goto $r21 = "Can\'t load class ";	$r21 = "Not found class ";	goto [?= $r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21)];	$r4 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r3 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" for ");	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	if r8 == null goto $r22 = "";	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r17 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>(r8);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r22 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22)];	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	if z0 == 0 goto $r23 = "";	$r23 = " Hint: Before nested classes, use \"$\", not \".\".";	goto [?= $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23)];	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = r13.<freemarker.ext.jsp.TaglibFactory$TldParserForTaglibBuilding: org.xml.sax.Locator locator>;	specialinvoke $r26.<freemarker.ext.jsp.TaglibFactory$TldParsingSAXException: void <init>(java.lang.String,org.xml.sax.Locator,java.lang.Throwable)>($r15, $r14, r2);	return $r26
;block_num 10