(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3474 0)
(declare-sort var149 0)
(declare-sort var2728 0)
(declare-sort var1318 0)
(declare-sort var2995 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2728-init () var2728)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun initialNamingConvention/929889025 (var3474) Int)
(declare-fun namingConvention/929889025 (var3474) Int)
(declare-fun namingConventionEstabilisher/929889025 (var3474) var149)
(declare-fun beginLine/-1758362606 (var149) Int)
(declare-fun beginColumn/-1758362606 (var149) Int)
(declare-fun var1318_formatPosition/-1135250777 (Int Int) String)
(declare-fun image/-1758362606 (var149) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var2995_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun endLine/-1758362606 (var149) Int)
(declare-fun endColumn/-1758362606 (var149) Int)
(declare-fun <init>/1657950015 (var2728 String Int Int Int Int Int) void)
(declare-const null-var3474 var3474)
(declare-const null-var149 var149)
(declare-const var2362 var3474) ; Statement: r2 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var2362 null-var3474)))
(declare-const var3282 var149) ; Statement: r6 := @parameter0: freemarker.core.Token 
(assert (not (= var3282 null-var149)))
(define-const var2024 var2728 var2728-init) ; Statement: $r0 = new freemarker.core.TokenMgrError 
(define-const var2499 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2499)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2499!1 String)
(assert (= var2499!1 ""))
(assert true)
(define-const var3079 String (append/672562846 var2499!1 "Naming convention mismatch. Identifiers that are part of the template language (not the user specified ones) ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Naming convention mismatch. Identifiers that are part of the template language (not the user specified ones) ") 
(declare-const var2499!2 String)
(assert (= var2499!2 (str.++ var2499!1 "Naming convention mismatch. Identifiers that are part of the template language (not the user specified ones) ")))
(define-const var1992 Int (initialNamingConvention/929889025 var2362)) ; Statement: $i0 = r2.<freemarker.core.FMParserTokenManager: int initialNamingConvention> 
 ; Statement: if $i0 != 10 goto $r26 = "must use the configured naming convention, which is the " 
(assert (not (= var1992 10))) ; Cond: $i0 != 10 
(define-const var1807 String "must use the configured naming convention, which is the ") ; Statement: $r26 = "must use the configured naming convention, which is the " 
(assert true) ; Non Conditional
(assert true)
(define-const var3101 String (append/672562846 var3079 var1807)) ; Statement: $r27 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var3079!1 String)
(assert (= var3079!1 (str.++ var3079 var1807)))
(define-const var1823 Int (namingConvention/929889025 var2362)) ; Statement: $i1 = r2.<freemarker.core.FMParserTokenManager: int namingConvention> 
 ; Statement: if $i1 != 12 goto $i2 = r2.<freemarker.core.FMParserTokenManager: int namingConvention> 
(assert (not (not (= var1823 12)))) ; Negate: Cond: $i1 != 12  
(define-const var3509 String "camel case naming convention (like: exampleName) ") ; Statement: $r28 = "camel case naming convention (like: exampleName) " 
 ; Statement: goto [?= $r4 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1939 String (append/672562846 var3101 var3509)) ; Statement: $r4 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var3101!1 String)
(assert (= var3101!1 (str.++ var3101 var3509)))
(define-const var771 var149 (namingConventionEstabilisher/929889025 var2362)) ; Statement: $r29 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher> 
 ; Statement: if $r29 == null goto $r30 = "" 
