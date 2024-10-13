(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3125 0)
(declare-sort var1804 0)
(declare-sort var2597 0)
(declare-sort var3009 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2597-init () var2597)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun initialNamingConvention/929889025 (var3125) Int)
(declare-fun namingConvention/929889025 (var3125) Int)
(declare-fun namingConventionEstabilisher/929889025 (var3125) var1804)
(declare-fun image/-1758362606 (var1804) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var3009_jQuote/1315253176 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun beginLine/-1758362606 (var1804) Int)
(declare-fun beginColumn/-1758362606 (var1804) Int)
(declare-fun endLine/-1758362606 (var1804) Int)
(declare-fun endColumn/-1758362606 (var1804) Int)
(declare-fun <init>/1657950015 (var2597 String Int Int Int Int Int) void)
(declare-const null-var3125 var3125)
(declare-const null-var1804 var1804)
(declare-const var56 var3125) ; Statement: r2 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var56 null-var3125)))
(declare-const var89 var1804) ; Statement: r6 := @parameter0: freemarker.core.Token 
(assert (not (= var89 null-var1804)))
(define-const var2433 var2597 var2597-init) ; Statement: $r0 = new freemarker.core.TokenMgrError 
(define-const var2176 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2176)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2176!1 String)
(assert (= var2176!1 ""))
(assert true)
(define-const var2601 String (append/672562846 var2176!1 "Naming convention mismatch. Identifiers that are part of the template language (not the user specified ones) ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Naming convention mismatch. Identifiers that are part of the template language (not the user specified ones) ") 
(declare-const var2176!2 String)
(assert (= var2176!2 (str.++ var2176!1 "Naming convention mismatch. Identifiers that are part of the template language (not the user specified ones) ")))
(define-const var2524 Int (initialNamingConvention/929889025 var56)) ; Statement: $i0 = r2.<freemarker.core.FMParserTokenManager: int initialNamingConvention> 
 ; Statement: if $i0 != 10 goto $r26 = "must use the configured naming convention, which is the " 
(assert (not (= var2524 10))) ; Cond: $i0 != 10 
(define-const var1393 String "must use the configured naming convention, which is the ") ; Statement: $r26 = "must use the configured naming convention, which is the " 
(assert true) ; Non Conditional
(assert true)
(define-const var824 String (append/672562846 var2601 var1393)) ; Statement: $r27 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var2601!1 String)
(assert (= var2601!1 (str.++ var2601 var1393)))
(define-const var3061 Int (namingConvention/929889025 var56)) ; Statement: $i1 = r2.<freemarker.core.FMParserTokenManager: int namingConvention> 
 ; Statement: if $i1 != 12 goto $i2 = r2.<freemarker.core.FMParserTokenManager: int namingConvention> 
(assert (not (not (= var3061 12)))) ; Negate: Cond: $i1 != 12  
(define-const var745 String "camel case naming convention (like: exampleName) ") ; Statement: $r28 = "camel case naming convention (like: exampleName) " 
 ; Statement: goto [?= $r4 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3587 String (append/672562846 var824 var745)) ; Statement: $r4 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var824!1 String)
(assert (= var824!1 (str.++ var824 var745)))
(define-const var597 var1804 (namingConventionEstabilisher/929889025 var56)) ; Statement: $r29 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher> 
 ; Statement: if $r29 == null goto $r30 = "" 
(assert (= var597 null-var1804)) ; Cond: $r29 == null 
(define-const var3877 String "") ; Statement: $r30 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var29 String (append/672562846 var3587 var3877)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var3587!1 String)
(assert (= var3587!1 (str.++ var3587 var3877)))
(assert true)
(define-const var3454 String (append/672562846 var29 ", but the problematic token, ")) ; Statement: $r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but the problematic token, ") 
(declare-const var29!1 String)
(assert (= var29!1 (str.++ var29 ", but the problematic token, ")))
(define-const var3510 String (image/-1758362606 var89)) ; Statement: $r7 = r6.<freemarker.core.Token: java.lang.String image> 
(assert true)
(define-const var1755 String (trim/-847153721 var3510)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: java.lang.String trim()>() 
(define-const var2069 String (var3009_jQuote/1315253176 var1755)) ; Statement: $r9 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r8) 
(assert true)
(define-const var226 String (append/672562846 var3454 var2069)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3454!1 String)
(assert (= var3454!1 (str.++ var3454 var2069)))
(assert true)
(define-const var3358 String (append/672562846 var226 ", uses a different convention.")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", uses a different convention.") 
(declare-const var226!1 String)
(assert (= var226!1 (str.++ var226 ", uses a different convention.")))
(assert true)
(define-const var677 String (toString/-2075883882 var3358)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1653 Int (beginLine/-1758362606 var89)) ; Statement: $i6 = r6.<freemarker.core.Token: int beginLine> 
(define-const var3463 Int (beginColumn/-1758362606 var89)) ; Statement: $i5 = r6.<freemarker.core.Token: int beginColumn> 
(define-const var2173 Int (endLine/-1758362606 var89)) ; Statement: $i4 = r6.<freemarker.core.Token: int endLine> 
(define-const var732 Int (endColumn/-1758362606 var89)) ; Statement: $i3 = r6.<freemarker.core.Token: int endColumn> 
(assert true)
;(assert (<init>/1657950015 var2433 var677 0 var1653 var3463 var2173 var732)) ; Statement: specialinvoke $r0.<freemarker.core.TokenMgrError: void <init>(java.lang.String,int,int,int,int,int)>($r13, 0, $i6, $i5, $i4, $i3) 

