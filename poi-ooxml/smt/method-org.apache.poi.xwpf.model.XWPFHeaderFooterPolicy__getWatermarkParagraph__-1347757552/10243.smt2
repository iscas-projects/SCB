(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var299 0)
(declare-sort var135 0)
(declare-sort var2383 0)
(declare-sort var945 0)
(declare-sort var1246 0)
(declare-sort var893 0)
(declare-sort var3619 0)
(declare-sort var1036 0)
(declare-sort var402 0)
(declare-sort var1821 0)
(declare-sort var187 0)
(declare-sort var1223 0)
(declare-sort var3257 0)
(declare-sort var1230 0)
(declare-sort var2253 0)
(declare-sort var658 0)
(declare-sort var2257 0)
(declare-sort var3832 0)
(declare-sort var238 0)
(declare-sort var744 0)
(declare-sort var3409 0)
(declare-sort var1112 0)
(declare-sort var383 0)
(declare-sort var3491 0)
(declare-sort var277 0)
(declare-sort var2779 0)
(declare-sort var2914 0)
(declare-sort var2209 0)
(declare-sort var2218 0)
(declare-sort var3453 0)
(declare-sort var2067 0)
(declare-sort var1025 0)
(declare-sort var2099 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newInstance/532723879 (var2383) var1246)
(declare-fun cast-from-var1246-to-var945 (var1246) var945)
(declare-fun doc/-2020745741 (var299) var893)
(declare-fun getDocument/-1264257560 (var893) var3619)
(declare-fun var3619_getBody/-1515921931 (var3619) var1036)
(declare-fun var1036_sizeOfPArray/-2141624084 (var1036) Int)
(declare-fun var945_setRsidP/291972072 (var945 (Array Int Int)) void)
(declare-fun var945_setRsidRDefault/-765566329 (var945 (Array Int Int)) void)
(declare-fun var945_addNewPPr/1902925068 (var945) var402)
(declare-fun var402_addNewPStyle/-1673993728 (var402) var1821)
(declare-fun var1821_setVal/2142443077 (var1821 String) void)
(declare-fun var945_addNewR/1692580492 (var945) var187)
(declare-fun var187_addNewRPr/-1138221882 (var187) var1223)
(declare-fun var1223_addNewNoProof/1314121945 (var1223) var2099)
(declare-fun var187_addNewPict/1049456896 (var187) var3257)
(declare-fun cast-from-var1246-to-var1230 (var1246) var1230)
(declare-fun var1230_addNewShapetype/-126183377 (var1230) var2253)
(declare-fun var2253_setId/-1571084993 (var2253 String) void)
(declare-fun var2253_setCoordsize/-2091410540 (var2253 String) void)
(declare-fun var2253_setSpt/-1907385896 (var2253 Float32) void)
(declare-fun var2253_setAdj/520214979 (var2253 String) void)
(declare-fun var2253_setPath2/215680509 (var2253 String) void)
(declare-fun var2253_addNewFormulas/-862713341 (var2253) var658)
(declare-fun var658_addNewF/-361316507 (var658) var2257)
(declare-fun var2257_setEqn/543482963 (var2257 String) void)
(declare-fun var2253_addNewPath/398937347 (var2253) var3832)
(declare-fun var3832_setTextpathok/-233305854 (var3832 var238) void)
(declare-fun var3832_setConnecttype/-1939150956 (var3832 var3409) void)
(declare-fun var3832_setConnectlocs/452811541 (var3832 String) void)
(declare-fun var3832_setConnectangles/1284872104 (var3832 String) void)
(declare-fun var2253_addNewTextpath/-622148413 (var2253) var383)
(declare-fun var383_setOn/-123786300 (var383 var238) void)
(declare-fun var383_setFitshape/1238544659 (var383 var238) void)
(declare-fun var2253_addNewHandles/1351138859 (var2253) var3491)
(declare-fun var3491_addNewH/-1621570975 (var3491) var277)
(declare-fun var277_setPosition/718160260 (var277 String) void)
(declare-fun var277_setXrange/413872168 (var277 String) void)
(declare-fun var2253_addNewLock/1610163978 (var2253) var2779)
(declare-fun var2779_setExt/-49059264 (var2779 var2914) void)
(declare-fun var1230_addNewShape/-1061986781 (var1230) var2218)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2218_setId/-1293471047 (var2218 String) void)
(declare-fun var2218_setSpid/-1803834372 (var2218 String) void)
(declare-fun var2218_setType/-651075142 (var2218 String) void)
(declare-fun var2218_setStyle/350259903 (var2218 String) void)
(declare-fun var2218_setWrapcoords/-1946541108 (var2218 String) void)
(declare-fun var2218_setFillcolor/-248525488 (var2218 String) void)
(declare-fun var2218_setStroked/420730914 (var2218 var238) void)
(declare-fun var2218_addNewTextpath/715715721 (var2218) var383)
(declare-fun var383_setStyle/1354508814 (var383 String) void)
(declare-fun var383_setString/-1870790252 (var383 String) void)
(declare-fun cast-from-var1230-to-var3453 (var1230) var3453)
(declare-fun var3257_set/1119364886 (var3257 var3453) var3453)
(declare-fun var2067-init () var2067)
(declare-fun <init>/916914304 (var2067 var945 var1025) void)
(declare-fun cast-from-var893-to-var1025 (var893) var1025)
(declare-const null-var299 var299)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var945-Factory var2383)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1230-Factory var2383)
(declare-const var744-T var238)
(declare-const var1112-CUSTOM var3409)
(declare-const var2209-EDIT var2914)
(declare-const var744-FALSE var238)
(declare-const var2790 var299) ; Statement: r3 := @this: org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy 
(assert (not (= var2790 null-var299)))
(declare-const var355 String) ; Statement: r38 := @parameter0: java.lang.String 
(assert (not (= var355 null-String)))
(declare-const var2377 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2377 null-Int)))
(define-const var1097 var2383 var945-Factory) ; Statement: $r0 = <org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: org.apache.xmlbeans.impl.schema.DocumentFactory Factory> 
(assert true)
(define-const var794 var1246 (newInstance/532723879 var1097)) ; Statement: $r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>() 
(define-const var1739 var945 (cast-from-var1246-to-var945 var794)) ; Statement: r2 = (org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP) $r1 
(define-const var309 var893 (doc/-2020745741 var2790)) ; Statement: $r4 = r3.<org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy: org.apache.poi.xwpf.usermodel.XWPFDocument doc> 
(assert true)
(define-const var570 var3619 (getDocument/-1264257560 var309)) ; Statement: $r5 = virtualinvoke $r4.<org.apache.poi.xwpf.usermodel.XWPFDocument: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1 getDocument()>() 
(define-const var2096 var1036 (var3619_getBody/-1515921931 var570)) ; Statement: r6 = interfaceinvoke $r5.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBody getBody()>() 
(define-const var2732 (Array Int Int) null-__Array__Int__Int__) ; Statement: r55 = null 
(define-const var787 (Array Int Int) null-__Array__Int__Int__) ; Statement: r56 = null 
(define-const var3120 Int (var1036_sizeOfPArray/-2141624084 var2096)) ; Statement: $i0 = interfaceinvoke r6.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBody: int sizeOfPArray()>() 
 ; Statement: if $i0 != 0 goto r57 = interfaceinvoke r6.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBody: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP getPArray(int)>(0) 
