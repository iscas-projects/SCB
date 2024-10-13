(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2460 0)
(declare-sort var3180 0)
(declare-sort var597 0)
(declare-sort var1742 0)
(declare-sort var135 0)
(declare-sort var2686 0)
(declare-sort var695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSource/1681365446 (var1742) var597)
(declare-fun cast-from-var2460-to-var1742 (var2460) var1742)
(declare-fun getSourceName/21548920 (var3180) String)
(declare-fun getLineNumber/-74210753 (var3180) Int)
(declare-fun getCharno/648852549 (var3180) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun includeLocation/2091399668 (var2460) Bool)
(declare-fun includeLevel/2091399668 (var2460) Bool)
(declare-fun getDescription/639719136 (var3180) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun maybeEmbolden/1128244787 (var1742 String) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getExcerptWithPosition/-1715265359 (var2460 var3180 String Int Int var2686) String)
(declare-const null-var2460 var2460)
(declare-const null-var3180 var3180)
(declare-const null-Bool Bool)
(declare-const null-var597 var597)
(declare-const null-var135 var135)
(declare-const var2686-LINE var2686)
(declare-const null-String String)
(declare-const var1918 var2460) ; Statement: r0 := @this: com.google.javascript.jscomp.LightweightMessageFormatter 
(assert (not (= var1918 null-var2460)))
(declare-const var1084 var3180) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var1084 null-var3180)))
(declare-const var737 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var737 null-Bool)))
(assert true)
(define-const var936 var597 (getSource/1681365446 (cast-from-var2460-to-var1742 var1918))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>() 
(assert true)
(define-const var2828 String (getSourceName/21548920 var1084)) ; Statement: r13 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var753 Int (getLineNumber/-74210753 var1084)) ; Statement: i4 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getLineNumber()>() 
(assert true)
(define-const var1756 Int (getCharno/648852549 var1084)) ; Statement: i5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getCharno()>() 
(define-const var1232 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1232)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1232!1 String)
(assert (= var1232!1 ""))
(define-const var821 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var821)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var821!1 String)
(assert (= var821!1 ""))
 ; Statement: if r1 != null goto $r5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert (not (not (= var936 null-var597)))) ; Negate: Cond: r1 != null  
(define-const var165 var135 null-var135) ; Statement: $r14 = null 
 ; Statement: goto [?= r6 = $r14] 
