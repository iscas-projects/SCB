(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1082 0)
(declare-sort var1934 0)
(declare-sort var975 0)
(declare-sort var1344 0)
(declare-sort var619 0)
(declare-sort var2857 0)
(declare-sort var2626 0)
(declare-sort var301 0)
(declare-sort var110 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1193223215 (var1082 var975) void)
(declare-fun var619_check/1854950253 (var2857) void)
(declare-fun cast-from-var1344-to-var2857 (var1344) var2857)
(declare-fun pCfg/-1475596563 (var1082) var1344)
(declare-fun cast-from-var1934-to-var2857 (var1934) var2857)
(declare-fun template/-1475596563 (var1082) var1934)
(declare-fun var1344_getIncompatibleImprovements/730125599 (var1344) var2626)
(declare-fun intValue/1676201972 (var2626) Int)
(declare-fun token_source/-1475596563 (var1082) var975)
(declare-fun incompatibleImprovements/929889025 (var975) Int)
(declare-fun incompatibleImprovements/-1475596563 (var1082) Int)
(declare-fun var1344_getRecognizeStandardFileExtensions/656475366 (var1344) Bool)
(declare-fun var1344_getAutoEscapingPolicy/1364495315 (var1344) Int)
(declare-fun autoEscapingPolicy/-1475596563 (var1082) Int)
(declare-fun var1344_getOutputFormat/-1207800234 (var1344) var301)
(declare-fun outputFormat/-1475596563 (var1082) var301)
(declare-fun recalculateAutoEscapingField/-1797622714 (var1082) void)
(declare-fun setParser/763871378 (var975 var1082) void)
(declare-fun var1344_getStrictSyntaxMode/1266016586 (var1344) Bool)
(declare-fun strictSyntaxMode/929889025 (var975) Bool)
(declare-fun var1344_getTagSyntax/-155548085 (var1344) Int)
(declare-fun var110-init () var110)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var110 String) void)
(declare-const null-var1082 var1082)
(declare-const null-var1934 var1934)
(declare-const null-Bool Bool)
(declare-const null-var975 var975)
(declare-const null-var1344 var1344)
(declare-const var2861 var1082) ; Statement: r0 := @this: freemarker.core.FMParser 
(assert (not (= var2861 null-var1082)))
(declare-const var2079 var1934) ; Statement: r3 := @parameter0: freemarker.template.Template 
(assert (not (= var2079 null-var1934)))
(declare-const var219 Bool) ; Statement: z4 := @parameter1: boolean 
(assert (not (= var219 null-Bool)))
(declare-const var1744 var975) ; Statement: r1 := @parameter2: freemarker.core.FMParserTokenManager 
(assert (not (= var1744 null-var975)))
(declare-const var2448 var1344) ; Statement: r2 := @parameter3: freemarker.core.ParserConfiguration 
(assert (not (= var2448 null-var1344)))
(assert true)
;(assert (<init>/1193223215 var2861 var1744)) ; Statement: specialinvoke r0.<freemarker.core.FMParser: void <init>(freemarker.core.FMParserTokenManager)>(r1) 

(declare-const var2861!1 var1082)
(declare-const var1744!1 var975)
;(assert (var619_check/1854950253 (cast-from-var1344-to-var2857 var2448))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.Object)>(r2) 

(declare-const var2448!1 var1344)
(declare-const var2861!2 var1082)
(assert (not (= var2861!2 null-var1082)))
(assert (= (pCfg/-1475596563 var2861!2) var2448!1)) ; Statement: r0.<freemarker.core.FMParser: freemarker.core.ParserConfiguration pCfg> = r2 
;(assert (var619_check/1854950253 (cast-from-var1934-to-var2857 var2079))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.Object)>(r3) 

(declare-const var2079!1 var1934)
(declare-const var2861!3 var1082)
(assert (not (= var2861!3 null-var1082)))
(assert (= (template/-1475596563 var2861!3) var2079!1)) ; Statement: r0.<freemarker.core.FMParser: freemarker.template.Template template> = r3 
(define-const var391 Bool true) ; Statement: $z0 = r2 instanceof freemarker.core.LegacyConstructorParserConfiguration 
 ; Statement: if $z0 == 0 goto $r4 = interfaceinvoke r2.<freemarker.core.ParserConfiguration: freemarker.template.Version getIncompatibleImprovements()>() 
