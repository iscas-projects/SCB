(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3231 0)
(declare-sort var3176 0)
(declare-sort var629 0)
(declare-sort var2465 0)
(declare-sort var2328 0)
(declare-sort var3922 0)
(declare-sort var1635 0)
(declare-sort var332 0)
(declare-sort var2814 0)
(declare-sort var2112 0)
(declare-sort var3341 0)
(declare-sort var2468 0)
(declare-sort var2963 0)
(declare-sort var1650 0)
(declare-sort var1166 0)
(declare-sort var2716 0)
(declare-sort var3807 0)
(declare-sort var1267 0)
(declare-sort var2273 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImageRenderer/1315095332 (var3176) var2465)
(declare-fun var3922-init () var3922)
(declare-fun <init>/1815860079 (var3922) void)
(declare-fun update/-1141632158 (var3922 (Array Int Int)) void)
(declare-fun getValue/212411758 (var3922) Int)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun imageMap/887149776 (var3231) var1635)
(declare-fun var1635_get/1088891777 (var1635 var332) var332)
(declare-fun cast-from-Int-to-var332 (Int) var332)
(declare-fun cast-from-var332-to-String (var332) String)
(declare-fun getDOMFactory/1300953394 (var629) var2814)
(declare-fun getAnchorRect/1440767139 (var3176) var2112)
(declare-fun getIDGenerator/-1835782759 (var629) var3341)
(declare-fun generateID/-1628253822 (var3341 String) String)
(declare-fun var1635_put/1464166817 (var1635 var332 var332) var332)
(declare-fun cast-from-String-to-var332 (String) var332)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getBytes/-163691139 (String var2468) (Array Int Int))
(declare-fun var1166_getMimeEncoder/-889199734 (Int (Array Int Int)) var1650)
(declare-fun encodeToString/1148501555 (var1650 (Array Int Int)) String)
(declare-fun var2814_createElementNS/1445905347 (var2814 String String) var2716)
(declare-fun arr-var332-init () (Array Int var332))
(declare-fun getX/2088705159 (var3807) Float64)
(declare-fun cast-from-var2112-to-var3807 (var2112) var3807)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun cast-from-Float64-to-var332 (Float64) var332)
(declare-fun getY/2088734950 (var3807) Float64)
(declare-fun getWidth/627712889 (var3807) Float64)
(declare-fun getHeight/717604212 (var3807) Float64)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3231_setAttribute/-916380076 (var629 var2716 (Array Int var332)) void)
(declare-fun getSvgGraphics2D/-132846940 (var3231) var1267)
(declare-fun getDOMTreeManager/-73739614 (var1267) var2273)
(declare-fun addOtherDef/1023032602 (var2273 var2716) void)
(declare-const null-var3231 var3231)
(declare-const null-var3176 var3176)
(declare-const null-var629 var629)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-String String)
(declare-const var2963-US_ASCII var2468)
(declare-const null-var332 var332)
(declare-const null-__Array__Int__var332__ (Array Int var332))
(declare-const var392 var3231) ; Statement: r3 := @this: org.apache.poi.xslf.draw.SVGRenderExtension 
(assert (not (= var392 null-var3231)))
(declare-const var984 var3176) ; Statement: r0 := @parameter0: org.apache.poi.sl.draw.DrawTexturePaint 
(assert (not (= var984 null-var3176)))
(declare-const var341 var629) ; Statement: r6 := @parameter1: org.apache.batik.svggen.SVGGeneratorContext 
(assert (not (= var341 null-var629)))
(assert true)
(define-const var2042 var2465 (getImageRenderer/1315095332 var984)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.sl.draw.DrawTexturePaint: org.apache.poi.sl.draw.ImageRenderer getImageRenderer()>() 
(define-const var62 (Array Int Int) null-__Array__Int__Int__) ; Statement: r37 = null 
(define-const var3309 String null-String) ; Statement: r38 = null 
(define-const var1439 Bool true) ; Statement: $z0 = r1 instanceof org.apache.poi.sl.draw.BitmapImageRenderer 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var1439 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r37 != null goto $r44 = new java.util.zip.CRC32 
(assert (not (= var62 null-__Array__Int__Int__))) ; Cond: r37 != null 
(define-const var196 var3922 var3922-init) ; Statement: $r44 = new java.util.zip.CRC32 
(assert true)
;(assert (<init>/1815860079 var196)) ; Statement: specialinvoke $r44.<java.util.zip.CRC32: void <init>()>() 

(declare-const var196!1 var3922)
(assert true)
;(assert (update/-1141632158 var196!1 var62)) ; Statement: virtualinvoke $r44.<java.util.zip.CRC32: void update(byte[])>(r37) 

(declare-const var196!2 var3922)
(declare-const var62!1 (Array Int Int))
(assert true)
(define-const var2657 Int (getValue/212411758 var196!2)) ; Statement: $l0 = virtualinvoke $r44.<java.util.zip.CRC32: long getValue()>() 
(define-const var2527 Int (Int_valueOf/-1102777585 var2657)) ; Statement: $r28 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0) 
(define-const var620 var1635 (imageMap/887149776 var392)) ; Statement: $r4 = r3.<org.apache.poi.xslf.draw.SVGRenderExtension: java.util.Map imageMap> 
(define-const var214 var332 (var1635_get/1088891777 var620 (cast-from-Int-to-var332 var2527))) ; Statement: $r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>($r28) 
(define-const var1143 String (cast-from-var332-to-String var214)) ; Statement: $r29 = (java.lang.String) $r5 
 ; Statement: if $r29 == null goto r7 = virtualinvoke r6.<org.apache.batik.svggen.SVGGeneratorContext: org.w3c.dom.Document getDOMFactory()>() 
