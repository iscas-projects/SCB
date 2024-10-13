(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2172 0)
(declare-sort var2169 0)
(declare-sort var2539 0)
(declare-sort var2226 0)
(declare-sort var3267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2539-init () var2539)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun initialNamingConvention/929889025 (var2172) Int)
(declare-fun namingConvention/929889025 (var2172) Int)
(declare-fun namingConventionEstabilisher/929889025 (var2172) var2169)
(declare-fun beginLine/-1758362606 (var2169) Int)
(declare-fun beginColumn/-1758362606 (var2169) Int)
(declare-fun var2226_formatPosition/-1135250777 (Int Int) String)
(declare-fun image/-1758362606 (var2169) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var3267_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun endLine/-1758362606 (var2169) Int)
(declare-fun endColumn/-1758362606 (var2169) Int)
(declare-fun <init>/1657950015 (var2539 String Int Int Int Int Int) void)
(declare-const null-var2172 var2172)
(declare-const null-var2169 var2169)
(declare-const var755 var2172) ; Statement: r2 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var755 null-var2172)))
(declare-const var1589 var2169) ; Statement: r6 := @parameter0: freemarker.core.Token 
(assert (not (= var1589 null-var2169)))
(define-const var1969 var2539 var2539-init) ; Statement: $r0 = new freemarker.core.TokenMgrError 
(define-const var3436 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3436)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3436!1 String)
(assert (= var3436!1 ""))
(assert true)
(define-const var3248 String (append/672562846 var3436!1 "Naming convention mismatch. Identifiers that are part of the template language (not the user specified ones) ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Naming convention mismatch. Identifiers that are part of the template language (not the user specified ones) ") 
(declare-const var3436!2 String)
(assert (= var3436!2 (str.++ var3436!1 "Naming convention mismatch. Identifiers that are part of the template language (not the user specified ones) ")))
(define-const var525 Int (initialNamingConvention/929889025 var755)) ; Statement: $i0 = r2.<freemarker.core.FMParserTokenManager: int initialNamingConvention> 
 ; Statement: if $i0 != 10 goto $r26 = "must use the configured naming convention, which is the " 
(assert (not (not (= var525 10)))) ; Negate: Cond: $i0 != 10  
(define-const var411 String "must consistently use the same naming convention within the same template. This template uses ") ; Statement: $r26 = "must consistently use the same naming convention within the same template. This template uses " 
 ; Statement: goto [?= $r27 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3651 String (append/672562846 var3248 var411)) ; Statement: $r27 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var3248!1 String)
(assert (= var3248!1 (str.++ var3248 var411)))
(define-const var2582 Int (namingConvention/929889025 var755)) ; Statement: $i1 = r2.<freemarker.core.FMParserTokenManager: int namingConvention> 
 ; Statement: if $i1 != 12 goto $i2 = r2.<freemarker.core.FMParserTokenManager: int namingConvention> 
(assert (not (not (= var2582 12)))) ; Negate: Cond: $i1 != 12  
(define-const var945 String "camel case naming convention (like: exampleName) ") ; Statement: $r28 = "camel case naming convention (like: exampleName) " 
 ; Statement: goto [?= $r4 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1714 String (append/672562846 var3651 var945)) ; Statement: $r4 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var3651!1 String)
(assert (= var3651!1 (str.++ var3651 var945)))
(define-const var1490 var2169 (namingConventionEstabilisher/929889025 var755)) ; Statement: $r29 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher> 
 ; Statement: if $r29 == null goto $r30 = "" 
