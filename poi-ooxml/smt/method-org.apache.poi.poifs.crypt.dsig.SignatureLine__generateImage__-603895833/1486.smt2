(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var913 0)
(declare-sort var1450 0)
(declare-sort var874 0)
(declare-sort var3720 0)
(declare-sort var2875 0)
(declare-sort var586 0)
(declare-sort var3255 0)
(declare-sort var2798 0)
(declare-sort var332 0)
(declare-sort var3338 0)
(declare-sort var2208 0)
(declare-sort var3826 0)
(declare-sort var2206 0)
(declare-sort var916 0)
(declare-sort var1273 0)
(declare-sort var3461 0)
(declare-sort var1365 0)
(declare-sort var947 0)
(declare-sort var135 0)
(declare-sort var1230 0)
(declare-sort var2906 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1450-init () var1450)
(declare-fun <init>/-97413903 (var1450 Int Int Int) void)
(declare-fun createGraphics/-1927311584 (var1450) var874)
(declare-fun setRenderingHint/63402731 (var874 var3720 var586) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getCaption/-1211642440 (var913) String)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun var2798-init () var2798)
(declare-fun <init>/1094011540 (var2798 String) void)
(declare-fun addAttribute/-569130893 (var2798 var3338 var586) void)
(declare-fun cast-from-var332-to-var3338 (var332) var3338)
(declare-fun cast-from-String-to-var586 (String) var586)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(declare-fun addAttribute/-1181659143 (var2798 var3338 var586 Int Int) void)
(declare-fun cast-from-Int-to-var586 (Int) var586)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun setColor/1206064488 (var3826 var2208) void)
(declare-fun cast-from-var874-to-var3826 (var874) var3826)
(declare-fun getIterator/-1012675089 (var2798) var2206)
(declare-fun getFontRenderContext/-496146259 (var874) var916)
(declare-fun var1273-init () var1273)
(declare-fun <init>/214638970 (var1273 var2206 var916) void)
(declare-fun getPosition/475492405 (var1273) Int)
(declare-fun var3461_getEndIndex/-929310547 (var3461) Int)
(declare-fun cast-from-var2206-to-var3461 (var2206) var3461)
(declare-fun dispose/-1274697927 (var3826) void)
(declare-fun var947_builder/-621586847 () var1365)
(declare-fun get/-268693498 (var1365) var947)
(declare-fun cast-from-var947-to-var135 (var947) var135)
(declare-fun var1230_write/-1280421749 (var2906 String var135) Bool)
(declare-fun cast-from-var1450-to-var2906 (var1450) var2906)
(declare-fun toByteArray/-760300521 (var947) (Array Int Int))
(declare-const null-var913 var913)
(declare-const null-Bool Bool)
(declare-const var2875-KEY_FRACTIONALMETRICS var3720)
(declare-const var2875-VALUE_FRACTIONALMETRICS_ON var586)
(declare-const var2875-KEY_ALPHA_INTERPOLATION var3720)
(declare-const var2875-VALUE_ALPHA_INTERPOLATION_QUALITY var586)
(declare-const var2875-KEY_ANTIALIASING var3720)
(declare-const var2875-VALUE_ANTIALIAS_ON var586)
(declare-const var2875-KEY_TEXT_ANTIALIASING var3720)
(declare-const var2875-VALUE_TEXT_ANTIALIAS_ON var586)
(declare-const null-String String)
(declare-const var332-FAMILY var332)
(declare-const var332-UNDERLINE var332)
(declare-const var332-UNDERLINE_ON Int)
(declare-const var332-SIZE var332)
(declare-const var2208-BLACK var2208)
(declare-const var2231 var913) ; Statement: r17 := @this: org.apache.poi.poifs.crypt.dsig.SignatureLine 
(assert (not (= var2231 null-var913)))
(declare-const var3176 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3176 null-Bool)))
(declare-const var2699 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2699 null-Bool)))
(define-const var3649 var1450 var1450-init) ; Statement: $r69 = new java.awt.image.BufferedImage 
(assert true)
;(assert (<init>/-97413903 var3649 400 150 2)) ; Statement: specialinvoke $r69.<java.awt.image.BufferedImage: void <init>(int,int,int)>(400, 150, 2) 