(assert (= var1143 null-String)) ; Cond: $r29 == null 
(assert true)
(define-const var1666 var2814 (getDOMFactory/1300953394 var341)) ; Statement: r7 = virtualinvoke r6.<org.apache.batik.svggen.SVGGeneratorContext: org.w3c.dom.Document getDOMFactory()>() 
(assert true)
(define-const var156 var2112 (getAnchorRect/1440767139 var984)) ; Statement: r8 = virtualinvoke r0.<org.apache.poi.sl.draw.DrawTexturePaint: java.awt.geom.Rectangle2D getAnchorRect()>() 
(assert true)
(define-const var3244 var3341 (getIDGenerator/-1835782759 var341)) ; Statement: $r9 = virtualinvoke r6.<org.apache.batik.svggen.SVGGeneratorContext: org.apache.batik.svggen.SVGIDGenerator getIDGenerator()>() 
(assert true)
(define-const var1595 String (generateID/-1628253822 var3244 "image")) ; Statement: r43 = virtualinvoke $r9.<org.apache.batik.svggen.SVGIDGenerator: java.lang.String generateID(java.lang.String)>("image") 
(define-const var2099 var1635 (imageMap/887149776 var392)) ; Statement: $r10 = r3.<org.apache.poi.xslf.draw.SVGRenderExtension: java.util.Map imageMap> 
;(assert (var1635_put/1464166817 var2099 (cast-from-Int-to-var332 var2527) (cast-from-String-to-var332 var1595))) ; Statement: interfaceinvoke $r10.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r28, r43) 

(declare-const var2099!1 var1635)
(declare-const var2527!1 Int)
(declare-const var1595!1 String)
(define-const var144 Int (getLength-Arr-Int-1 var62!1)) ; Statement: $i1 = lengthof r37 
(define-const var3202 Int (* 4 var144)) ; Statement: $i2 = 4 * $i1 
(define-const var3538 Int (div var3202 3)) ; Statement: $i3 = $i2 / 3 
(define-const var3057 Int (+ var3538 3)) ; Statement: $i4 = $i3 + 3 
(define-const var733 Int (cast-from-Int-to-Int (- 4))) ; Statement: $i10 = (int) -4 
(define-const var37 Int (bv2nat (bvand ((_ int2bv 64) var3057) ((_ int2bv 64) var733)))) ; Statement: i7 = $i4 & $i10 
(define-const var1839 Int (div var37 65)) ; Statement: $i5 = i7 / 65 
(define-const var537 Int (+ var1839 30)) ; Statement: $i6 = $i5 + 30 
(define-const var2348 Int (+ var37 var537)) ; Statement: i8 = i7 + $i6 
(define-const var3378 String String-init) ; Statement: $r45 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3378 var2348)) ; Statement: specialinvoke $r45.<java.lang.StringBuilder: void <init>(int)>(i8) 

