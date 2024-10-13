(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2402 0)
(declare-sort var2283 0)
(declare-sort var814 0)
(declare-sort var3385 0)
(declare-sort var885 0)
(declare-sort var3237 0)
(declare-sort var3555 0)
(declare-sort var2609 0)
(declare-sort var3866 0)
(declare-sort var770 0)
(declare-sort var222 0)
(declare-sort var1134 0)
(declare-sort var3295 0)
(declare-sort var2487 0)
(declare-sort var328 0)
(declare-sort var3650 0)
(declare-sort var413 0)
(declare-sort var973 0)
(declare-sort var357 0)
(declare-sort var2117 0)
(declare-sort var469 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2283-init () var2283)
(declare-fun <init>/-97413903 (var2283 Int Int Int) void)
(declare-fun createGraphics/-1927311584 (var2283) var814)
(declare-fun setRenderingHint/63402731 (var814 var3385 var3237) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getCaption/-1211642440 (var2402) String)
(declare-fun getDefaultCaption/-1728769097 (var2402) String)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun var2609-init () var2609)
(declare-fun <init>/1094011540 (var2609 String) void)
(declare-fun addAttribute/-569130893 (var2609 var770 var3237) void)
(declare-fun cast-from-var3866-to-var770 (var3866) var770)
(declare-fun cast-from-String-to-var3237 (String) var3237)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(declare-fun addAttribute/-1181659143 (var2609 var770 var3237 Int Int) void)
(declare-fun cast-from-Int-to-var3237 (Int) var3237)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun setColor/1206064488 (var1134 var222) void)
(declare-fun cast-from-var814-to-var1134 (var814) var1134)
(declare-fun getIterator/-1012675089 (var2609) var3295)
(declare-fun getFontRenderContext/-496146259 (var814) var2487)
(declare-fun var328-init () var328)
(declare-fun <init>/214638970 (var328 var3295 var2487) void)
(declare-fun getPosition/475492405 (var328) Int)
(declare-fun var3650_getEndIndex/-929310547 (var3650) Int)
(declare-fun cast-from-var3295-to-var3650 (var3295) var3650)
(declare-fun dispose/-1274697927 (var1134) void)
(declare-fun var973_builder/-621586847 () var413)
(declare-fun get/-268693498 (var413) var973)
(declare-fun cast-from-var973-to-var357 (var973) var357)
(declare-fun var2117_write/-1280421749 (var469 String var357) Bool)
(declare-fun cast-from-var2283-to-var469 (var2283) var469)
(declare-fun toByteArray/-760300521 (var973) (Array Int Int))
(declare-const null-var2402 var2402)
(declare-const null-Bool Bool)
(declare-const var885-KEY_FRACTIONALMETRICS var3385)
(declare-const var885-VALUE_FRACTIONALMETRICS_ON var3237)
(declare-const var885-KEY_ALPHA_INTERPOLATION var3385)
(declare-const var885-VALUE_ALPHA_INTERPOLATION_QUALITY var3237)
(declare-const var885-KEY_ANTIALIASING var3385)
(declare-const var885-VALUE_ANTIALIAS_ON var3237)
(declare-const var885-KEY_TEXT_ANTIALIASING var3385)
(declare-const var885-VALUE_TEXT_ANTIALIAS_ON var3237)
(declare-const null-String String)
(declare-const var3866-FAMILY var3866)
(declare-const var3866-UNDERLINE var3866)
(declare-const var3866-UNDERLINE_ON Int)
(declare-const var3866-SIZE var3866)
(declare-const var222-BLACK var222)
(declare-const var2834 var2402) ; Statement: r17 := @this: org.apache.poi.poifs.crypt.dsig.SignatureLine 
(assert (not (= var2834 null-var2402)))
(declare-const var2334 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2334 null-Bool)))
(declare-const var2978 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2978 null-Bool)))
(define-const var2855 var2283 var2283-init) ; Statement: $r69 = new java.awt.image.BufferedImage 
(assert true)
;(assert (<init>/-97413903 var2855 400 150 2)) ; Statement: specialinvoke $r69.<java.awt.image.BufferedImage: void <init>(int,int,int)>(400, 150, 2) 

