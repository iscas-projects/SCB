(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1991 0)
(declare-sort var503 0)
(declare-sort var3626 0)
(declare-sort var269 0)
(declare-sort var1149 0)
(declare-sort var1137 0)
(declare-sort var254 0)
(declare-sort var3369 0)
(declare-sort var420 0)
(declare-sort var1750 0)
(declare-sort var3156 0)
(declare-sort var3219 0)
(declare-sort var3081 0)
(declare-sort var390 0)
(declare-sort var2283 0)
(declare-sort var1065 0)
(declare-sort var2911 0)
(declare-sort var1944 0)
(declare-sort var761 0)
(declare-sort var2388 0)
(declare-sort var614 0)
(declare-sort var810 0)
(declare-sort var1926 0)
(declare-sort var2142 0)
(declare-sort var1406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3626) void)
(declare-fun cast-from-var1991-to-var3626 (var1991) var3626)
(declare-fun block/676256185 (var1991) var503)
(declare-fun var503_addNewSdtPr/-1655802754 (var503) var269)
(declare-fun var269_addNewId/47722334 (var269) var1149)
(declare-fun var1137_valueOf/913516287 (Int) var1137)
(declare-fun var1149_setVal/1352936595 (var1149 var1137) void)
(declare-fun var269_addNewDocPartObj/1124843289 (var269) var254)
(declare-fun var254_addNewDocPartGallery/-297942634 (var254) var3369)
(declare-fun var3369_setVal/2142443077 (var3369 String) void)
(declare-fun var503_addNewSdtEndPr/1715365226 (var503) var420)
(declare-fun var420_addNewRPr/-1785710480 (var420) var1750)
(declare-fun var1750_addNewRFonts/1768127520 (var1750) var3156)
(declare-fun var3156_setAsciiTheme/-222145907 (var3156 var3219) void)
(declare-fun var3156_setEastAsiaTheme/1641739717 (var3156 var3219) void)
(declare-fun var3156_setHAnsiTheme/-1181917741 (var3156 var3219) void)
(declare-fun var3156_setCstheme/1965446524 (var3156 var3219) void)
(declare-fun var1750_addNewB/1468090202 (var1750) var390)
(declare-fun var390_setVal/1198740836 (var390 var3626) void)
(declare-fun cast-from-var2283-to-var3626 (var2283) var3626)
(declare-fun var1750_addNewBCs/2112530826 (var1750) var390)
(declare-fun var1750_addNewColor/-992252794 (var1750) var2911)
(declare-fun var2911_setVal/-2103635529 (var2911 var3626) void)
(declare-fun cast-from-String-to-var3626 (String) var3626)
(declare-fun var1750_addNewSz/-691141094 (var1750) var1944)
(declare-fun var1944_setVal/-935607083 (var1944 var3626) void)
(declare-fun cast-from-var1137-to-var3626 (var1137) var3626)
(declare-fun var1750_addNewSzCs/1560459338 (var1750) var1944)
(declare-fun var503_addNewSdtContent/-1136124013 (var503) var761)
(declare-fun var761_addNewP/-1709310487 (var761) var2388)
(declare-fun getBytes/-163691139 (String var614) (Array Int Int))
(declare-fun var2388_setRsidR/-101054938 (var2388 (Array Int Int)) void)
(declare-fun var2388_setRsidRDefault/-765566329 (var2388 (Array Int Int)) void)
(declare-fun var2388_addNewPPr/1902925068 (var2388) var1926)
(declare-fun var1926_addNewPStyle/-1673993728 (var1926) var3369)
(declare-fun var2388_addNewR/1692580492 (var2388) var2142)
(declare-fun var2142_addNewT/-185420919 (var2142) var1406)
(declare-fun var1406_setStringValue/1874487810 (var1406 String) void)
(declare-const null-var1991 var1991)
(declare-const null-var503 var503)
(declare-const var3081-MINOR_H_ANSI var3219)
(declare-const var3081-MINOR_BIDI var3219)
(declare-const var1065-OFF var2283)
(declare-const var810-CHARSET_1252 var614)
(declare-const var387 var1991) ; Statement: r0 := @this: org.apache.poi.xwpf.usermodel.TOC 
(assert (not (= var387 null-var1991)))
(declare-const var529 var503) ; Statement: r1 := @parameter0: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock 
(assert (not (= var529 null-var503)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1991-to-var3626 var387))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var387!1 var1991)
(declare-const var387!2 var1991)
(assert (not (= var387!2 null-var1991)))
(assert (= (block/676256185 var387!2) var529)) ; Statement: r0.<org.apache.poi.xwpf.usermodel.TOC: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock block> = r1 
(define-const var455 var269 (var503_addNewSdtPr/-1655802754 var529)) ; Statement: r2 = interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtPr addNewSdtPr()>() 
(define-const var2763 var1149 (var269_addNewId/47722334 var455)) ; Statement: r3 = interfaceinvoke r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber addNewId()>() 
(define-const var1018 var1137 (var1137_valueOf/913516287 4844945)) ; Statement: $r4 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(4844945L) 
;(assert (var1149_setVal/1352936595 var2763 var1018)) ; Statement: interfaceinvoke r3.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber: void setVal(java.math.BigInteger)>($r4) 