(assert (not (not (= var3120 0)))) ; Negate: Cond: $i0 != 0  
 ; Statement: goto [?= interfaceinvoke r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: void setRsidP(byte[])>(r55)] 
(assert true) ; Non Conditional
;(assert (var945_setRsidP/291972072 var1739 var2732)) ; Statement: interfaceinvoke r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: void setRsidP(byte[])>(r55) 

(declare-const var1739!1 var945)
(declare-const var2732!1 (Array Int Int))
;(assert (var945_setRsidRDefault/-765566329 var1739!1 var787)) ; Statement: interfaceinvoke r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: void setRsidRDefault(byte[])>(r56) 

(declare-const var1739!2 var945)
(declare-const var787!1 (Array Int Int))
(define-const var3404 var402 (var945_addNewPPr/1902925068 var1739!2)) ; Statement: $r41 = interfaceinvoke r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr addNewPPr()>() 
(define-const var3704 var1821 (var402_addNewPStyle/-1673993728 var3404)) ; Statement: $r7 = interfaceinvoke $r41.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString addNewPStyle()>() 
;(assert (var1821_setVal/2142443077 var3704 "Header")) ; Statement: interfaceinvoke $r7.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString: void setVal(java.lang.String)>("Header") 

(declare-const var3704!1 var1821)
(declare-const var2040 String)
(define-const var680 var187 (var945_addNewR/1692580492 var1739!2)) ; Statement: $r42 = interfaceinvoke r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR addNewR()>() 
(define-const var3204 var1223 (var187_addNewRPr/-1138221882 var680)) ; Statement: $r43 = interfaceinvoke $r42.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr addNewRPr()>() 
;(assert (var1223_addNewNoProof/1314121945 var3204)) ; Statement: interfaceinvoke $r43.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff addNewNoProof()>() 

(declare-const var3204!1 var1223)
(define-const var1747 var3257 (var187_addNewPict/1049456896 var680)) ; Statement: $r44 = interfaceinvoke $r42.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture addNewPict()>() 
(define-const var3721 var2383 var1230-Factory) ; Statement: $r8 = <com.microsoft.schemas.vml.CTGroup: org.apache.xmlbeans.impl.schema.DocumentFactory Factory> 
(assert true)
(define-const var2891 var1246 (newInstance/532723879 var3721)) ; Statement: $r9 = virtualinvoke $r8.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>() 
(define-const var2104 var1230 (cast-from-var1246-to-var1230 var2891)) ; Statement: $r45 = (com.microsoft.schemas.vml.CTGroup) $r9 
(define-const var891 var2253 (var1230_addNewShapetype/-126183377 var2104)) ; Statement: $r46 = interfaceinvoke $r45.<com.microsoft.schemas.vml.CTGroup: com.microsoft.schemas.vml.CTShapetype addNewShapetype()>() 
;(assert (var2253_setId/-1571084993 var891 "_x0000_t136")) ; Statement: interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: void setId(java.lang.String)>("_x0000_t136") 

(declare-const var891!1 var2253)
(declare-const var2761 String)
;(assert (var2253_setCoordsize/-2091410540 var891!1 "1600,21600")) ; Statement: interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: void setCoordsize(java.lang.String)>("1600,21600") 