(assert (not (= var771 null-var149))) ; Negate: Cond: $r29 == null  
(define-const var965 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var965)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var965!1 String)
(assert (= var965!1 ""))
(assert true)
(define-const var2571 String (append/672562846 var965!1 "estabilished by auto-detection at ")) ; Statement: $r18 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("estabilished by auto-detection at ") 
(declare-const var965!2 String)
(assert (= var965!2 (str.++ var965!1 "estabilished by auto-detection at ")))
(define-const var2347 var149 (namingConventionEstabilisher/929889025 var2362)) ; Statement: $r15 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher> 
(define-const var1012 Int (beginLine/-1758362606 var2347)) ; Statement: $i8 = $r15.<freemarker.core.Token: int beginLine> 
(define-const var1578 var149 (namingConventionEstabilisher/929889025 var2362)) ; Statement: $r16 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher> 
(define-const var1690 Int (beginColumn/-1758362606 var1578)) ; Statement: $i7 = $r16.<freemarker.core.Token: int beginColumn> 
(define-const var3850 String (var1318_formatPosition/-1135250777 var1012 var1690)) ; Statement: $r17 = staticinvoke <freemarker.core._MessageUtil: java.lang.String formatPosition(int,int)>($i8, $i7) 
(assert true)
(define-const var632 String (append/672562846 var2571 var3850)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var2571!1 String)
(assert (= var2571!1 (str.++ var2571 var3850)))
(assert true)
(define-const var3477 String (append/672562846 var632 " by token ")) ; Statement: $r24 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" by token ") 
(declare-const var632!1 String)
(assert (= var632!1 (str.++ var632 " by token ")))
(define-const var653 var149 (namingConventionEstabilisher/929889025 var2362)) ; Statement: $r20 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher> 
(define-const var2008 String (image/-1758362606 var653)) ; Statement: $r21 = $r20.<freemarker.core.Token: java.lang.String image> 
(assert true)
(define-const var663 String (trim/-847153721 var2008)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.String: java.lang.String trim()>() 
(define-const var2421 String (var2995_jQuote/1315253176 var663)) ; Statement: $r23 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r22) 
(assert true)
(define-const var2814 String (append/672562846 var3477 var2421)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var3477!1 String)
(assert (= var3477!1 (str.++ var3477 var2421)))
(assert true)
(define-const var779 String (toString/-2075883882 var2814)) ; Statement: $r30 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3116 String (append/672562846 var1939 var779)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var1939!1 String)
(assert (= var1939!1 (str.++ var1939 var779)))
(assert true)
(define-const var836 String (append/672562846 var3116 ", but the problematic token, ")) ; Statement: $r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but the problematic token, ") 
(declare-const var3116!1 String)
(assert (= var3116!1 (str.++ var3116 ", but the problematic token, ")))
(define-const var1564 String (image/-1758362606 var3282)) ; Statement: $r7 = r6.<freemarker.core.Token: java.lang.String image> 
(assert true)
(define-const var1433 String (trim/-847153721 var1564)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: java.lang.String trim()>() 
(define-const var3350 String (var2995_jQuote/1315253176 var1433)) ; Statement: $r9 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r8) 
(assert true)
(define-const var390 String (append/672562846 var836 var3350)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var836!1 String)
(assert (= var836!1 (str.++ var836 var3350)))
(assert true)
(define-const var2558 String (append/672562846 var390 ", uses a different convention.")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", uses a different convention.") 
(declare-const var390!1 String)
(assert (= var390!1 (str.++ var390 ", uses a different convention.")))
(assert true)
(define-const var3027 String (toString/-2075883882 var2558)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3628 Int (beginLine/-1758362606 var3282)) ; Statement: $i6 = r6.<freemarker.core.Token: int beginLine> 
(define-const var22 Int (beginColumn/-1758362606 var3282)) ; Statement: $i5 = r6.<freemarker.core.Token: int beginColumn> 
(define-const var2608 Int (endLine/-1758362606 var3282)) ; Statement: $i4 = r6.<freemarker.core.Token: int endLine> 
(define-const var1159 Int (endColumn/-1758362606 var3282)) ; Statement: $i3 = r6.<freemarker.core.Token: int endColumn> 
(assert true)
;(assert (<init>/1657950015 var2024 var3027 0 var3628 var22 var2608 var1159)) ; Statement: specialinvoke $r0.<freemarker.core.TokenMgrError: void <init>(java.lang.String,int,int,int,int,int)>($r13, 0, $i6, $i5, $i4, $i3) 