(declare-const var2763!1 var1149)
(declare-const var1018!1 var1137)
(define-const var770 var254 (var269_addNewDocPartObj/1124843289 var455)) ; Statement: $r5 = interfaceinvoke r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtDocPart addNewDocPartObj()>() 
(define-const var3660 var3369 (var254_addNewDocPartGallery/-297942634 var770)) ; Statement: $r6 = interfaceinvoke $r5.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtDocPart: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString addNewDocPartGallery()>() 
;(assert (var3369_setVal/2142443077 var3660 "Table of contents")) ; Statement: interfaceinvoke $r6.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString: void setVal(java.lang.String)>("Table of contents") 

(declare-const var3660!1 var3369)
(declare-const var824 String)
(define-const var1789 var420 (var503_addNewSdtEndPr/1715365226 var529)) ; Statement: r7 = interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtEndPr addNewSdtEndPr()>() 
(define-const var2841 var1750 (var420_addNewRPr/-1785710480 var1789)) ; Statement: r8 = interfaceinvoke r7.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtEndPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr addNewRPr()>() 
(define-const var929 var3156 (var1750_addNewRFonts/1768127520 var2841)) ; Statement: r9 = interfaceinvoke r8.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts addNewRFonts()>() 
(define-const var2799 var3219 var3081-MINOR_H_ANSI) ; Statement: $r10 = <org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme: org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum MINOR_H_ANSI> 
;(assert (var3156_setAsciiTheme/-222145907 var929 var2799)) ; Statement: interfaceinvoke r9.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts: void setAsciiTheme(org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum)>($r10) 

(declare-const var929!1 var3156)
(declare-const var2799!1 var3219)
(define-const var2717 var3219 var3081-MINOR_H_ANSI) ; Statement: $r11 = <org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme: org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum MINOR_H_ANSI> 
;(assert (var3156_setEastAsiaTheme/1641739717 var929!1 var2717)) ; Statement: interfaceinvoke r9.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts: void setEastAsiaTheme(org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum)>($r11) 

(declare-const var929!2 var3156)
(declare-const var2717!1 var3219)
(define-const var3942 var3219 var3081-MINOR_H_ANSI) ; Statement: $r12 = <org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme: org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum MINOR_H_ANSI> 
;(assert (var3156_setHAnsiTheme/-1181917741 var929!2 var3942)) ; Statement: interfaceinvoke r9.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts: void setHAnsiTheme(org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum)>($r12) 

(declare-const var929!3 var3156)
(declare-const var3942!1 var3219)
(define-const var3847 var3219 var3081-MINOR_BIDI) ; Statement: $r13 = <org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme: org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum MINOR_BIDI> 
;(assert (var3156_setCstheme/1965446524 var929!3 var3847)) ; Statement: interfaceinvoke r9.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts: void setCstheme(org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum)>($r13) 

(declare-const var929!4 var3156)
(declare-const var3847!1 var3219)
(define-const var1699 var390 (var1750_addNewB/1468090202 var2841)) ; Statement: $r15 = interfaceinvoke r8.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff addNewB()>() 
(define-const var3601 var2283 var1065-OFF) ; Statement: $r14 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1$Enum OFF> 
;(assert (var390_setVal/1198740836 var1699 (cast-from-var2283-to-var3626 var3601))) ; Statement: interfaceinvoke $r15.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff: void setVal(java.lang.Object)>($r14) 

(declare-const var1699!1 var390)
(declare-const var3601!1 var2283)
(define-const var2085 var390 (var1750_addNewBCs/2112530826 var2841)) ; Statement: $r17 = interfaceinvoke r8.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff addNewBCs()>() 
(define-const var3035 var2283 var1065-OFF) ; Statement: $r16 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1$Enum OFF> 
;(assert (var390_setVal/1198740836 var2085 (cast-from-var2283-to-var3626 var3035))) ; Statement: interfaceinvoke $r17.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff: void setVal(java.lang.Object)>($r16) 