(declare-const var891!2 var2253)
(declare-const var3554 String)
;(assert (var2253_setSpt/-1907385896 var891!2 ((_ to_fp 8 24) #x43080000))) ; Statement: interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: void setSpt(float)>(136.0F) 

(declare-const var891!3 var2253)
(declare-const var3695 Float32)
;(assert (var2253_setAdj/520214979 var891!3 "10800")) ; Statement: interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: void setAdj(java.lang.String)>("10800") 

(declare-const var891!4 var2253)
(declare-const var3121 String)
;(assert (var2253_setPath2/215680509 var891!4 "m@7,0l@8,0m@5,21600l@6,21600e")) ; Statement: interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: void setPath2(java.lang.String)>("m@7,0l@8,0m@5,21600l@6,21600e") 

(declare-const var891!5 var2253)
(declare-const var996 String)
(define-const var3451 var658 (var2253_addNewFormulas/-862713341 var891!5)) ; Statement: $r47 = interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: com.microsoft.schemas.vml.CTFormulas addNewFormulas()>() 
(define-const var3196 var2257 (var658_addNewF/-361316507 var3451)) ; Statement: $r10 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>() 
;(assert (var2257_setEqn/543482963 var3196 "sum #0 0 10800")) ; Statement: interfaceinvoke $r10.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("sum #0 0 10800") 

(declare-const var3196!1 var2257)
(declare-const var2270 String)
(define-const var2298 var2257 (var658_addNewF/-361316507 var3451)) ; Statement: $r11 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>() 
;(assert (var2257_setEqn/543482963 var2298 "prod #0 2 1")) ; Statement: interfaceinvoke $r11.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("prod #0 2 1") 

(declare-const var2298!1 var2257)
(declare-const var2269 String)
(define-const var2100 var2257 (var658_addNewF/-361316507 var3451)) ; Statement: $r12 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>() 
;(assert (var2257_setEqn/543482963 var2100 "sum 21600 0 @1")) ; Statement: interfaceinvoke $r12.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("sum 21600 0 @1") 

(declare-const var2100!1 var2257)
(declare-const var2462 String)
(define-const var619 var2257 (var658_addNewF/-361316507 var3451)) ; Statement: $r13 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>() 
;(assert (var2257_setEqn/543482963 var619 "sum 0 0 @2")) ; Statement: interfaceinvoke $r13.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("sum 0 0 @2") 

(declare-const var619!1 var2257)
(declare-const var885 String)
(define-const var2117 var2257 (var658_addNewF/-361316507 var3451)) ; Statement: $r14 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>() 
;(assert (var2257_setEqn/543482963 var2117 "sum 21600 0 @3")) ; Statement: interfaceinvoke $r14.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("sum 21600 0 @3") 

(declare-const var2117!1 var2257)
(declare-const var1135 String)
(define-const var652 var2257 (var658_addNewF/-361316507 var3451)) ; Statement: $r15 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>() 
;(assert (var2257_setEqn/543482963 var652 "if @0 @3 0")) ; Statement: interfaceinvoke $r15.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("if @0 @3 0") 

(declare-const var652!1 var2257)
(declare-const var3768 String)
(define-const var3665 var2257 (var658_addNewF/-361316507 var3451)) ; Statement: $r16 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>() 
;(assert (var2257_setEqn/543482963 var3665 "if @0 21600 @1")) ; Statement: interfaceinvoke $r16.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("if @0 21600 @1") 

(declare-const var3665!1 var2257)
(declare-const var1274 String)
(define-const var2201 var2257 (var658_addNewF/-361316507 var3451)) ; Statement: $r17 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>() 
;(assert (var2257_setEqn/543482963 var2201 "if @0 0 @2")) ; Statement: interfaceinvoke $r17.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("if @0 0 @2") 

(declare-const var2201!1 var2257)
(declare-const var2036 String)
(define-const var34 var2257 (var658_addNewF/-361316507 var3451)) ; Statement: $r18 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>() 
;(assert (var2257_setEqn/543482963 var34 "if @0 @4 21600")) ; Statement: interfaceinvoke $r18.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("if @0 @4 21600") 

(declare-const var34!1 var2257)
(declare-const var2488 String)
(define-const var1629 var2257 (var658_addNewF/-361316507 var3451)) ; Statement: $r19 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>() 
;(assert (var2257_setEqn/543482963 var1629 "mid @5 @6")) ; Statement: interfaceinvoke $r19.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("mid @5 @6") 

(declare-const var1629!1 var2257)
(declare-const var3166 String)
(define-const var2486 var2257 (var658_addNewF/-361316507 var3451)) ; Statement: $r20 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>() 
;(assert (var2257_setEqn/543482963 var2486 "mid @8 @5")) ; Statement: interfaceinvoke $r20.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("mid @8 @5") 

(declare-const var2486!1 var2257)
(declare-const var1337 String)
(define-const var974 var2257 (var658_addNewF/-361316507 var3451)) ; Statement: $r21 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>() 
;(assert (var2257_setEqn/543482963 var974 "mid @7 @8")) ; Statement: interfaceinvoke $r21.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("mid @7 @8") 

(declare-const var974!1 var2257)
(declare-const var760 String)
(define-const var1317 var2257 (var658_addNewF/-361316507 var3451)) ; Statement: $r22 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>() 
;(assert (var2257_setEqn/543482963 var1317 "mid @6 @7")) ; Statement: interfaceinvoke $r22.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("mid @6 @7") 

(declare-const var1317!1 var2257)
(declare-const var1913 String)
(define-const var2118 var2257 (var658_addNewF/-361316507 var3451)) ; Statement: $r23 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>() 
;(assert (var2257_setEqn/543482963 var2118 "sum @6 0 @5")) ; Statement: interfaceinvoke $r23.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("sum @6 0 @5") 

(declare-const var2118!1 var2257)
(declare-const var186 String)
(define-const var3260 var3832 (var2253_addNewPath/398937347 var891!5)) ; Statement: $r48 = interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: com.microsoft.schemas.vml.CTPath addNewPath()>() 
(define-const var488 var238 var744-T) ; Statement: $r24 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum T> 
;(assert (var3832_setTextpathok/-233305854 var3260 var488)) ; Statement: interfaceinvoke $r48.<com.microsoft.schemas.vml.CTPath: void setTextpathok(org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum)>($r24) 

(declare-const var3260!1 var3832)
(declare-const var488!1 var238)
(define-const var2827 var3409 var1112-CUSTOM) ; Statement: $r25 = <com.microsoft.schemas.office.office.STConnectType: com.microsoft.schemas.office.office.STConnectType$Enum CUSTOM> 
;(assert (var3832_setConnecttype/-1939150956 var3260!1 var2827)) ; Statement: interfaceinvoke $r48.<com.microsoft.schemas.vml.CTPath: void setConnecttype(com.microsoft.schemas.office.office.STConnectType$Enum)>($r25) 

(declare-const var3260!2 var3832)
(declare-const var2827!1 var3409)
;(assert (var3832_setConnectlocs/452811541 var3260!2 "@9,0;@10,10800;@11,21600;@12,10800")) ; Statement: interfaceinvoke $r48.<com.microsoft.schemas.vml.CTPath: void setConnectlocs(java.lang.String)>("@9,0;@10,10800;@11,21600;@12,10800") 

(declare-const var3260!3 var3832)
(declare-const var1907 String)
;(assert (var3832_setConnectangles/1284872104 var3260!3 "270,180,90,0")) ; Statement: interfaceinvoke $r48.<com.microsoft.schemas.vml.CTPath: void setConnectangles(java.lang.String)>("270,180,90,0") 

(declare-const var3260!4 var3832)
(declare-const var3179 String)
(define-const var422 var383 (var2253_addNewTextpath/-622148413 var891!5)) ; Statement: $r49 = interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: com.microsoft.schemas.vml.CTTextPath addNewTextpath()>() 
(define-const var2016 var238 var744-T) ; Statement: $r26 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum T> 
;(assert (var383_setOn/-123786300 var422 var2016)) ; Statement: interfaceinvoke $r49.<com.microsoft.schemas.vml.CTTextPath: void setOn(org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum)>($r26) 

(declare-const var422!1 var383)
(declare-const var2016!1 var238)
(define-const var2355 var238 var744-T) ; Statement: $r27 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum T> 
;(assert (var383_setFitshape/1238544659 var422!1 var2355)) ; Statement: interfaceinvoke $r49.<com.microsoft.schemas.vml.CTTextPath: void setFitshape(org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum)>($r27) 

(declare-const var422!2 var383)
(declare-const var2355!1 var238)
(define-const var3358 var3491 (var2253_addNewHandles/1351138859 var891!5)) ; Statement: $r50 = interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: com.microsoft.schemas.vml.CTHandles addNewHandles()>() 
(define-const var458 var277 (var3491_addNewH/-1621570975 var3358)) ; Statement: $r51 = interfaceinvoke $r50.<com.microsoft.schemas.vml.CTHandles: com.microsoft.schemas.vml.CTH addNewH()>() 
;(assert (var277_setPosition/718160260 var458 "#0,bottomRight")) ; Statement: interfaceinvoke $r51.<com.microsoft.schemas.vml.CTH: void setPosition(java.lang.String)>("#0,bottomRight") 

(declare-const var458!1 var277)
(declare-const var748 String)
;(assert (var277_setXrange/413872168 var458!1 "6629,14971")) ; Statement: interfaceinvoke $r51.<com.microsoft.schemas.vml.CTH: void setXrange(java.lang.String)>("6629,14971") 

(declare-const var458!2 var277)
(declare-const var1854 String)
(define-const var27 var2779 (var2253_addNewLock/1610163978 var891!5)) ; Statement: $r52 = interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: com.microsoft.schemas.office.office.CTLock addNewLock()>() 
(define-const var1899 var2914 var2209-EDIT) ; Statement: $r28 = <com.microsoft.schemas.vml.STExt: com.microsoft.schemas.vml.STExt$Enum EDIT> 
;(assert (var2779_setExt/-49059264 var27 var1899)) ; Statement: interfaceinvoke $r52.<com.microsoft.schemas.office.office.CTLock: void setExt(com.microsoft.schemas.vml.STExt$Enum)>($r28) 

(declare-const var27!1 var2779)
(declare-const var1899!1 var2914)
(define-const var630 var2218 (var1230_addNewShape/-1061986781 var2104)) ; Statement: $r53 = interfaceinvoke $r45.<com.microsoft.schemas.vml.CTGroup: com.microsoft.schemas.vml.CTShape addNewShape()>() 
(define-const var2889 String String-init) ; Statement: $r58 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2889)) ; Statement: specialinvoke $r58.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2889!1 String)
(assert (= var2889!1 ""))
(assert true)
(define-const var3320 String (append/672562846 var2889!1 "PowerPlusWaterMarkObject")) ; Statement: $r30 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PowerPlusWaterMarkObject") 
(declare-const var2889!2 String)
(assert (= var2889!2 (str.++ var2889!1 "PowerPlusWaterMarkObject")))
(assert true)
(define-const var2444 String (append/-1001720160 var3320 var2377)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3320!1 String)
(assert (str.prefixof var3320 var3320!1))
(assert true)
(define-const var188 String (toString/-2075883882 var2444)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2218_setId/-1293471047 var630 var188)) ; Statement: interfaceinvoke $r53.<com.microsoft.schemas.vml.CTShape: void setId(java.lang.String)>($r32) 