(declare-const var3649!1 var1450)
(declare-const var1496 Int)
(declare-const var1905 Int)
(declare-const var1677 Int)
(assert true)
(define-const var3792 var874 (createGraphics/-1927311584 var3649!1)) ; Statement: r1 = virtualinvoke $r69.<java.awt.image.BufferedImage: java.awt.Graphics2D createGraphics()>() 
(define-const var3071 var3720 var2875-KEY_FRACTIONALMETRICS) ; Statement: $r3 = <java.awt.RenderingHints: java.awt.RenderingHints$Key KEY_FRACTIONALMETRICS> 
(define-const var102 var586 var2875-VALUE_FRACTIONALMETRICS_ON) ; Statement: $r2 = <java.awt.RenderingHints: java.lang.Object VALUE_FRACTIONALMETRICS_ON> 
(assert true)
;(assert (setRenderingHint/63402731 var3792 var3071 var102)) ; Statement: virtualinvoke r1.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r3, $r2) 

(declare-const var3792!1 var874)
(declare-const var3071!1 var3720)
(declare-const var102!1 var586)
(define-const var2631 var3720 var2875-KEY_ALPHA_INTERPOLATION) ; Statement: $r5 = <java.awt.RenderingHints: java.awt.RenderingHints$Key KEY_ALPHA_INTERPOLATION> 
(define-const var588 var586 var2875-VALUE_ALPHA_INTERPOLATION_QUALITY) ; Statement: $r4 = <java.awt.RenderingHints: java.lang.Object VALUE_ALPHA_INTERPOLATION_QUALITY> 
(assert true)
;(assert (setRenderingHint/63402731 var3792!1 var2631 var588)) ; Statement: virtualinvoke r1.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r5, $r4) 

(declare-const var3792!2 var874)
(declare-const var2631!1 var3720)
(declare-const var588!1 var586)
(define-const var2393 var3720 var2875-KEY_ANTIALIASING) ; Statement: $r7 = <java.awt.RenderingHints: java.awt.RenderingHints$Key KEY_ANTIALIASING> 
(define-const var280 var586 var2875-VALUE_ANTIALIAS_ON) ; Statement: $r6 = <java.awt.RenderingHints: java.lang.Object VALUE_ANTIALIAS_ON> 
(assert true)
;(assert (setRenderingHint/63402731 var3792!2 var2393 var280)) ; Statement: virtualinvoke r1.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r7, $r6) 

(declare-const var3792!3 var874)
(declare-const var2393!1 var3720)
(declare-const var280!1 var586)
(define-const var575 var3720 var2875-KEY_TEXT_ANTIALIASING) ; Statement: $r9 = <java.awt.RenderingHints: java.awt.RenderingHints$Key KEY_TEXT_ANTIALIASING> 
(define-const var1074 var586 var2875-VALUE_TEXT_ANTIALIAS_ON) ; Statement: $r8 = <java.awt.RenderingHints: java.lang.Object VALUE_TEXT_ANTIALIAS_ON> 
(assert true)
;(assert (setRenderingHint/63402731 var3792!3 var575 var1074)) ; Statement: virtualinvoke r1.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r9, $r8) 

(declare-const var3792!4 var874)
(declare-const var575!1 var3720)
(declare-const var1074!1 var586)
(define-const var3906 String String-init) ; Statement: $r70 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3906)) ; Statement: specialinvoke $r70.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3906!1 String)
(assert (= var3906!1 ""))
(define-const var2590 String String-init) ; Statement: $r71 = new java.lang.String 
(define-const var1881 (Array Int Int) arr-Int-init) ; Statement: $r12 = newarray (char)[500] 
(assert true)
;(assert (<init>/-915723298 var2590 var1881)) ; Statement: specialinvoke $r71.<java.lang.String: void <init>(char[])>($r12) 