(declare-const var2085!1 var390)
(declare-const var3035!1 var2283)
(define-const var45 var2911 (var1750_addNewColor/-992252794 var2841)) ; Statement: $r18 = interfaceinvoke r8.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColor addNewColor()>() 
;(assert (var2911_setVal/-2103635529 var45 (cast-from-String-to-var3626 "auto"))) ; Statement: interfaceinvoke $r18.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColor: void setVal(java.lang.Object)>("auto") 

(declare-const var45!1 var2911)
(declare-const var2164 String)
(define-const var947 var1944 (var1750_addNewSz/-691141094 var2841)) ; Statement: $r20 = interfaceinvoke r8.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHpsMeasure addNewSz()>() 
(define-const var2809 var1137 (var1137_valueOf/913516287 24)) ; Statement: $r19 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(24L) 
;(assert (var1944_setVal/-935607083 var947 (cast-from-var1137-to-var3626 var2809))) ; Statement: interfaceinvoke $r20.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHpsMeasure: void setVal(java.lang.Object)>($r19) 

(declare-const var947!1 var1944)
(declare-const var2809!1 var1137)
(define-const var3068 var1944 (var1750_addNewSzCs/1560459338 var2841)) ; Statement: $r22 = interfaceinvoke r8.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHpsMeasure addNewSzCs()>() 
(define-const var2061 var1137 (var1137_valueOf/913516287 24)) ; Statement: $r21 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(24L) 
;(assert (var1944_setVal/-935607083 var3068 (cast-from-var1137-to-var3626 var2061))) ; Statement: interfaceinvoke $r22.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHpsMeasure: void setVal(java.lang.Object)>($r21) 

(declare-const var3068!1 var1944)
(declare-const var2061!1 var1137)
(define-const var2656 var761 (var503_addNewSdtContent/-1136124013 var529)) ; Statement: r23 = interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtContentBlock addNewSdtContent()>() 
(define-const var2364 var2388 (var761_addNewP/-1709310487 var2656)) ; Statement: r24 = interfaceinvoke r23.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtContentBlock: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP addNewP()>() 
(define-const var2162 String "00EF7E24") ; Statement: $r26 = "00EF7E24" 
(define-const var1412 var614 var810-CHARSET_1252) ; Statement: $r25 = <org.apache.poi.util.LocaleUtil: java.nio.charset.Charset CHARSET_1252> 
(assert true)
(define-const var242 (Array Int Int) (getBytes/-163691139 var2162 var1412)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r25) 
;(assert (var2388_setRsidR/-101054938 var2364 var242)) ; Statement: interfaceinvoke r24.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: void setRsidR(byte[])>($r27) 

(declare-const var2364!1 var2388)
(declare-const var242!1 (Array Int Int))
(define-const var1036 String "00EF7E24") ; Statement: $r29 = "00EF7E24" 
(define-const var1722 var614 var810-CHARSET_1252) ; Statement: $r28 = <org.apache.poi.util.LocaleUtil: java.nio.charset.Charset CHARSET_1252> 
(assert true)
(define-const var2221 (Array Int Int) (getBytes/-163691139 var1036 var1722)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r28) 
;(assert (var2388_setRsidRDefault/-765566329 var2364!1 var2221)) ; Statement: interfaceinvoke r24.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: void setRsidRDefault(byte[])>($r30) 

(declare-const var2364!2 var2388)
(declare-const var2221!1 (Array Int Int))
(define-const var2718 var1926 (var2388_addNewPPr/1902925068 var2364!2)) ; Statement: $r31 = interfaceinvoke r24.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr addNewPPr()>() 
(define-const var3645 var3369 (var1926_addNewPStyle/-1673993728 var2718)) ; Statement: $r32 = interfaceinvoke $r31.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString addNewPStyle()>() 
;(assert (var3369_setVal/2142443077 var3645 "TOCHeading")) ; Statement: interfaceinvoke $r32.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString: void setVal(java.lang.String)>("TOCHeading") 

(declare-const var3645!1 var3369)
(declare-const var1129 String)
(define-const var2301 var2142 (var2388_addNewR/1692580492 var2364!2)) ; Statement: $r33 = interfaceinvoke r24.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR addNewR()>() 
(define-const var1118 var1406 (var2142_addNewT/-185420919 var2301)) ; Statement: $r34 = interfaceinvoke $r33.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTText addNewT()>() 
;(assert (var1406_setStringValue/1874487810 var1118 "Table of Contents")) ; Statement: interfaceinvoke $r34.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTText: void setStringValue(java.lang.String)>("Table of Contents") 