(declare-const var630!1 var2218)
(declare-const var188!1 String)
(define-const var791 String String-init) ; Statement: $r59 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var791)) ; Statement: specialinvoke $r59.<java.lang.StringBuilder: void <init>()>() 
(declare-const var791!1 String)
(assert (= var791!1 ""))
(assert true)
(define-const var3383 String (append/672562846 var791!1 "_x0000_s102")) ; Statement: $r34 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_x0000_s102") 
(declare-const var791!2 String)
(assert (= var791!2 (str.++ var791!1 "_x0000_s102")))
(define-const var1939 Int (+ 4 var2377)) ; Statement: $i2 = 4 + i1 
(assert true)
(define-const var374 String (append/-1001720160 var3383 var1939)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3383!1 String)
(assert (str.prefixof var3383 var3383!1))
(assert true)
(define-const var2140 String (toString/-2075883882 var374)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2218_setSpid/-1803834372 var630!1 var2140)) ; Statement: interfaceinvoke $r53.<com.microsoft.schemas.vml.CTShape: void setSpid(java.lang.String)>($r36) 

(declare-const var630!2 var2218)
(declare-const var2140!1 String)
;(assert (var2218_setType/-651075142 var630!2 "#_x0000_t136")) ; Statement: interfaceinvoke $r53.<com.microsoft.schemas.vml.CTShape: void setType(java.lang.String)>("#_x0000_t136") 

(declare-const var630!3 var2218)
(declare-const var3036 String)
;(assert (var2218_setStyle/350259903 var630!3 "position:absolute;margin-left:0;margin-top:0;width:415pt;height:207.5pt;z-index:-251654144;mso-wrap-edited:f;mso-position-horizontal:center;mso-position-horizontal-relative:margin;mso-position-vertical:center;mso-position-vertical-relative:margin")) ; Statement: interfaceinvoke $r53.<com.microsoft.schemas.vml.CTShape: void setStyle(java.lang.String)>("position:absolute;margin-left:0;margin-top:0;width:415pt;height:207.5pt;z-index:-251654144;mso-wrap-edited:f;mso-position-horizontal:center;mso-position-horizontal-relative:margin;mso-position-vertical:center;mso-position-vertical-relative:margin") 

(declare-const var630!4 var2218)
(declare-const var1293 String)
;(assert (var2218_setWrapcoords/-1946541108 var630!4 "616 5068 390 16297 39 16921 -39 17155 7265 17545 7186 17467 -39 17467 18904 17467 10507 17467 8710 17545 18904 17077 18787 16843 18358 16297 18279 12554 19178 12476 20701 11774 20779 11228 21131 10059 21248 8811 21248 7563 20975 6316 20935 5380 19490 5146 14022 5068 2616 5068")) ; Statement: interfaceinvoke $r53.<com.microsoft.schemas.vml.CTShape: void setWrapcoords(java.lang.String)>("616 5068 390 16297 39 16921 -39 17155 7265 17545 7186 17467 -39 17467 18904 17467 10507 17467 8710 17545 18904 17077 18787 16843 18358 16297 18279 12554 19178 12476 20701 11774 20779 11228 21131 10059 21248 8811 21248 7563 20975 6316 20935 5380 19490 5146 14022 5068 2616 5068") 

(declare-const var630!5 var2218)
(declare-const var2525 String)
;(assert (var2218_setFillcolor/-248525488 var630!5 "black")) ; Statement: interfaceinvoke $r53.<com.microsoft.schemas.vml.CTShape: void setFillcolor(java.lang.String)>("black") 

(declare-const var630!6 var2218)
(declare-const var1150 String)
(define-const var2404 var238 var744-FALSE) ; Statement: $r37 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum FALSE> 
;(assert (var2218_setStroked/420730914 var630!6 var2404)) ; Statement: interfaceinvoke $r53.<com.microsoft.schemas.vml.CTShape: void setStroked(org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum)>($r37) 

