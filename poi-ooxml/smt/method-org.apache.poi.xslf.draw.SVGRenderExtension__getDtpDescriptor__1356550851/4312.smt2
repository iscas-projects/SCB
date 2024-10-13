(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var188 0)
(declare-sort var262 0)
(declare-sort var809 0)
(declare-sort var3068 0)
(declare-sort var3239 0)
(declare-sort var376 0)
(declare-sort var2203 0)
(declare-sort var3230 0)
(declare-sort var1791 0)
(declare-sort var3639 0)
(declare-sort var2335 0)
(declare-sort var3337 0)
(declare-sort var2385 0)
(declare-sort var3245 0)
(declare-sort var3375 0)
(declare-sort var3962 0)
(declare-sort var1647 0)
(declare-sort var2687 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getImageID/644057603 (var188 var262 var809) String)
(declare-fun getDOMFactory/1300953394 (var809) var3068)
(declare-fun var3068_createElementNS/1445905347 (var3068 String String) var3239)
(declare-fun getIDGenerator/-1835782759 (var809) var376)
(declare-fun generateID/-1628253822 (var376 String) String)
(declare-fun getFill/2104418619 (var262) var2203)
(declare-fun var2203_getStretch/941168084 (var2203) var3230)
(declare-fun getAnchorRect/1440767139 (var262) var1791)
(declare-fun left/1999716307 (var3230) Float64)
(declare-fun getWidth/627712889 (var3639) Float64)
(declare-fun cast-from-var1791-to-var3639 (var1791) var3639)
(declare-fun doubleString/-61470330 (var809 Float64) String)
(declare-fun top/1999716307 (var3230) Float64)
(declare-fun getHeight/717604212 (var3639) Float64)
(declare-fun right/1999716307 (var3230) Float64)
(declare-fun bottom/1999716307 (var3230) Float64)
(declare-fun var2203_getScale/300653496 (var2203) var2335)
(declare-fun cast-from-var2335-to-var3337 (var2335) var3337)
(declare-fun var2203_getOffset/-642683973 (var2203) var2385)
(declare-fun var2203_getFlipMode/-1887651308 (var2203) var3245)
(declare-fun arr-var3337-init () (Array Int var3337))
(declare-fun cast-from-String-to-var3337 (String) var3337)
(declare-fun getX/1453862722 (var2385) Float64)
(declare-fun Float64_valueOf/679560954 (Float64) Float64)
(declare-fun cast-from-Float64-to-var3337 (Float64) var3337)
(declare-fun getY/1453892513 (var2385) Float64)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun cast-from-var3337-to-var2335 (var3337) var2335)
(declare-fun getWidth/-434025206 (var2335) Float64)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getHeight/-2131505661 (var2335) Float64)
(declare-fun var188_setAttribute/-916380076 (var809 var3239 (Array Int var3337)) void)
(declare-fun var2203_getShape/-591185195 (var2203) var3375)
(declare-fun var2203_isRotatedWithShape/880548214 (var2203) Bool)
(declare-fun var3239_setAttributeNS/209768256 (var3239 String String String) void)
(declare-fun var1647_appendChild/-892350246 (var1647 var1647) var1647)
(declare-fun cast-from-var3239-to-var1647 (var3239) var1647)
(declare-fun var2687-init () var2687)
(declare-fun <init>/1364186186 (var2687 String String var3239) void)
(declare-const null-var188 var188)
(declare-const null-var262 var262)
(declare-const null-var809 var809)
(declare-const null-var3230 var3230)
(declare-const null-var2335 var2335)
(declare-const null-var2385 var2385)
(declare-const null-var3245 var3245)
(declare-const null-var3337 var3337)
(declare-const null-__Array__Int__var3337__ (Array Int var3337))
(declare-const null-String String)
(declare-const var3029 var188) ; Statement: r0 := @this: org.apache.poi.xslf.draw.SVGRenderExtension 
(assert (not (= var3029 null-var188)))
(declare-const var2511 var262) ; Statement: r1 := @parameter0: org.apache.poi.sl.draw.DrawTexturePaint 
(assert (not (= var2511 null-var262)))
(declare-const var1103 var809) ; Statement: r2 := @parameter1: org.apache.batik.svggen.SVGGeneratorContext 
(assert (not (= var1103 null-var809)))
(assert true)
(define-const var1522 String (getImageID/644057603 var3029 var2511 var1103)) ; Statement: r3 = specialinvoke r0.<org.apache.poi.xslf.draw.SVGRenderExtension: java.lang.String getImageID(org.apache.poi.sl.draw.DrawTexturePaint,org.apache.batik.svggen.SVGGeneratorContext)>(r1, r2) 
(assert true)
(define-const var1352 var3068 (getDOMFactory/1300953394 var1103)) ; Statement: r4 = virtualinvoke r2.<org.apache.batik.svggen.SVGGeneratorContext: org.w3c.dom.Document getDOMFactory()>() 
(define-const var1117 var3239 (var3068_createElementNS/1445905347 var1352 "http://www.w3.org/2000/svg" "pattern")) ; Statement: r5 = interfaceinvoke r4.<org.w3c.dom.Document: org.w3c.dom.Element createElementNS(java.lang.String,java.lang.String)>("http://www.w3.org/2000/svg", "pattern") 
(assert true)
(define-const var654 var376 (getIDGenerator/-1835782759 var1103)) ; Statement: $r6 = virtualinvoke r2.<org.apache.batik.svggen.SVGGeneratorContext: org.apache.batik.svggen.SVGIDGenerator getIDGenerator()>() 
(assert true)
(define-const var3141 String (generateID/-1628253822 var654 "pattern")) ; Statement: r7 = virtualinvoke $r6.<org.apache.batik.svggen.SVGIDGenerator: java.lang.String generateID(java.lang.String)>("pattern") 
(assert true)
(define-const var3785 var2203 (getFill/2104418619 var2511)) ; Statement: r8 = virtualinvoke r1.<org.apache.poi.sl.draw.DrawTexturePaint: org.apache.poi.sl.usermodel.PaintStyle$TexturePaint getFill()>() 
(define-const var972 var3230 (var2203_getStretch/941168084 var3785)) ; Statement: r51 = interfaceinvoke r8.<org.apache.poi.sl.usermodel.PaintStyle$TexturePaint: org.apache.poi.sl.usermodel.Insets2D getStretch()>() 
 ; Statement: if r51 != null goto $r45 = virtualinvoke r1.<org.apache.poi.sl.draw.DrawTexturePaint: java.awt.geom.Rectangle2D getAnchorRect()>() 