(declare-const var1118!1 var1406)
(declare-const var3305 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1991-to-var3626=([org.apache.poi.xwpf.usermodel.TOC], java.lang.Object), block/676256185=([org.apache.poi.xwpf.usermodel.TOC], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock), var503_addNewSdtPr/-1655802754=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtPr), var269_addNewId/47722334=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtPr], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber), var1137_valueOf/913516287=([long], java.math.BigInteger), var1149_setVal/1352936595=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber, java.math.BigInteger], void), var269_addNewDocPartObj/1124843289=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtPr], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtDocPart), var254_addNewDocPartGallery/-297942634=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtDocPart], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString), var3369_setVal/2142443077=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString, java.lang.String], void), var503_addNewSdtEndPr/1715365226=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtEndPr), var420_addNewRPr/-1785710480=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtEndPr], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr), var1750_addNewRFonts/1768127520=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts), var3156_setAsciiTheme/-222145907=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts, org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum], void), var3156_setEastAsiaTheme/1641739717=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts, org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum], void), var3156_setHAnsiTheme/-1181917741=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts, org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum], void), var3156_setCstheme/1965446524=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts, org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum], void), var1750_addNewB/1468090202=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff), var390_setVal/1198740836=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff, java.lang.Object], void), cast-from-var2283-to-var3626=([org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1$Enum], java.lang.Object), var1750_addNewBCs/2112530826=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff), var1750_addNewColor/-992252794=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColor), var2911_setVal/-2103635529=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColor, java.lang.Object], void), cast-from-String-to-var3626=([java.lang.String], java.lang.Object), var1750_addNewSz/-691141094=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHpsMeasure), var1944_setVal/-935607083=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHpsMeasure, java.lang.Object], void), cast-from-var1137-to-var3626=([java.math.BigInteger], java.lang.Object), var1750_addNewSzCs/1560459338=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHpsMeasure), var503_addNewSdtContent/-1136124013=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtContentBlock), var761_addNewP/-1709310487=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtContentBlock], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), var2388_setRsidR/-101054938=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP, byte[]], void), var2388_setRsidRDefault/-765566329=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP, byte[]], void), var2388_addNewPPr/1902925068=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr), var1926_addNewPStyle/-1673993728=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString), var2388_addNewR/1692580492=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR), var2142_addNewT/-185420919=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTText), var1406_setStringValue/1874487810=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTText, java.lang.String], void)}
; {var1991=org.apache.poi.xwpf.usermodel.TOC, var387=r0, var503=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock, var529=r1, var3626=java.lang.Object, var269=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtPr, var455=r2, var1149=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber, var2763=r3, var1137=java.math.BigInteger, var1018=$r4, var254=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtDocPart, var770=$r5, var3369=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString, var3660=$r6, var824="Table of contents", var420=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtEndPr, var1789=r7, var1750=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr, var2841=r8, var3156=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts, var929=r9, var3219=org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum, var3081=org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme, var2799=$r10, var2717=$r11, var3942=$r12, var3847=$r13, var390=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff, var1699=$r15, var2283=org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1$Enum, var1065=org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1, var3601=$r14, var2085=$r17, var3035=$r16, var2911=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColor, var45=$r18, var2164="auto", var1944=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHpsMeasure, var947=$r20, var2809=$r19, var3068=$r22, var2061=$r21, var761=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtContentBlock, var2656=r23, var2388=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP, var2364=r24, var2162=$r26, var614=java.nio.charset.Charset, var810=org.apache.poi.util.LocaleUtil, var1412=$r25, var242=$r27, var1036=$r29, var1722=$r28, var2221=$r30, var1926=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr, var2718=$r31, var3645=$r32, var1129="TOCHeading", var2142=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR, var2301=$r33, var1406=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTText, var1118=$r34, var3305="Table of Contents"}
; {org.apache.poi.xwpf.usermodel.TOC=var1991, r0=var387, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock=var503, r1=var529, java.lang.Object=var3626, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtPr=var269, r2=var455, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber=var1149, r3=var2763, java.math.BigInteger=var1137, $r4=var1018, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtDocPart=var254, $r5=var770, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString=var3369, $r6=var3660, "Table of contents"=var824, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtEndPr=var420, r7=var1789, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr=var1750, r8=var2841, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts=var3156, r9=var929, org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum=var3219, org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme=var3081, $r10=var2799, $r11=var2717, $r12=var3942, $r13=var3847, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff=var390, $r15=var1699, org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1$Enum=var2283, org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1=var1065, $r14=var3601, $r17=var2085, $r16=var3035, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColor=var2911, $r18=var45, "auto"=var2164, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHpsMeasure=var1944, $r20=var947, $r19=var2809, $r22=var3068, $r21=var2061, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtContentBlock=var761, r23=var2656, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP=var2388, r24=var2364, $r26=var2162, java.nio.charset.Charset=var614, org.apache.poi.util.LocaleUtil=var810, $r25=var1412, $r27=var242, $r29=var1036, $r28=var1722, $r30=var2221, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr=var1926, $r31=var2718, $r32=var3645, "TOCHeading"=var1129, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR=var2142, $r33=var2301, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTText=var1406, $r34=var1118, "Table of Contents"=var3305}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>;	<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 2}
;stmts r0 := @this: org.apache.poi.xwpf.usermodel.TOC;	r1 := @parameter0: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.apache.poi.xwpf.usermodel.TOC: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock block> = r1;	r2 = interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtPr addNewSdtPr()>();	r3 = interfaceinvoke r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber addNewId()>();	$r4 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(4844945L);	interfaceinvoke r3.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDecimalNumber: void setVal(java.math.BigInteger)>($r4);	$r5 = interfaceinvoke r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtDocPart addNewDocPartObj()>();	$r6 = interfaceinvoke $r5.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtDocPart: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString addNewDocPartGallery()>();	interfaceinvoke $r6.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString: void setVal(java.lang.String)>("Table of contents");	r7 = interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtEndPr addNewSdtEndPr()>();	r8 = interfaceinvoke r7.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtEndPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr addNewRPr()>();	r9 = interfaceinvoke r8.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts addNewRFonts()>();	$r10 = <org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme: org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum MINOR_H_ANSI>;	interfaceinvoke r9.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts: void setAsciiTheme(org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum)>($r10);	$r11 = <org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme: org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum MINOR_H_ANSI>;	interfaceinvoke r9.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts: void setEastAsiaTheme(org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum)>($r11);	$r12 = <org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme: org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum MINOR_H_ANSI>;	interfaceinvoke r9.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts: void setHAnsiTheme(org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum)>($r12);	$r13 = <org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme: org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum MINOR_BIDI>;	interfaceinvoke r9.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts: void setCstheme(org.openxmlformats.schemas.wordprocessingml.x2006.main.STTheme$Enum)>($r13);	$r15 = interfaceinvoke r8.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff addNewB()>();	$r14 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1$Enum OFF>;	interfaceinvoke $r15.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff: void setVal(java.lang.Object)>($r14);	$r17 = interfaceinvoke r8.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff addNewBCs()>();	$r16 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff1$Enum OFF>;	interfaceinvoke $r17.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff: void setVal(java.lang.Object)>($r16);	$r18 = interfaceinvoke r8.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColor addNewColor()>();	interfaceinvoke $r18.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTColor: void setVal(java.lang.Object)>("auto");	$r20 = interfaceinvoke r8.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHpsMeasure addNewSz()>();	$r19 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(24L);	interfaceinvoke $r20.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHpsMeasure: void setVal(java.lang.Object)>($r19);	$r22 = interfaceinvoke r8.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHpsMeasure addNewSzCs()>();	$r21 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(24L);	interfaceinvoke $r22.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHpsMeasure: void setVal(java.lang.Object)>($r21);	r23 = interfaceinvoke r1.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtBlock: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtContentBlock addNewSdtContent()>();	r24 = interfaceinvoke r23.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSdtContentBlock: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP addNewP()>();	$r26 = "00EF7E24";	$r25 = <org.apache.poi.util.LocaleUtil: java.nio.charset.Charset CHARSET_1252>;	$r27 = virtualinvoke $r26.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r25);	interfaceinvoke r24.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: void setRsidR(byte[])>($r27);	$r29 = "00EF7E24";	$r28 = <org.apache.poi.util.LocaleUtil: java.nio.charset.Charset CHARSET_1252>;	$r30 = virtualinvoke $r29.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r28);	interfaceinvoke r24.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: void setRsidRDefault(byte[])>($r30);	$r31 = interfaceinvoke r24.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr addNewPPr()>();	$r32 = interfaceinvoke $r31.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString addNewPStyle()>();	interfaceinvoke $r32.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString: void setVal(java.lang.String)>("TOCHeading");	$r33 = interfaceinvoke r24.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR addNewR()>();	$r34 = interfaceinvoke $r33.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTText addNewT()>();	interfaceinvoke $r34.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTText: void setStringValue(java.lang.String)>("Table of Contents");	return
;block_num 1