(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var71 0)
(declare-sort var266 0)
(declare-sort var1261 0)
(declare-sort var2104 0)
(declare-sort var2246 0)
(declare-sort var2613 0)
(declare-sort var2067 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSource/1681365446 (var2104) var1261)
(declare-fun cast-from-var71-to-var2104 (var71) var2104)
(declare-fun getSourceName/21548920 (var266) String)
(declare-fun getLineNumber/-74210753 (var266) Int)
(declare-fun getCharno/648852549 (var266) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1261_getSourceMapping/-1669350701 (var1261 String Int Int) var2246)
(declare-fun includeLocation/2091399668 (var71) Bool)
(declare-fun includeLevel/2091399668 (var71) Bool)
(declare-fun getDescription/639719136 (var266) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun maybeEmbolden/1128244787 (var2104 String) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun defaultFormat/2091399668 (var71) var2613)
(declare-fun getExcerptWithPosition/-1715265359 (var71 var266 String Int Int var2613) String)
(declare-const null-var71 var71)
(declare-const null-var266 var266)
(declare-const null-Bool Bool)
(declare-const null-var1261 var1261)
(declare-const null-var2246 var2246)
(declare-const null-String String)
(declare-const var2137 var71) ; Statement: r0 := @this: com.google.javascript.jscomp.LightweightMessageFormatter 
(assert (not (= var2137 null-var71)))
(declare-const var3716 var266) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var3716 null-var266)))
(declare-const var2829 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2829 null-Bool)))
(assert true)
(define-const var3096 var1261 (getSource/1681365446 (cast-from-var71-to-var2104 var2137))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>() 
(assert true)
(define-const var1089 String (getSourceName/21548920 var3716)) ; Statement: r13 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var776 Int (getLineNumber/-74210753 var3716)) ; Statement: i4 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getLineNumber()>() 
(assert true)
(define-const var1063 Int (getCharno/648852549 var3716)) ; Statement: i5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getCharno()>() 
(define-const var440 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var440)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var440!1 String)
(assert (= var440!1 ""))
(define-const var493 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var493)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var493!1 String)
(assert (= var493!1 ""))
 ; Statement: if r1 != null goto $r5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert (not (= var3096 null-var1261))) ; Cond: r1 != null 