(assert true) ; Non Conditional
(define-const var1866 var135 var165) ; Statement: r6 = $r14 
(define-const var2484 Bool (includeLocation/2091399668 var1918)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLocation> 
 ; Statement: if $z0 == 0 goto $z2 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLevel> 
(assert (= (ite var2484 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3574 Bool (includeLevel/2091399668 var1918)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLevel> 
 ; Statement: if $z2 == 0 goto $r16 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert (= (ite var3574 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var809 String (getDescription/639719136 var1084)) ; Statement: $r16 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
;(assert (append/672562846 var821!1 var809)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var821!2 String)
(assert (= var821!2 (str.++ var821!1 var809)))
(assert true)
(define-const var3270 String (toString/-2075883882 var821!2)) ; Statement: $r17 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2653 String (maybeEmbolden/1128244787 (cast-from-var2460-to-var1742 var1918) var3270)) ; Statement: $r18 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String maybeEmbolden(java.lang.String)>($r17) 
(assert true)
;(assert (append/672562846 var1232!1 var2653)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1232!2 String)
(assert (= var1232!2 (str.++ var1232!1 var2653)))
(assert true)
;(assert (append/-1166366385 var1232!2 10)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var1232!3 String)
(assert (str.prefixof var1232!2 var1232!3))
(define-const var197 String var2828) ; Statement: $r8 = r13 
(define-const var1907 Int var753) ; Statement: $i2 = i4 
(define-const var661 Int var1756) ; Statement: $i3 = i5 
 ; Statement: if r6 == null goto $r19 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt defaultFormat> 
(assert (not (= var1866 null-var135))) ; Negate: Cond: r6 == null  
(define-const var489 var2686 var2686-LINE) ; Statement: $r19 = <com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt LINE> 
 ; Statement: goto [?= $r9 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String getExcerptWithPosition(com.google.javascript.jscomp.JSError,java.lang.String,int,int,com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt)>(r2, $r8, $i2, $i3, $r19)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3091 String (getExcerptWithPosition/-1715265359 var1918 var1084 var197 var1907 var661 var489)) ; Statement: $r9 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String getExcerptWithPosition(com.google.javascript.jscomp.JSError,java.lang.String,int,int,com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt)>(r2, $r8, $i2, $i3, $r19) 
 ; Statement: if $r9 == null goto $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3091 null-String)) ; Cond: $r9 == null 
(assert true)
(define-const var948 String (toString/-2075883882 var1232!3)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getSource/1681365446=([com.google.javascript.jscomp.AbstractMessageFormatter], com.google.javascript.jscomp.SourceExcerptProvider), cast-from-var2460-to-var1742=([com.google.javascript.jscomp.LightweightMessageFormatter], com.google.javascript.jscomp.AbstractMessageFormatter), getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), getLineNumber/-74210753=([com.google.javascript.jscomp.JSError], int), getCharno/648852549=([com.google.javascript.jscomp.JSError], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), includeLocation/2091399668=([com.google.javascript.jscomp.LightweightMessageFormatter], boolean), includeLevel/2091399668=([com.google.javascript.jscomp.LightweightMessageFormatter], boolean), getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), maybeEmbolden/1128244787=([com.google.javascript.jscomp.AbstractMessageFormatter, java.lang.String], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getExcerptWithPosition/-1715265359=([com.google.javascript.jscomp.LightweightMessageFormatter, com.google.javascript.jscomp.JSError, java.lang.String, int, int, com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt], java.lang.String)}
; {var2460=com.google.javascript.jscomp.LightweightMessageFormatter, var1918=r0, var3180=com.google.javascript.jscomp.JSError, var1084=r2, var737=z1, var597=com.google.javascript.jscomp.SourceExcerptProvider, var1742=com.google.javascript.jscomp.AbstractMessageFormatter, var936=r1, var2828=r13, var753=i4, var1756=i5, var1232=$r3, var821=$r4, var135=com.google.debugging.sourcemap.proto.Mapping$OriginalMapping, var165=$r14, var1866=r6, var2484=$z0, var3574=$z2, var809=$r16, var3270=$r17, var2653=$r18, var197=$r8, var1907=$i2, var661=$i3, var2686=com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt, var489=$r19, var3091=$r9, var695=null_type, var948=$r7}
; {com.google.javascript.jscomp.LightweightMessageFormatter=var2460, r0=var1918, com.google.javascript.jscomp.JSError=var3180, r2=var1084, z1=var737, com.google.javascript.jscomp.SourceExcerptProvider=var597, com.google.javascript.jscomp.AbstractMessageFormatter=var1742, r1=var936, r13=var2828, i4=var753, i5=var1756, $r3=var1232, $r4=var821, com.google.debugging.sourcemap.proto.Mapping$OriginalMapping=var135, $r14=var165, r6=var1866, $z0=var2484, $z2=var3574, $r16=var809, $r17=var3270, $r18=var2653, $r8=var197, $i2=var1907, $i3=var661, com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt=var2686, $r19=var489, $r9=var3091, null_type=var695, $r7=var948}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.LightweightMessageFormatter;	r2 := @parameter0: com.google.javascript.jscomp.JSError;	z1 := @parameter1: boolean;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>();	r13 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	i4 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getLineNumber()>();	i5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getCharno()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	if r1 != null goto $r5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	$r14 = null;	goto [?= r6 = $r14];	r6 = $r14;	$z0 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLocation>;	if $z0 == 0 goto $z2 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLevel>;	$z2 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLevel>;	if $z2 == 0 goto $r16 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	$r16 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r17 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String maybeEmbolden(java.lang.String)>($r17);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r8 = r13;	$i2 = i4;	$i3 = i5;	if r6 == null goto $r19 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt defaultFormat>;	$r19 = <com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt LINE>;	goto [?= $r9 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String getExcerptWithPosition(com.google.javascript.jscomp.JSError,java.lang.String,int,int,com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt)>(r2, $r8, $i2, $i3, $r19)];	$r9 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String getExcerptWithPosition(com.google.javascript.jscomp.JSError,java.lang.String,int,int,com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt)>(r2, $r8, $i2, $i3, $r19);	if $r9 == null goto $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 8