(declare-const var2433!1 var2597)
(declare-const var677!1 String)
(declare-const var899 Int)
(declare-const var1653!1 Int)
(declare-const var3463!1 Int)
(declare-const var2173!1 Int)
(declare-const var732!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2597-init=([], freemarker.core.TokenMgrError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), initialNamingConvention/929889025=([freemarker.core.FMParserTokenManager], int), namingConvention/929889025=([freemarker.core.FMParserTokenManager], int), namingConventionEstabilisher/929889025=([freemarker.core.FMParserTokenManager], freemarker.core.Token), image/-1758362606=([freemarker.core.Token], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var3009_jQuote/1315253176=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), beginLine/-1758362606=([freemarker.core.Token], int), beginColumn/-1758362606=([freemarker.core.Token], int), endLine/-1758362606=([freemarker.core.Token], int), endColumn/-1758362606=([freemarker.core.Token], int), <init>/1657950015=([freemarker.core.TokenMgrError, java.lang.String, int, int, int, int, int], void)}
; {var3125=freemarker.core.FMParserTokenManager, var56=r2, var1804=freemarker.core.Token, var89=r6, var2597=freemarker.core.TokenMgrError, var2433=$r0, var2176=$r1, var2601=$r3, var2524=$i0, var1393=$r26, var824=$r27, var3061=$i1, var745=$r28, var3587=$r4, var597=$r29, var3877=$r30, var29=$r5, var3454=$r10, var3510=$r7, var1755=$r8, var3009=freemarker.template.utility.StringUtil, var2069=$r9, var226=$r11, var3358=$r12, var677=$r13, var1653=$i6, var3463=$i5, var2173=$i4, var732=$i3, var899=0}
; {freemarker.core.FMParserTokenManager=var3125, r2=var56, freemarker.core.Token=var1804, r6=var89, freemarker.core.TokenMgrError=var2597, $r0=var2433, $r1=var2176, $r3=var2601, $i0=var2524, $r26=var1393, $r27=var824, $i1=var3061, $r28=var745, $r4=var3587, $r29=var597, $r30=var3877, $r5=var29, $r10=var3454, $r7=var3510, $r8=var1755, freemarker.template.utility.StringUtil=var3009, $r9=var2069, $r11=var226, $r12=var3358, $r13=var677, $i6=var1653, $i5=var3463, $i4=var2173, $i3=var732, 0=var899}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: freemarker.core.FMParserTokenManager;	r6 := @parameter0: freemarker.core.Token;	$r0 = new freemarker.core.TokenMgrError;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Naming convention mismatch. Identifiers that are part of the template language (not the user specified ones) ");	$i0 = r2.<freemarker.core.FMParserTokenManager: int initialNamingConvention>;	if $i0 != 10 goto $r26 = "must use the configured naming convention, which is the ";	$r26 = "must use the configured naming convention, which is the ";	$r27 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$i1 = r2.<freemarker.core.FMParserTokenManager: int namingConvention>;	if $i1 != 12 goto $i2 = r2.<freemarker.core.FMParserTokenManager: int namingConvention>;	$r28 = "camel case naming convention (like: exampleName) ";	goto [?= $r4 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28)];	$r4 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r29 = r2.<freemarker.core.FMParserTokenManager: freemarker.core.Token namingConventionEstabilisher>;	if $r29 == null goto $r30 = "";	$r30 = "";	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but the problematic token, ");	$r7 = r6.<freemarker.core.Token: java.lang.String image>;	$r8 = virtualinvoke $r7.<java.lang.String: java.lang.String trim()>();	$r9 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String jQuote(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", uses a different convention.");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$i6 = r6.<freemarker.core.Token: int beginLine>;	$i5 = r6.<freemarker.core.Token: int beginColumn>;	$i4 = r6.<freemarker.core.Token: int endLine>;	$i3 = r6.<freemarker.core.Token: int endColumn>;	specialinvoke $r0.<freemarker.core.TokenMgrError: void <init>(java.lang.String,int,int,int,int,int)>($r13, 0, $i6, $i5, $i4, $i3);	return $r0
;block_num 7