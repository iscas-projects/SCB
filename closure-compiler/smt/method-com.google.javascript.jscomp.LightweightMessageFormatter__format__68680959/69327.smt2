(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var678 0)
(declare-sort var813 0)
(declare-sort var126 0)
(declare-sort var1743 0)
(declare-sort var2474 0)
(declare-sort var547 0)
(declare-sort var265 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSource/1681365446 (var1743) var126)
(declare-fun cast-from-var678-to-var1743 (var678) var1743)
(declare-fun getSourceName/21548920 (var813) String)
(declare-fun getLineNumber/-74210753 (var813) Int)
(declare-fun getCharno/648852549 (var813) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun includeLocation/2091399668 (var678) Bool)
(declare-fun includeLevel/2091399668 (var678) Bool)
(declare-fun getDescription/639719136 (var813) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun maybeEmbolden/1128244787 (var1743 String) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun defaultFormat/2091399668 (var678) var547)
(declare-fun getExcerptWithPosition/-1715265359 (var678 var813 String Int Int var547) String)
(declare-const null-var678 var678)
(declare-const null-var813 var813)
(declare-const null-Bool Bool)
(declare-const null-var126 var126)
(declare-const null-var2474 var2474)
(declare-const null-String String)
(declare-const var425 var678) ; Statement: r0 := @this: com.google.javascript.jscomp.LightweightMessageFormatter 
(assert (not (= var425 null-var678)))
(declare-const var1514 var813) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var1514 null-var813)))
(declare-const var161 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var161 null-Bool)))
(assert true)
(define-const var2690 var126 (getSource/1681365446 (cast-from-var678-to-var1743 var425))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>() 
(assert true)
(define-const var1746 String (getSourceName/21548920 var1514)) ; Statement: r13 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var2680 Int (getLineNumber/-74210753 var1514)) ; Statement: i4 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getLineNumber()>() 
(assert true)
(define-const var1589 Int (getCharno/648852549 var1514)) ; Statement: i5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getCharno()>() 
(define-const var3939 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3939)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3939!1 String)
(assert (= var3939!1 ""))
(define-const var3186 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3186)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3186!1 String)
(assert (= var3186!1 ""))
 ; Statement: if r1 != null goto $r5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert (not (not (= var2690 null-var126)))) ; Negate: Cond: r1 != null  
(define-const var926 var2474 null-var2474) ; Statement: $r14 = null 
 ; Statement: goto [?= r6 = $r14] 
