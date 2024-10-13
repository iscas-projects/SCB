(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var573 0)
(declare-sort var878 0)
(declare-sort var1913 0)
(declare-sort var1705 0)
(declare-sort var1751 0)
(declare-sort var2929 0)
(declare-sort var2919 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSource/1681365446 (var1705) var1913)
(declare-fun cast-from-var573-to-var1705 (var573) var1705)
(declare-fun getSourceName/21548920 (var878) String)
(declare-fun getLineNumber/-74210753 (var878) Int)
(declare-fun getCharno/648852549 (var878) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1913_getSourceMapping/-1669350701 (var1913 String Int Int) var1751)
(declare-fun includeLocation/2091399668 (var573) Bool)
(declare-fun includeLevel/2091399668 (var573) Bool)
(declare-fun getDescription/639719136 (var878) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun maybeEmbolden/1128244787 (var1705 String) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getExcerptWithPosition/-1715265359 (var573 var878 String Int Int var2929) String)
(declare-const null-var573 var573)
(declare-const null-var878 var878)
(declare-const null-Bool Bool)
(declare-const null-var1913 var1913)
(declare-const null-var1751 var1751)
(declare-const var2929-LINE var2929)
(declare-const null-String String)
(declare-const var232 var573) ; Statement: r0 := @this: com.google.javascript.jscomp.LightweightMessageFormatter 
(assert (not (= var232 null-var573)))
(declare-const var1644 var878) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.JSError 
(assert (not (= var1644 null-var878)))
(declare-const var2742 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2742 null-Bool)))
(assert true)
(define-const var626 var1913 (getSource/1681365446 (cast-from-var573-to-var1705 var232))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>() 
(assert true)
(define-const var431 String (getSourceName/21548920 var1644)) ; Statement: r13 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var1930 Int (getLineNumber/-74210753 var1644)) ; Statement: i4 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getLineNumber()>() 
(assert true)
(define-const var3896 Int (getCharno/648852549 var1644)) ; Statement: i5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getCharno()>() 
(define-const var1396 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1396)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1396!1 String)
(assert (= var1396!1 ""))
(define-const var3103 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3103)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3103!1 String)
(assert (= var3103!1 ""))
 ; Statement: if r1 != null goto $r5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert (not (= var626 null-var1913))) ; Cond: r1 != null 