(declare-const var2855!1 var2283)
(declare-const var805 Int)
(declare-const var2868 Int)
(declare-const var3362 Int)
(assert true)
(define-const var1954 var814 (createGraphics/-1927311584 var2855!1)) ; Statement: r1 = virtualinvoke $r69.<java.awt.image.BufferedImage: java.awt.Graphics2D createGraphics()>() 
(define-const var2880 var3385 var885-KEY_FRACTIONALMETRICS) ; Statement: $r3 = <java.awt.RenderingHints: java.awt.RenderingHints$Key KEY_FRACTIONALMETRICS> 
(define-const var3827 var3237 var885-VALUE_FRACTIONALMETRICS_ON) ; Statement: $r2 = <java.awt.RenderingHints: java.lang.Object VALUE_FRACTIONALMETRICS_ON> 
(assert true)
;(assert (setRenderingHint/63402731 var1954 var2880 var3827)) ; Statement: virtualinvoke r1.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r3, $r2) 

(declare-const var1954!1 var814)
(declare-const var2880!1 var3385)
(declare-const var3827!1 var3237)
(define-const var1284 var3385 var885-KEY_ALPHA_INTERPOLATION) ; Statement: $r5 = <java.awt.RenderingHints: java.awt.RenderingHints$Key KEY_ALPHA_INTERPOLATION> 
(define-const var1578 var3237 var885-VALUE_ALPHA_INTERPOLATION_QUALITY) ; Statement: $r4 = <java.awt.RenderingHints: java.lang.Object VALUE_ALPHA_INTERPOLATION_QUALITY> 
(assert true)
;(assert (setRenderingHint/63402731 var1954!1 var1284 var1578)) ; Statement: virtualinvoke r1.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r5, $r4) 

(declare-const var1954!2 var814)
(declare-const var1284!1 var3385)
(declare-const var1578!1 var3237)
(define-const var1350 var3385 var885-KEY_ANTIALIASING) ; Statement: $r7 = <java.awt.RenderingHints: java.awt.RenderingHints$Key KEY_ANTIALIASING> 
(define-const var2736 var3237 var885-VALUE_ANTIALIAS_ON) ; Statement: $r6 = <java.awt.RenderingHints: java.lang.Object VALUE_ANTIALIAS_ON> 
(assert true)
;(assert (setRenderingHint/63402731 var1954!2 var1350 var2736)) ; Statement: virtualinvoke r1.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r7, $r6) 

(declare-const var1954!3 var814)
(declare-const var1350!1 var3385)
(declare-const var2736!1 var3237)
(define-const var1133 var3385 var885-KEY_TEXT_ANTIALIASING) ; Statement: $r9 = <java.awt.RenderingHints: java.awt.RenderingHints$Key KEY_TEXT_ANTIALIASING> 
(define-const var1736 var3237 var885-VALUE_TEXT_ANTIALIAS_ON) ; Statement: $r8 = <java.awt.RenderingHints: java.lang.Object VALUE_TEXT_ANTIALIAS_ON> 
(assert true)
;(assert (setRenderingHint/63402731 var1954!3 var1133 var1736)) ; Statement: virtualinvoke r1.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r9, $r8) 

(declare-const var1954!4 var814)
(declare-const var1133!1 var3385)
(declare-const var1736!1 var3237)
(define-const var2218 String String-init) ; Statement: $r70 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2218)) ; Statement: specialinvoke $r70.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2218!1 String)
(assert (= var2218!1 ""))
(define-const var752 String String-init) ; Statement: $r71 = new java.lang.String 
(define-const var3135 (Array Int Int) arr-Int-init) ; Statement: $r12 = newarray (char)[500] 
(assert true)
;(assert (<init>/-915723298 var752 var3135)) ; Statement: specialinvoke $r71.<java.lang.String: void <init>(char[])>($r12) 