(declare-const var2590!1 String)
(declare-const var1881!1 (Array Int Int))
(assert true)
(define-const var3428 String (replace/2138489945 var2590!1 (cast-from-String-to-String "\u0000") (cast-from-String-to-String " "))) ; Statement: $r13 = virtualinvoke $r71.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\u0000", " ") 
(assert true)
(define-const var2022 String (append/672562846 var3906!1 var3428)) ; Statement: $r14 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3906!2 String)
(assert (= var3906!2 (str.++ var3906!1 var3428)))
(assert true)
(define-const var275 String (append/672562846 var2022 "\n")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var2022!1 String)
(assert (= var2022!1 (str.++ var2022 "\n")))
(assert true)
(define-const var1406 String (toString/-2075883882 var275)) ; Statement: r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1901 String (getCaption/-1211642440 var2231)) ; Statement: $r18 = virtualinvoke r17.<org.apache.poi.poifs.crypt.dsig.SignatureLine: java.lang.String getCaption()>() 
 ; Statement: if $r18 != null goto $r62 = virtualinvoke r17.<org.apache.poi.poifs.crypt.dsig.SignatureLine: java.lang.String getCaption()>() 
(assert (not (= var1901 null-String))) ; Cond: $r18 != null 
(assert true)
(define-const var3471 String (getCaption/-1211642440 var2231)) ; Statement: $r62 = virtualinvoke r17.<org.apache.poi.poifs.crypt.dsig.SignatureLine: java.lang.String getCaption()>() 
(assert true) ; Non Conditional
(define-const var2768 String String-init) ; Statement: $r72 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2768)) ; Statement: specialinvoke $r72.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2768!1 String)
(assert (= var2768!1 ""))
(assert true)
(define-const var2346 String (append/672562846 var2768!1 "X\n")) ; Statement: $r20 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("X\n") 
(declare-const var2768!2 String)
(assert (= var2768!2 (str.++ var2768!1 "X\n")))
(assert true)
(define-const var3209 String (append/672562846 var2346 var1406)) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r16) 
(declare-const var2346!1 String)
(assert (= var2346!1 (str.++ var2346 var1406)))
(assert true)
(define-const var1659 String (replaceAll/1692887130 var3471 "(?m)^" "    ")) ; Statement: $r21 = virtualinvoke $r62.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("(?m)^", "    ") 
(assert (= (replaceAll/1692887130 var3471 "(?m)^" "    ") (str.replace_re_all var3471 (re.++ (str.to_re "?m") (str.to_re "^")) "    ")))
(assert true)
(define-const var201 String (append/672562846 var3209 var1659)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var3209!1 String)
(assert (= var3209!1 (str.++ var3209 var1659)))
(assert true)
(define-const var3233 String (toString/-2075883882 var201)) ; Statement: $r55 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1409 var2798 var2798-init) ; Statement: $r73 = new java.text.AttributedString 
(assert true)
;(assert (<init>/1094011540 var1409 var3233)) ; Statement: specialinvoke $r73.<java.text.AttributedString: void <init>(java.lang.String)>($r55) 

(declare-const var1409!1 var2798)
(declare-const var3233!1 String)
(define-const var2092 var332 var332-FAMILY) ; Statement: $r25 = <java.awt.font.TextAttribute: java.awt.font.TextAttribute FAMILY> 
(assert true)
;(assert (addAttribute/-569130893 var1409!1 (cast-from-var332-to-var3338 var2092) (cast-from-String-to-var586 "SansSerif"))) ; Statement: virtualinvoke $r73.<java.text.AttributedString: void addAttribute(java.text.AttributedCharacterIterator$Attribute,java.lang.Object)>($r25, "SansSerif") 

(declare-const var1409!2 var2798)
(declare-const var2092!1 var332)
(declare-const var3769 String)
(define-const var2960 var332 var332-UNDERLINE) ; Statement: $r26 = <java.awt.font.TextAttribute: java.awt.font.TextAttribute UNDERLINE> 
(define-const var3734 Int var332-UNDERLINE_ON) ; Statement: $r27 = <java.awt.font.TextAttribute: java.lang.Integer UNDERLINE_ON> 
(define-const var3052 String "X\n") ; Statement: $r56 = "X\n" 
(assert true)
(define-const var1353 Int (length/-134980193 var3052)) ; Statement: $i2 = virtualinvoke $r56.<java.lang.String: int length()>() 
(define-const var960 String "X\n") ; Statement: $r57 = "X\n" 
(assert true)
(define-const var1448 Int (length/-134980193 var960)) ; Statement: $i0 = virtualinvoke $r57.<java.lang.String: int length()>() 
(assert true)
(define-const var3783 Int (indexOf/1426977840 var3233!1 10 var1448)) ; Statement: $i1 = virtualinvoke $r55.<java.lang.String: int indexOf(int,int)>(10, $i0) 
(assert true)
;(assert (addAttribute/-1181659143 var1409!2 (cast-from-var332-to-var3338 var2960) (cast-from-Int-to-var586 var3734) var1353 var3783)) ; Statement: virtualinvoke $r73.<java.text.AttributedString: void addAttribute(java.text.AttributedCharacterIterator$Attribute,java.lang.Object,int,int)>($r26, $r27, $i2, $i1) 