(assert true)
(define-const var1555 String (getSourceName/21548920 var1644)) ; Statement: $r5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>() 
(assert true)
(define-const var1735 Int (getLineNumber/-74210753 var1644)) ; Statement: $i1 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getLineNumber()>() 
(assert true)
(define-const var288 Int (getCharno/648852549 var1644)) ; Statement: $i0 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getCharno()>() 
(define-const var226 var1751 (var1913_getSourceMapping/-1669350701 var626 var1555 var1735 var288)) ; Statement: $r14 = interfaceinvoke r1.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.debugging.sourcemap.proto.Mapping$OriginalMapping getSourceMapping(java.lang.String,int,int)>($r5, $i1, $i0) 
(assert true) ; Non Conditional
(define-const var3390 var1751 var226) ; Statement: r6 = $r14 
(define-const var2110 Bool (includeLocation/2091399668 var232)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLocation> 
 ; Statement: if $z0 == 0 goto $z2 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLevel> 
(assert (= (ite var2110 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3265 Bool (includeLevel/2091399668 var232)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLevel> 
 ; Statement: if $z2 == 0 goto $r16 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert (= (ite var3265 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var1060 String (getDescription/639719136 var1644)) ; Statement: $r16 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>() 
(assert true)
;(assert (append/672562846 var3103!1 var1060)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3103!2 String)
(assert (= var3103!2 (str.++ var3103!1 var1060)))
(assert true)
(define-const var1360 String (toString/-2075883882 var3103!2)) ; Statement: $r17 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2436 String (maybeEmbolden/1128244787 (cast-from-var573-to-var1705 var232) var1360)) ; Statement: $r18 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String maybeEmbolden(java.lang.String)>($r17) 
(assert true)
;(assert (append/672562846 var1396!1 var2436)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var1396!2 String)
(assert (= var1396!2 (str.++ var1396!1 var2436)))
(assert true)
;(assert (append/-1166366385 var1396!2 10)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var1396!3 String)
(assert (str.prefixof var1396!2 var1396!3))
(define-const var953 String var431) ; Statement: $r8 = r13 
(define-const var985 Int var1930) ; Statement: $i2 = i4 
(define-const var975 Int var3896) ; Statement: $i3 = i5 
 ; Statement: if r6 == null goto $r19 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt defaultFormat> 
(assert (not (= var3390 null-var1751))) ; Negate: Cond: r6 == null  
(define-const var1355 var2929 var2929-LINE) ; Statement: $r19 = <com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt LINE> 
 ; Statement: goto [?= $r9 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String getExcerptWithPosition(com.google.javascript.jscomp.JSError,java.lang.String,int,int,com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt)>(r2, $r8, $i2, $i3, $r19)] 
(assert true) ; Non Conditional
(assert true)
(define-const var199 String (getExcerptWithPosition/-1715265359 var232 var1644 var953 var985 var975 var1355)) ; Statement: $r9 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String getExcerptWithPosition(com.google.javascript.jscomp.JSError,java.lang.String,int,int,com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt)>(r2, $r8, $i2, $i3, $r19) 
 ; Statement: if $r9 == null goto $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var199 null-String)) ; Cond: $r9 == null 
(assert true)
(define-const var3930 String (toString/-2075883882 var1396!3)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getSource/1681365446=([com.google.javascript.jscomp.AbstractMessageFormatter], com.google.javascript.jscomp.SourceExcerptProvider), cast-from-var573-to-var1705=([com.google.javascript.jscomp.LightweightMessageFormatter], com.google.javascript.jscomp.AbstractMessageFormatter), getSourceName/21548920=([com.google.javascript.jscomp.JSError], java.lang.String), getLineNumber/-74210753=([com.google.javascript.jscomp.JSError], int), getCharno/648852549=([com.google.javascript.jscomp.JSError], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1913_getSourceMapping/-1669350701=([com.google.javascript.jscomp.SourceExcerptProvider, java.lang.String, int, int], com.google.debugging.sourcemap.proto.Mapping$OriginalMapping), includeLocation/2091399668=([com.google.javascript.jscomp.LightweightMessageFormatter], boolean), includeLevel/2091399668=([com.google.javascript.jscomp.LightweightMessageFormatter], boolean), getDescription/639719136=([com.google.javascript.jscomp.JSError], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), maybeEmbolden/1128244787=([com.google.javascript.jscomp.AbstractMessageFormatter, java.lang.String], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getExcerptWithPosition/-1715265359=([com.google.javascript.jscomp.LightweightMessageFormatter, com.google.javascript.jscomp.JSError, java.lang.String, int, int, com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt], java.lang.String)}
; {var573=com.google.javascript.jscomp.LightweightMessageFormatter, var232=r0, var878=com.google.javascript.jscomp.JSError, var1644=r2, var2742=z1, var1913=com.google.javascript.jscomp.SourceExcerptProvider, var1705=com.google.javascript.jscomp.AbstractMessageFormatter, var626=r1, var431=r13, var1930=i4, var3896=i5, var1396=$r3, var3103=$r4, var1555=$r5, var1735=$i1, var288=$i0, var1751=com.google.debugging.sourcemap.proto.Mapping$OriginalMapping, var226=$r14, var3390=r6, var2110=$z0, var3265=$z2, var1060=$r16, var1360=$r17, var2436=$r18, var953=$r8, var985=$i2, var975=$i3, var2929=com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt, var1355=$r19, var199=$r9, var2919=null_type, var3930=$r7}
; {com.google.javascript.jscomp.LightweightMessageFormatter=var573, r0=var232, com.google.javascript.jscomp.JSError=var878, r2=var1644, z1=var2742, com.google.javascript.jscomp.SourceExcerptProvider=var1913, com.google.javascript.jscomp.AbstractMessageFormatter=var1705, r1=var626, r13=var431, i4=var1930, i5=var3896, $r3=var1396, $r4=var3103, $r5=var1555, $i1=var1735, $i0=var288, com.google.debugging.sourcemap.proto.Mapping$OriginalMapping=var1751, $r14=var226, r6=var3390, $z0=var2110, $z2=var3265, $r16=var1060, $r17=var1360, $r18=var2436, $r8=var953, $i2=var985, $i3=var975, com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt=var2929, $r19=var1355, $r9=var199, null_type=var2919, $r7=var3930}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.LightweightMessageFormatter;	r2 := @parameter0: com.google.javascript.jscomp.JSError;	z1 := @parameter1: boolean;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider getSource()>();	r13 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	i4 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getLineNumber()>();	i5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getCharno()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	if r1 != null goto $r5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	$r5 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getSourceName()>();	$i1 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getLineNumber()>();	$i0 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: int getCharno()>();	$r14 = interfaceinvoke r1.<com.google.javascript.jscomp.SourceExcerptProvider: com.google.debugging.sourcemap.proto.Mapping$OriginalMapping getSourceMapping(java.lang.String,int,int)>($r5, $i1, $i0);	r6 = $r14;	$z0 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLocation>;	if $z0 == 0 goto $z2 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLevel>;	$z2 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: boolean includeLevel>;	if $z2 == 0 goto $r16 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	$r16 = virtualinvoke r2.<com.google.javascript.jscomp.JSError: java.lang.String getDescription()>();	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r17 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String maybeEmbolden(java.lang.String)>($r17);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r8 = r13;	$i2 = i4;	$i3 = i5;	if r6 == null goto $r19 = r0.<com.google.javascript.jscomp.LightweightMessageFormatter: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt defaultFormat>;	$r19 = <com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt: com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt LINE>;	goto [?= $r9 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String getExcerptWithPosition(com.google.javascript.jscomp.JSError,java.lang.String,int,int,com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt)>(r2, $r8, $i2, $i3, $r19)];	$r9 = virtualinvoke r0.<com.google.javascript.jscomp.LightweightMessageFormatter: java.lang.String getExcerptWithPosition(com.google.javascript.jscomp.JSError,java.lang.String,int,int,com.google.javascript.jscomp.SourceExcerptProvider$SourceExcerpt)>(r2, $r8, $i2, $i3, $r19);	if $r9 == null goto $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 8