(declare-const var752!1 String)
(declare-const var3135!1 (Array Int Int))
(assert true)
(define-const var3563 String (replace/2138489945 var752!1 (cast-from-String-to-String "\u0000") (cast-from-String-to-String " "))) ; Statement: $r13 = virtualinvoke $r71.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\u0000", " ") 
(assert true)
(define-const var957 String (append/672562846 var2218!1 var3563)) ; Statement: $r14 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2218!2 String)
(assert (= var2218!2 (str.++ var2218!1 var3563)))
(assert true)
(define-const var1982 String (append/672562846 var957 "\n")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var957!1 String)
(assert (= var957!1 (str.++ var957 "\n")))
(assert true)
(define-const var3976 String (toString/-2075883882 var1982)) ; Statement: r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var356 String (getCaption/-1211642440 var2834)) ; Statement: $r18 = virtualinvoke r17.<org.apache.poi.poifs.crypt.dsig.SignatureLine: java.lang.String getCaption()>() 
 ; Statement: if $r18 != null goto $r62 = virtualinvoke r17.<org.apache.poi.poifs.crypt.dsig.SignatureLine: java.lang.String getCaption()>() 
(assert (not (not (= var356 null-String)))) ; Negate: Cond: $r18 != null  
(assert true)
(define-const var1399 String (getDefaultCaption/-1728769097 var2834)) ; Statement: $r62 = virtualinvoke r17.<org.apache.poi.poifs.crypt.dsig.SignatureLine: java.lang.String getDefaultCaption()>() 
 ; Statement: goto [?= $r72 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var990 String String-init) ; Statement: $r72 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var990)) ; Statement: specialinvoke $r72.<java.lang.StringBuilder: void <init>()>() 
(declare-const var990!1 String)
(assert (= var990!1 ""))
(assert true)
(define-const var3809 String (append/672562846 var990!1 "X\n")) ; Statement: $r20 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("X\n") 
(declare-const var990!2 String)
(assert (= var990!2 (str.++ var990!1 "X\n")))
(assert true)
(define-const var3214 String (append/672562846 var3809 var3976)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r16) 
(declare-const var3809!1 String)
(assert (= var3809!1 (str.++ var3809 var3976)))
(assert true)
(define-const var808 String (replaceAll/1692887130 var1399 "(?m)^" "    ")) ; Statement: $r21 = virtualinvoke $r62.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("(?m)^", "    ") 
(assert (= (replaceAll/1692887130 var1399 "(?m)^" "    ") (str.replace_re_all var1399 (re.++ (str.to_re "?m") (str.to_re "^")) "    ")))
(assert true)
(define-const var3849 String (append/672562846 var3214 var808)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var3214!1 String)
(assert (= var3214!1 (str.++ var3214 var808)))
(assert true)
(define-const var1620 String (toString/-2075883882 var3849)) ; Statement: $r55 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1187 var2609 var2609-init) ; Statement: $r73 = new java.text.AttributedString 
(assert true)
;(assert (<init>/1094011540 var1187 var1620)) ; Statement: specialinvoke $r73.<java.text.AttributedString: void <init>(java.lang.String)>($r55) 

(declare-const var1187!1 var2609)
(declare-const var1620!1 String)
(define-const var3821 var3866 var3866-FAMILY) ; Statement: $r25 = <java.awt.font.TextAttribute: java.awt.font.TextAttribute FAMILY> 
(assert true)
;(assert (addAttribute/-569130893 var1187!1 (cast-from-var3866-to-var770 var3821) (cast-from-String-to-var3237 "SansSerif"))) ; Statement: virtualinvoke $r73.<java.text.AttributedString: void addAttribute(java.text.AttributedCharacterIterator$Attribute,java.lang.Object)>($r25, "SansSerif") 

(declare-const var1187!2 var2609)
(declare-const var3821!1 var3866)
(declare-const var2545 String)
(define-const var2996 var3866 var3866-UNDERLINE) ; Statement: $r26 = <java.awt.font.TextAttribute: java.awt.font.TextAttribute UNDERLINE> 
(define-const var2215 Int var3866-UNDERLINE_ON) ; Statement: $r27 = <java.awt.font.TextAttribute: java.lang.Integer UNDERLINE_ON> 
(define-const var3839 String "X\n") ; Statement: $r56 = "X\n" 
(assert true)
(define-const var3907 Int (length/-134980193 var3839)) ; Statement: $i2 = virtualinvoke $r56.<java.lang.String: int length()>() 
(define-const var1261 String "X\n") ; Statement: $r57 = "X\n" 
(assert true)
(define-const var3303 Int (length/-134980193 var1261)) ; Statement: $i0 = virtualinvoke $r57.<java.lang.String: int length()>() 
(assert true)
(define-const var666 Int (indexOf/1426977840 var1620!1 10 var3303)) ; Statement: $i1 = virtualinvoke $r55.<java.lang.String: int indexOf(int,int)>(10, $i0) 
(assert true)
;(assert (addAttribute/-1181659143 var1187!2 (cast-from-var3866-to-var770 var2996) (cast-from-Int-to-var3237 var2215) var3907 var666)) ; Statement: virtualinvoke $r73.<java.text.AttributedString: void addAttribute(java.text.AttributedCharacterIterator$Attribute,java.lang.Object,int,int)>($r26, $r27, $i2, $i1) 