(assert (not (= var1490 null-var2169))) ; Negate: Cond: $r29 == null  
(define-const var1579 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1579)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1579!1 String)
(assert (= var1579!1 ""))
(assert true)
(define-const var3074 String (append/672562846 var1579!1 "estabilished by auto-detection at ")) ; Statement: $r18 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("estabilished by auto-detection at ") 
(declare-const var1579!2 String)
(assert (= var1579!2 (str.++ var1579!1 "estabilished by auto-detection at ")))
(define-const var1571 var2169 (namingConventionEstabilisher/929889025 var755)) ; Statement: $r15 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher> 
(define-const var1680 Int (beginLine/-1758362606 var1571)) ; Statement: $i8 = $r15.<freemarker.core.Token: int beginLine> 
(define-const var2778 var2169 (namingConventionEstabilisher/929889025 var755)) ; Statement: $r16 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher> 
(define-const var2512 Int (beginColumn/-1758362606 var2778)) ; Statement: $i7 = $r16.<freemarker.core.Token: int beginColumn> 
(define-const var3341 String (var2226_formatPosition/-1135250777 var1680 var2512)) ; Statement: $r17 = staticinvoke <freemarker.core._MessageUtil: java.lang.String formatPosition(int,int)>($i8, $i7) 
(assert true)
(define-const var2597 String (append/672562846 var3074 var3341)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var3074!1 String)
(assert (= var3074!1 (str.++ var3074 var3341)))
(assert true)
(define-const var184 String (append/672562846 var2597 " by token ")) ; Statement: $r24 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" by token ") 
(declare-const var2597!1 String)
(assert (= var2597!1 (str.++ var2597 " by token ")))
(define-const var1215 var2169 (namingConventionEstabilisher/929889025 var755)) ; Statement: $r20 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher> 
(define-const var951 String (image/-1758362606 var1215)) ; Statement: $r21 = $r20.<freemarker.core.Token: java.lang.String image> 
(assert true)
(define-const var3009 String (trim/-847153721 var951)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.String: java.lang.String trim()>() 
(define-const var3588 String (var3267_jQuote/1315253176 var3009)) ; Statement: $r23 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r22) 
(assert true)
(define-const var1200 String (append/672562846 var184 var3588)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var184!1 String)
(assert (= var184!1 (str.++ var184 var3588)))
(assert true)
(define-const var1690 String (toString/-2075883882 var1200)) ; Statement: $r30 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3515 String (append/672562846 var1714 var1690)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var1714!1 String)
(assert (= var1714!1 (str.++ var1714 var1690)))
(assert true)
(define-const var763 String (append/672562846 var3515 ", but the problematic token, ")) ; Statement: $r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but the problematic token, ") 
(declare-const var3515!1 String)
(assert (= var3515!1 (str.++ var3515 ", but the problematic token, ")))
(define-const var2887 String (image/-1758362606 var1589)) ; Statement: $r7 = r6.<freemarker.core.Token: java.lang.String image> 
(assert true)
(define-const var2384 String (trim/-847153721 var2887)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: java.lang.String trim()>() 
(define-const var1250 String (var3267_jQuote/1315253176 var2384)) ; Statement: $r9 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r8) 
(assert true)
(define-const var3068 String (append/672562846 var763 var1250)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var763!1 String)
(assert (= var763!1 (str.++ var763 var1250)))
(assert true)
(define-const var2780 String (append/672562846 var3068 ", uses a different convention.")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", uses a different convention.") 
(declare-const var3068!1 String)
(assert (= var3068!1 (str.++ var3068 ", uses a different convention.")))
(assert true)
(define-const var3205 String (toString/-2075883882 var2780)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3526 Int (beginLine/-1758362606 var1589)) ; Statement: $i6 = r6.<freemarker.core.Token: int beginLine> 
(define-const var3311 Int (beginColumn/-1758362606 var1589)) ; Statement: $i5 = r6.<freemarker.core.Token: int beginColumn> 
(define-const var618 Int (endLine/-1758362606 var1589)) ; Statement: $i4 = r6.<freemarker.core.Token: int endLine> 
(define-const var63 Int (endColumn/-1758362606 var1589)) ; Statement: $i3 = r6.<freemarker.core.Token: int endColumn> 
(assert true)
;(assert (<init>/1657950015 var1969 var3205 0 var3526 var3311 var618 var63)) ; Statement: specialinvoke $r0.<freemarker.core.TokenMgrError: void <init>(java.lang.String,int,int,int,int,int)>($r13, 0, $i6, $i5, $i4, $i3) 