(declare-const var630!7 var2218)
(declare-const var2404!1 var238)
(define-const var390 var383 (var2218_addNewTextpath/715715721 var630!7)) ; Statement: $r54 = interfaceinvoke $r53.<com.microsoft.schemas.vml.CTShape: com.microsoft.schemas.vml.CTTextPath addNewTextpath()>() 
;(assert (var383_setStyle/1354508814 var390 "font-family:&quot;Cambria&quot;;font-size:1pt")) ; Statement: interfaceinvoke $r54.<com.microsoft.schemas.vml.CTTextPath: void setStyle(java.lang.String)>("font-family:&quot;Cambria&quot;;font-size:1pt") 

(declare-const var390!1 var383)
(declare-const var3266 String)
;(assert (var383_setString/-1870790252 var390!1 var355)) ; Statement: interfaceinvoke $r54.<com.microsoft.schemas.vml.CTTextPath: void setString(java.lang.String)>(r38) 

(declare-const var390!2 var383)
(declare-const var355!1 String)
(define-const var3718 var3453 (cast-from-var1230-to-var3453 var2104)) ; Statement: $r61 = (org.apache.xmlbeans.XmlObject) $r45 
;(assert (var3257_set/1119364886 var1747 var3718)) ; Statement: interfaceinvoke $r44.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture: org.apache.xmlbeans.XmlObject set(org.apache.xmlbeans.XmlObject)>($r61) 

(declare-const var1747!1 var3257)
(declare-const var3718!1 var3453)
(define-const var150 var2067 var2067-init) ; Statement: $r60 = new org.apache.poi.xwpf.usermodel.XWPFParagraph 
(define-const var2106 var893 (doc/-2020745741 var2790)) ; Statement: $r40 = r3.<org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy: org.apache.poi.xwpf.usermodel.XWPFDocument doc> 
(assert true)
;(assert (<init>/916914304 var150 var1739!2 (cast-from-var893-to-var1025 var2106))) ; Statement: specialinvoke $r60.<org.apache.poi.xwpf.usermodel.XWPFParagraph: void <init>(org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP,org.apache.poi.xwpf.usermodel.IBody)>(r2, $r40) 

(declare-const var150!1 var2067)
(declare-const var1739!3 var945)
(declare-const var2106!1 var893)
 ; Statement: return $r60 