(assert (not (= var972 null-var3230))) ; Cond: r51 != null 
(assert true)
(define-const var1839 var1791 (getAnchorRect/1440767139 var2511)) ; Statement: $r45 = virtualinvoke r1.<org.apache.poi.sl.draw.DrawTexturePaint: java.awt.geom.Rectangle2D getAnchorRect()>() 
(define-const var167 Float64 (left/1999716307 var972)) ; Statement: $d0 = r51.<org.apache.poi.sl.usermodel.Insets2D: double left> 
(define-const var1208 Float64 (fp.neg var167)) ; Statement: $d1 = neg $d0 
(define-const var1424 Float64 (fp.div roundNearestTiesToEven var1208 ((_ to_fp 11 53) #x40f86a0000000000))) ; Statement: $d3 = $d1 / 100000.0 
(assert true)
(define-const var3180 Float64 (getWidth/627712889 (cast-from-var1791-to-var3639 var1839))) ; Statement: $d2 = virtualinvoke $r45.<java.awt.geom.Rectangle2D: double getWidth()>() 
(define-const var3738 Float64 (fp.mul roundNearestTiesToEven var1424 var3180)) ; Statement: $d4 = $d3 * $d2 
(assert true)
(define-const var928 String (doubleString/-61470330 var1103 var3738)) ; Statement: $r46 = virtualinvoke r2.<org.apache.batik.svggen.SVGGeneratorContext: java.lang.String doubleString(double)>($d4) 
(define-const var3858 Float64 (top/1999716307 var972)) ; Statement: $d5 = r51.<org.apache.poi.sl.usermodel.Insets2D: double top> 
(define-const var2326 Float64 (fp.neg var3858)) ; Statement: $d6 = neg $d5 
(define-const var967 Float64 (fp.div roundNearestTiesToEven var2326 ((_ to_fp 11 53) #x40f86a0000000000))) ; Statement: $d8 = $d6 / 100000.0 
(assert true)
(define-const var3701 Float64 (getHeight/717604212 (cast-from-var1791-to-var3639 var1839))) ; Statement: $d7 = virtualinvoke $r45.<java.awt.geom.Rectangle2D: double getHeight()>() 
(define-const var3339 Float64 (fp.mul roundNearestTiesToEven var967 var3701)) ; Statement: $d9 = $d8 * $d7 
(assert true)
(define-const var1359 String (doubleString/-61470330 var1103 var3339)) ; Statement: $r47 = virtualinvoke r2.<org.apache.batik.svggen.SVGGeneratorContext: java.lang.String doubleString(double)>($d9) 
(define-const var2861 Float64 (left/1999716307 var972)) ; Statement: $d10 = r51.<org.apache.poi.sl.usermodel.Insets2D: double left> 
(define-const var1111 Float64 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x40f86a0000000000) var2861)) ; Statement: $d12 = 100000.0 + $d10 
(define-const var509 Float64 (right/1999716307 var972)) ; Statement: $d11 = r51.<org.apache.poi.sl.usermodel.Insets2D: double right> 
(define-const var396 Float64 (fp.add roundNearestTiesToEven var1111 var509)) ; Statement: $d13 = $d12 + $d11 
(define-const var2201 Float64 (fp.div roundNearestTiesToEven var396 ((_ to_fp 11 53) #x40f86a0000000000))) ; Statement: $d15 = $d13 / 100000.0 
(assert true)
(define-const var804 Float64 (getWidth/627712889 (cast-from-var1791-to-var3639 var1839))) ; Statement: $d14 = virtualinvoke $r45.<java.awt.geom.Rectangle2D: double getWidth()>() 
(define-const var3363 Float64 (fp.mul roundNearestTiesToEven var2201 var804)) ; Statement: $d16 = $d15 * $d14 
(assert true)
(define-const var3717 String (doubleString/-61470330 var1103 var3363)) ; Statement: $r48 = virtualinvoke r2.<org.apache.batik.svggen.SVGGeneratorContext: java.lang.String doubleString(double)>($d16) 
(define-const var3052 Float64 (top/1999716307 var972)) ; Statement: $d17 = r51.<org.apache.poi.sl.usermodel.Insets2D: double top> 
(define-const var3834 Float64 (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x40f86a0000000000) var3052)) ; Statement: $d19 = 100000.0 + $d17 
(define-const var3560 Float64 (bottom/1999716307 var972)) ; Statement: $d18 = r51.<org.apache.poi.sl.usermodel.Insets2D: double bottom> 
(define-const var1404 Float64 (fp.add roundNearestTiesToEven var3834 var3560)) ; Statement: $d20 = $d19 + $d18 
(define-const var2758 Float64 (fp.div roundNearestTiesToEven var1404 ((_ to_fp 11 53) #x40f86a0000000000))) ; Statement: $d22 = $d20 / 100000.0 
(assert true)
(define-const var2112 Float64 (getHeight/717604212 (cast-from-var1791-to-var3639 var1839))) ; Statement: $d21 = virtualinvoke $r45.<java.awt.geom.Rectangle2D: double getHeight()>() 
(define-const var750 Float64 (fp.mul roundNearestTiesToEven var2758 var2112)) ; Statement: $d23 = $d22 * $d21 
(assert true)
(define-const var1943 String (doubleString/-61470330 var1103 var750)) ; Statement: $r49 = virtualinvoke r2.<org.apache.batik.svggen.SVGGeneratorContext: java.lang.String doubleString(double)>($d23) 
(define-const var1978 var2335 (var2203_getScale/300653496 var3785)) ; Statement: $r50 = interfaceinvoke r8.<org.apache.poi.sl.usermodel.PaintStyle$TexturePaint: java.awt.geom.Dimension2D getScale()>() 
(define-const var3019 var3337 (cast-from-var2335-to-var3337 var1978)) ; Statement: r52 = $r50 
 ; Statement: if $r50 != null goto $r43 = interfaceinvoke r8.<org.apache.poi.sl.usermodel.PaintStyle$TexturePaint: java.awt.geom.Point2D getOffset()>() 
(assert (not (= var1978 null-var2335))) ; Cond: $r50 != null 
(define-const var1911 var2385 (var2203_getOffset/-642683973 var3785)) ; Statement: $r43 = interfaceinvoke r8.<org.apache.poi.sl.usermodel.PaintStyle$TexturePaint: java.awt.geom.Point2D getOffset()>() 
(define-const var1462 var2385 var1911) ; Statement: r53 = $r43 
 ; Statement: if $r43 != null goto $r41 = interfaceinvoke r8.<org.apache.poi.sl.usermodel.PaintStyle$TexturePaint: org.apache.poi.sl.usermodel.PaintStyle$FlipMode getFlipMode()>() 
(assert (not (= var1911 null-var2385))) ; Cond: $r43 != null 
(define-const var964 var3245 (var2203_getFlipMode/-1887651308 var3785)) ; Statement: $r41 = interfaceinvoke r8.<org.apache.poi.sl.usermodel.PaintStyle$TexturePaint: org.apache.poi.sl.usermodel.PaintStyle$FlipMode getFlipMode()>() 
 ; Statement: if $r41 != null goto $r9 = newarray (java.lang.Object)[24] 
(assert (not (= var964 null-var3245))) ; Cond: $r41 != null 
(define-const var2487 (Array Int var3337) arr-var3337-init) ; Statement: $r9 = newarray (java.lang.Object)[24] 
(declare-const var2487!1 (Array Int var3337))
(assert (not (= var2487!1 null-__Array__Int__var3337__)))
(assert (= (select var2487!1 0) null-var3337)) ; Statement: $r9[0] = null 
(declare-const var2487!2 (Array Int var3337))
(assert (not (= var2487!2 null-__Array__Int__var3337__)))
(assert (= (select var2487!2 1) (cast-from-String-to-var3337 "patternUnits"))) ; Statement: $r9[1] = "patternUnits" 
(declare-const var2487!3 (Array Int var3337))
(assert (not (= var2487!3 null-__Array__Int__var3337__)))
(assert (= (select var2487!3 2) (cast-from-String-to-var3337 "objectBoundingBox"))) ; Statement: $r9[2] = "objectBoundingBox" 
(declare-const var2487!4 (Array Int var3337))
(assert (not (= var2487!4 null-__Array__Int__var3337__)))
(assert (= (select var2487!4 3) null-var3337)) ; Statement: $r9[3] = null 
(declare-const var2487!5 (Array Int var3337))
(assert (not (= var2487!5 null-__Array__Int__var3337__)))
(assert (= (select var2487!5 4) (cast-from-String-to-var3337 "id"))) ; Statement: $r9[4] = "id" 
(declare-const var2487!6 (Array Int var3337))
(assert (not (= var2487!6 null-__Array__Int__var3337__)))
(assert (= (select var2487!6 5) (cast-from-String-to-var3337 var3141))) ; Statement: $r9[5] = r7 
(declare-const var2487!7 (Array Int var3337))
(assert (not (= var2487!7 null-__Array__Int__var3337__)))
(assert (= (select var2487!7 6) null-var3337)) ; Statement: $r9[6] = null 
(declare-const var2487!8 (Array Int var3337))
(assert (not (= var2487!8 null-__Array__Int__var3337__)))
(assert (= (select var2487!8 7) (cast-from-String-to-var3337 "x"))) ; Statement: $r9[7] = "x" 
(assert true)
(define-const var1275 Float64 (getX/1453862722 var1462)) ; Statement: $d24 = virtualinvoke r53.<java.awt.geom.Point2D: double getX()>() 
(define-const var1471 Float64 (Float64_valueOf/679560954 var1275)) ; Statement: $r10 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d24) 
(declare-const var2487!9 (Array Int var3337))
(assert (not (= var2487!9 null-__Array__Int__var3337__)))
(assert (= (select var2487!9 8) (cast-from-Float64-to-var3337 var1471))) ; Statement: $r9[8] = $r10 
(declare-const var2487!10 (Array Int var3337))
(assert (not (= var2487!10 null-__Array__Int__var3337__)))
(assert (= (select var2487!10 9) null-var3337)) ; Statement: $r9[9] = null 
(declare-const var2487!11 (Array Int var3337))
(assert (not (= var2487!11 null-__Array__Int__var3337__)))
(assert (= (select var2487!11 10) (cast-from-String-to-var3337 "y"))) ; Statement: $r9[10] = "y" 
(assert true)
(define-const var2183 Float64 (getY/1453892513 var1462)) ; Statement: $d25 = virtualinvoke r53.<java.awt.geom.Point2D: double getY()>() 
(define-const var830 Float64 (Float64_valueOf/679560954 var2183)) ; Statement: $r11 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d25) 
(declare-const var2487!12 (Array Int var3337))
(assert (not (= var2487!12 null-__Array__Int__var3337__)))
(assert (= (select var2487!12 11) (cast-from-Float64-to-var3337 var830))) ; Statement: $r9[11] = $r11 
(declare-const var2487!13 (Array Int var3337))
(assert (not (= var2487!13 null-__Array__Int__var3337__)))
(assert (= (select var2487!13 12) null-var3337)) ; Statement: $r9[12] = null 
(declare-const var2487!14 (Array Int var3337))
(assert (not (= var2487!14 null-__Array__Int__var3337__)))
(assert (= (select var2487!14 13) (cast-from-String-to-var3337 "width"))) ; Statement: $r9[13] = "width" 
(define-const var3175 String String-init) ; Statement: $r69 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3175)) ; Statement: specialinvoke $r69.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3175!1 String)
(assert (= var3175!1 ""))
(define-const var1447 var2335 (cast-from-var3337-to-var2335 var3019)) ; Statement: $r76 = (java.awt.geom.Dimension2D) r52 
(assert true)
(define-const var3003 Float64 (getWidth/-434025206 var1447)) ; Statement: $d26 = virtualinvoke $r76.<java.awt.geom.Dimension2D: double getWidth()>() 
(define-const var1669 Float64 (fp.mul roundNearestTiesToEven var3003 ((_ to_fp 11 53) #x4059000000000000))) ; Statement: $d27 = $d26 * 100.0 
(assert true)
(define-const var3453 String (doubleString/-61470330 var1103 var1669)) ; Statement: $r13 = virtualinvoke r2.<org.apache.batik.svggen.SVGGeneratorContext: java.lang.String doubleString(double)>($d27) 
(assert true)
(define-const var1142 String (append/672562846 var3175!1 var3453)) ; Statement: $r14 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3175!2 String)
(assert (= var3175!2 (str.++ var3175!1 var3453)))
(assert true)
(define-const var1288 String (append/672562846 var1142 "%")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("%") 
(declare-const var1142!1 String)
(assert (= var1142!1 (str.++ var1142 "%")))
(assert true)
(define-const var2136 String (toString/-2075883882 var1288)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2487!15 (Array Int var3337))
(assert (not (= var2487!15 null-__Array__Int__var3337__)))
(assert (= (select var2487!15 14) (cast-from-String-to-var3337 var2136))) ; Statement: $r9[14] = $r16 
(declare-const var2487!16 (Array Int var3337))
(assert (not (= var2487!16 null-__Array__Int__var3337__)))
(assert (= (select var2487!16 15) null-var3337)) ; Statement: $r9[15] = null 
(declare-const var2487!17 (Array Int var3337))
(assert (not (= var2487!17 null-__Array__Int__var3337__)))
(assert (= (select var2487!17 16) (cast-from-String-to-var3337 "height"))) ; Statement: $r9[16] = "height" 
(define-const var3584 String String-init) ; Statement: $r70 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3584)) ; Statement: specialinvoke $r70.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3584!1 String)
(assert (= var3584!1 ""))
(define-const var2425 var2335 (cast-from-var3337-to-var2335 var3019)) ; Statement: $r77 = (java.awt.geom.Dimension2D) r52 
(assert true)
(define-const var553 Float64 (getHeight/-2131505661 var2425)) ; Statement: $d28 = virtualinvoke $r77.<java.awt.geom.Dimension2D: double getHeight()>() 
(define-const var1900 Float64 (fp.mul roundNearestTiesToEven var553 ((_ to_fp 11 53) #x4059000000000000))) ; Statement: $d29 = $d28 * 100.0 
(assert true)
(define-const var300 String (doubleString/-61470330 var1103 var1900)) ; Statement: $r18 = virtualinvoke r2.<org.apache.batik.svggen.SVGGeneratorContext: java.lang.String doubleString(double)>($d29) 
(assert true)
(define-const var2428 String (append/672562846 var3584!1 var300)) ; Statement: $r19 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3584!2 String)
(assert (= var3584!2 (str.++ var3584!1 var300)))
(assert true)
(define-const var1285 String (append/672562846 var2428 "%")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("%") 
(declare-const var2428!1 String)
(assert (= var2428!1 (str.++ var2428 "%")))
(assert true)
(define-const var3917 String (toString/-2075883882 var1285)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2487!18 (Array Int var3337))
(assert (not (= var2487!18 null-__Array__Int__var3337__)))
(assert (= (select var2487!18 17) (cast-from-String-to-var3337 var3917))) ; Statement: $r9[17] = $r21 
(declare-const var2487!19 (Array Int var3337))
(assert (not (= var2487!19 null-__Array__Int__var3337__)))
(assert (= (select var2487!19 18) null-var3337)) ; Statement: $r9[18] = null 
(declare-const var2487!20 (Array Int var3337))
(assert (not (= var2487!20 null-__Array__Int__var3337__)))
(assert (= (select var2487!20 19) (cast-from-String-to-var3337 "preserveAspectRatio"))) ; Statement: $r9[19] = "preserveAspectRatio" 
(declare-const var2487!21 (Array Int var3337))
(assert (not (= var2487!21 null-__Array__Int__var3337__)))
(assert (= (select var2487!21 20) (cast-from-String-to-var3337 "none"))) ; Statement: $r9[20] = "none" 
(declare-const var2487!22 (Array Int var3337))
(assert (not (= var2487!22 null-__Array__Int__var3337__)))
(assert (= (select var2487!22 21) null-var3337)) ; Statement: $r9[21] = null 
(declare-const var2487!23 (Array Int var3337))
(assert (not (= var2487!23 null-__Array__Int__var3337__)))
(assert (= (select var2487!23 22) (cast-from-String-to-var3337 "viewBox"))) ; Statement: $r9[22] = "viewBox" 
(define-const var2632 String String-init) ; Statement: $r71 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2632)) ; Statement: specialinvoke $r71.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2632!1 String)
(assert (= var2632!1 ""))
(assert true)
(define-const var2563 String (append/672562846 var2632!1 var928)) ; Statement: $r23 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r46) 
(declare-const var2632!2 String)
(assert (= var2632!2 (str.++ var2632!1 var928)))
(assert true)
(define-const var1345 String (append/672562846 var2563 " ")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2563!1 String)
(assert (= var2563!1 (str.++ var2563 " ")))
(assert true)
(define-const var3776 String (append/672562846 var1345 var1359)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47) 
(declare-const var1345!1 String)
(assert (= var1345!1 (str.++ var1345 var1359)))
(assert true)
(define-const var3248 String (append/672562846 var3776 " ")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3776!1 String)
(assert (= var3776!1 (str.++ var3776 " ")))
(assert true)
(define-const var3004 String (append/672562846 var3248 var3717)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r48) 
(declare-const var3248!1 String)
(assert (= var3248!1 (str.++ var3248 var3717)))
(assert true)
(define-const var2648 String (append/672562846 var3004 " ")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3004!1 String)
(assert (= var3004!1 (str.++ var3004 " ")))
(assert true)
(define-const var1546 String (append/672562846 var2648 var1943)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r49) 
(declare-const var2648!1 String)
(assert (= var2648!1 (str.++ var2648 var1943)))
(assert true)
(define-const var717 String (toString/-2075883882 var1546)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2487!24 (Array Int var3337))
(assert (not (= var2487!24 null-__Array__Int__var3337__)))
(assert (= (select var2487!24 23) (cast-from-String-to-var3337 var717))) ; Statement: $r9[23] = $r30 
;(assert (var188_setAttribute/-916380076 var1103 var1117 var2487!24)) ; Statement: staticinvoke <org.apache.poi.xslf.draw.SVGRenderExtension: void setAttribute(org.apache.batik.svggen.SVGGeneratorContext,org.w3c.dom.Element,java.lang.Object[])>(r2, r5, $r9) 

(declare-const var1103!1 var809)
(declare-const var1117!1 var3239)
(declare-const var2487!25 (Array Int var3337))
(define-const var2736 var3375 (var2203_getShape/-591185195 var3785)) ; Statement: $r39 = interfaceinvoke r8.<org.apache.poi.sl.usermodel.PaintStyle$TexturePaint: org.apache.poi.sl.usermodel.Shape getShape()>() 
(define-const var1873 Bool (var2203_isRotatedWithShape/880548214 var3785)) ; Statement: $z0 = interfaceinvoke r8.<org.apache.poi.sl.usermodel.PaintStyle$TexturePaint: boolean isRotatedWithShape()>() 
 ; Statement: if $z0 != 0 goto $r55 = interfaceinvoke r4.<org.w3c.dom.Document: org.w3c.dom.Element createElementNS(java.lang.String,java.lang.String)>("http://www.w3.org/2000/svg", "use") 
(assert (not (= (ite var1873 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3428 var3239 (var3068_createElementNS/1445905347 var1352 "http://www.w3.org/2000/svg" "use")) ; Statement: $r55 = interfaceinvoke r4.<org.w3c.dom.Document: org.w3c.dom.Element createElementNS(java.lang.String,java.lang.String)>("http://www.w3.org/2000/svg", "use") 
(define-const var1857 String String-init) ; Statement: $r73 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1857)) ; Statement: specialinvoke $r73.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1857!1 String)
(assert (= var1857!1 ""))
(assert true)
(define-const var2223 String (append/672562846 var1857!1 "#")) ; Statement: $r57 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var1857!2 String)
(assert (= var1857!2 (str.++ var1857!1 "#")))
(assert true)
(define-const var3839 String (append/672562846 var2223 var1522)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2223!1 String)
(assert (= var2223!1 (str.++ var2223 var1522)))
(assert true)
(define-const var1649 String (toString/-2075883882 var3839)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3239_setAttributeNS/209768256 var3428 null-String "href" var1649)) ; Statement: interfaceinvoke $r55.<org.w3c.dom.Element: void setAttributeNS(java.lang.String,java.lang.String,java.lang.String)>(null, "href", $r59) 

(declare-const var3428!1 var3239)
(declare-const var73 var3962)
(declare-const var1461 String)
(declare-const var1649!1 String)
;(assert (var1647_appendChild/-892350246 (cast-from-var3239-to-var1647 var1117!1) (cast-from-var3239-to-var1647 var3428!1))) ; Statement: interfaceinvoke r5.<org.w3c.dom.Element: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>($r55) 

(declare-const var1117!2 var3239)
(declare-const var3428!2 var3239)
(define-const var2065 String String-init) ; Statement: $r74 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2065)) ; Statement: specialinvoke $r74.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2065!1 String)
(assert (= var2065!1 ""))
(assert true)
(define-const var2599 String (append/672562846 var2065!1 "url(#")) ; Statement: $r61 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("url(#") 
(declare-const var2065!2 String)
(assert (= var2065!2 (str.++ var2065!1 "url(#")))
(assert true)
(define-const var3462 String (append/672562846 var2599 var3141)) ; Statement: $r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var2599!1 String)
(assert (= var2599!1 (str.++ var2599 var3141)))
(assert true)
(define-const var489 String (append/672562846 var3462 ")")) ; Statement: $r63 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3462!1 String)
(assert (= var3462!1 (str.++ var3462 ")")))
(assert true)
(define-const var1128 String (toString/-2075883882 var489)) ; Statement: $r64 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1608 var2687 var2687-init) ; Statement: $r75 = new org.apache.batik.svggen.SVGPaintDescriptor 
(assert true)
;(assert (<init>/1364186186 var1608 var1128 "1" var1117!2)) ; Statement: specialinvoke $r75.<org.apache.batik.svggen.SVGPaintDescriptor: void <init>(java.lang.String,java.lang.String,org.w3c.dom.Element)>($r64, "1", r5) 