(assert true)
(define-const var3040 String (getSourceName/21548920 var3716)) ; Statement: $r5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var389 Int (getLineNumber/-74210753 var3716)) ; Statement: $i1 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getLineNumber()>() 
(assert true)
(define-const var2361 Int (getCharno/648852549 var3716)) ; Statement: $i0 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getCharno()>() 
(define-const var1068 var2246 (var1261_getSourceMapping/-1669350701 var3096 var3040 var389 var2361)) ; Statement: $r14 = interfaceinvoke r1.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.debugging.sourcemap.proto.Mapping$OriginalMapping getSourceMapping(java.lang.String,int,int)>($r5, $i1, $i0) 
(assert true) ; Non Conditional
(define-const var3033 var2246 var1068) ; Statement: r6 = $r14 
(define-const var3333 Bool (includeLocation/2091399668 var2137)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLocation> 
 ; Statement: if $z0 == 0 goto $z2 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLevel> 
(assert (= (ite var3333 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2169 Bool (includeLevel/2091399668 var2137)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLevel> 
 ; Statement: if $z2 == 0 goto $r16 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert (= (ite var2169 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var1056 String (getDescription/639719136 var3716)) ; Statement: $r16 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
;(assert (append/672562846 var493!1 var1056)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var493!2 String)
(assert (= var493!2 (str.++ var493!1 var1056)))
(assert true)
(define-const var376 String (toString/-2075883882 var493!2)) ; Statement: $r17 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var92 String (maybeEmbolden/1128244787 (cast-from-var71-to-var2104 var2137) var376)) ; Statement: $r18 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String maybeEmbolden(java.lang.String)>($r17) 
(assert true)
;(assert (append/672562846 var440!1 var92)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var440!2 String)
(assert (= var440!2 (str.++ var440!1 var92)))
(assert true)
;(assert (append/-1166366385 var440!2 10)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var440!3 String)
(assert (str.prefixof var440!2 var440!3))
(define-const var3911 String var1089) ; Statement: $r8 = r13 
(define-const var1081 Int var776) ; Statement: $i2 = i4 
(define-const var1457 Int var1063) ; Statement: $i3 = i5 
 ; Statement: if r6 == null goto $r19 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt defaultFormat> 
(assert (= var3033 null-var2246)) ; Cond: r6 == null 
(define-const var1601 var2613 (defaultFormat/2091399668 var2137)) ; Statement: $r19 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt defaultFormat> 
(assert true) ; Non Conditional
(assert true)
(define-const var1585 String (getExcerptWithPosition/-1715265359 var2137 var3716 var3911 var1081 var1457 var1601)) ; Statement: $r9 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String getExcerptWithPosition(com.google.javascript.jscomp.JSError,java.lang.String,int,int,com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt)>(r2, $r8, $i2, $i3, $r19) 
 ; Statement: if $r9 == null goto $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1585 null-String)) ; Cond: $r9 == null 
(assert true)
(define-const var1528 String (toString/-2075883882 var440!3)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getSource/1681365446=([com.google.javascript.jscomp.AbstractMessageFormatter], com.google.javascript.jscomp.SourceExcerptProvider), cast-from-var71-to-var2104=([com.google.javascript.jscomp.LightweightMessageFormatter], com.google.javascript.jscomp.AbstractMessageFormatter), getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), getLineNumber/-74210753=([com.google.javascript.jscomp.JSError], int), getCharno/648852549=([com.google.javascript.jscomp.JSError], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1261_getSourceMapping/-1669350701=([com.google.javascript.jscomp.SourceExcerptProvider, java.lang.String, int, int], com.google.debugging.sourcemap.proto.Mapping$OriginalMapping), includeLocation/2091399668=([com.google.javascript.jscomp.LightweightMessageFormatter], boolean), includeLevel/2091399668=([com.google.javascript.jscomp.LightweightMessageFormatter], boolean), getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), maybeEmbolden/1128244787=([com.google.javascript.jscomp.AbstractMessageFormatter, java.lang.String], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), defaultFormat/2091399668=([com.google.javascript.jscomp.LightweightMessageFormatter], com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt), getExcerptWithPosition/-1715265359=([com.google.javascript.jscomp.LightweightMessageFormatter, com.google.javascript.jscomp.JSError, java.lang.String, int, int, com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt], java.lang.String)}
; {var71=com.google.javascript.jscomp.LightweightMessageFormatter, var2137=r0, var266=com.google.javascript.jscomp.JSError, var3716=r2, var2829=z1, var1261=com.google.javascript.jscomp.SourceExcerptProvider, var2104=com.google.javascript.jscomp.AbstractMessageFormatter, var3096=r1, var1089=r13, var776=i4, var1063=i5, var440=$r3, var493=$r4, var3040=$r5, var389=$i1, var2361=$i0, var2246=com.google.debugging.sourcemap.proto.Mapping$OriginalMapping, var1068=$r14, var3033=r6, var3333=$z0, var2169=$z2, var1056=$r16, var376=$r17, var92=$r18, var3911=$r8, var1081=$i2, var1457=$i3, var2613=com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt, var1601=$r19, var1585=$r9, var2067=null_type, var1528=$r7}
; {com.google.javascript.jscomp.LightweightMessageFormatter=var71, r0=var2137, com.google.javascript.jscomp.JSError=var266, r2=var3716, z1=var2829, com.google.javascript.jscomp.SourceExcerptProvider=var1261, com.google.javascript.jscomp.AbstractMessageFormatter=var2104, r1=var3096, r13=var1089, i4=var776, i5=var1063, $r3=var440, $r4=var493, $r5=var3040, $i1=var389, $i0=var2361, com.google.debugging.sourcemap.proto.Mapping$OriginalMapping=var2246, $r14=var1068, r6=var3033, $z0=var3333, $z2=var2169, $r16=var1056, $r17=var376, $r18=var92, $r8=var3911, $i2=var1081, $i3=var1457, com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt=var2613, $r19=var1601, $r9=var1585, null_type=var2067, $r7=var1528}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.LightweightMessageFormatter;	r2 := @parameter0: com.google.javascript.jscomp.JSError;	z1 := @parameter1: boolean;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>();	r13 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	i4 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getLineNumber()>();	i5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getCharno()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	if r1 != null goto $r5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	$r5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	$i1 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getLineNumber()>();	$i0 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getCharno()>();	$r14 = interfaceinvoke r1.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.debugging.sourcemap.proto.Mapping$OriginalMapping getSourceMapping(java.lang.String,int,int)>($r5, $i1, $i0);	r6 = $r14;	$z0 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLocation>;	if $z0 == 0 goto $z2 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLevel>;	$z2 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLevel>;	if $z2 == 0 goto $r16 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	$r16 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r17 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String maybeEmbolden(java.lang.String)>($r17);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r8 = r13;	$i2 = i4;	$i3 = i5;	if r6 == null goto $r19 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt defaultFormat>;	$r19 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt defaultFormat>;	$r9 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String getExcerptWithPosition(com.google.javascript.jscomp.JSError,java.lang.String,int,int,com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt)>(r2, $r8, $i2, $i3, $r19);	if $r9 == null goto $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 8