(declare-const var1409!3 var2798)
(declare-const var2960!1 var332)
(declare-const var3734!1 Int)
(declare-const var1353!1 Int)
(declare-const var3783!1 Int)
(define-const var3374 var332 var332-SIZE) ; Statement: $r28 = <java.awt.font.TextAttribute: java.awt.font.TextAttribute SIZE> 
(define-const var2168 Int (Int_valueOf/-1371140006 15)) ; Statement: $r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(15) 
(define-const var225 String "X\n") ; Statement: $r58 = "X\n" 
(assert true)
(define-const var2010 Int (length/-134980193 var225)) ; Statement: $i3 = virtualinvoke $r58.<java.lang.String: int length()>() 
(assert true)
;(assert (addAttribute/-1181659143 var1409!3 (cast-from-var332-to-var3338 var3374) (cast-from-Int-to-var586 var2168) 0 var2010)) ; Statement: virtualinvoke $r73.<java.text.AttributedString: void addAttribute(java.text.AttributedCharacterIterator$Attribute,java.lang.Object,int,int)>($r28, $r29, 0, $i3) 

(declare-const var1409!4 var2798)
(declare-const var3374!1 var332)
(declare-const var2168!1 Int)
(declare-const var1566 Int)
(declare-const var2010!1 Int)
(define-const var1372 var332 var332-SIZE) ; Statement: $r30 = <java.awt.font.TextAttribute: java.awt.font.TextAttribute SIZE> 
(define-const var318 Int (Int_valueOf/-1371140006 12)) ; Statement: $r31 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(12) 
(define-const var2113 String "X\n") ; Statement: $r59 = "X\n" 
(assert true)
(define-const var850 Int (length/-134980193 var2113)) ; Statement: $i5 = virtualinvoke $r59.<java.lang.String: int length()>() 
(assert true)
(define-const var2999 Int (length/-134980193 var3233!1)) ; Statement: $i4 = virtualinvoke $r55.<java.lang.String: int length()>() 
(assert true)
;(assert (addAttribute/-1181659143 var1409!4 (cast-from-var332-to-var3338 var1372) (cast-from-Int-to-var586 var318) var850 var2999)) ; Statement: virtualinvoke $r73.<java.text.AttributedString: void addAttribute(java.text.AttributedCharacterIterator$Attribute,java.lang.Object,int,int)>($r30, $r31, $i5, $i4) 

(declare-const var1409!5 var2798)
(declare-const var1372!1 var332)
(declare-const var318!1 Int)
(declare-const var850!1 Int)
(declare-const var2999!1 Int)
(define-const var1 var2208 var2208-BLACK) ; Statement: $r32 = <java.awt.Color: java.awt.Color BLACK> 
(assert true)
;(assert (setColor/1206064488 (cast-from-var874-to-var3826 var3792!4) var1)) ; Statement: virtualinvoke r1.<java.awt.Graphics2D: void setColor(java.awt.Color)>($r32) 

(declare-const var3792!5 var874)
(declare-const var1!1 var2208)
(assert true)
(define-const var1328 var2206 (getIterator/-1012675089 var1409!5)) ; Statement: $r60 = virtualinvoke $r73.<java.text.AttributedString: java.text.AttributedCharacterIterator getIterator()>() 
(assert true)
(define-const var475 var916 (getFontRenderContext/-496146259 var3792!5)) ; Statement: $r61 = virtualinvoke r1.<java.awt.Graphics2D: java.awt.font.FontRenderContext getFontRenderContext()>() 
(define-const var3234 var1273 var1273-init) ; Statement: $r74 = new java.awt.font.LineBreakMeasurer 
(assert true)
;(assert (<init>/214638970 var3234 var1328 var475)) ; Statement: specialinvoke $r74.<java.awt.font.LineBreakMeasurer: void <init>(java.text.AttributedCharacterIterator,java.awt.font.FontRenderContext)>($r60, $r61) 