(declare-const var1969!1 var2539)
(declare-const var3205!1 String)
(declare-const var1367 Int)
(declare-const var3526!1 Int)
(declare-const var3311!1 Int)
(declare-const var618!1 Int)
(declare-const var63!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2539-init=([], freemarker.core.TokenMgrError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), initialNamingConvention/929889025=([freemarker.core.FMParserTokenManager], int), namingConvention/929889025=([freemarker.core.FMParserTokenManager], int), namingConventionEstabilisher/929889025=([freemarker.core.FMParserTokenManager], freemarker.core.Token), beginLine/-1758362606=([freemarker.core.Token], int), beginColumn/-1758362606=([freemarker.core.Token], int), var2226_formatPosition/-1135250777=([int, int], java.lang.String), image/-1758362606=([freemarker.core.Token], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var3267_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), endLine/-1758362606=([freemarker.core.Token], int), endColumn/-1758362606=([freemarker.core.Token], int), <init>/1657950015=([freemarker.core.TokenMgrError, java.lang.String, int, int, int, int, int], void)}
; {var2172=freemarker.core.FMParserTokenManager, var755=r2, var2169=freemarker.core.Token, var1589=r6, var2539=freemarker.core.TokenMgrError, var1969=$r0, var3436=$r1, var3248=$r3, var525=$i0, var411=$r26, var3651=$r27, var2582=$i1, var945=$r28, var1714=$r4, var1490=$r29, var1579=$r14, var3074=$r18, var1571=$r15, var1680=$i8, var2778=$r16, var2512=$i7, var2226=freemarker.core._MessageUtil, var3341=$r17, var2597=$r19, var184=$r24, var1215=$r20, var951=$r21, var3009=$r22, var3267=freemarker.template.utility.StringUtil, var3588=$r23, var1200=$r25, var1690=$r30, var3515=$r5, var763=$r10, var2887=$r7, var2384=$r8, var1250=$r9, var3068=$r11, var2780=$r12, var3205=$r13, var3526=$i6, var3311=$i5, var618=$i4, var63=$i3, var1367=0}
; {freemarker.core.FMParserTokenManager=var2172, r2=var755, freemarker.core.Token=var2169, r6=var1589, freemarker.core.TokenMgrError=var2539, $r0=var1969, $r1=var3436, $r3=var3248, $i0=var525, $r26=var411, $r27=var3651, $i1=var2582, $r28=var945, $r4=var1714, $r29=var1490, $r14=var1579, $r18=var3074, $r15=var1571, $i8=var1680, $r16=var2778, $i7=var2512, freemarker.core._MessageUtil=var2226, $r17=var3341, $r19=var2597, $r24=var184, $r20=var1215, $r21=var951, $r22=var3009, freemarker.template.utility.StringUtil=var3267, $r23=var3588, $r25=var1200, $r30=var1690, $r5=var3515, $r10=var763, $r7=var2887, $r8=var2384, $r9=var1250, $r11=var3068, $r12=var2780, $r13=var3205, $i6=var3526, $i5=var3311, $i4=var618, $i3=var63, 0=var1367}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 11,"<java.lang.String: java.lang.String trim()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @this: freemarker.core.FMParserTokenManager;	r6 := @parameter0: freemarker.core.Token;	$r0 = new freemarker.core.TokenMgrError;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Naming convention mismatch. Identifiers that are part of the template language (not the user specified ones) ");	$i0 = r2.<freemarker.core.FMParserTokenManager: int initialNamingConvention>;	if $i0 != 10 goto $r26 = "must use the configured naming convention, which is the ";	$r26 = "must consistently use the same naming convention within the same template. This template uses ";	goto [?= $r27 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26)];	$r27 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$i1 = r2.<freemarker.core.FMParserTokenManager: int namingConvention>;	if $i1 != 12 goto $i2 = r2.<freemarker.core.FMParserTokenManager: int namingConvention>;	$r28 = "camel case naming convention (like: exampleName) ";	goto [?= $r4 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28)];	$r4 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r29 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher>;	if $r29 == null goto $r30 = "";	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("estabilished by auto-detection at ");	$r15 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher>;	$i8 = $r15.<freemarker.core.Token: int beginLine>;	$r16 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher>;	$i7 = $r16.<freemarker.core.Token: int beginColumn>;	$r17 = staticinvoke <freemarker.core._MessageUtil: java.lang.String formatPosition(int,int)>($i8, $i7);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r24 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" by token ");	$r20 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher>;	$r21 = $r20.<freemarker.core.Token: java.lang.String image>;	$r22 = virtualinvoke $r21.<java.lang.String: java.lang.String trim()>();	$r23 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r30 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30)];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but the problematic token, ");	$r7 = r6.<freemarker.core.Token: java.lang.String image>;	$r8 = virtualinvoke $r7.<java.lang.String: java.lang.String trim()>();	$r9 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", uses a different convention.");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$i6 = r6.<freemarker.core.Token: int beginLine>;	$i5 = r6.<freemarker.core.Token: int beginColumn>;	$i4 = r6.<freemarker.core.Token: int endLine>;	$i3 = r6.<freemarker.core.Token: int endColumn>;	specialinvoke $r0.<freemarker.core.TokenMgrError: void <init>(java.lang.String,int,int,int,int,int)>($r13, 0, $i6, $i5, $i4, $i3);	return $r0
;block_num 7