(declare-const var1608!1 var2687)
(declare-const var1128!1 String)
(declare-const var548 String)
(declare-const var1117!3 var3239)
 ; Statement: return $r75 
(check-sat)
(get-model)
(get-unsat-core)
; {getImageID/644057603=([org.apache.poi.xslf.draw.SVGRenderExtension, org.apache.poi.sl.draw.DrawTexturePaint, org.apache.batik.svggen.SVGGeneratorContext], java.lang.String), getDOMFactory/1300953394=([org.apache.batik.svggen.SVGGeneratorContext], org.w3c.dom.Document), var3068_createElementNS/1445905347=([org.w3c.dom.Document, java.lang.String, java.lang.String], org.w3c.dom.Element), getIDGenerator/-1835782759=([org.apache.batik.svggen.SVGGeneratorContext], org.apache.batik.svggen.SVGIDGenerator), generateID/-1628253822=([org.apache.batik.svggen.SVGIDGenerator, java.lang.String], java.lang.String), getFill/2104418619=([org.apache.poi.sl.draw.DrawTexturePaint], org.apache.poi.sl.usermodel.PaintStyle$TexturePaint), var2203_getStretch/941168084=([org.apache.poi.sl.usermodel.PaintStyle$TexturePaint], org.apache.poi.sl.usermodel.Insets2D), getAnchorRect/1440767139=([org.apache.poi.sl.draw.DrawTexturePaint], java.awt.geom.Rectangle2D), left/1999716307=([org.apache.poi.sl.usermodel.Insets2D], double), getWidth/627712889=([java.awt.geom.RectangularShape], double), cast-from-var1791-to-var3639=([java.awt.geom.Rectangle2D], java.awt.geom.RectangularShape), doubleString/-61470330=([org.apache.batik.svggen.SVGGeneratorContext, double], java.lang.String), top/1999716307=([org.apache.poi.sl.usermodel.Insets2D], double), getHeight/717604212=([java.awt.geom.RectangularShape], double), right/1999716307=([org.apache.poi.sl.usermodel.Insets2D], double), bottom/1999716307=([org.apache.poi.sl.usermodel.Insets2D], double), var2203_getScale/300653496=([org.apache.poi.sl.usermodel.PaintStyle$TexturePaint], java.awt.geom.Dimension2D), cast-from-var2335-to-var3337=([java.awt.geom.Dimension2D], java.lang.Object), var2203_getOffset/-642683973=([org.apache.poi.sl.usermodel.PaintStyle$TexturePaint], java.awt.geom.Point2D), var2203_getFlipMode/-1887651308=([org.apache.poi.sl.usermodel.PaintStyle$TexturePaint], org.apache.poi.sl.usermodel.PaintStyle$FlipMode), arr-var3337-init=([], java.lang.Object[]), cast-from-String-to-var3337=([java.lang.String], java.lang.Object), getX/1453862722=([java.awt.geom.Point2D], double), Float64_valueOf/679560954=([double], java.lang.Double), cast-from-Float64-to-var3337=([java.lang.Double], java.lang.Object), getY/1453892513=([java.awt.geom.Point2D], double), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), cast-from-var3337-to-var2335=([java.lang.Object], java.awt.geom.Dimension2D), getWidth/-434025206=([java.awt.geom.Dimension2D], double), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getHeight/-2131505661=([java.awt.geom.Dimension2D], double), var188_setAttribute/-916380076=([org.apache.batik.svggen.SVGGeneratorContext, org.w3c.dom.Element, java.lang.Object[]], void), var2203_getShape/-591185195=([org.apache.poi.sl.usermodel.PaintStyle$TexturePaint], org.apache.poi.sl.usermodel.Shape), var2203_isRotatedWithShape/880548214=([org.apache.poi.sl.usermodel.PaintStyle$TexturePaint], boolean), var3239_setAttributeNS/209768256=([org.w3c.dom.Element, java.lang.String, java.lang.String, java.lang.String], void), var1647_appendChild/-892350246=([org.w3c.dom.Node, org.w3c.dom.Node], org.w3c.dom.Node), cast-from-var3239-to-var1647=([org.w3c.dom.Element], org.w3c.dom.Node), var2687-init=([], org.apache.batik.svggen.SVGPaintDescriptor), <init>/1364186186=([org.apache.batik.svggen.SVGPaintDescriptor, java.lang.String, java.lang.String, org.w3c.dom.Element], void)}
; {var188=org.apache.poi.xslf.draw.SVGRenderExtension, var3029=r0, var262=org.apache.poi.sl.draw.DrawTexturePaint, var2511=r1, var809=org.apache.batik.svggen.SVGGeneratorContext, var1103=r2, var1522=r3, var3068=org.w3c.dom.Document, var1352=r4, var3239=org.w3c.dom.Element, var1117=r5, var376=org.apache.batik.svggen.SVGIDGenerator, var654=$r6, var3141=r7, var2203=org.apache.poi.sl.usermodel.PaintStyle$TexturePaint, var3785=r8, var3230=org.apache.poi.sl.usermodel.Insets2D, var972=r51, var1791=java.awt.geom.Rectangle2D, var1839=$r45, var167=$d0, var1208=$d1, var1424=$d3, var3639=java.awt.geom.RectangularShape, var3180=$d2, var3738=$d4, var928=$r46, var3858=$d5, var2326=$d6, var967=$d8, var3701=$d7, var3339=$d9, var1359=$r47, var2861=$d10, var1111=$d12, var509=$d11, var396=$d13, var2201=$d15, var804=$d14, var3363=$d16, var3717=$r48, var3052=$d17, var3834=$d19, var3560=$d18, var1404=$d20, var2758=$d22, var2112=$d21, var750=$d23, var1943=$r49, var2335=java.awt.geom.Dimension2D, var1978=$r50, var3337=java.lang.Object, var3019=r52, var2385=java.awt.geom.Point2D, var1911=$r43, var1462=r53, var3245=org.apache.poi.sl.usermodel.PaintStyle$FlipMode, var964=$r41, var2487=$r9, var1275=$d24, var1471=$r10, var2183=$d25, var830=$r11, var3175=$r69, var1447=$r76, var3003=$d26, var1669=$d27, var3453=$r13, var1142=$r14, var1288=$r15, var2136=$r16, var3584=$r70, var2425=$r77, var553=$d28, var1900=$d29, var300=$r18, var2428=$r19, var1285=$r20, var3917=$r21, var2632=$r71, var2563=$r23, var1345=$r24, var3776=$r25, var3248=$r26, var3004=$r27, var2648=$r28, var1546=$r29, var717=$r30, var3375=org.apache.poi.sl.usermodel.Shape, var2736=$r39, var1873=$z0, var3428=$r55, var1857=$r73, var2223=$r57, var3839=$r58, var1649=$r59, var3962=null_type, var73=null, var1461="href", var1647=org.w3c.dom.Node, var2065=$r74, var2599=$r61, var3462=$r62, var489=$r63, var1128=$r64, var2687=org.apache.batik.svggen.SVGPaintDescriptor, var1608=$r75, var548="1"}
; {org.apache.poi.xslf.draw.SVGRenderExtension=var188, r0=var3029, org.apache.poi.sl.draw.DrawTexturePaint=var262, r1=var2511, org.apache.batik.svggen.SVGGeneratorContext=var809, r2=var1103, r3=var1522, org.w3c.dom.Document=var3068, r4=var1352, org.w3c.dom.Element=var3239, r5=var1117, org.apache.batik.svggen.SVGIDGenerator=var376, $r6=var654, r7=var3141, org.apache.poi.sl.usermodel.PaintStyle$TexturePaint=var2203, r8=var3785, org.apache.poi.sl.usermodel.Insets2D=var3230, r51=var972, java.awt.geom.Rectangle2D=var1791, $r45=var1839, $d0=var167, $d1=var1208, $d3=var1424, java.awt.geom.RectangularShape=var3639, $d2=var3180, $d4=var3738, $r46=var928, $d5=var3858, $d6=var2326, $d8=var967, $d7=var3701, $d9=var3339, $r47=var1359, $d10=var2861, $d12=var1111, $d11=var509, $d13=var396, $d15=var2201, $d14=var804, $d16=var3363, $r48=var3717, $d17=var3052, $d19=var3834, $d18=var3560, $d20=var1404, $d22=var2758, $d21=var2112, $d23=var750, $r49=var1943, java.awt.geom.Dimension2D=var2335, $r50=var1978, java.lang.Object=var3337, r52=var3019, java.awt.geom.Point2D=var2385, $r43=var1911, r53=var1462, org.apache.poi.sl.usermodel.PaintStyle$FlipMode=var3245, $r41=var964, $r9=var2487, $d24=var1275, $r10=var1471, $d25=var2183, $r11=var830, $r69=var3175, $r76=var1447, $d26=var3003, $d27=var1669, $r13=var3453, $r14=var1142, $r15=var1288, $r16=var2136, $r70=var3584, $r77=var2425, $d28=var553, $d29=var1900, $r18=var300, $r19=var2428, $r20=var1285, $r21=var3917, $r71=var2632, $r23=var2563, $r24=var1345, $r25=var3776, $r26=var3248, $r27=var3004, $r28=var2648, $r29=var1546, $r30=var717, org.apache.poi.sl.usermodel.Shape=var3375, $r39=var2736, $z0=var1873, $r55=var3428, $r73=var1857, $r57=var2223, $r58=var3839, $r59=var1649, null_type=var3962, null=var73, "href"=var1461, org.w3c.dom.Node=var1647, $r74=var2065, $r61=var2599, $r62=var3462, $r63=var489, $r64=var1128, org.apache.batik.svggen.SVGPaintDescriptor=var2687, $r75=var1608, "1"=var548}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 16,"<java.lang.StringBuilder: java.lang.String toString()>": 5}
;stmts r0 := @this: org.apache.poi.xslf.draw.SVGRenderExtension;	r1 := @parameter0: org.apache.poi.sl.draw.DrawTexturePaint;	r2 := @parameter1: org.apache.batik.svggen.SVGGeneratorContext;	r3 = specialinvoke r0.<org.apache.poi.xslf.draw.SVGRenderExtension: java.lang.String getImageID(org.apache.poi.sl.draw.DrawTexturePaint,org.apache.batik.svggen.SVGGeneratorContext)>(r1, r2);	r4 = virtualinvoke r2.<org.apache.batik.svggen.SVGGeneratorContext: org.w3c.dom.Document getDOMFactory()>();	r5 = interfaceinvoke r4.<org.w3c.dom.Document: org.w3c.dom.Element createElementNS(java.lang.String,java.lang.String)>("http://www.w3.org/2000/svg", "pattern");	$r6 = virtualinvoke r2.<org.apache.batik.svggen.SVGGeneratorContext: org.apache.batik.svggen.SVGIDGenerator getIDGenerator()>();	r7 = virtualinvoke $r6.<org.apache.batik.svggen.SVGIDGenerator: java.lang.String generateID(java.lang.String)>("pattern");	r8 = virtualinvoke r1.<org.apache.poi.sl.draw.DrawTexturePaint: org.apache.poi.sl.usermodel.PaintStyle$TexturePaint getFill()>();	r51 = interfaceinvoke r8.<org.apache.poi.sl.usermodel.PaintStyle$TexturePaint: org.apache.poi.sl.usermodel.Insets2D getStretch()>();	if r51 != null goto $r45 = virtualinvoke r1.<org.apache.poi.sl.draw.DrawTexturePaint: java.awt.geom.Rectangle2D getAnchorRect()>();	$r45 = virtualinvoke r1.<org.apache.poi.sl.draw.DrawTexturePaint: java.awt.geom.Rectangle2D getAnchorRect()>();	$d0 = r51.<org.apache.poi.sl.usermodel.Insets2D: double left>;	$d1 = neg $d0;	$d3 = $d1 / 100000.0;	$d2 = virtualinvoke $r45.<java.awt.geom.Rectangle2D: double getWidth()>();	$d4 = $d3 * $d2;	$r46 = virtualinvoke r2.<org.apache.batik.svggen.SVGGeneratorContext: java.lang.String doubleString(double)>($d4);	$d5 = r51.<org.apache.poi.sl.usermodel.Insets2D: double top>;	$d6 = neg $d5;	$d8 = $d6 / 100000.0;	$d7 = virtualinvoke $r45.<java.awt.geom.Rectangle2D: double getHeight()>();	$d9 = $d8 * $d7;	$r47 = virtualinvoke r2.<org.apache.batik.svggen.SVGGeneratorContext: java.lang.String doubleString(double)>($d9);	$d10 = r51.<org.apache.poi.sl.usermodel.Insets2D: double left>;	$d12 = 100000.0 + $d10;	$d11 = r51.<org.apache.poi.sl.usermodel.Insets2D: double right>;	$d13 = $d12 + $d11;	$d15 = $d13 / 100000.0;	$d14 = virtualinvoke $r45.<java.awt.geom.Rectangle2D: double getWidth()>();	$d16 = $d15 * $d14;	$r48 = virtualinvoke r2.<org.apache.batik.svggen.SVGGeneratorContext: java.lang.String doubleString(double)>($d16);	$d17 = r51.<org.apache.poi.sl.usermodel.Insets2D: double top>;	$d19 = 100000.0 + $d17;	$d18 = r51.<org.apache.poi.sl.usermodel.Insets2D: double bottom>;	$d20 = $d19 + $d18;	$d22 = $d20 / 100000.0;	$d21 = virtualinvoke $r45.<java.awt.geom.Rectangle2D: double getHeight()>();	$d23 = $d22 * $d21;	$r49 = virtualinvoke r2.<org.apache.batik.svggen.SVGGeneratorContext: java.lang.String doubleString(double)>($d23);	$r50 = interfaceinvoke r8.<org.apache.poi.sl.usermodel.PaintStyle$TexturePaint: java.awt.geom.Dimension2D getScale()>();	r52 = $r50;	if $r50 != null goto $r43 = interfaceinvoke r8.<org.apache.poi.sl.usermodel.PaintStyle$TexturePaint: java.awt.geom.Point2D getOffset()>();	$r43 = interfaceinvoke r8.<org.apache.poi.sl.usermodel.PaintStyle$TexturePaint: java.awt.geom.Point2D getOffset()>();	r53 = $r43;	if $r43 != null goto $r41 = interfaceinvoke r8.<org.apache.poi.sl.usermodel.PaintStyle$TexturePaint: org.apache.poi.sl.usermodel.PaintStyle$FlipMode getFlipMode()>();	$r41 = interfaceinvoke r8.<org.apache.poi.sl.usermodel.PaintStyle$TexturePaint: org.apache.poi.sl.usermodel.PaintStyle$FlipMode getFlipMode()>();	if $r41 != null goto $r9 = newarray (java.lang.Object)[24];	$r9 = newarray (java.lang.Object)[24];	$r9[0] = null;	$r9[1] = "patternUnits";	$r9[2] = "objectBoundingBox";	$r9[3] = null;	$r9[4] = "id";	$r9[5] = r7;	$r9[6] = null;	$r9[7] = "x";	$d24 = virtualinvoke r53.<java.awt.geom.Point2D: double getX()>();	$r10 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d24);	$r9[8] = $r10;	$r9[9] = null;	$r9[10] = "y";	$d25 = virtualinvoke r53.<java.awt.geom.Point2D: double getY()>();	$r11 = staticinvoke <java.lang.Double: java.lang.Double valueOf(double)>($d25);	$r9[11] = $r11;	$r9[12] = null;	$r9[13] = "width";	$r69 = new java.lang.StringBuilder;	specialinvoke $r69.<java.lang.StringBuilder: void <init>()>();	$r76 = (java.awt.geom.Dimension2D) r52;	$d26 = virtualinvoke $r76.<java.awt.geom.Dimension2D: double getWidth()>();	$d27 = $d26 * 100.0;	$r13 = virtualinvoke r2.<org.apache.batik.svggen.SVGGeneratorContext: java.lang.String doubleString(double)>($d27);	$r14 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("%");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	$r9[14] = $r16;	$r9[15] = null;	$r9[16] = "height";	$r70 = new java.lang.StringBuilder;	specialinvoke $r70.<java.lang.StringBuilder: void <init>()>();	$r77 = (java.awt.geom.Dimension2D) r52;	$d28 = virtualinvoke $r77.<java.awt.geom.Dimension2D: double getHeight()>();	$d29 = $d28 * 100.0;	$r18 = virtualinvoke r2.<org.apache.batik.svggen.SVGGeneratorContext: java.lang.String doubleString(double)>($d29);	$r19 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("%");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$r9[17] = $r21;	$r9[18] = null;	$r9[19] = "preserveAspectRatio";	$r9[20] = "none";	$r9[21] = null;	$r9[22] = "viewBox";	$r71 = new java.lang.StringBuilder;	specialinvoke $r71.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r46);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r47);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r48);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r49);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	$r9[23] = $r30;	staticinvoke <org.apache.poi.xslf.draw.SVGRenderExtension: void setAttribute(org.apache.batik.svggen.SVGGeneratorContext,org.w3c.dom.Element,java.lang.Object[])>(r2, r5, $r9);	$r39 = interfaceinvoke r8.<org.apache.poi.sl.usermodel.PaintStyle$TexturePaint: org.apache.poi.sl.usermodel.Shape getShape()>();	$z0 = interfaceinvoke r8.<org.apache.poi.sl.usermodel.PaintStyle$TexturePaint: boolean isRotatedWithShape()>();	if $z0 != 0 goto $r55 = interfaceinvoke r4.<org.w3c.dom.Document: org.w3c.dom.Element createElementNS(java.lang.String,java.lang.String)>("http://www.w3.org/2000/svg", "use");	$r55 = interfaceinvoke r4.<org.w3c.dom.Document: org.w3c.dom.Element createElementNS(java.lang.String,java.lang.String)>("http://www.w3.org/2000/svg", "use");	$r73 = new java.lang.StringBuilder;	specialinvoke $r73.<java.lang.StringBuilder: void <init>()>();	$r57 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r55.<org.w3c.dom.Element: void setAttributeNS(java.lang.String,java.lang.String,java.lang.String)>(null, "href", $r59);	interfaceinvoke r5.<org.w3c.dom.Element: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>($r55);	$r74 = new java.lang.StringBuilder;	specialinvoke $r74.<java.lang.StringBuilder: void <init>()>();	$r61 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("url(#");	$r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r63 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r64 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.String toString()>();	$r75 = new org.apache.batik.svggen.SVGPaintDescriptor;	specialinvoke $r75.<org.apache.batik.svggen.SVGPaintDescriptor: void <init>(java.lang.String,java.lang.String,org.w3c.dom.Element)>($r64, "1", r5);	return $r75
;block_num 6