(declare-const var1187!3 var2609)
(declare-const var2996!1 var3866)
(declare-const var2215!1 Int)
(declare-const var3907!1 Int)
(declare-const var666!1 Int)
(define-const var3630 var3866 var3866-SIZE) ; Statement: $r28 = <java.awt.font.TextAttribute: java.awt.font.TextAttribute SIZE> 
(define-const var1070 Int (Int_valueOf/-1371140006 15)) ; Statement: $r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(15) 
(define-const var3259 String "X\n") ; Statement: $r58 = "X\n" 
(assert true)
(define-const var3018 Int (length/-134980193 var3259)) ; Statement: $i3 = virtualinvoke $r58.<java.lang.String: int length()>() 
(assert true)
;(assert (addAttribute/-1181659143 var1187!3 (cast-from-var3866-to-var770 var3630) (cast-from-Int-to-var3237 var1070) 0 var3018)) ; Statement: virtualinvoke $r73.<java.text.AttributedString: void addAttribute(java.text.AttributedCharacterIterator$Attribute,java.lang.Object,int,int)>($r28, $r29, 0, $i3) 

(declare-const var1187!4 var2609)
(declare-const var3630!1 var3866)
(declare-const var1070!1 Int)
(declare-const var1999 Int)
(declare-const var3018!1 Int)
(define-const var1786 var3866 var3866-SIZE) ; Statement: $r30 = <java.awt.font.TextAttribute: java.awt.font.TextAttribute SIZE> 
(define-const var1806 Int (Int_valueOf/-1371140006 12)) ; Statement: $r31 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(12) 
(define-const var2108 String "X\n") ; Statement: $r59 = "X\n" 
(assert true)
(define-const var3872 Int (length/-134980193 var2108)) ; Statement: $i5 = virtualinvoke $r59.<java.lang.String: int length()>() 
(assert true)
(define-const var3901 Int (length/-134980193 var1620!1)) ; Statement: $i4 = virtualinvoke $r55.<java.lang.String: int length()>() 
(assert true)
;(assert (addAttribute/-1181659143 var1187!4 (cast-from-var3866-to-var770 var1786) (cast-from-Int-to-var3237 var1806) var3872 var3901)) ; Statement: virtualinvoke $r73.<java.text.AttributedString: void addAttribute(java.text.AttributedCharacterIterator$Attribute,java.lang.Object,int,int)>($r30, $r31, $i5, $i4) 

(declare-const var1187!5 var2609)
(declare-const var1786!1 var3866)
(declare-const var1806!1 Int)
(declare-const var3872!1 Int)
(declare-const var3901!1 Int)
(define-const var2234 var222 var222-BLACK) ; Statement: $r32 = <java.awt.Color: java.awt.Color BLACK> 
(assert true)
;(assert (setColor/1206064488 (cast-from-var814-to-var1134 var1954!4) var2234)) ; Statement: virtualinvoke r1.<java.awt.Graphics2D: void setColor(java.awt.Color)>($r32) 