(assert (= (ite var391 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3733 var2626 (var1344_getIncompatibleImprovements/730125599 var2448!1)) ; Statement: $r4 = interfaceinvoke r2.<freemarker.core.ParserConfiguration: freemarker.template.Version getIncompatibleImprovements()>() 
(assert true)
(define-const var462 Int (intValue/1676201972 var3733)) ; Statement: $i4 = virtualinvoke $r4.<freemarker.template.Version: int intValue()>() 
(define-const var1915 var975 (token_source/-1475596563 var2861!3)) ; Statement: $r5 = r0.<freemarker.core.FMParser: freemarker.core.FMParserTokenManager token_source> 
(declare-const var1915!1 var975)
(assert (not (= var1915!1 null-var975)))
(assert (= (incompatibleImprovements/929889025 var1915!1) var462)) ; Statement: $r5.<freemarker.core.FMParserTokenManager: int incompatibleImprovements> = $i4 
(declare-const var2861!4 var1082)
(assert (not (= var2861!4 null-var1082)))
(assert (= (incompatibleImprovements/-1475596563 var2861!4) var462)) ; Statement: r0.<freemarker.core.FMParser: int incompatibleImprovements> = $i4 
(define-const var1128 Bool (var1344_getRecognizeStandardFileExtensions/656475366 var2448!1)) ; Statement: $z1 = interfaceinvoke r2.<freemarker.core.ParserConfiguration: boolean getRecognizeStandardFileExtensions()>() 
 ; Statement: if $z1 == 0 goto $i0 = interfaceinvoke r2.<freemarker.core.ParserConfiguration: int getAutoEscapingPolicy()>() 
(assert (= (ite var1128 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3771 Int (var1344_getAutoEscapingPolicy/1364495315 var2448!1)) ; Statement: $i0 = interfaceinvoke r2.<freemarker.core.ParserConfiguration: int getAutoEscapingPolicy()>() 
(declare-const var2861!5 var1082)
(assert (not (= var2861!5 null-var1082)))
(assert (= (autoEscapingPolicy/-1475596563 var2861!5) var3771)) ; Statement: r0.<freemarker.core.FMParser: int autoEscapingPolicy> = $i0 
(define-const var3268 var301 (var1344_getOutputFormat/-1207800234 var2448!1)) ; Statement: $r6 = interfaceinvoke r2.<freemarker.core.ParserConfiguration: freemarker.core.OutputFormat getOutputFormat()>() 
(declare-const var2861!6 var1082)
(assert (not (= var2861!6 null-var1082)))
(assert (= (outputFormat/-1475596563 var2861!6) var3268)) ; Statement: r0.<freemarker.core.FMParser: freemarker.core.OutputFormat outputFormat> = $r6 
 ; Statement: goto [?= specialinvoke r0.<freemarker.core.FMParser: void recalculateAutoEscapingField()>()] 
(assert true) ; Non Conditional
(assert true)
;(assert (recalculateAutoEscapingField/-1797622714 var2861!6)) ; Statement: specialinvoke r0.<freemarker.core.FMParser: void recalculateAutoEscapingField()>() 

(declare-const var2861!7 var1082)
(define-const var2951 var975 (token_source/-1475596563 var2861!7)) ; Statement: $r7 = r0.<freemarker.core.FMParser: freemarker.core.FMParserTokenManager token_source> 
(assert true)
;(assert (setParser/763871378 var2951 var2861!7)) ; Statement: virtualinvoke $r7.<freemarker.core.FMParserTokenManager: void setParser(freemarker.core.FMParser)>(r0) 

(declare-const var2951!1 var975)
(declare-const var2861!8 var1082)
(define-const var766 var975 (token_source/-1475596563 var2861!8)) ; Statement: $r8 = r0.<freemarker.core.FMParser: freemarker.core.FMParserTokenManager token_source> 
(define-const var2659 Bool (var1344_getStrictSyntaxMode/1266016586 var2448!1)) ; Statement: $z2 = interfaceinvoke r2.<freemarker.core.ParserConfiguration: boolean getStrictSyntaxMode()>() 
(declare-const var766!1 var975)
(assert (not (= var766!1 null-var975)))
(assert (= (strictSyntaxMode/929889025 var766!1) var2659)) ; Statement: $r8.<freemarker.core.FMParserTokenManager: boolean strictSyntaxMode> = $z2 
(define-const var1584 Int (var1344_getTagSyntax/-155548085 var2448!1)) ; Statement: $i1 = interfaceinvoke r2.<freemarker.core.ParserConfiguration: int getTagSyntax()>() 
 ; Statement: tableswitch($i1) {     case 0: goto $r19 = r0.<freemarker.core.FMParser: freemarker.core.FMParserTokenManager token_source>;     case 1: goto $r18 = r0.<freemarker.core.FMParser: freemarker.core.FMParserTokenManager token_source>;     case 2: goto $r9 = r0.<freemarker.core.FMParser: freemarker.core.FMParserTokenManager token_source>;     default: goto $r20 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1584 2)) (and (not (= var1584 1)) (and (not (= var1584 0)) true)))) ; Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Intersect: Negate: Cond: $i1 == 0   and Non Conditional   
(define-const var1822 var110 var110-init) ; Statement: $r20 = new java.lang.IllegalArgumentException 
(define-const var3195 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3195)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3195!1 String)
(assert (= var3195!1 ""))
(assert true)
(define-const var2717 String (append/672562846 var3195!1 "Illegal argument for tagSyntax: ")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal argument for tagSyntax: ") 
(declare-const var3195!2 String)
(assert (= var3195!2 (str.++ var3195!1 "Illegal argument for tagSyntax: ")))
(assert true)
(define-const var1973 String (append/-1001720160 var2717 var1584)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2717!1 String)
(assert (str.prefixof var2717 var2717!1))
(assert true)
(define-const var3214 String (toString/-2075883882 var1973)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1822 var3214)) ; Statement: specialinvoke $r20.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r24) 