(assert true) ; Non Conditional
(define-const var3805 var2474 var926) ; Statement: r6 = $r14 
(define-const var740 Bool (includeLocation/2091399668 var425)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLocation> 
 ; Statement: if $z0 == 0 goto $z2 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLevel> 
(assert (= (ite var740 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1668 Bool (includeLevel/2091399668 var425)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLevel> 
 ; Statement: if $z2 == 0 goto $r16 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert (= (ite var1668 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var1108 String (getDescription/639719136 var1514)) ; Statement: $r16 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
;(assert (append/672562846 var3186!1 var1108)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3186!2 String)
(assert (= var3186!2 (str.++ var3186!1 var1108)))
(assert true)
(define-const var2286 String (toString/-2075883882 var3186!2)) ; Statement: $r17 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var301 String (maybeEmbolden/1128244787 (cast-from-var678-to-var1743 var425) var2286)) ; Statement: $r18 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String maybeEmbolden(java.lang.String)>($r17) 
(assert true)
;(assert (append/672562846 var3939!1 var301)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3939!2 String)
(assert (= var3939!2 (str.++ var3939!1 var301)))
(assert true)
;(assert (append/-1166366385 var3939!2 10)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var3939!3 String)
(assert (str.prefixof var3939!2 var3939!3))
(define-const var2012 String var1746) ; Statement: $r8 = r13 
(define-const var1414 Int var2680) ; Statement: $i2 = i4 
(define-const var1898 Int var1589) ; Statement: $i3 = i5 
 ; Statement: if r6 == null goto $r19 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt defaultFormat> 
(assert (= var3805 null-var2474)) ; Cond: r6 == null 
(define-const var3665 var547 (defaultFormat/2091399668 var425)) ; Statement: $r19 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt defaultFormat> 
(assert true) ; Non Conditional
(assert true)
(define-const var3888 String (getExcerptWithPosition/-1715265359 var425 var1514 var2012 var1414 var1898 var3665)) ; Statement: $r9 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String getExcerptWithPosition(com.google.javascript.jscomp.JSError,java.lang.String,int,int,com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt)>(r2, $r8, $i2, $i3, $r19) 
 ; Statement: if $r9 == null goto $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3888 null-String)) ; Cond: $r9 == null 
(assert true)
(define-const var2884 String (toString/-2075883882 var3939!3)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getSource/1681365446=([com.google.javascript.jscomp.AbstractMessageFormatter], com.google.javascript.jscomp.SourceExcerptProvider), cast-from-var678-to-var1743=([com.google.javascript.jscomp.LightweightMessageFormatter], com.google.javascript.jscomp.AbstractMessageFormatter), getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), getLineNumber/-74210753=([com.google.javascript.jscomp.JSError], int), getCharno/648852549=([com.google.javascript.jscomp.JSError], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), includeLocation/2091399668=([com.google.javascript.jscomp.LightweightMessageFormatter], boolean), includeLevel/2091399668=([com.google.javascript.jscomp.LightweightMessageFormatter], boolean), getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), maybeEmbolden/1128244787=([com.google.javascript.jscomp.AbstractMessageFormatter, java.lang.String], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), defaultFormat/2091399668=([com.google.javascript.jscomp.LightweightMessageFormatter], com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt), getExcerptWithPosition/-1715265359=([com.google.javascript.jscomp.LightweightMessageFormatter, com.google.javascript.jscomp.JSError, java.lang.String, int, int, com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt], java.lang.String)}
; {var678=com.google.javascript.jscomp.LightweightMessageFormatter, var425=r0, var813=com.google.javascript.jscomp.JSError, var1514=r2, var161=z1, var126=com.google.javascript.jscomp.SourceExcerptProvider, var1743=com.google.javascript.jscomp.AbstractMessageFormatter, var2690=r1, var1746=r13, var2680=i4, var1589=i5, var3939=$r3, var3186=$r4, var2474=com.google.debugging.sourcemap.proto.Mapping$OriginalMapping, var926=$r14, var3805=r6, var740=$z0, var1668=$z2, var1108=$r16, var2286=$r17, var301=$r18, var2012=$r8, var1414=$i2, var1898=$i3, var547=com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt, var3665=$r19, var3888=$r9, var265=null_type, var2884=$r7}
; {com.google.javascript.jscomp.LightweightMessageFormatter=var678, r0=var425, com.google.javascript.jscomp.JSError=var813, r2=var1514, z1=var161, com.google.javascript.jscomp.SourceExcerptProvider=var126, com.google.javascript.jscomp.AbstractMessageFormatter=var1743, r1=var2690, r13=var1746, i4=var2680, i5=var1589, $r3=var3939, $r4=var3186, com.google.debugging.sourcemap.proto.Mapping$OriginalMapping=var2474, $r14=var926, r6=var3805, $z0=var740, $z2=var1668, $r16=var1108, $r17=var2286, $r18=var301, $r8=var2012, $i2=var1414, $i3=var1898, com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt=var547, $r19=var3665, $r9=var3888, null_type=var265, $r7=var2884}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.LightweightMessageFormatter;	r2 := @parameter0: com.google.javascript.jscomp.JSError;	z1 := @parameter1: boolean;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>();	r13 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	i4 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getLineNumber()>();	i5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getCharno()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	if r1 != null goto $r5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	$r14 = null;	goto [?= r6 = $r14];	r6 = $r14;	$z0 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLocation>;	if $z0 == 0 goto $z2 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLevel>;	$z2 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLevel>;	if $z2 == 0 goto $r16 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	$r16 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r17 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String maybeEmbolden(java.lang.String)>($r17);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r8 = r13;	$i2 = i4;	$i3 = i5;	if r6 == null goto $r19 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt defaultFormat>;	$r19 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt defaultFormat>;	$r9 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String getExcerptWithPosition(com.google.javascript.jscomp.JSError,java.lang.String,int,int,com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt)>(r2, $r8, $i2, $i3, $r19);	if $r9 == null goto $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 8