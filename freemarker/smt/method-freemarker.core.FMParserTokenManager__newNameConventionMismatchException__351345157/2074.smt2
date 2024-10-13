(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2373 0)
(declare-sort var3276 0)
(declare-sort var3092 0)
(declare-sort var2554 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3092-init () var3092)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun initialNamingConvention/929889025 (var2373) Int)
(declare-fun namingConvention/929889025 (var2373) Int)
(declare-fun namingConventionEstabilisher/929889025 (var2373) var3276)
(declare-fun image/-1758362606 (var3276) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var2554_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun beginLine/-1758362606 (var3276) Int)
(declare-fun beginColumn/-1758362606 (var3276) Int)
(declare-fun endLine/-1758362606 (var3276) Int)
(declare-fun endColumn/-1758362606 (var3276) Int)
(declare-fun <init>/1657950015 (var3092 String Int Int Int Int Int) void)
(declare-const null-var2373 var2373)
(declare-const null-var3276 var3276)
(declare-const var1654 var2373) ; Statement: r2 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var1654 null-var2373)))
(declare-const var2004 var3276) ; Statement: r6 := @parameter0: freemarker.core.Token 
(assert (not (= var2004 null-var3276)))
(define-const var3727 var3092 var3092-init) ; Statement: $r0 = new freemarker.core.TokenMgrError 
(define-const var1489 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1489)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1489!1 String)
(assert (= var1489!1 ""))
(assert true)
(define-const var2399 String (append/672562846 var1489!1 "Naming convention mismatch. Identifiers that are part of the template language (not the user specified ones) ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Naming convention mismatch. Identifiers that are part of the template language (not the user specified ones) ") 
(declare-const var1489!2 String)
(assert (= var1489!2 (str.++ var1489!1 "Naming convention mismatch. Identifiers that are part of the template language (not the user specified ones) ")))
(define-const var1447 Int (initialNamingConvention/929889025 var1654)) ; Statement: $i0 = r2.<freemarker.core.FMParserTokenManager: int initialNamingConvention> 
 ; Statement: if $i0 != 10 goto $r26 = "must use the configured naming convention, which is the " 
(assert (not (not (= var1447 10)))) ; Negate: Cond: $i0 != 10  
(define-const var155 String "must consistently use the same naming convention within the same template. This template uses ") ; Statement: $r26 = "must consistently use the same naming convention within the same template. This template uses " 
 ; Statement: goto [?= $r27 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3081 String (append/672562846 var2399 var155)) ; Statement: $r27 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var2399!1 String)
(assert (= var2399!1 (str.++ var2399 var155)))
(define-const var1376 Int (namingConvention/929889025 var1654)) ; Statement: $i1 = r2.<freemarker.core.FMParserTokenManager: int namingConvention> 
 ; Statement: if $i1 != 12 goto $i2 = r2.<freemarker.core.FMParserTokenManager: int namingConvention> 
(assert (not (not (= var1376 12)))) ; Negate: Cond: $i1 != 12  
(define-const var823 String "camel case naming convention (like: exampleName) ") ; Statement: $r28 = "camel case naming convention (like: exampleName) " 
 ; Statement: goto [?= $r4 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1520 String (append/672562846 var3081 var823)) ; Statement: $r4 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var3081!1 String)
(assert (= var3081!1 (str.++ var3081 var823)))
(define-const var783 var3276 (namingConventionEstabilisher/929889025 var1654)) ; Statement: $r29 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher> 
 ; Statement: if $r29 == null goto $r30 = "" 
(assert (= var783 null-var3276)) ; Cond: $r29 == null 
(define-const var1205 String "") ; Statement: $r30 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2167 String (append/672562846 var1520 var1205)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var1520!1 String)
(assert (= var1520!1 (str.++ var1520 var1205)))
(assert true)
(define-const var1911 String (append/672562846 var2167 ", but the problematic token, ")) ; Statement: $r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but the problematic token, ") 
(declare-const var2167!1 String)
(assert (= var2167!1 (str.++ var2167 ", but the problematic token, ")))
(define-const var256 String (image/-1758362606 var2004)) ; Statement: $r7 = r6.<freemarker.core.Token: java.lang.String image> 
(assert true)
(define-const var3484 String (trim/-847153721 var256)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: java.lang.String trim()>() 
(define-const var279 String (var2554_jQuote/1315253176 var3484)) ; Statement: $r9 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r8) 
(assert true)
(define-const var887 String (append/672562846 var1911 var279)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1911!1 String)
(assert (= var1911!1 (str.++ var1911 var279)))
(assert true)
(define-const var350 String (append/672562846 var887 ", uses a different convention.")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", uses a different convention.") 
(declare-const var887!1 String)
(assert (= var887!1 (str.++ var887 ", uses a different convention.")))
(assert true)
(define-const var2520 String (toString/-2075883882 var350)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2874 Int (beginLine/-1758362606 var2004)) ; Statement: $i6 = r6.<freemarker.core.Token: int beginLine> 
(define-const var1463 Int (beginColumn/-1758362606 var2004)) ; Statement: $i5 = r6.<freemarker.core.Token: int beginColumn> 
(define-const var2332 Int (endLine/-1758362606 var2004)) ; Statement: $i4 = r6.<freemarker.core.Token: int endLine> 
(define-const var1261 Int (endColumn/-1758362606 var2004)) ; Statement: $i3 = r6.<freemarker.core.Token: int endColumn> 
(assert true)
;(assert (<init>/1657950015 var3727 var2520 0 var2874 var1463 var2332 var1261)) ; Statement: specialinvoke $r0.<freemarker.core.TokenMgrError: void <init>(java.lang.String,int,int,int,int,int)>($r13, 0, $i6, $i5, $i4, $i3) 