(declare-const var3378!1 String)
(declare-const var2348!1 Int)
(assert true)
;(assert (append/672562846 var3378!1 "data:")) ; Statement: virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("data:") 
(declare-const var3378!2 String)
(assert (= var3378!2 (str.++ var3378!1 "data:")))
(assert true)
;(assert (append/672562846 var3378!2 var3309)) ; Statement: virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r38) 
(declare-const var3378!3 String)
(assert (= var3378!3 (str.++ var3378!2 var3309)))
(assert true)
;(assert (append/672562846 var3378!3 ";base64,\n")) ; Statement: virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";base64,\n") 
(declare-const var3378!4 String)
(assert (= var3378!4 (str.++ var3378!3 ";base64,\n")))
(define-const var315 String "\n") ; Statement: $r13 = "\n" 
(define-const var907 var2468 var2963-US_ASCII) ; Statement: $r12 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII> 
(assert true)
(define-const var3135 (Array Int Int) (getBytes/-163691139 var315 var907)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r12) 
(define-const var3429 var1650 (var1166_getMimeEncoder/-889199734 65 var3135)) ; Statement: $r15 = staticinvoke <java.util.Base64: java.util.Base64$Encoder getMimeEncoder(int,byte[])>(65, $r14) 
(assert true)
(define-const var1714 String (encodeToString/1148501555 var3429 var62!1)) ; Statement: $r16 = virtualinvoke $r15.<java.util.Base64$Encoder: java.lang.String encodeToString(byte[])>(r37) 
(assert true)
;(assert (append/672562846 var3378!4 var1714)) ; Statement: virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3378!5 String)
(assert (= var3378!5 (str.++ var3378!4 var1714)))
(define-const var2218 var2716 (var2814_createElementNS/1445905347 var1666 "http://www.w3.org/2000/svg" "image")) ; Statement: r17 = interfaceinvoke r7.<org.w3c.dom.Document: org.w3c.dom.Element createElementNS(java.lang.String,java.lang.String)>("http://www.w3.org/2000/svg", "image") 
(define-const var1004 (Array Int var332) arr-var332-init) ; Statement: $r18 = newarray (java.lang.Object)[21] 
(declare-const var1004!1 (Array Int var332))
(assert (not (= var1004!1 null-__Array__Int__var332__)))
(assert (= (select var1004!1 0) null-var332)) ; Statement: $r18[0] = null 
(declare-const var1004!2 (Array Int var332))
(assert (not (= var1004!2 null-__Array__Int__var332__)))
(assert (= (select var1004!2 1) (cast-from-String-to-var332 "id"))) ; Statement: $r18[1] = "id" 
(declare-const var1004!3 (Array Int var332))
(assert (not (= var1004!3 null-__Array__Int__var332__)))
(assert (= (select var1004!3 2) (cast-from-String-to-var332 var1595!1))) ; Statement: $r18[2] = r43 
(declare-const var1004!4 (Array Int var332))
(assert (not (= var1004!4 null-__Array__Int__var332__)))
(assert (= (select var1004!4 3) null-var332)) ; Statement: $r18[3] = null 
(declare-const var1004!5 (Array Int var332))
(assert (not (= var1004!5 null-__Array__Int__var332__)))
(assert (= (select var1004!5 4) (cast-from-String-to-var332 "preserveAspectRatio"))) ; Statement: $r18[4] = "preserveAspectRatio" 
(declare-const var1004!6 (Array Int var332))
(assert (not (= var1004!6 null-__Array__Int__var332__)))
(assert (= (select var1004!6 5) (cast-from-String-to-var332 "none"))) ; Statement: $r18[5] = "none" 
(declare-const var1004!7 (Array Int var332))
(assert (not (= var1004!7 null-__Array__Int__var332__)))
(assert (= (select var1004!7 6) null-var332)) ; Statement: $r18[6] = null 
(declare-const var1004!8 (Array Int var332))
(assert (not (= var1004!8 null-__Array__Int__var332__)))
(assert (= (select var1004!8 7) (cast-from-String-to-var332 "x"))) ; Statement: $r18[7] = "x" 
(assert true)
(define-const var1675 Float64 (getX/2088705159 (cast-from-var2112-to-var3807 var156))) ; Statement: $d0 = virtualinvoke r8.<java.awt.geom.Rectangle2D: double getX()>() 
(define-const var3006 Float64 (Float64_valueOf/679560954 var1675)) ; Statement: $r19 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d0) 
(declare-const var1004!9 (Array Int var332))
(assert (not (= var1004!9 null-__Array__Int__var332__)))
(assert (= (select var1004!9 8) (cast-from-Float64-to-var332 var3006))) ; Statement: $r18[8] = $r19 
(declare-const var1004!10 (Array Int var332))
(assert (not (= var1004!10 null-__Array__Int__var332__)))
(assert (= (select var1004!10 9) null-var332)) ; Statement: $r18[9] = null 
(declare-const var1004!11 (Array Int var332))
(assert (not (= var1004!11 null-__Array__Int__var332__)))
(assert (= (select var1004!11 10) (cast-from-String-to-var332 "y"))) ; Statement: $r18[10] = "y" 
(assert true)
(define-const var3160 Float64 (getY/2088734950 (cast-from-var2112-to-var3807 var156))) ; Statement: $d1 = virtualinvoke r8.<java.awt.geom.Rectangle2D: double getY()>() 
(define-const var3515 Float64 (Float64_valueOf/679560954 var3160)) ; Statement: $r20 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d1) 
(declare-const var1004!12 (Array Int var332))
(assert (not (= var1004!12 null-__Array__Int__var332__)))
(assert (= (select var1004!12 11) (cast-from-Float64-to-var332 var3515))) ; Statement: $r18[11] = $r20 
(declare-const var1004!13 (Array Int var332))
(assert (not (= var1004!13 null-__Array__Int__var332__)))
(assert (= (select var1004!13 12) null-var332)) ; Statement: $r18[12] = null 
(declare-const var1004!14 (Array Int var332))
(assert (not (= var1004!14 null-__Array__Int__var332__)))
(assert (= (select var1004!14 13) (cast-from-String-to-var332 "width"))) ; Statement: $r18[13] = "width" 
(assert true)
(define-const var2256 Float64 (getWidth/627712889 (cast-from-var2112-to-var3807 var156))) ; Statement: $d2 = virtualinvoke r8.<java.awt.geom.Rectangle2D: double getWidth()>() 
(define-const var166 Float64 (Float64_valueOf/679560954 var2256)) ; Statement: $r21 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d2) 
(declare-const var1004!15 (Array Int var332))
(assert (not (= var1004!15 null-__Array__Int__var332__)))
(assert (= (select var1004!15 14) (cast-from-Float64-to-var332 var166))) ; Statement: $r18[14] = $r21 
(declare-const var1004!16 (Array Int var332))
(assert (not (= var1004!16 null-__Array__Int__var332__)))
(assert (= (select var1004!16 15) null-var332)) ; Statement: $r18[15] = null 
(declare-const var1004!17 (Array Int var332))
(assert (not (= var1004!17 null-__Array__Int__var332__)))
(assert (= (select var1004!17 16) (cast-from-String-to-var332 "height"))) ; Statement: $r18[16] = "height" 
(assert true)
(define-const var1365 Float64 (getHeight/717604212 (cast-from-var2112-to-var3807 var156))) ; Statement: $d3 = virtualinvoke r8.<java.awt.geom.Rectangle2D: double getHeight()>() 
(define-const var2048 Float64 (Float64_valueOf/679560954 var1365)) ; Statement: $r22 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d3) 
(declare-const var1004!18 (Array Int var332))
(assert (not (= var1004!18 null-__Array__Int__var332__)))
(assert (= (select var1004!18 17) (cast-from-Float64-to-var332 var2048))) ; Statement: $r18[17] = $r22 
(declare-const var1004!19 (Array Int var332))
(assert (not (= var1004!19 null-__Array__Int__var332__)))
(assert (= (select var1004!19 18) (cast-from-String-to-var332 "http://www.w3.org/1999/xlink"))) ; Statement: $r18[18] = "http://www.w3.org/1999/xlink" 
(declare-const var1004!20 (Array Int var332))
(assert (not (= var1004!20 null-__Array__Int__var332__)))
(assert (= (select var1004!20 19) (cast-from-String-to-var332 "xlink:href"))) ; Statement: $r18[19] = "xlink:href" 
(assert true)
(define-const var496 String (toString/-2075883882 var3378!5)) ; Statement: $r23 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1004!21 (Array Int var332))
(assert (not (= var1004!21 null-__Array__Int__var332__)))
(assert (= (select var1004!21 20) (cast-from-String-to-var332 var496))) ; Statement: $r18[20] = $r23 
;(assert (var3231_setAttribute/-916380076 var341 var2218 var1004!21)) ; Statement: staticinvoke <org.apache.poi.xslf.draw.SVGRenderExtension: void setAttribute(org.apache.batik.svggen.SVGGeneratorContext,org.w3c.dom.Element,java.lang.Object[])>(r6, r17, $r18) 