(declare-const var1822!1 var110)
(declare-const var3214!1 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1193223215=([freemarker.core.FMParser, freemarker.core.FMParserTokenManager], void), var619_check/1854950253=([java.lang.Object], void), cast-from-var1344-to-var2857=([freemarker.core.ParserConfiguration], java.lang.Object), pCfg/-1475596563=([freemarker.core.FMParser], freemarker.core.ParserConfiguration), cast-from-var1934-to-var2857=([freemarker.template.Template], java.lang.Object), template/-1475596563=([freemarker.core.FMParser], freemarker.template.Template), var1344_getIncompatibleImprovements/730125599=([freemarker.core.ParserConfiguration], freemarker.template.Version), intValue/1676201972=([freemarker.template.Version], int), token_source/-1475596563=([freemarker.core.FMParser], freemarker.core.FMParserTokenManager), incompatibleImprovements/929889025=([freemarker.core.FMParserTokenManager], int), incompatibleImprovements/-1475596563=([freemarker.core.FMParser], int), var1344_getRecognizeStandardFileExtensions/656475366=([freemarker.core.ParserConfiguration], boolean), var1344_getAutoEscapingPolicy/1364495315=([freemarker.core.ParserConfiguration], int), autoEscapingPolicy/-1475596563=([freemarker.core.FMParser], int), var1344_getOutputFormat/-1207800234=([freemarker.core.ParserConfiguration], freemarker.core.OutputFormat), outputFormat/-1475596563=([freemarker.core.FMParser], freemarker.core.OutputFormat), recalculateAutoEscapingField/-1797622714=([freemarker.core.FMParser], void), setParser/763871378=([freemarker.core.FMParserTokenManager, freemarker.core.FMParser], void), var1344_getStrictSyntaxMode/1266016586=([freemarker.core.ParserConfiguration], boolean), strictSyntaxMode/929889025=([freemarker.core.FMParserTokenManager], boolean), var1344_getTagSyntax/-155548085=([freemarker.core.ParserConfiguration], int), var110-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1082=freemarker.core.FMParser, var2861=r0, var1934=freemarker.template.Template, var2079=r3, var219=z4, var975=freemarker.core.FMParserTokenManager, var1744=r1, var1344=freemarker.core.ParserConfiguration, var2448=r2, var619=freemarker.template.utility.NullArgumentException, var2857=java.lang.Object, var391=$z0, var2626=freemarker.template.Version, var3733=$r4, var462=$i4, var1915=$r5, var1128=$z1, var3771=$i0, var301=freemarker.core.OutputFormat, var3268=$r6, var2951=$r7, var766=$r8, var2659=$z2, var1584=$i1, var110=java.lang.IllegalArgumentException, var1822=$r20, var3195=$r21, var2717=$r22, var1973=$r23, var3214=$r24}
; {freemarker.core.FMParser=var1082, r0=var2861, freemarker.template.Template=var1934, r3=var2079, z4=var219, freemarker.core.FMParserTokenManager=var975, r1=var1744, freemarker.core.ParserConfiguration=var1344, r2=var2448, freemarker.template.utility.NullArgumentException=var619, java.lang.Object=var2857, $z0=var391, freemarker.template.Version=var2626, $r4=var3733, $i4=var462, $r5=var1915, $z1=var1128, $i0=var3771, freemarker.core.OutputFormat=var301, $r6=var3268, $r7=var2951, $r8=var766, $z2=var2659, $i1=var1584, java.lang.IllegalArgumentException=var110, $r20=var1822, $r21=var3195, $r22=var2717, $r23=var1973, $r24=var3214}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.FMParser;	r3 := @parameter0: freemarker.template.Template;	z4 := @parameter1: boolean;	r1 := @parameter2: freemarker.core.FMParserTokenManager;	r2 := @parameter3: freemarker.core.ParserConfiguration;	specialinvoke r0.<freemarker.core.FMParser: void <init>(freemarker.core.FMParserTokenManager)>(r1);	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.Object)>(r2);	r0.<freemarker.core.FMParser: freemarker.core.ParserConfiguration pCfg> = r2;	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.Object)>(r3);	r0.<freemarker.core.FMParser: freemarker.template.Template template> = r3;	$z0 = r2 instanceof freemarker.core.LegacyConstructorParserConfiguration;	if $z0 == 0 goto $r4 = interfaceinvoke r2.<freemarker.core.ParserConfiguration: freemarker.template.Version getIncompatibleImprovements()>();	$r4 = interfaceinvoke r2.<freemarker.core.ParserConfiguration: freemarker.template.Version getIncompatibleImprovements()>();	$i4 = virtualinvoke $r4.<freemarker.template.Version: int intValue()>();	$r5 = r0.<freemarker.core.FMParser: freemarker.core.FMParserTokenManager token_source>;	$r5.<freemarker.core.FMParserTokenManager: int incompatibleImprovements> = $i4;	r0.<freemarker.core.FMParser: int incompatibleImprovements> = $i4;	$z1 = interfaceinvoke r2.<freemarker.core.ParserConfiguration: boolean getRecognizeStandardFileExtensions()>();	if $z1 == 0 goto $i0 = interfaceinvoke r2.<freemarker.core.ParserConfiguration: int getAutoEscapingPolicy()>();	$i0 = interfaceinvoke r2.<freemarker.core.ParserConfiguration: int getAutoEscapingPolicy()>();	r0.<freemarker.core.FMParser: int autoEscapingPolicy> = $i0;	$r6 = interfaceinvoke r2.<freemarker.core.ParserConfiguration: freemarker.core.OutputFormat getOutputFormat()>();	r0.<freemarker.core.FMParser: freemarker.core.OutputFormat outputFormat> = $r6;	goto [?= specialinvoke r0.<freemarker.core.FMParser: void recalculateAutoEscapingField()>()];	specialinvoke r0.<freemarker.core.FMParser: void recalculateAutoEscapingField()>();	$r7 = r0.<freemarker.core.FMParser: freemarker.core.FMParserTokenManager token_source>;	virtualinvoke $r7.<freemarker.core.FMParserTokenManager: void setParser(freemarker.core.FMParser)>(r0);	$r8 = r0.<freemarker.core.FMParser: freemarker.core.FMParserTokenManager token_source>;	$z2 = interfaceinvoke r2.<freemarker.core.ParserConfiguration: boolean getStrictSyntaxMode()>();	$r8.<freemarker.core.FMParserTokenManager: boolean strictSyntaxMode> = $z2;	$i1 = interfaceinvoke r2.<freemarker.core.ParserConfiguration: int getTagSyntax()>();	tableswitch($i1) {     case 0: goto $r19 = r0.<freemarker.core.FMParser: freemarker.core.FMParserTokenManager token_source>;     case 1: goto $r18 = r0.<freemarker.core.FMParser: freemarker.core.FMParserTokenManager token_source>;     case 2: goto $r9 = r0.<freemarker.core.FMParser: freemarker.core.FMParserTokenManager token_source>;     default: goto $r20 = new java.lang.IllegalArgumentException; };	$r20 = new java.lang.IllegalArgumentException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal argument for tagSyntax: ");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r24);	throw $r20
;block_num 5