(declare-const var3234!1 var1273)
(declare-const var1328!1 var2206)
(declare-const var475!1 var916)
(define-const var2965 Float32 ((_ to_fp 8 24) #x42a00000)) ; Statement: f8 = 80.0F 
(define-const var1880 Int 0) ; Statement: i13 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1588 Int (getPosition/475492405 var3234!1)) ; Statement: $i14 = virtualinvoke $r74.<java.awt.font.LineBreakMeasurer: int getPosition()>() 
(define-const var1883 Int (var3461_getEndIndex/-929310547 (cast-from-var2206-to-var3461 var1328!1))) ; Statement: $i15 = interfaceinvoke $r60.<java.text.AttributedCharacterIterator: int getEndIndex()>() 
 ; Statement: if $i14 >= $i15 goto (branch) 
(assert (>= var1588 var1883)) ; Cond: $i14 >= $i15 
 ; Statement: if z0 == 0 goto (branch) 
(assert (= (ite var3176 1 0) 0)) ; Cond: z0 == 0 
 ; Statement: if z1 == 0 goto virtualinvoke r1.<java.awt.Graphics2D: void dispose()>() 
(assert (= (ite var2699 1 0) 0)) ; Cond: z1 == 0 
(assert true)
;(assert (dispose/-1274697927 (cast-from-var874-to-var3826 var3792!5))) ; Statement: virtualinvoke r1.<java.awt.Graphics2D: void dispose()>() 

(declare-const var3792!6 var874)
(define-const var888 var1365 var947_builder/-621586847) ; Statement: $r66 = staticinvoke <org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream: org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream$Builder builder()>() 
(assert true)
(define-const var546 var947 (get/-268693498 var888)) ; Statement: $r67 = virtualinvoke $r66.<org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream$Builder: org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream get()>() 
(define-const var1500 var135 (cast-from-var947-to-var135 var546)) ; Statement: $r80 = (java.io.OutputStream) $r67 
;(assert (var1230_write/-1280421749 (cast-from-var1450-to-var2906 var3649!1) "PNG" var1500)) ; Statement: staticinvoke <javax.imageio.ImageIO: boolean write(java.awt.image.RenderedImage,java.lang.String,java.io.OutputStream)>($r69, "PNG", $r80) 

(declare-const var3649!2 var1450)
(declare-const var1306 String)
(declare-const var1500!1 var135)
(assert true)
(define-const var3426 (Array Int Int) (toByteArray/-760300521 var546)) ; Statement: $r68 = virtualinvoke $r67.<org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream: byte[] toByteArray()>() 
 ; Statement: return $r68 
(check-sat)
(get-model)
(get-unsat-core)
; {var1450-init=([], java.awt.image.BufferedImage), <init>/-97413903=([java.awt.image.BufferedImage, int, int, int], void), createGraphics/-1927311584=([java.awt.image.BufferedImage], java.awt.Graphics2D), setRenderingHint/63402731=([java.awt.Graphics2D, java.awt.RenderingHints$Key, java.lang.Object], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), arr-Int-init=([], char[]), <init>/-915723298=([java.lang.String, char[]], void), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getCaption/-1211642440=([org.apache.poi.poifs.crypt.dsig.SignatureLine], java.lang.String), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), var2798-init=([], java.text.AttributedString), <init>/1094011540=([java.text.AttributedString, java.lang.String], void), addAttribute/-569130893=([java.text.AttributedString, java.text.AttributedCharacterIterator$Attribute, java.lang.Object], void), cast-from-var332-to-var3338=([java.awt.font.TextAttribute], java.text.AttributedCharacterIterator$Attribute), cast-from-String-to-var586=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), indexOf/1426977840=([java.lang.String, int, int], int), addAttribute/-1181659143=([java.text.AttributedString, java.text.AttributedCharacterIterator$Attribute, java.lang.Object, int, int], void), cast-from-Int-to-var586=([java.lang.Integer], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), setColor/1206064488=([java.awt.Graphics, java.awt.Color], void), cast-from-var874-to-var3826=([java.awt.Graphics2D], java.awt.Graphics), getIterator/-1012675089=([java.text.AttributedString], java.text.AttributedCharacterIterator), getFontRenderContext/-496146259=([java.awt.Graphics2D], java.awt.font.FontRenderContext), var1273-init=([], java.awt.font.LineBreakMeasurer), <init>/214638970=([java.awt.font.LineBreakMeasurer, java.text.AttributedCharacterIterator, java.awt.font.FontRenderContext], void), getPosition/475492405=([java.awt.font.LineBreakMeasurer], int), var3461_getEndIndex/-929310547=([java.text.CharacterIterator], int), cast-from-var2206-to-var3461=([java.text.AttributedCharacterIterator], java.text.CharacterIterator), dispose/-1274697927=([java.awt.Graphics], void), var947_builder/-621586847=([], org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream$Builder), get/-268693498=([org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream$Builder], org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream), cast-from-var947-to-var135=([org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream], java.io.OutputStream), var1230_write/-1280421749=([java.awt.image.RenderedImage, java.lang.String, java.io.OutputStream], boolean), cast-from-var1450-to-var2906=([java.awt.image.BufferedImage], java.awt.image.RenderedImage), toByteArray/-760300521=([org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream], byte[])}
; {var913=org.apache.poi.poifs.crypt.dsig.SignatureLine, var2231=r17, var3176=z0, var2699=z1, var1450=java.awt.image.BufferedImage, var3649=$r69, var1496=400, var1905=150, var1677=2, var874=java.awt.Graphics2D, var3792=r1, var3720=java.awt.RenderingHints$Key, var2875=java.awt.RenderingHints, var3071=$r3, var586=java.lang.Object, var102=$r2, var2631=$r5, var588=$r4, var2393=$r7, var280=$r6, var575=$r9, var1074=$r8, var3906=$r70, var2590=$r71, var1881=$r12, var3428=$r13, var2022=$r14, var275=$r15, var1406=r16, var1901=$r18, var3255=null_type, var3471=$r62, var2768=$r72, var2346=$r20, var3209=$r22, var1659=$r21, var201=$r23, var3233=$r55, var2798=java.text.AttributedString, var1409=$r73, var332=java.awt.font.TextAttribute, var2092=$r25, var3338=java.text.AttributedCharacterIterator$Attribute, var3769="SansSerif", var2960=$r26, var3734=$r27, var3052=$r56, var1353=$i2, var960=$r57, var1448=$i0, var3783=$i1, var3374=$r28, var2168=$r29, var225=$r58, var2010=$i3, var1566=0, var1372=$r30, var318=$r31, var2113=$r59, var850=$i5, var2999=$i4, var2208=java.awt.Color, var1=$r32, var3826=java.awt.Graphics, var2206=java.text.AttributedCharacterIterator, var1328=$r60, var916=java.awt.font.FontRenderContext, var475=$r61, var1273=java.awt.font.LineBreakMeasurer, var3234=$r74, var2965=f8, var1880=i13, var1588=$i14, var3461=java.text.CharacterIterator, var1883=$i15, var1365=org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream$Builder, var947=org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream, var888=$r66, var546=$r67, var135=java.io.OutputStream, var1500=$r80, var1230=javax.imageio.ImageIO, var2906=java.awt.image.RenderedImage, var1306="PNG", var3426=$r68}
; {org.apache.poi.poifs.crypt.dsig.SignatureLine=var913, r17=var2231, z0=var3176, z1=var2699, java.awt.image.BufferedImage=var1450, $r69=var3649, 400=var1496, 150=var1905, 2=var1677, java.awt.Graphics2D=var874, r1=var3792, java.awt.RenderingHints$Key=var3720, java.awt.RenderingHints=var2875, $r3=var3071, java.lang.Object=var586, $r2=var102, $r5=var2631, $r4=var588, $r7=var2393, $r6=var280, $r9=var575, $r8=var1074, $r70=var3906, $r71=var2590, $r12=var1881, $r13=var3428, $r14=var2022, $r15=var275, r16=var1406, $r18=var1901, null_type=var3255, $r62=var3471, $r72=var2768, $r20=var2346, $r22=var3209, $r21=var1659, $r23=var201, $r55=var3233, java.text.AttributedString=var2798, $r73=var1409, java.awt.font.TextAttribute=var332, $r25=var2092, java.text.AttributedCharacterIterator$Attribute=var3338, "SansSerif"=var3769, $r26=var2960, $r27=var3734, $r56=var3052, $i2=var1353, $r57=var960, $i0=var1448, $i1=var3783, $r28=var3374, $r29=var2168, $r58=var225, $i3=var2010, 0=var1566, $r30=var1372, $r31=var318, $r59=var2113, $i5=var850, $i4=var2999, java.awt.Color=var2208, $r32=var1, java.awt.Graphics=var3826, java.text.AttributedCharacterIterator=var2206, $r60=var1328, java.awt.font.FontRenderContext=var916, $r61=var475, java.awt.font.LineBreakMeasurer=var1273, $r74=var3234, f8=var2965, i13=var1880, $i14=var1588, java.text.CharacterIterator=var3461, $i15=var1883, org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream$Builder=var1365, org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream=var947, $r66=var888, $r67=var546, java.io.OutputStream=var135, $r80=var1500, javax.imageio.ImageIO=var1230, java.awt.image.RenderedImage=var2906, "PNG"=var1306, $r68=var3426}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: void <init>(char[])>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.String: void <init>(char[])>": 1,"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.String: int length()>": 5,"<java.lang.String: int indexOf(int,int)>": 1}
;stmts r17 := @this: org.apache.poi.poifs.crypt.dsig.SignatureLine;	z0 := @parameter0: boolean;	z1 := @parameter1: boolean;	$r69 = new java.awt.image.BufferedImage;	specialinvoke $r69.<java.awt.image.BufferedImage: void <init>(int,int,int)>(400, 150, 2);	r1 = virtualinvoke $r69.<java.awt.image.BufferedImage: java.awt.Graphics2D createGraphics()>();	$r3 = <java.awt.RenderingHints: java.awt.RenderingHints$Key KEY_FRACTIONALMETRICS>;	$r2 = <java.awt.RenderingHints: java.lang.Object VALUE_FRACTIONALMETRICS_ON>;	virtualinvoke r1.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r3, $r2);	$r5 = <java.awt.RenderingHints: java.awt.RenderingHints$Key KEY_ALPHA_INTERPOLATION>;	$r4 = <java.awt.RenderingHints: java.lang.Object VALUE_ALPHA_INTERPOLATION_QUALITY>;	virtualinvoke r1.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r5, $r4);	$r7 = <java.awt.RenderingHints: java.awt.RenderingHints$Key KEY_ANTIALIASING>;	$r6 = <java.awt.RenderingHints: java.lang.Object VALUE_ANTIALIAS_ON>;	virtualinvoke r1.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r7, $r6);	$r9 = <java.awt.RenderingHints: java.awt.RenderingHints$Key KEY_TEXT_ANTIALIASING>;	$r8 = <java.awt.RenderingHints: java.lang.Object VALUE_TEXT_ANTIALIAS_ON>;	virtualinvoke r1.<java.awt.Graphics2D: void setRenderingHint(java.awt.RenderingHints$Key,java.lang.Object)>($r9, $r8);	$r70 = new java.lang.StringBuilder;	specialinvoke $r70.<java.lang.StringBuilder: void <init>()>();	$r71 = new java.lang.String;	$r12 = newarray (char)[500];	specialinvoke $r71.<java.lang.String: void <init>(char[])>($r12);	$r13 = virtualinvoke $r71.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("\u0000", " ");	$r14 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = virtualinvoke r17.<org.apache.poi.poifs.crypt.dsig.SignatureLine: java.lang.String getCaption()>();	if $r18 != null goto $r62 = virtualinvoke r17.<org.apache.poi.poifs.crypt.dsig.SignatureLine: java.lang.String getCaption()>();	$r62 = virtualinvoke r17.<org.apache.poi.poifs.crypt.dsig.SignatureLine: java.lang.String getCaption()>();	$r72 = new java.lang.StringBuilder;	specialinvoke $r72.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("X\n");	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r16);	$r21 = virtualinvoke $r62.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("(?m)^", "    ");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r55 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r73 = new java.text.AttributedString;	specialinvoke $r73.<java.text.AttributedString: void <init>(java.lang.String)>($r55);	$r25 = <java.awt.font.TextAttribute: java.awt.font.TextAttribute FAMILY>;	virtualinvoke $r73.<java.text.AttributedString: void addAttribute(java.text.AttributedCharacterIterator$Attribute,java.lang.Object)>($r25, "SansSerif");	$r26 = <java.awt.font.TextAttribute: java.awt.font.TextAttribute UNDERLINE>;	$r27 = <java.awt.font.TextAttribute: java.lang.Integer UNDERLINE_ON>;	$r56 = "X\n";	$i2 = virtualinvoke $r56.<java.lang.String: int length()>();	$r57 = "X\n";	$i0 = virtualinvoke $r57.<java.lang.String: int length()>();	$i1 = virtualinvoke $r55.<java.lang.String: int indexOf(int,int)>(10, $i0);	virtualinvoke $r73.<java.text.AttributedString: void addAttribute(java.text.AttributedCharacterIterator$Attribute,java.lang.Object,int,int)>($r26, $r27, $i2, $i1);	$r28 = <java.awt.font.TextAttribute: java.awt.font.TextAttribute SIZE>;	$r29 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(15);	$r58 = "X\n";	$i3 = virtualinvoke $r58.<java.lang.String: int length()>();	virtualinvoke $r73.<java.text.AttributedString: void addAttribute(java.text.AttributedCharacterIterator$Attribute,java.lang.Object,int,int)>($r28, $r29, 0, $i3);	$r30 = <java.awt.font.TextAttribute: java.awt.font.TextAttribute SIZE>;	$r31 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(12);	$r59 = "X\n";	$i5 = virtualinvoke $r59.<java.lang.String: int length()>();	$i4 = virtualinvoke $r55.<java.lang.String: int length()>();	virtualinvoke $r73.<java.text.AttributedString: void addAttribute(java.text.AttributedCharacterIterator$Attribute,java.lang.Object,int,int)>($r30, $r31, $i5, $i4);	$r32 = <java.awt.Color: java.awt.Color BLACK>;	virtualinvoke r1.<java.awt.Graphics2D: void setColor(java.awt.Color)>($r32);	$r60 = virtualinvoke $r73.<java.text.AttributedString: java.text.AttributedCharacterIterator getIterator()>();	$r61 = virtualinvoke r1.<java.awt.Graphics2D: java.awt.font.FontRenderContext getFontRenderContext()>();	$r74 = new java.awt.font.LineBreakMeasurer;	specialinvoke $r74.<java.awt.font.LineBreakMeasurer: void <init>(java.text.AttributedCharacterIterator,java.awt.font.FontRenderContext)>($r60, $r61);	f8 = 80.0F;	i13 = 0;	$i14 = virtualinvoke $r74.<java.awt.font.LineBreakMeasurer: int getPosition()>();	$i15 = interfaceinvoke $r60.<java.text.AttributedCharacterIterator: int getEndIndex()>();	if $i14 >= $i15 goto (branch);	if z0 == 0 goto (branch);	if z1 == 0 goto virtualinvoke r1.<java.awt.Graphics2D: void dispose()>();	virtualinvoke r1.<java.awt.Graphics2D: void dispose()>();	$r66 = staticinvoke <org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream: org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream$Builder builder()>();	$r67 = virtualinvoke $r66.<org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream$Builder: org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream get()>();	$r80 = (java.io.OutputStream) $r67;	staticinvoke <javax.imageio.ImageIO: boolean write(java.awt.image.RenderedImage,java.lang.String,java.io.OutputStream)>($r69, "PNG", $r80);	$r68 = virtualinvoke $r67.<org.apache.commons.io.output.UnsynchronizedByteArrayOutputStream: byte[] toByteArray()>();	return $r68
;block_num 7