(declare-const var3727!1 var3092)
(declare-const var2520!1 String)
(declare-const var3185 Int)
(declare-const var2874!1 Int)
(declare-const var1463!1 Int)
(declare-const var2332!1 Int)
(declare-const var1261!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3092-init=([], freemarker.core.TokenMgrError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), initialNamingConvention/929889025=([freemarker.core.FMParserTokenManager], int), namingConvention/929889025=([freemarker.core.FMParserTokenManager], int), namingConventionEstabilisher/929889025=([freemarker.core.FMParserTokenManager], freemarker.core.Token), image/-1758362606=([freemarker.core.Token], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var2554_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), beginLine/-1758362606=([freemarker.core.Token], int), beginColumn/-1758362606=([freemarker.core.Token], int), endLine/-1758362606=([freemarker.core.Token], int), endColumn/-1758362606=([freemarker.core.Token], int), <init>/1657950015=([freemarker.core.TokenMgrError, java.lang.String, int, int, int, int, int], void)}
; {var2373=freemarker.core.FMParserTokenManager, var1654=r2, var3276=freemarker.core.Token, var2004=r6, var3092=freemarker.core.TokenMgrError, var3727=$r0, var1489=$r1, var2399=$r3, var1447=$i0, var155=$r26, var3081=$r27, var1376=$i1, var823=$r28, var1520=$r4, var783=$r29, var1205=$r30, var2167=$r5, var1911=$r10, var256=$r7, var3484=$r8, var2554=freemarker.template.utility.StringUtil, var279=$r9, var887=$r11, var350=$r12, var2520=$r13, var2874=$i6, var1463=$i5, var2332=$i4, var1261=$i3, var3185=0}
; {freemarker.core.FMParserTokenManager=var2373, r2=var1654, freemarker.core.Token=var3276, r6=var2004, freemarker.core.TokenMgrError=var3092, $r0=var3727, $r1=var1489, $r3=var2399, $i0=var1447, $r26=var155, $r27=var3081, $i1=var1376, $r28=var823, $r4=var1520, $r29=var783, $r30=var1205, $r5=var2167, $r10=var1911, $r7=var256, $r8=var3484, freemarker.template.utility.StringUtil=var2554, $r9=var279, $r11=var887, $r12=var350, $r13=var2520, $i6=var2874, $i5=var1463, $i4=var2332, $i3=var1261, 0=var3185}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: freemarker.core.FMParserTokenManager;	r6 := @parameter0: freemarker.core.Token;	$r0 = new freemarker.core.TokenMgrError;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Naming convention mismatch. Identifiers that are part of the template language (not the user specified ones) ");	$i0 = r2.<freemarker.core.FMParserTokenManager: int initialNamingConvention>;	if $i0 != 10 goto $r26 = "must use the configured naming convention, which is the ";	$r26 = "must consistently use the same naming convention within the same template. This template uses ";	goto [?= $r27 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26)];	$r27 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$i1 = r2.<freemarker.core.FMParserTokenManager: int namingConvention>;	if $i1 != 12 goto $i2 = r2.<freemarker.core.FMParserTokenManager: int namingConvention>;	$r28 = "camel case naming convention (like: exampleName) ";	goto [?= $r4 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28)];	$r4 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r29 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher>;	if $r29 == null goto $r30 = "";	$r30 = "";	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but the problematic token, ");	$r7 = r6.<freemarker.core.Token: java.lang.String image>;	$r8 = virtualinvoke $r7.<java.lang.String: java.lang.String trim()>();	$r9 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", uses a different convention.");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$i6 = r6.<freemarker.core.Token: int beginLine>;	$i5 = r6.<freemarker.core.Token: int beginColumn>;	$i4 = r6.<freemarker.core.Token: int endLine>;	$i3 = r6.<freemarker.core.Token: int endColumn>;	specialinvoke $r0.<freemarker.core.TokenMgrError: void <init>(java.lang.String,int,int,int,int,int)>($r13, 0, $i6, $i5, $i4, $i3);	return $r0
;block_num 7