(declare-const var2024!1 var2728)
(declare-const var3027!1 String)
(declare-const var3699 Int)
(declare-const var3628!1 Int)
(declare-const var22!1 Int)
(declare-const var2608!1 Int)
(declare-const var1159!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2728-init=([], freemarker.core.TokenMgrError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), initialNamingConvention/929889025=([freemarker.core.FMParserTokenManager], int), namingConvention/929889025=([freemarker.core.FMParserTokenManager], int), namingConventionEstabilisher/929889025=([freemarker.core.FMParserTokenManager], freemarker.core.Token), beginLine/-1758362606=([freemarker.core.Token], int), beginColumn/-1758362606=([freemarker.core.Token], int), var1318_formatPosition/-1135250777=([int, int], java.lang.String), image/-1758362606=([freemarker.core.Token], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var2995_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), endLine/-1758362606=([freemarker.core.Token], int), endColumn/-1758362606=([freemarker.core.Token], int), <init>/1657950015=([freemarker.core.TokenMgrError, java.lang.String, int, int, int, int, int], void)}
; {var3474=freemarker.core.FMParserTokenManager, var2362=r2, var149=freemarker.core.Token, var3282=r6, var2728=freemarker.core.TokenMgrError, var2024=$r0, var2499=$r1, var3079=$r3, var1992=$i0, var1807=$r26, var3101=$r27, var1823=$i1, var3509=$r28, var1939=$r4, var771=$r29, var965=$r14, var2571=$r18, var2347=$r15, var1012=$i8, var1578=$r16, var1690=$i7, var1318=freemarker.core._MessageUtil, var3850=$r17, var632=$r19, var3477=$r24, var653=$r20, var2008=$r21, var663=$r22, var2995=freemarker.template.utility.StringUtil, var2421=$r23, var2814=$r25, var779=$r30, var3116=$r5, var836=$r10, var1564=$r7, var1433=$r8, var3350=$r9, var390=$r11, var2558=$r12, var3027=$r13, var3628=$i6, var22=$i5, var2608=$i4, var1159=$i3, var3699=0}
; {freemarker.core.FMParserTokenManager=var3474, r2=var2362, freemarker.core.Token=var149, r6=var3282, freemarker.core.TokenMgrError=var2728, $r0=var2024, $r1=var2499, $r3=var3079, $i0=var1992, $r26=var1807, $r27=var3101, $i1=var1823, $r28=var3509, $r4=var1939, $r29=var771, $r14=var965, $r18=var2571, $r15=var2347, $i8=var1012, $r16=var1578, $i7=var1690, freemarker.core._MessageUtil=var1318, $r17=var3850, $r19=var632, $r24=var3477, $r20=var653, $r21=var2008, $r22=var663, freemarker.template.utility.StringUtil=var2995, $r23=var2421, $r25=var2814, $r30=var779, $r5=var3116, $r10=var836, $r7=var1564, $r8=var1433, $r9=var3350, $r11=var390, $r12=var2558, $r13=var3027, $i6=var3628, $i5=var22, $i4=var2608, $i3=var1159, 0=var3699}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 11,"<java.lang.String: java.lang.String trim()>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r2 := @this: freemarker.core.FMParserTokenManager;	r6 := @parameter0: freemarker.core.Token;	$r0 = new freemarker.core.TokenMgrError;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Naming convention mismatch. Identifiers that are part of the template language (not the user specified ones) ");	$i0 = r2.<freemarker.core.FMParserTokenManager: int initialNamingConvention>;	if $i0 != 10 goto $r26 = "must use the configured naming convention, which is the ";	$r26 = "must use the configured naming convention, which is the ";	$r27 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$i1 = r2.<freemarker.core.FMParserTokenManager: int namingConvention>;	if $i1 != 12 goto $i2 = r2.<freemarker.core.FMParserTokenManager: int namingConvention>;	$r28 = "camel case naming convention (like: exampleName) ";	goto [?= $r4 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28)];	$r4 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r29 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher>;	if $r29 == null goto $r30 = "";	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("estabilished by auto-detection at ");	$r15 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher>;	$i8 = $r15.<freemarker.core.Token: int beginLine>;	$r16 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher>;	$i7 = $r16.<freemarker.core.Token: int beginColumn>;	$r17 = staticinvoke <freemarker.core._MessageUtil: java.lang.String formatPosition(int,int)>($i8, $i7);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r24 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" by token ");	$r20 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher>;	$r21 = $r20.<freemarker.core.Token: java.lang.String image>;	$r22 = virtualinvoke $r21.<java.lang.String: java.lang.String trim()>();	$r23 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r30 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30)];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but the problematic token, ");	$r7 = r6.<freemarker.core.Token: java.lang.String image>;	$r8 = virtualinvoke $r7.<java.lang.String: java.lang.String trim()>();	$r9 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", uses a different convention.");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$i6 = r6.<freemarker.core.Token: int beginLine>;	$i5 = r6.<freemarker.core.Token: int beginColumn>;	$i4 = r6.<freemarker.core.Token: int endLine>;	$i3 = r6.<freemarker.core.Token: int endColumn>;	specialinvoke $r0.<freemarker.core.TokenMgrError: void <init>(java.lang.String,int,int,int,int,int)>($r13, 0, $i6, $i5, $i4, $i3);	return $r0
;block_num 7