(declare-const var341!1 var629)
(declare-const var2218!1 var2716)
(declare-const var1004!22 (Array Int var332))
(assert true)
(define-const var2270 var1267 (getSvgGraphics2D/-132846940 var392)) ; Statement: $r24 = virtualinvoke r3.<org.apache.poi.xslf.draw.SVGRenderExtension: org.apache.batik.svggen.SVGGraphics2D getSvgGraphics2D()>() 
(assert true)
(define-const var3417 var2273 (getDOMTreeManager/-73739614 var2270)) ; Statement: $r25 = virtualinvoke $r24.<org.apache.batik.svggen.SVGGraphics2D: org.apache.batik.svggen.DOMTreeManager getDOMTreeManager()>() 
(assert true)
;(assert (addOtherDef/1023032602 var3417 var2218!1)) ; Statement: virtualinvoke $r25.<org.apache.batik.svggen.DOMTreeManager: void addOtherDef(org.w3c.dom.Element)>(r17) 

(declare-const var3417!1 var2273)
(declare-const var2218!2 var2716)
 ; Statement: return r43 
(check-sat)
(get-model)
(get-unsat-core)
; {getImageRenderer/1315095332=([org.apache.poi.sl.draw.DrawTexturePaint], org.apache.poi.sl.draw.ImageRenderer), var3922-init=([], java.util.zip.CRC32), <init>/1815860079=([java.util.zip.CRC32], void), update/-1141632158=([java.util.zip.CRC32, byte[]], void), getValue/212411758=([java.util.zip.CRC32], long), Int_valueOf/-1102777585=([long], java.lang.Long), imageMap/887149776=([org.apache.poi.xslf.draw.SVGRenderExtension], java.util.Map), var1635_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var332=([java.lang.Long], java.lang.Object), cast-from-var332-to-String=([java.lang.Object], java.lang.String), getDOMFactory/1300953394=([org.apache.batik.svggen.SVGGeneratorContext], org.w3c.dom.Document), getAnchorRect/1440767139=([org.apache.poi.sl.draw.DrawTexturePaint], java.awt.geom.Rectangle2D), getIDGenerator/-1835782759=([org.apache.batik.svggen.SVGGeneratorContext], org.apache.batik.svggen.SVGIDGenerator), generateID/-1628253822=([org.apache.batik.svggen.SVGIDGenerator, java.lang.String], java.lang.String), var1635_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var332=([java.lang.String], java.lang.Object), getLength-Arr-Int-1=([byte[]], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), var1166_getMimeEncoder/-889199734=([int, byte[]], java.util.Base64$Encoder), encodeToString/1148501555=([java.util.Base64$Encoder, byte[]], java.lang.String), var2814_createElementNS/1445905347=([org.w3c.dom.Document, java.lang.String, java.lang.String], org.w3c.dom.Element), arr-var332-init=([], java.lang.Object[]), getX/2088705159=([java.awt.geom.RectangularShape], double), cast-from-var2112-to-var3807=([java.awt.geom.Rectangle2D], java.awt.geom.RectangularShape), Float64_valueOf/679560954=([double], java.lang.Double), cast-from-Float64-to-var332=([java.lang.Double], java.lang.Object), getY/2088734950=([java.awt.geom.RectangularShape], double), getWidth/627712889=([java.awt.geom.RectangularShape], double), getHeight/717604212=([java.awt.geom.RectangularShape], double), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3231_setAttribute/-916380076=([org.apache.batik.svggen.SVGGeneratorContext, org.w3c.dom.Element, java.lang.Object[]], void), getSvgGraphics2D/-132846940=([org.apache.poi.xslf.draw.SVGRenderExtension], org.apache.batik.svggen.SVGGraphics2D), getDOMTreeManager/-73739614=([org.apache.batik.svggen.SVGGraphics2D], org.apache.batik.svggen.DOMTreeManager), addOtherDef/1023032602=([org.apache.batik.svggen.DOMTreeManager, org.w3c.dom.Element], void)}
; {var3231=org.apache.poi.xslf.draw.SVGRenderExtension, var392=r3, var3176=org.apache.poi.sl.draw.DrawTexturePaint, var984=r0, var629=org.apache.batik.svggen.SVGGeneratorContext, var341=r6, var2465=org.apache.poi.sl.draw.ImageRenderer, var2042=r1, var62=r37, var2328=null_type, var3309=r38, var1439=$z0, var3922=java.util.zip.CRC32, var196=$r44, var2657=$l0, var2527=$r28, var1635=java.util.Map, var620=$r4, var332=java.lang.Object, var214=$r5, var1143=$r29, var2814=org.w3c.dom.Document, var1666=r7, var2112=java.awt.geom.Rectangle2D, var156=r8, var3341=org.apache.batik.svggen.SVGIDGenerator, var3244=$r9, var1595=r43, var2099=$r10, var144=$i1, var3202=$i2, var3538=$i3, var3057=$i4, var733=$i10, var37=i7, var1839=$i5, var537=$i6, var2348=i8, var3378=$r45, var315=$r13, var2468=java.nio.charset.Charset, var2963=java.nio.charset.StandardCharsets, var907=$r12, var3135=$r14, var1650=java.util.Base64$Encoder, var1166=java.util.Base64, var3429=$r15, var1714=$r16, var2716=org.w3c.dom.Element, var2218=r17, var1004=$r18, var3807=java.awt.geom.RectangularShape, var1675=$d0, var3006=$r19, var3160=$d1, var3515=$r20, var2256=$d2, var166=$r21, var1365=$d3, var2048=$r22, var496=$r23, var1267=org.apache.batik.svggen.SVGGraphics2D, var2270=$r24, var2273=org.apache.batik.svggen.DOMTreeManager, var3417=$r25}
; {org.apache.poi.xslf.draw.SVGRenderExtension=var3231, r3=var392, org.apache.poi.sl.draw.DrawTexturePaint=var3176, r0=var984, org.apache.batik.svggen.SVGGeneratorContext=var629, r6=var341, org.apache.poi.sl.draw.ImageRenderer=var2465, r1=var2042, r37=var62, null_type=var2328, r38=var3309, $z0=var1439, java.util.zip.CRC32=var3922, $r44=var196, $l0=var2657, $r28=var2527, java.util.Map=var1635, $r4=var620, java.lang.Object=var332, $r5=var214, $r29=var1143, org.w3c.dom.Document=var2814, r7=var1666, java.awt.geom.Rectangle2D=var2112, r8=var156, org.apache.batik.svggen.SVGIDGenerator=var3341, $r9=var3244, r43=var1595, $r10=var2099, $i1=var144, $i2=var3202, $i3=var3538, $i4=var3057, $i10=var733, i7=var37, $i5=var1839, $i6=var537, i8=var2348, $r45=var3378, $r13=var315, java.nio.charset.Charset=var2468, java.nio.charset.StandardCharsets=var2963, $r12=var907, $r14=var3135, java.util.Base64$Encoder=var1650, java.util.Base64=var1166, $r15=var3429, $r16=var1714, org.w3c.dom.Element=var2716, r17=var2218, $r18=var1004, java.awt.geom.RectangularShape=var3807, $d0=var1675, $r19=var3006, $d1=var3160, $r20=var3515, $d2=var2256, $r21=var166, $d3=var1365, $r22=var2048, $r23=var496, org.apache.batik.svggen.SVGGraphics2D=var1267, $r24=var2270, org.apache.batik.svggen.DOMTreeManager=var2273, $r25=var3417}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.poi.xslf.draw.SVGRenderExtension;	r0 := @parameter0: org.apache.poi.sl.draw.DrawTexturePaint;	r6 := @parameter1: org.apache.batik.svggen.SVGGeneratorContext;	r1 = virtualinvoke r0.<org.apache.poi.sl.draw.DrawTexturePaint: org.apache.poi.sl.draw.ImageRenderer getImageRenderer()>();	r37 = null;	r38 = null;	$z0 = r1 instanceof org.apache.poi.sl.draw.BitmapImageRenderer;	if $z0 == 0 goto (branch);	if r37 != null goto $r44 = new java.util.zip.CRC32;	$r44 = new java.util.zip.CRC32;	specialinvoke $r44.<java.util.zip.CRC32: void <init>()>();	virtualinvoke $r44.<java.util.zip.CRC32: void update(byte[])>(r37);	$l0 = virtualinvoke $r44.<java.util.zip.CRC32: long getValue()>();	$r28 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>($l0);	$r4 = r3.<org.apache.poi.xslf.draw.SVGRenderExtension: java.util.Map imageMap>;	$r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>($r28);	$r29 = (java.lang.String) $r5;	if $r29 == null goto r7 = virtualinvoke r6.<org.apache.batik.svggen.SVGGeneratorContext: org.w3c.dom.Document getDOMFactory()>();	r7 = virtualinvoke r6.<org.apache.batik.svggen.SVGGeneratorContext: org.w3c.dom.Document getDOMFactory()>();	r8 = virtualinvoke r0.<org.apache.poi.sl.draw.DrawTexturePaint: java.awt.geom.Rectangle2D getAnchorRect()>();	$r9 = virtualinvoke r6.<org.apache.batik.svggen.SVGGeneratorContext: org.apache.batik.svggen.SVGIDGenerator getIDGenerator()>();	r43 = virtualinvoke $r9.<org.apache.batik.svggen.SVGIDGenerator: java.lang.String generateID(java.lang.String)>("image");	$r10 = r3.<org.apache.poi.xslf.draw.SVGRenderExtension: java.util.Map imageMap>;	interfaceinvoke $r10.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r28, r43);	$i1 = lengthof r37;	$i2 = 4 * $i1;	$i3 = $i2 / 3;	$i4 = $i3 + 3;	$i10 = (int) -4;	i7 = $i4 & $i10;	$i5 = i7 / 65;	$i6 = $i5 + 30;	i8 = i7 + $i6;	$r45 = new java.lang.StringBuilder;	specialinvoke $r45.<java.lang.StringBuilder: void <init>(int)>(i8);	virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("data:");	virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r38);	virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(";base64,\n");	$r13 = "\n";	$r12 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset US_ASCII>;	$r14 = virtualinvoke $r13.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r12);	$r15 = staticinvoke <java.util.Base64: java.util.Base64$Encoder getMimeEncoder(int,byte[])>(65, $r14);	$r16 = virtualinvoke $r15.<java.util.Base64$Encoder: java.lang.String encodeToString(byte[])>(r37);	virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	r17 = interfaceinvoke r7.<org.w3c.dom.Document: org.w3c.dom.Element createElementNS(java.lang.String,java.lang.String)>("http://www.w3.org/2000/svg", "image");	$r18 = newarray (java.lang.Object)[21];	$r18[0] = null;	$r18[1] = "id";	$r18[2] = r43;	$r18[3] = null;	$r18[4] = "preserveAspectRatio";	$r18[5] = "none";	$r18[6] = null;	$r18[7] = "x";	$d0 = virtualinvoke r8.<java.awt.geom.Rectangle2D: double getX()>();	$r19 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d0);	$r18[8] = $r19;	$r18[9] = null;	$r18[10] = "y";	$d1 = virtualinvoke r8.<java.awt.geom.Rectangle2D: double getY()>();	$r20 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d1);	$r18[11] = $r20;	$r18[12] = null;	$r18[13] = "width";	$d2 = virtualinvoke r8.<java.awt.geom.Rectangle2D: double getWidth()>();	$r21 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d2);	$r18[14] = $r21;	$r18[15] = null;	$r18[16] = "height";	$d3 = virtualinvoke r8.<java.awt.geom.Rectangle2D: double getHeight()>();	$r22 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d3);	$r18[17] = $r22;	$r18[18] = "http://www.w3.org/1999/xlink";	$r18[19] = "xlink:href";	$r23 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.String toString()>();	$r18[20] = $r23;	staticinvoke <org.apache.poi.xslf.draw.SVGRenderExtension: void setAttribute(org.apache.batik.svggen.SVGGeneratorContext,org.w3c.dom.Element,java.lang.Object[])>(r6, r17, $r18);	$r24 = virtualinvoke r3.<org.apache.poi.xslf.draw.SVGRenderExtension: org.apache.batik.svggen.SVGGraphics2D getSvgGraphics2D()>();	$r25 = virtualinvoke $r24.<org.apache.batik.svggen.SVGGraphics2D: org.apache.batik.svggen.DOMTreeManager getDOMTreeManager()>();	virtualinvoke $r25.<org.apache.batik.svggen.DOMTreeManager: void addOtherDef(org.w3c.dom.Element)>(r17);	return r43
;block_num 4