(check-sat)
(get-model)
(get-unsat-core)
; {newInstance/532723879=([org.apache.xmlbeans.impl.schema.DocumentFactory], java.lang.Object), cast-from-var1246-to-var945=([java.lang.Object], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP), doc/-2020745741=([org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy], org.apache.poi.xwpf.usermodel.XWPFDocument), getDocument/-1264257560=([org.apache.poi.xwpf.usermodel.XWPFDocument], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1), var3619_getBody/-1515921931=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBody), var1036_sizeOfPArray/-2141624084=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBody], int), var945_setRsidP/291972072=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP, byte[]], void), var945_setRsidRDefault/-765566329=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP, byte[]], void), var945_addNewPPr/1902925068=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr), var402_addNewPStyle/-1673993728=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString), var1821_setVal/2142443077=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString, java.lang.String], void), var945_addNewR/1692580492=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR), var187_addNewRPr/-1138221882=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr), var1223_addNewNoProof/1314121945=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff), var187_addNewPict/1049456896=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture), cast-from-var1246-to-var1230=([java.lang.Object], com.microsoft.schemas.vml.CTGroup), var1230_addNewShapetype/-126183377=([com.microsoft.schemas.vml.CTGroup], com.microsoft.schemas.vml.CTShapetype), var2253_setId/-1571084993=([com.microsoft.schemas.vml.CTShapetype, java.lang.String], void), var2253_setCoordsize/-2091410540=([com.microsoft.schemas.vml.CTShapetype, java.lang.String], void), var2253_setSpt/-1907385896=([com.microsoft.schemas.vml.CTShapetype, float], void), var2253_setAdj/520214979=([com.microsoft.schemas.vml.CTShapetype, java.lang.String], void), var2253_setPath2/215680509=([com.microsoft.schemas.vml.CTShapetype, java.lang.String], void), var2253_addNewFormulas/-862713341=([com.microsoft.schemas.vml.CTShapetype], com.microsoft.schemas.vml.CTFormulas), var658_addNewF/-361316507=([com.microsoft.schemas.vml.CTFormulas], com.microsoft.schemas.vml.CTF), var2257_setEqn/543482963=([com.microsoft.schemas.vml.CTF, java.lang.String], void), var2253_addNewPath/398937347=([com.microsoft.schemas.vml.CTShapetype], com.microsoft.schemas.vml.CTPath), var3832_setTextpathok/-233305854=([com.microsoft.schemas.vml.CTPath, org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum], void), var3832_setConnecttype/-1939150956=([com.microsoft.schemas.vml.CTPath, com.microsoft.schemas.office.office.STConnectType$Enum], void), var3832_setConnectlocs/452811541=([com.microsoft.schemas.vml.CTPath, java.lang.String], void), var3832_setConnectangles/1284872104=([com.microsoft.schemas.vml.CTPath, java.lang.String], void), var2253_addNewTextpath/-622148413=([com.microsoft.schemas.vml.CTShapetype], com.microsoft.schemas.vml.CTTextPath), var383_setOn/-123786300=([com.microsoft.schemas.vml.CTTextPath, org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum], void), var383_setFitshape/1238544659=([com.microsoft.schemas.vml.CTTextPath, org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum], void), var2253_addNewHandles/1351138859=([com.microsoft.schemas.vml.CTShapetype], com.microsoft.schemas.vml.CTHandles), var3491_addNewH/-1621570975=([com.microsoft.schemas.vml.CTHandles], com.microsoft.schemas.vml.CTH), var277_setPosition/718160260=([com.microsoft.schemas.vml.CTH, java.lang.String], void), var277_setXrange/413872168=([com.microsoft.schemas.vml.CTH, java.lang.String], void), var2253_addNewLock/1610163978=([com.microsoft.schemas.vml.CTShapetype], com.microsoft.schemas.office.office.CTLock), var2779_setExt/-49059264=([com.microsoft.schemas.office.office.CTLock, com.microsoft.schemas.vml.STExt$Enum], void), var1230_addNewShape/-1061986781=([com.microsoft.schemas.vml.CTGroup], com.microsoft.schemas.vml.CTShape), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2218_setId/-1293471047=([com.microsoft.schemas.vml.CTShape, java.lang.String], void), var2218_setSpid/-1803834372=([com.microsoft.schemas.vml.CTShape, java.lang.String], void), var2218_setType/-651075142=([com.microsoft.schemas.vml.CTShape, java.lang.String], void), var2218_setStyle/350259903=([com.microsoft.schemas.vml.CTShape, java.lang.String], void), var2218_setWrapcoords/-1946541108=([com.microsoft.schemas.vml.CTShape, java.lang.String], void), var2218_setFillcolor/-248525488=([com.microsoft.schemas.vml.CTShape, java.lang.String], void), var2218_setStroked/420730914=([com.microsoft.schemas.vml.CTShape, org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum], void), var2218_addNewTextpath/715715721=([com.microsoft.schemas.vml.CTShape], com.microsoft.schemas.vml.CTTextPath), var383_setStyle/1354508814=([com.microsoft.schemas.vml.CTTextPath, java.lang.String], void), var383_setString/-1870790252=([com.microsoft.schemas.vml.CTTextPath, java.lang.String], void), cast-from-var1230-to-var3453=([com.microsoft.schemas.vml.CTGroup], org.apache.xmlbeans.XmlObject), var3257_set/1119364886=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture, org.apache.xmlbeans.XmlObject], org.apache.xmlbeans.XmlObject), var2067-init=([], org.apache.poi.xwpf.usermodel.XWPFParagraph), <init>/916914304=([org.apache.poi.xwpf.usermodel.XWPFParagraph, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP, org.apache.poi.xwpf.usermodel.IBody], void), cast-from-var893-to-var1025=([org.apache.poi.xwpf.usermodel.XWPFDocument], org.apache.poi.xwpf.usermodel.IBody)}
; {var299=org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy, var2790=r3, var355=r38, var135=null_type, var2377=i1, var2383=org.apache.xmlbeans.impl.schema.DocumentFactory, var945=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP, var1097=$r0, var1246=java.lang.Object, var794=$r1, var1739=r2, var893=org.apache.poi.xwpf.usermodel.XWPFDocument, var309=$r4, var3619=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1, var570=$r5, var1036=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBody, var2096=r6, var2732=r55, var787=r56, var3120=$i0, var402=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr, var3404=$r41, var1821=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString, var3704=$r7, var2040="Header", var187=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR, var680=$r42, var1223=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr, var3204=$r43, var3257=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture, var1747=$r44, var1230=com.microsoft.schemas.vml.CTGroup, var3721=$r8, var2891=$r9, var2104=$r45, var2253=com.microsoft.schemas.vml.CTShapetype, var891=$r46, var2761="_x0000_t136", var3554="1600,21600", var3695=136.0F, var3121="10800", var996="m@7,0l@8,0m@5,21600l@6,21600e", var658=com.microsoft.schemas.vml.CTFormulas, var3451=$r47, var2257=com.microsoft.schemas.vml.CTF, var3196=$r10, var2270="sum #0 0 10800", var2298=$r11, var2269="prod #0 2 1", var2100=$r12, var2462="sum 21600 0 @1", var619=$r13, var885="sum 0 0 @2", var2117=$r14, var1135="sum 21600 0 @3", var652=$r15, var3768="if @0 @3 0", var3665=$r16, var1274="if @0 21600 @1", var2201=$r17, var2036="if @0 0 @2", var34=$r18, var2488="if @0 @4 21600", var1629=$r19, var3166="mid @5 @6", var2486=$r20, var1337="mid @8 @5", var974=$r21, var760="mid @7 @8", var1317=$r22, var1913="mid @6 @7", var2118=$r23, var186="sum @6 0 @5", var3832=com.microsoft.schemas.vml.CTPath, var3260=$r48, var238=org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum, var744=org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse, var488=$r24, var3409=com.microsoft.schemas.office.office.STConnectType$Enum, var1112=com.microsoft.schemas.office.office.STConnectType, var2827=$r25, var1907="@9,0;@10,10800;@11,21600;@12,10800", var3179="270,180,90,0", var383=com.microsoft.schemas.vml.CTTextPath, var422=$r49, var2016=$r26, var2355=$r27, var3491=com.microsoft.schemas.vml.CTHandles, var3358=$r50, var277=com.microsoft.schemas.vml.CTH, var458=$r51, var748="#0,bottomRight", var1854="6629,14971", var2779=com.microsoft.schemas.office.office.CTLock, var27=$r52, var2914=com.microsoft.schemas.vml.STExt$Enum, var2209=com.microsoft.schemas.vml.STExt, var1899=$r28, var2218=com.microsoft.schemas.vml.CTShape, var630=$r53, var2889=$r58, var3320=$r30, var2444=$r31, var188=$r32, var791=$r59, var3383=$r34, var1939=$i2, var374=$r35, var2140=$r36, var3036="#_x0000_t136", var1293="position:absolute;margin-left:0;margin-top:0;width:415pt;height:207.5pt;z-index:-251654144;mso-wrap-edited:f;mso-position-horizontal:center;mso-position-horizontal-relative:margin;mso-position-vertical:center;mso-position-vertical-relative:margin", var2525="616 5068 390 16297 39 16921 -39 17155 7265 17545 7186 17467 -39 17467 18904 17467 10507 17467 8710 17545 18904 17077 18787 16843 18358 16297 18279 12554 19178 12476 20701 11774 20779 11228 21131 10059 21248 8811 21248 7563 20975 6316 20935 5380 19490 5146 14022 5068 2616 5068", var1150="black", var2404=$r37, var390=$r54, var3266="font-family:&quot;Cambria&quot;;font-size:1pt", var3453=org.apache.xmlbeans.XmlObject, var3718=$r61, var2067=org.apache.poi.xwpf.usermodel.XWPFParagraph, var150=$r60, var2106=$r40, var1025=org.apache.poi.xwpf.usermodel.IBody, var2099=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff}
; {org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy=var299, r3=var2790, r38=var355, null_type=var135, i1=var2377, org.apache.xmlbeans.impl.schema.DocumentFactory=var2383, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP=var945, $r0=var1097, java.lang.Object=var1246, $r1=var794, r2=var1739, org.apache.poi.xwpf.usermodel.XWPFDocument=var893, $r4=var309, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1=var3619, $r5=var570, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBody=var1036, r6=var2096, r55=var2732, r56=var787, $i0=var3120, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr=var402, $r41=var3404, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString=var1821, $r7=var3704, "Header"=var2040, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR=var187, $r42=var680, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr=var1223, $r43=var3204, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture=var3257, $r44=var1747, com.microsoft.schemas.vml.CTGroup=var1230, $r8=var3721, $r9=var2891, $r45=var2104, com.microsoft.schemas.vml.CTShapetype=var2253, $r46=var891, "_x0000_t136"=var2761, "1600,21600"=var3554, 136.0F=var3695, "10800"=var3121, "m@7,0l@8,0m@5,21600l@6,21600e"=var996, com.microsoft.schemas.vml.CTFormulas=var658, $r47=var3451, com.microsoft.schemas.vml.CTF=var2257, $r10=var3196, "sum #0 0 10800"=var2270, $r11=var2298, "prod #0 2 1"=var2269, $r12=var2100, "sum 21600 0 @1"=var2462, $r13=var619, "sum 0 0 @2"=var885, $r14=var2117, "sum 21600 0 @3"=var1135, $r15=var652, "if @0 @3 0"=var3768, $r16=var3665, "if @0 21600 @1"=var1274, $r17=var2201, "if @0 0 @2"=var2036, $r18=var34, "if @0 @4 21600"=var2488, $r19=var1629, "mid @5 @6"=var3166, $r20=var2486, "mid @8 @5"=var1337, $r21=var974, "mid @7 @8"=var760, $r22=var1317, "mid @6 @7"=var1913, $r23=var2118, "sum @6 0 @5"=var186, com.microsoft.schemas.vml.CTPath=var3832, $r48=var3260, org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum=var238, org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse=var744, $r24=var488, com.microsoft.schemas.office.office.STConnectType$Enum=var3409, com.microsoft.schemas.office.office.STConnectType=var1112, $r25=var2827, "@9,0;@10,10800;@11,21600;@12,10800"=var1907, "270,180,90,0"=var3179, com.microsoft.schemas.vml.CTTextPath=var383, $r49=var422, $r26=var2016, $r27=var2355, com.microsoft.schemas.vml.CTHandles=var3491, $r50=var3358, com.microsoft.schemas.vml.CTH=var277, $r51=var458, "#0,bottomRight"=var748, "6629,14971"=var1854, com.microsoft.schemas.office.office.CTLock=var2779, $r52=var27, com.microsoft.schemas.vml.STExt$Enum=var2914, com.microsoft.schemas.vml.STExt=var2209, $r28=var1899, com.microsoft.schemas.vml.CTShape=var2218, $r53=var630, $r58=var2889, $r30=var3320, $r31=var2444, $r32=var188, $r59=var791, $r34=var3383, $i2=var1939, $r35=var374, $r36=var2140, "#_x0000_t136"=var3036, "position:absolute;margin-left:0;margin-top:0;width:415pt;height:207.5pt;z-index:-251654144;mso-wrap-edited:f;mso-position-horizontal:center;mso-position-horizontal-relative:margin;mso-position-vertical:center;mso-position-vertical-relative:margin"=var1293, "616 5068 390 16297 39 16921 -39 17155 7265 17545 7186 17467 -39 17467 18904 17467 10507 17467 8710 17545 18904 17077 18787 16843 18358 16297 18279 12554 19178 12476 20701 11774 20779 11228 21131 10059 21248 8811 21248 7563 20975 6316 20935 5380 19490 5146 14022 5068 2616 5068"=var2525, "black"=var1150, $r37=var2404, $r54=var390, "font-family:&quot;Cambria&quot;;font-size:1pt"=var3266, org.apache.xmlbeans.XmlObject=var3453, $r61=var3718, org.apache.poi.xwpf.usermodel.XWPFParagraph=var2067, $r60=var150, $r40=var2106, org.apache.poi.xwpf.usermodel.IBody=var1025, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff=var2099}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r3 := @this: org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy;	r38 := @parameter0: java.lang.String;	i1 := @parameter1: int;	$r0 = <org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: org.apache.xmlbeans.impl.schema.DocumentFactory Factory>;	$r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>();	r2 = (org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP) $r1;	$r4 = r3.<org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy: org.apache.poi.xwpf.usermodel.XWPFDocument doc>;	$r5 = virtualinvoke $r4.<org.apache.poi.xwpf.usermodel.XWPFDocument: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1 getDocument()>();	r6 = interfaceinvoke $r5.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocument1: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBody getBody()>();	r55 = null;	r56 = null;	$i0 = interfaceinvoke r6.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBody: int sizeOfPArray()>();	if $i0 != 0 goto r57 = interfaceinvoke r6.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBody: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP getPArray(int)>(0);	goto [?= interfaceinvoke r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: void setRsidP(byte[])>(r55)];	interfaceinvoke r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: void setRsidP(byte[])>(r55);	interfaceinvoke r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: void setRsidRDefault(byte[])>(r56);	$r41 = interfaceinvoke r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr addNewPPr()>();	$r7 = interfaceinvoke $r41.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString addNewPStyle()>();	interfaceinvoke $r7.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTString: void setVal(java.lang.String)>("Header");	$r42 = interfaceinvoke r2.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR addNewR()>();	$r43 = interfaceinvoke $r42.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr addNewRPr()>();	interfaceinvoke $r43.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff addNewNoProof()>();	$r44 = interfaceinvoke $r42.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture addNewPict()>();	$r8 = <com.microsoft.schemas.vml.CTGroup: org.apache.xmlbeans.impl.schema.DocumentFactory Factory>;	$r9 = virtualinvoke $r8.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>();	$r45 = (com.microsoft.schemas.vml.CTGroup) $r9;	$r46 = interfaceinvoke $r45.<com.microsoft.schemas.vml.CTGroup: com.microsoft.schemas.vml.CTShapetype addNewShapetype()>();	interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: void setId(java.lang.String)>("_x0000_t136");	interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: void setCoordsize(java.lang.String)>("1600,21600");	interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: void setSpt(float)>(136.0F);	interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: void setAdj(java.lang.String)>("10800");	interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: void setPath2(java.lang.String)>("m@7,0l@8,0m@5,21600l@6,21600e");	$r47 = interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: com.microsoft.schemas.vml.CTFormulas addNewFormulas()>();	$r10 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>();	interfaceinvoke $r10.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("sum #0 0 10800");	$r11 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>();	interfaceinvoke $r11.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("prod #0 2 1");	$r12 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>();	interfaceinvoke $r12.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("sum 21600 0 @1");	$r13 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>();	interfaceinvoke $r13.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("sum 0 0 @2");	$r14 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>();	interfaceinvoke $r14.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("sum 21600 0 @3");	$r15 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>();	interfaceinvoke $r15.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("if @0 @3 0");	$r16 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>();	interfaceinvoke $r16.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("if @0 21600 @1");	$r17 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>();	interfaceinvoke $r17.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("if @0 0 @2");	$r18 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>();	interfaceinvoke $r18.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("if @0 @4 21600");	$r19 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>();	interfaceinvoke $r19.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("mid @5 @6");	$r20 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>();	interfaceinvoke $r20.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("mid @8 @5");	$r21 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>();	interfaceinvoke $r21.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("mid @7 @8");	$r22 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>();	interfaceinvoke $r22.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("mid @6 @7");	$r23 = interfaceinvoke $r47.<com.microsoft.schemas.vml.CTFormulas: com.microsoft.schemas.vml.CTF addNewF()>();	interfaceinvoke $r23.<com.microsoft.schemas.vml.CTF: void setEqn(java.lang.String)>("sum @6 0 @5");	$r48 = interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: com.microsoft.schemas.vml.CTPath addNewPath()>();	$r24 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum T>;	interfaceinvoke $r48.<com.microsoft.schemas.vml.CTPath: void setTextpathok(org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum)>($r24);	$r25 = <com.microsoft.schemas.office.office.STConnectType: com.microsoft.schemas.office.office.STConnectType$Enum CUSTOM>;	interfaceinvoke $r48.<com.microsoft.schemas.vml.CTPath: void setConnecttype(com.microsoft.schemas.office.office.STConnectType$Enum)>($r25);	interfaceinvoke $r48.<com.microsoft.schemas.vml.CTPath: void setConnectlocs(java.lang.String)>("@9,0;@10,10800;@11,21600;@12,10800");	interfaceinvoke $r48.<com.microsoft.schemas.vml.CTPath: void setConnectangles(java.lang.String)>("270,180,90,0");	$r49 = interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: com.microsoft.schemas.vml.CTTextPath addNewTextpath()>();	$r26 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum T>;	interfaceinvoke $r49.<com.microsoft.schemas.vml.CTTextPath: void setOn(org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum)>($r26);	$r27 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum T>;	interfaceinvoke $r49.<com.microsoft.schemas.vml.CTTextPath: void setFitshape(org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum)>($r27);	$r50 = interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: com.microsoft.schemas.vml.CTHandles addNewHandles()>();	$r51 = interfaceinvoke $r50.<com.microsoft.schemas.vml.CTHandles: com.microsoft.schemas.vml.CTH addNewH()>();	interfaceinvoke $r51.<com.microsoft.schemas.vml.CTH: void setPosition(java.lang.String)>("#0,bottomRight");	interfaceinvoke $r51.<com.microsoft.schemas.vml.CTH: void setXrange(java.lang.String)>("6629,14971");	$r52 = interfaceinvoke $r46.<com.microsoft.schemas.vml.CTShapetype: com.microsoft.schemas.office.office.CTLock addNewLock()>();	$r28 = <com.microsoft.schemas.vml.STExt: com.microsoft.schemas.vml.STExt$Enum EDIT>;	interfaceinvoke $r52.<com.microsoft.schemas.office.office.CTLock: void setExt(com.microsoft.schemas.vml.STExt$Enum)>($r28);	$r53 = interfaceinvoke $r45.<com.microsoft.schemas.vml.CTGroup: com.microsoft.schemas.vml.CTShape addNewShape()>();	$r58 = new java.lang.StringBuilder;	specialinvoke $r58.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PowerPlusWaterMarkObject");	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r53.<com.microsoft.schemas.vml.CTShape: void setId(java.lang.String)>($r32);	$r59 = new java.lang.StringBuilder;	specialinvoke $r59.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_x0000_s102");	$i2 = 4 + i1;	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r53.<com.microsoft.schemas.vml.CTShape: void setSpid(java.lang.String)>($r36);	interfaceinvoke $r53.<com.microsoft.schemas.vml.CTShape: void setType(java.lang.String)>("#_x0000_t136");	interfaceinvoke $r53.<com.microsoft.schemas.vml.CTShape: void setStyle(java.lang.String)>("position:absolute;margin-left:0;margin-top:0;width:415pt;height:207.5pt;z-index:-251654144;mso-wrap-edited:f;mso-position-horizontal:center;mso-position-horizontal-relative:margin;mso-position-vertical:center;mso-position-vertical-relative:margin");	interfaceinvoke $r53.<com.microsoft.schemas.vml.CTShape: void setWrapcoords(java.lang.String)>("616 5068 390 16297 39 16921 -39 17155 7265 17545 7186 17467 -39 17467 18904 17467 10507 17467 8710 17545 18904 17077 18787 16843 18358 16297 18279 12554 19178 12476 20701 11774 20779 11228 21131 10059 21248 8811 21248 7563 20975 6316 20935 5380 19490 5146 14022 5068 2616 5068");	interfaceinvoke $r53.<com.microsoft.schemas.vml.CTShape: void setFillcolor(java.lang.String)>("black");	$r37 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum FALSE>;	interfaceinvoke $r53.<com.microsoft.schemas.vml.CTShape: void setStroked(org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum)>($r37);	$r54 = interfaceinvoke $r53.<com.microsoft.schemas.vml.CTShape: com.microsoft.schemas.vml.CTTextPath addNewTextpath()>();	interfaceinvoke $r54.<com.microsoft.schemas.vml.CTTextPath: void setStyle(java.lang.String)>("font-family:&quot;Cambria&quot;;font-size:1pt");	interfaceinvoke $r54.<com.microsoft.schemas.vml.CTTextPath: void setString(java.lang.String)>(r38);	$r61 = (org.apache.xmlbeans.XmlObject) $r45;	interfaceinvoke $r44.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPicture: org.apache.xmlbeans.XmlObject set(org.apache.xmlbeans.XmlObject)>($r61);	$r60 = new org.apache.poi.xwpf.usermodel.XWPFParagraph;	$r40 = r3.<org.apache.poi.xwpf.model.XWPFHeaderFooterPolicy: org.apache.poi.xwpf.usermodel.XWPFDocument doc>;	specialinvoke $r60.<org.apache.poi.xwpf.usermodel.XWPFParagraph: void <init>(org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP,org.apache.poi.xwpf.usermodel.IBody)>(r2, $r40);	return $r60
;block_num 3