(declare-const var1954!5 var814)
(declare-const var2234!1 var222)
(assert true)
(define-const var1295 var3295 (getIterator/-1012675089 var1187!5)) ; Statement: $r60 = virtualinvoke $r73.<java.text.AttributedString: java.text.AttributedCharacterIterator getIterator()>() 
(assert true)
(define-const var2810 var2487 (getFontRenderContext/-496146259 var1954!5)) ; Statement: $r61 = virtualinvoke r1.<java.awt.Graphics2D: java.awt.font.FontRenderContext getFontRenderContext()>() 
(define-const var1642 var328 var328-init) ; Statement: $r74 = new java.awt.font.LineBreakMeasurer 
(assert true)
;(assert (<init>/214638970 var1642 var1295 var2810)) ; Statement: specialinvoke $r74.<java.awt.font.LineBreakMeasurer: void <init>(java.text.AttributedCharacterIterator,java.awt.font.FontRenderContext)>($r60, $r61) 

(declare-const var1642!1 var328)
(declare-const var1295!1 var3295)
(declare-const var2810!1 var2487)
(define-const var832 Float32 ((_ to_fp 8 24) #x42a00000)) ; Statement: f8 = 80.0F 
(define-const var2906 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3884 Int (getPosition/475492405 var1642!1)) ; Statement: $i14 = virtualinvoke $r74.<java.awt.font.LineBreakMeasurer: int getPosition()>() 
(define-const var3277 Int (var3650_getEndIndex/-929310547 (cast-from-var3295-to-var3650 var1295!1))) ; Statement: $i15 = interfaceinvoke $r60.<java.text.AttributedCharacterIterator: int getEndIndex()>() 
 ; Statement: if $i14 >= $i15 goto (branch) 
(assert (>= var3884 var3277)) ; Cond: $i14 >= $i15 
 ; Statement: if z0 == 0 goto (branch) 
(assert (= (ite var2334 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: if z1 == 0 goto virtualinvoke r1.<java.awt.Graphics2D: void dispose()>() 
(assert (= (ite var2978 1 0) 0)) ; Cond: z1 == 0 
(assert true)
;(assert (dispose/-1274697927 (cast-from-var814-to-var1134 var1954!5))) ; Statement: virtualinvoke r1.<java.awt.Graphics2D: void dispose()>() 

(declare-const var1954!6 var814)
(define-const var3165 var413 var973_builder/-621586847) ; Statement: $r66 = staticinvoke <org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream: org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream$Builder builder()>() 
(assert true)
(define-const var2437 var973 (get/-268693498 var3165)) ; Statement: $r67 = virtualinvoke $r66.<org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream$Builder: org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream get()>() 
(define-const var169 var357 (cast-from-var973-to-var357 var2437)) ; Statement: $r80 = (java.io.OutputStream) $r67 
;(assert (var2117_write/-1280421749 (cast-from-var2283-to-var469 var2855!1) "PNG" var169)) ; Statement: staticinvoke <javax.imageio.ImageIO: boolean write(java.awt.image.RenderedImage,java.lang.String,java.io.OutputStream)>($r69, "PNG", $r80) 

(declare-const var2855!2 var2283)
(declare-const var1387 String)
(declare-const var169!1 var357)
(assert true)
(define-const var1860 (Array Int Int) (toByteArray/-760300521 var2437)) ; Statement: $r68 = virtualinvoke $r67.<org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream: byte[] toByteArray()>() 
 ; Statement: return $r68 
(check-sat)
(get-model)
(get-unsat-core)
; {var2283-init=([], java.awt.image.BufferedImage), <init>/-97413903=([java.awt.image.BufferedImage, int, int, int], void), createGraphics/-1927311584=([java.awt.image.BufferedImage], java.awt.Graphics2D), setRenderingHint/63402731=([java.awt.Graphics2D, java.awt.RenderingHints$Key, java.lang.Object], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), arr-Int-init=([], char[]), <init>/-915723298=([java.lang.String, char[]], void), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getCaption/-1211642440=([org.apache.poi.poifs.crypt.dsig.SignatureLine], java.lang.String), getDefaultCaption/-1728769097=([org.apache.poi.poifs.crypt.dsig.SignatureLine], java.lang.String), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), var2609-init=([], java.text.AttributedString), <init>/1094011540=([java.text.AttributedString, java.lang.String], void), addAttribute/-569130893=([java.text.AttributedString, java.text.AttributedCharacterIterator$Attribute, java.lang.Object], void), cast-from-var3866-to-var770=([java.awt.font.TextAttribute], java.text.AttributedCharacterIterator$Attribute), cast-from-String-to-var3237=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), indexOf/1426977840=([java.lang.String, int, int], int), addAttribute/-1181659143=([java.text.AttributedString, java.text.AttributedCharacterIterator$Attribute, java.lang.Object, int, int], void), cast-from-Int-to-var3237=([java.lang.Integer], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), setColor/1206064488=([java.awt.Graphics, java.awt.Color], void), cast-from-var814-to-var1134=([java.awt.Graphics2D], java.awt.Graphics), getIterator/-1012675089=([java.text.AttributedString], java.text.AttributedCharacterIterator), getFontRenderContext/-496146259=([java.awt.Graphics2D], java.awt.font.FontRenderContext), var328-init=([], java.awt.font.LineBreakMeasurer), <init>/214638970=([java.awt.font.LineBreakMeasurer, java.text.AttributedCharacterIterator, java.awt.font.FontRenderContext], void), getPosition/475492405=([java.awt.font.LineBreakMeasurer], int), var3650_getEndIndex/-929310547=([java.text.CharacterIterator], int), cast-from-var3295-to-var3650=([java.text.AttributedCharacterIterator], java.text.CharacterIterator), dispose/-1274697927=([java.awt.Graphics], void), var973_builder/-621586847=([], org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream$Builder), get/-268693498=([org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream$Builder], org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream), cast-from-var973-to-var357=([org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream], java.io.OutputStream), var2117_write/-1280421749=([java.awt.image.RenderedImage, java.lang.String, java.io.OutputStream], boolean), cast-from-var2283-to-var469=([java.awt.image.BufferedImage], java.awt.image.RenderedImage), toByteArray/-760300521=([org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream], byte[])}
; {var2402=org.apache.poi.poifs.crypt.dsig.SignatureLine, var2834=r17, var2334=z0, var2978=z1, var2283=java.awt.image.BufferedImage, var2855=$r69, var805=400, var2868=150, var3362=2, var814=java.awt.Graphics2D, var1954=r1, var3385=java.awt.RenderingHints$Key, var885=java.awt.RenderingHints, var2880=$r3, var3237=java.lang.Object, var3827=$r2, var1284=$r5, var1578=$r4, var1350=$r7, var2736=$r6, var1133=$r9, var1736=$r8, var2218=$r70, var752=$r71, var3135=$r12, var3563=$r13, var957=$r14, var1982=$r15, var3976=r16, var356=$r18, var3555=null_type, var1399=$r62, var990=$r72, var3809=$r20, var3214=$r22, var808=$r21, var3849=$r23, var1620=$r55, var2609=java.text.AttributedString, var1187=$r73, var3866=java.awt.font.TextAttribute, var3821=$r25, var770=java.text.AttributedCharacterIterator$Attribute, var2545="SansSerif", var2996=$r26, var2215=$r27, var3839=$r56, var3907=$i2, var1261=$r57, var3303=$i0, var666=$i1, var3630=$r28, var1070=$r29, var3259=$r58, var3018=$i3, var1999=0, var1786=$r30, var1806=$r31, var2108=$r59, var3872=$i5, var3901=$i4, var222=java.awt.Color, var2234=$r32, var1134=java.awt.Graphics, var3295=java.text.AttributedCharacterIterator, var1295=$r60, var2487=java.awt.font.FontRenderContext, var2810=$r61, var328=java.awt.font.LineBreakMeasurer, var1642=$r74, var832=f8, var2906=i13, var3884=$i14, var3650=java.text.CharacterIterator, var3277=$i15, var413=org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream$Builder, var973=org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream, var3165=$r66, var2437=$r67, var357=java.io.OutputStream, var169=$r80, var2117=javax.imageio.ImageIO, var469=java.awt.image.RenderedImage, var1387="PNG", var1860=$r68}
; {org.apache.poi.poifs.crypt.dsig.SignatureLine=var2402, r17=var2834, z0=var2334, z1=var2978, java.awt.image.BufferedImage=var2283, $r69=var2855, 400=var805, 150=var2868, 2=var3362, java.awt.Graphics2D=var814, r1=var1954, java.awt.RenderingHints$Key=var3385, java.awt.RenderingHints=var885, $r3=var2880, java.lang.Object=var3237, $r2=var3827, $r5=var1284, $r4=var1578, $r7=var1350, $r6=var2736, $r9=var1133, $r8=var1736, $r70=var2218, $r71=var752, $r12=var3135, $r13=var3563, $r14=var957, $r15=var1982, r16=var3976, $r18=var356, null_type=var3555, $r62=var1399, $r72=var990, $r20=var3809, $r22=var3214, $r21=var808, $r23=var3849, $r55=var1620, java.text.AttributedString=var2609, $r73=var1187, java.awt.font.TextAttribute=var3866, $r25=var3821, java.text.AttributedCharacterIterator$Attribute=var770, "SansSerif"=var2545, $r26=var2996, $r27=var2215, $r56=var3839, $i2=var3907, $r57=var1261, $i0=var3303, $i1=var666, $r28=var3630, $r29=var1070, $r58=var3259, $i3=var3018, 0=var1999, $r30=var1786, $r31=var1806, $r59=var2108, $i5=var3872, $i4=var3901, java.awt.Color=var222, $r32=var2234, java.awt.Graphics=var1134, java.text.AttributedCharacterIterator=var3295, $r60=var1295, java.awt.font.FontRenderContext=var2487, $r61=var2810, java.awt.font.LineBreakMeasurer=var328, $r74=var1642, f8=var832, i13=var2906, $i14=var3884, java.text.CharacterIterator=var3650, $i15=var3277, org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream$Builder=var413, org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream=var973, $r66=var3165, $r67=var2437, java.io.OutputStream=var357, $r80=var169, javax.imageio.ImageIO=var2117, java.awt.image.RenderedImage=var469, "PNG"=var1387, $r68=var1860}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: void <init>(char[])>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.String: void <init>(char[])>": 1,"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.String: int length()>": 5,"<java.lang.String: int indexOf(int,int)>": 1}
;stmts r17 := @this: org.apache.poi.poifs.crypt.dsig.SignatureLine;	z0 := @parameter0: boolean;	z1 := @parameter1: boolean;	$r69 = new java.awt.image.BufferedImage;	specialinvoke $r69.<java.awt.image.BufferedImage: void <init>(int,int,int)>(400, 150, 2);	r1 = virtualinvoke $r69.<java.awt.image.BufferedImage: java.awt.Graphics2D createGraphics()>();	$r3 = <java.awt.RenderingHints: java.awt.RenderingHints$Key KEY_FRACTIONALMETRICS>;	$r2 = <java.awt.RenderingHints: java.lang.Object VALUE_FRACTIONALMETRICS_ON>;	virtualinvoke r1.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r3, $r2);	$r5 = <java.awt.RenderingHints: java.awt.RenderingHints$Key KEY_ALPHA_INTERPOLATION>;	$r4 = <java.awt.RenderingHints: java.lang.Object VALUE_ALPHA_INTERPOLATION_QUALITY>;	virtualinvoke r1.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r5, $r4);	$r7 = <java.awt.RenderingHints: java.awt.RenderingHints$Key KEY_ANTIALIASING>;	$r6 = <java.awt.RenderingHints: java.lang.Object VALUE_ANTIALIAS_ON>;	virtualinvoke r1.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r7, $r6);	$r9 = <java.awt.RenderingHints: java.awt.RenderingHints$Key KEY_TEXT_ANTIALIASING>;	$r8 = <java.awt.RenderingHints: java.lang.Object VALUE_TEXT_ANTIALIAS_ON>;	virtualinvoke r1.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r9, $r8);	$r70 = new java.lang.StringBuilder;	specialinvoke $r70.<java.lang.StringBuilder: void <init>()>();	$r71 = new java.lang.String;	$r12 = newarray (char)[500];	specialinvoke $r71.<java.lang.String: void <init>(char[])>($r12);	$r13 = virtualinvoke $r71.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\u0000", " ");	$r14 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = virtualinvoke r17.<org.apache.poi.poifs.crypt.dsig.SignatureLine: java.lang.String getCaption()>();	if $r18 != null goto $r62 = virtualinvoke r17.<org.apache.poi.poifs.crypt.dsig.SignatureLine: java.lang.String getCaption()>();	$r62 = virtualinvoke r17.<org.apache.poi.poifs.crypt.dsig.SignatureLine: java.lang.String getDefaultCaption()>();	goto [?= $r72 = new java.lang.StringBuilder];	$r72 = new java.lang.StringBuilder;	specialinvoke $r72.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("X\n");	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r16);	$r21 = virtualinvoke $r62.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("(?m)^", "    ");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r55 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r73 = new java.text.AttributedString;	specialinvoke $r73.<java.text.AttributedString: void <init>(java.lang.String)>($r55);	$r25 = <java.awt.font.TextAttribute: java.awt.font.TextAttribute FAMILY>;	virtualinvoke $r73.<java.text.AttributedString: void addAttribute(java.text.AttributedCharacterIterator$Attribute,java.lang.Object)>($r25, "SansSerif");	$r26 = <java.awt.font.TextAttribute: java.awt.font.TextAttribute UNDERLINE>;	$r27 = <java.awt.font.TextAttribute: java.lang.Integer UNDERLINE_ON>;	$r56 = "X\n";	$i2 = virtualinvoke $r56.<java.lang.String: int length()>();	$r57 = "X\n";	$i0 = virtualinvoke $r57.<java.lang.String: int length()>();	$i1 = virtualinvoke $r55.<java.lang.String: int indexOf(int,int)>(10, $i0);	virtualinvoke $r73.<java.text.AttributedString: void addAttribute(java.text.AttributedCharacterIterator$Attribute,java.lang.Object,int,int)>($r26, $r27, $i2, $i1);	$r28 = <java.awt.font.TextAttribute: java.awt.font.TextAttribute SIZE>;	$r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(15);	$r58 = "X\n";	$i3 = virtualinvoke $r58.<java.lang.String: int length()>();	virtualinvoke $r73.<java.text.AttributedString: void addAttribute(java.text.AttributedCharacterIterator$Attribute,java.lang.Object,int,int)>($r28, $r29, 0, $i3);	$r30 = <java.awt.font.TextAttribute: java.awt.font.TextAttribute SIZE>;	$r31 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(12);	$r59 = "X\n";	$i5 = virtualinvoke $r59.<java.lang.String: int length()>();	$i4 = virtualinvoke $r55.<java.lang.String: int length()>();	virtualinvoke $r73.<java.text.AttributedString: void addAttribute(java.text.AttributedCharacterIterator$Attribute,java.lang.Object,int,int)>($r30, $r31, $i5, $i4);	$r32 = <java.awt.Color: java.awt.Color BLACK>;	virtualinvoke r1.<java.awt.Graphics2D: void setColor(java.awt.Color)>($r32);	$r60 = virtualinvoke $r73.<java.text.AttributedString: java.text.AttributedCharacterIterator getIterator()>();	$r61 = virtualinvoke r1.<java.awt.Graphics2D: java.awt.font.FontRenderContext getFontRenderContext()>();	$r74 = new java.awt.font.LineBreakMeasurer;	specialinvoke $r74.<java.awt.font.LineBreakMeasurer: void <init>(java.text.AttributedCharacterIterator,java.awt.font.FontRenderContext)>($r60, $r61);	f8 = 80.0F;	i13 = 0;	$i14 = virtualinvoke $r74.<java.awt.font.LineBreakMeasurer: int getPosition()>();	$i15 = interfaceinvoke $r60.<java.text.AttributedCharacterIterator: int getEndIndex()>();	if $i14 >= $i15 goto (branch);	if z0 == 0 goto (branch);	if z1 == 0 goto virtualinvoke r1.<java.awt.Graphics2D: void dispose()>();	virtualinvoke r1.<java.awt.Graphics2D: void dispose()>();	$r66 = staticinvoke <org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream: org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream$Builder builder()>();	$r67 = virtualinvoke $r66.<org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream$Builder: org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream get()>();	$r80 = (java.io.OutputStream) $r67;	staticinvoke <javax.imageio.ImageIO: boolean write(java.awt.image.RenderedImage,java.lang.String,java.io.OutputStream)>($r69, "PNG", $r80);	$r68 = virtualinvoke $r67.<org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream: byte[] toByteArray()>();	return $r68
;block_num 7