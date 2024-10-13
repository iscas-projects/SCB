(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var405 0)
(declare-sort var2293 0)
(declare-sort var1632 0)
(declare-sort var2021 0)
(declare-sort var2354 0)
(declare-sort var2960 0)
(declare-sort var2460 0)
(declare-sort var2619 0)
(declare-sort var117 0)
(declare-sort var1592 0)
(declare-sort var2353 0)
(declare-sort var617 0)
(declare-sort var723 0)
(declare-sort var2766 0)
(declare-sort var1565 0)
(declare-sort var3058 0)
(declare-sort var2005 0)
(declare-sort var3286 0)
(declare-sort var364 0)
(declare-sort var2326 0)
(declare-sort var383 0)
(declare-sort var2531 0)
(declare-sort var533 0)
(declare-sort var1223 0)
(declare-sort var1749 0)
(declare-sort var3269 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newInstance/532723879 (var2293) var2021)
(declare-fun cast-from-var2021-to-var1632 (var2021) var1632)
(declare-fun var1632_addNewShape/-1061986781 (var1632) var2354)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun _shapeId/279910029 (var405) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2354_setId/-1293471047 (var2354 String) void)
(declare-fun _shapeTypeId/279910029 (var405) String)
(declare-fun var2354_setType/-651075142 (var2354 String) void)
(declare-fun var2354_setStyle/350259903 (var2354 String) void)
(declare-fun var2354_setFillcolor/-248525488 (var2354 String) void)
(declare-fun var2354_setInsetmode/-215305062 (var2354 var2960) void)
(declare-fun var2354_addNewFill/-177143415 (var2354) var2619)
(declare-fun var2619_setColor/1769003245 (var2619 String) void)
(declare-fun var2354_addNewShadow/-1472237591 (var2354) var117)
(declare-fun var117_setOn/1952032022 (var117 var1592) void)
(declare-fun var117_setColor/162119050 (var117 String) void)
(declare-fun var117_setObscured/824827222 (var117 var1592) void)
(declare-fun var2354_addNewPath/-960716087 (var2354) var617)
(declare-fun var617_setConnecttype/-1939150956 (var617 var723) void)
(declare-fun var2354_addNewTextbox/2004743819 (var2354) var1565)
(declare-fun var1565_setStyle/1533055260 (var1565 String) void)
(declare-fun var2354_addNewClientData/-1636433865 (var2354) var3058)
(declare-fun var3058_setObjectType/-946267575 (var3058 var2005) void)
(declare-fun var3058_addNewMoveWithCells/-649849024 (var3058) var2326)
(declare-fun var3058_addNewSizeWithCells/-1895697552 (var3058) var2326)
(declare-fun var3058_addNewAnchor/1676708821 (var3058) var364)
(declare-fun var364_setStringValue/1976050846 (var364 String) void)
(declare-fun var3058_addNewAutoFill/-704151378 (var3058) var2326)
(declare-fun var2326_setStringValue/1958635532 (var2326 String) void)
(declare-fun var3058_addNewRow/-644438113 (var3058) var383)
(declare-fun var2531_valueOf/913516287 (Int) var2531)
(declare-fun var383_setBigIntegerValue/1871334541 (var383 var2531) void)
(declare-fun var3058_addNewColumn/-1808857493 (var3058) var383)
(declare-fun root/279910029 (var405) var533)
(declare-fun var533_getXml/-138344602 (var533) var1223)
(declare-fun var1223_newCursor/1693326503 (var1223) var1749)
(declare-const null-var405 var405)
(declare-const var1632-Factory var2293)
(declare-const var2460-AUTO var2960)
(declare-const var2353-T var1592)
(declare-const var2766-NONE var723)
(declare-const var3286-NOTE var2005)
(declare-const null-var3269 var3269)
(declare-const null-var1749 var1749)
(declare-const var3121 var405) ; Statement: r4 := @this: org.apache.poi.xssf.usermodel.XSSFVMLDrawing 
(assert (not (= var3121 null-var405)))
(define-const var826 var2293 var1632-Factory) ; Statement: $r0 = <com.microsoft.schemas.vml.CTGroup: org.apache.xmlbeans.impl.schema.DocumentFactory Factory> 
(assert true)
(define-const var2054 var2021 (newInstance/532723879 var826)) ; Statement: $r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>() 
(define-const var3871 var1632 (cast-from-var2021-to-var1632 var2054)) ; Statement: r2 = (com.microsoft.schemas.vml.CTGroup) $r1 
(define-const var3148 var2354 (var1632_addNewShape/-1061986781 var3871)) ; Statement: r41 = interfaceinvoke r2.<com.microsoft.schemas.vml.CTGroup: com.microsoft.schemas.vml.CTShape addNewShape()>() 
(define-const var1589 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1589)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1589!1 String)
(assert (= var1589!1 ""))
(assert true)
(define-const var3583 String (append/672562846 var1589!1 "_x0000_s")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_x0000_s") 
(declare-const var1589!2 String)
(assert (= var1589!2 (str.++ var1589!1 "_x0000_s")))
(define-const var3287 Int (_shapeId/279910029 var3121)) ; Statement: $i0 = r4.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: int _shapeId> 
(define-const var3678 Int (+ var3287 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var3121!1 var405)
(assert (not (= var3121!1 null-var405)))
(assert (= (_shapeId/279910029 var3121!1) var3678)) ; Statement: r4.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: int _shapeId> = $i1 
(assert true)
(define-const var1474 String (append/-1001720160 var3583 var3678)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3583!1 String)
(assert (str.prefixof var3583 var3583!1))
(assert true)
(define-const var441 String (toString/-2075883882 var1474)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2354_setId/-1293471047 var3148 var441)) ; Statement: interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: void setId(java.lang.String)>($r7) 

(declare-const var3148!1 var2354)
(declare-const var441!1 String)
(define-const var2117 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2117)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2117!1 String)
(assert (= var2117!1 ""))
(assert true)
(define-const var1587 String (append/672562846 var2117!1 "#")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var2117!2 String)
(assert (= var2117!2 (str.++ var2117!1 "#")))
(define-const var637 String (_shapeTypeId/279910029 var3121!1)) ; Statement: $r9 = r4.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: java.lang.String _shapeTypeId> 
(assert true)
(define-const var2668 String (append/672562846 var1587 var637)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1587!1 String)
(assert (= var1587!1 (str.++ var1587 var637)))
(assert true)
(define-const var1338 String (toString/-2075883882 var2668)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2354_setType/-651075142 var3148!1 var1338)) ; Statement: interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: void setType(java.lang.String)>($r12) 

(declare-const var3148!2 var2354)
(declare-const var1338!1 String)
;(assert (var2354_setStyle/350259903 var3148!2 "position:absolute; visibility:hidden")) ; Statement: interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: void setStyle(java.lang.String)>("position:absolute; visibility:hidden") 

(declare-const var3148!3 var2354)
(declare-const var926 String)
;(assert (var2354_setFillcolor/-248525488 var3148!3 "#ffffe1")) ; Statement: interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: void setFillcolor(java.lang.String)>("#ffffe1") 

(declare-const var3148!4 var2354)
(declare-const var1826 String)
(define-const var1437 var2960 var2460-AUTO) ; Statement: $r13 = <com.microsoft.schemas.office.office.STInsetMode: com.microsoft.schemas.office.office.STInsetMode$Enum AUTO> 
;(assert (var2354_setInsetmode/-215305062 var3148!4 var1437)) ; Statement: interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: void setInsetmode(com.microsoft.schemas.office.office.STInsetMode$Enum)>($r13) 

(declare-const var3148!5 var2354)
(declare-const var1437!1 var2960)
(define-const var2415 var2619 (var2354_addNewFill/-177143415 var3148!5)) ; Statement: $r14 = interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: com.microsoft.schemas.vml.CTFill addNewFill()>() 
;(assert (var2619_setColor/1769003245 var2415 "#ffffe1")) ; Statement: interfaceinvoke $r14.<com.microsoft.schemas.vml.CTFill: void setColor(java.lang.String)>("#ffffe1") 

(declare-const var2415!1 var2619)
(declare-const var1826!1 String)
(define-const var379 var117 (var2354_addNewShadow/-1472237591 var3148!5)) ; Statement: r15 = interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: com.microsoft.schemas.vml.CTShadow addNewShadow()>() 
(define-const var1398 var1592 var2353-T) ; Statement: $r16 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum T> 
;(assert (var117_setOn/1952032022 var379 var1398)) ; Statement: interfaceinvoke r15.<com.microsoft.schemas.vml.CTShadow: void setOn(org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum)>($r16) 

(declare-const var379!1 var117)
(declare-const var1398!1 var1592)
;(assert (var117_setColor/162119050 var379!1 "black")) ; Statement: interfaceinvoke r15.<com.microsoft.schemas.vml.CTShadow: void setColor(java.lang.String)>("black") 

(declare-const var379!2 var117)
(declare-const var2554 String)
(define-const var1507 var1592 var2353-T) ; Statement: $r17 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum T> 
;(assert (var117_setObscured/824827222 var379!2 var1507)) ; Statement: interfaceinvoke r15.<com.microsoft.schemas.vml.CTShadow: void setObscured(org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum)>($r17) 

(declare-const var379!3 var117)
(declare-const var1507!1 var1592)
(define-const var3784 var617 (var2354_addNewPath/-960716087 var3148!5)) ; Statement: $r19 = interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: com.microsoft.schemas.vml.CTPath addNewPath()>() 
(define-const var1717 var723 var2766-NONE) ; Statement: $r18 = <com.microsoft.schemas.office.office.STConnectType: com.microsoft.schemas.office.office.STConnectType$Enum NONE> 
;(assert (var617_setConnecttype/-1939150956 var3784 var1717)) ; Statement: interfaceinvoke $r19.<com.microsoft.schemas.vml.CTPath: void setConnecttype(com.microsoft.schemas.office.office.STConnectType$Enum)>($r18) 

(declare-const var3784!1 var617)
(declare-const var1717!1 var723)
(define-const var968 var1565 (var2354_addNewTextbox/2004743819 var3148!5)) ; Statement: $r20 = interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: com.microsoft.schemas.vml.CTTextbox addNewTextbox()>() 
;(assert (var1565_setStyle/1533055260 var968 "mso-direction-alt:auto")) ; Statement: interfaceinvoke $r20.<com.microsoft.schemas.vml.CTTextbox: void setStyle(java.lang.String)>("mso-direction-alt:auto") 

(declare-const var968!1 var1565)
(declare-const var2873 String)
(define-const var146 var3058 (var2354_addNewClientData/-1636433865 var3148!5)) ; Statement: r21 = interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: com.microsoft.schemas.office.excel.CTClientData addNewClientData()>() 
(define-const var592 var2005 var3286-NOTE) ; Statement: $r22 = <com.microsoft.schemas.office.excel.STObjectType: com.microsoft.schemas.office.excel.STObjectType$Enum NOTE> 
;(assert (var3058_setObjectType/-946267575 var146 var592)) ; Statement: interfaceinvoke r21.<com.microsoft.schemas.office.excel.CTClientData: void setObjectType(com.microsoft.schemas.office.excel.STObjectType$Enum)>($r22) 

(declare-const var146!1 var3058)
(declare-const var592!1 var2005)
;(assert (var3058_addNewMoveWithCells/-649849024 var146!1)) ; Statement: interfaceinvoke r21.<com.microsoft.schemas.office.excel.CTClientData: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalseBlank addNewMoveWithCells()>() 

(declare-const var146!2 var3058)
;(assert (var3058_addNewSizeWithCells/-1895697552 var146!2)) ; Statement: interfaceinvoke r21.<com.microsoft.schemas.office.excel.CTClientData: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalseBlank addNewSizeWithCells()>() 

(declare-const var146!3 var3058)
(define-const var2081 var364 (var3058_addNewAnchor/1676708821 var146!3)) ; Statement: $r23 = interfaceinvoke r21.<com.microsoft.schemas.office.excel.CTClientData: org.apache.xmlbeans.XmlString addNewAnchor()>() 
;(assert (var364_setStringValue/1976050846 var2081 "1, 15, 0, 2, 3, 15, 3, 16")) ; Statement: interfaceinvoke $r23.<org.apache.xmlbeans.XmlString: void setStringValue(java.lang.String)>("1, 15, 0, 2, 3, 15, 3, 16") 

(declare-const var2081!1 var364)
(declare-const var1790 String)
(define-const var2740 var2326 (var3058_addNewAutoFill/-704151378 var146!3)) ; Statement: $r24 = interfaceinvoke r21.<com.microsoft.schemas.office.excel.CTClientData: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalseBlank addNewAutoFill()>() 
;(assert (var2326_setStringValue/1958635532 var2740 "False")) ; Statement: interfaceinvoke $r24.<org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalseBlank: void setStringValue(java.lang.String)>("False") 

(declare-const var2740!1 var2326)
(declare-const var1789 String)
(define-const var3449 var383 (var3058_addNewRow/-644438113 var146!3)) ; Statement: $r26 = interfaceinvoke r21.<com.microsoft.schemas.office.excel.CTClientData: org.apache.xmlbeans.XmlInteger addNewRow()>() 
(define-const var3981 var2531 (var2531_valueOf/913516287 0)) ; Statement: $r25 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(0L) 
;(assert (var383_setBigIntegerValue/1871334541 var3449 var3981)) ; Statement: interfaceinvoke $r26.<org.apache.xmlbeans.XmlInteger: void setBigIntegerValue(java.math.BigInteger)>($r25) 

(declare-const var3449!1 var383)
(declare-const var3981!1 var2531)
(define-const var1721 var383 (var3058_addNewColumn/-1808857493 var146!3)) ; Statement: $r28 = interfaceinvoke r21.<com.microsoft.schemas.office.excel.CTClientData: org.apache.xmlbeans.XmlInteger addNewColumn()>() 
(define-const var2233 var2531 (var2531_valueOf/913516287 0)) ; Statement: $r27 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(0L) 
;(assert (var383_setBigIntegerValue/1871334541 var1721 var2233)) ; Statement: interfaceinvoke $r28.<org.apache.xmlbeans.XmlInteger: void setBigIntegerValue(java.math.BigInteger)>($r27) 

(declare-const var1721!1 var383)
(declare-const var2233!1 var2531)
(define-const var2952 var533 (root/279910029 var3121!1)) ; Statement: $r29 = r4.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: org.apache.poi.schemas.vmldrawing.XmlDocument root> 
(define-const var1405 var1223 (var533_getXml/-138344602 var2952)) ; Statement: $r30 = interfaceinvoke $r29.<org.apache.poi.schemas.vmldrawing.XmlDocument: org.apache.poi.schemas.vmldrawing.CTXML getXml()>() 
(define-const var149 var1749 (var1223_newCursor/1693326503 var1405)) ; Statement: r31 = interfaceinvoke $r30.<org.apache.poi.schemas.vmldrawing.CTXML: org.apache.xmlbeans.XmlCursor newCursor()>() 
(define-const var1336 var3269 null-var3269) ; Statement: r42 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2370 var3269) ; Statement: $r34 := @caughtexception 
(assert (not (= var2370 null-var3269)))
(assert true) ; Non Conditional
 ; Statement: if r31 == null goto throw $r34 
(assert (= var149 null-var1749)) ; Cond: r31 == null 
 ; Statement: throw $r34 
(check-sat)
(get-model)
(get-unsat-core)
; {newInstance/532723879=([org.apache.xmlbeans.impl.schema.DocumentFactory], java.lang.Object), cast-from-var2021-to-var1632=([java.lang.Object], com.microsoft.schemas.vml.CTGroup), var1632_addNewShape/-1061986781=([com.microsoft.schemas.vml.CTGroup], com.microsoft.schemas.vml.CTShape), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), _shapeId/279910029=([org.apache.poi.xssf.usermodel.XSSFVMLDrawing], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2354_setId/-1293471047=([com.microsoft.schemas.vml.CTShape, java.lang.String], void), _shapeTypeId/279910029=([org.apache.poi.xssf.usermodel.XSSFVMLDrawing], java.lang.String), var2354_setType/-651075142=([com.microsoft.schemas.vml.CTShape, java.lang.String], void), var2354_setStyle/350259903=([com.microsoft.schemas.vml.CTShape, java.lang.String], void), var2354_setFillcolor/-248525488=([com.microsoft.schemas.vml.CTShape, java.lang.String], void), var2354_setInsetmode/-215305062=([com.microsoft.schemas.vml.CTShape, com.microsoft.schemas.office.office.STInsetMode$Enum], void), var2354_addNewFill/-177143415=([com.microsoft.schemas.vml.CTShape], com.microsoft.schemas.vml.CTFill), var2619_setColor/1769003245=([com.microsoft.schemas.vml.CTFill, java.lang.String], void), var2354_addNewShadow/-1472237591=([com.microsoft.schemas.vml.CTShape], com.microsoft.schemas.vml.CTShadow), var117_setOn/1952032022=([com.microsoft.schemas.vml.CTShadow, org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum], void), var117_setColor/162119050=([com.microsoft.schemas.vml.CTShadow, java.lang.String], void), var117_setObscured/824827222=([com.microsoft.schemas.vml.CTShadow, org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum], void), var2354_addNewPath/-960716087=([com.microsoft.schemas.vml.CTShape], com.microsoft.schemas.vml.CTPath), var617_setConnecttype/-1939150956=([com.microsoft.schemas.vml.CTPath, com.microsoft.schemas.office.office.STConnectType$Enum], void), var2354_addNewTextbox/2004743819=([com.microsoft.schemas.vml.CTShape], com.microsoft.schemas.vml.CTTextbox), var1565_setStyle/1533055260=([com.microsoft.schemas.vml.CTTextbox, java.lang.String], void), var2354_addNewClientData/-1636433865=([com.microsoft.schemas.vml.CTShape], com.microsoft.schemas.office.excel.CTClientData), var3058_setObjectType/-946267575=([com.microsoft.schemas.office.excel.CTClientData, com.microsoft.schemas.office.excel.STObjectType$Enum], void), var3058_addNewMoveWithCells/-649849024=([com.microsoft.schemas.office.excel.CTClientData], org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalseBlank), var3058_addNewSizeWithCells/-1895697552=([com.microsoft.schemas.office.excel.CTClientData], org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalseBlank), var3058_addNewAnchor/1676708821=([com.microsoft.schemas.office.excel.CTClientData], org.apache.xmlbeans.XmlString), var364_setStringValue/1976050846=([org.apache.xmlbeans.XmlString, java.lang.String], void), var3058_addNewAutoFill/-704151378=([com.microsoft.schemas.office.excel.CTClientData], org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalseBlank), var2326_setStringValue/1958635532=([org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalseBlank, java.lang.String], void), var3058_addNewRow/-644438113=([com.microsoft.schemas.office.excel.CTClientData], org.apache.xmlbeans.XmlInteger), var2531_valueOf/913516287=([long], java.math.BigInteger), var383_setBigIntegerValue/1871334541=([org.apache.xmlbeans.XmlInteger, java.math.BigInteger], void), var3058_addNewColumn/-1808857493=([com.microsoft.schemas.office.excel.CTClientData], org.apache.xmlbeans.XmlInteger), root/279910029=([org.apache.poi.xssf.usermodel.XSSFVMLDrawing], org.apache.poi.schemas.vmldrawing.XmlDocument), var533_getXml/-138344602=([org.apache.poi.schemas.vmldrawing.XmlDocument], org.apache.poi.schemas.vmldrawing.CTXML), var1223_newCursor/1693326503=([org.apache.poi.schemas.vmldrawing.CTXML], org.apache.xmlbeans.XmlCursor)}
; {var405=org.apache.poi.xssf.usermodel.XSSFVMLDrawing, var3121=r4, var2293=org.apache.xmlbeans.impl.schema.DocumentFactory, var1632=com.microsoft.schemas.vml.CTGroup, var826=$r0, var2021=java.lang.Object, var2054=$r1, var3871=r2, var2354=com.microsoft.schemas.vml.CTShape, var3148=r41, var1589=$r3, var3583=$r5, var3287=$i0, var3678=$i1, var1474=$r6, var441=$r7, var2117=$r8, var1587=$r10, var637=$r9, var2668=$r11, var1338=$r12, var926="position:absolute; visibility:hidden", var1826="#ffffe1", var2960=com.microsoft.schemas.office.office.STInsetMode$Enum, var2460=com.microsoft.schemas.office.office.STInsetMode, var1437=$r13, var2619=com.microsoft.schemas.vml.CTFill, var2415=$r14, var117=com.microsoft.schemas.vml.CTShadow, var379=r15, var1592=org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum, var2353=org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse, var1398=$r16, var2554="black", var1507=$r17, var617=com.microsoft.schemas.vml.CTPath, var3784=$r19, var723=com.microsoft.schemas.office.office.STConnectType$Enum, var2766=com.microsoft.schemas.office.office.STConnectType, var1717=$r18, var1565=com.microsoft.schemas.vml.CTTextbox, var968=$r20, var2873="mso-direction-alt:auto", var3058=com.microsoft.schemas.office.excel.CTClientData, var146=r21, var2005=com.microsoft.schemas.office.excel.STObjectType$Enum, var3286=com.microsoft.schemas.office.excel.STObjectType, var592=$r22, var364=org.apache.xmlbeans.XmlString, var2081=$r23, var1790="1, 15, 0, 2, 3, 15, 3, 16", var2326=org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalseBlank, var2740=$r24, var1789="False", var383=org.apache.xmlbeans.XmlInteger, var3449=$r26, var2531=java.math.BigInteger, var3981=$r25, var1721=$r28, var2233=$r27, var533=org.apache.poi.schemas.vmldrawing.XmlDocument, var2952=$r29, var1223=org.apache.poi.schemas.vmldrawing.CTXML, var1405=$r30, var1749=org.apache.xmlbeans.XmlCursor, var149=r31, var3269=java.lang.Throwable, var1336=r42, var2370=$r34}
; {org.apache.poi.xssf.usermodel.XSSFVMLDrawing=var405, r4=var3121, org.apache.xmlbeans.impl.schema.DocumentFactory=var2293, com.microsoft.schemas.vml.CTGroup=var1632, $r0=var826, java.lang.Object=var2021, $r1=var2054, r2=var3871, com.microsoft.schemas.vml.CTShape=var2354, r41=var3148, $r3=var1589, $r5=var3583, $i0=var3287, $i1=var3678, $r6=var1474, $r7=var441, $r8=var2117, $r10=var1587, $r9=var637, $r11=var2668, $r12=var1338, "position:absolute; visibility:hidden"=var926, "#ffffe1"=var1826, com.microsoft.schemas.office.office.STInsetMode$Enum=var2960, com.microsoft.schemas.office.office.STInsetMode=var2460, $r13=var1437, com.microsoft.schemas.vml.CTFill=var2619, $r14=var2415, com.microsoft.schemas.vml.CTShadow=var117, r15=var379, org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum=var1592, org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse=var2353, $r16=var1398, "black"=var2554, $r17=var1507, com.microsoft.schemas.vml.CTPath=var617, $r19=var3784, com.microsoft.schemas.office.office.STConnectType$Enum=var723, com.microsoft.schemas.office.office.STConnectType=var2766, $r18=var1717, com.microsoft.schemas.vml.CTTextbox=var1565, $r20=var968, "mso-direction-alt:auto"=var2873, com.microsoft.schemas.office.excel.CTClientData=var3058, r21=var146, com.microsoft.schemas.office.excel.STObjectType$Enum=var2005, com.microsoft.schemas.office.excel.STObjectType=var3286, $r22=var592, org.apache.xmlbeans.XmlString=var364, $r23=var2081, "1, 15, 0, 2, 3, 15, 3, 16"=var1790, org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalseBlank=var2326, $r24=var2740, "False"=var1789, org.apache.xmlbeans.XmlInteger=var383, $r26=var3449, java.math.BigInteger=var2531, $r25=var3981, $r28=var1721, $r27=var2233, org.apache.poi.schemas.vmldrawing.XmlDocument=var533, $r29=var2952, org.apache.poi.schemas.vmldrawing.CTXML=var1223, $r30=var1405, org.apache.xmlbeans.XmlCursor=var1749, r31=var149, java.lang.Throwable=var3269, r42=var1336, $r34=var2370}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r4 := @this: org.apache.poi.xssf.usermodel.XSSFVMLDrawing;	$r0 = <com.microsoft.schemas.vml.CTGroup: org.apache.xmlbeans.impl.schema.DocumentFactory Factory>;	$r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>();	r2 = (com.microsoft.schemas.vml.CTGroup) $r1;	r41 = interfaceinvoke r2.<com.microsoft.schemas.vml.CTGroup: com.microsoft.schemas.vml.CTShape addNewShape()>();	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_x0000_s");	$i0 = r4.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: int _shapeId>;	$i1 = $i0 + 1;	r4.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: int _shapeId> = $i1;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: void setId(java.lang.String)>($r7);	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r9 = r4.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: java.lang.String _shapeTypeId>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: void setType(java.lang.String)>($r12);	interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: void setStyle(java.lang.String)>("position:absolute; visibility:hidden");	interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: void setFillcolor(java.lang.String)>("#ffffe1");	$r13 = <com.microsoft.schemas.office.office.STInsetMode: com.microsoft.schemas.office.office.STInsetMode$Enum AUTO>;	interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: void setInsetmode(com.microsoft.schemas.office.office.STInsetMode$Enum)>($r13);	$r14 = interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: com.microsoft.schemas.vml.CTFill addNewFill()>();	interfaceinvoke $r14.<com.microsoft.schemas.vml.CTFill: void setColor(java.lang.String)>("#ffffe1");	r15 = interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: com.microsoft.schemas.vml.CTShadow addNewShadow()>();	$r16 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum T>;	interfaceinvoke r15.<com.microsoft.schemas.vml.CTShadow: void setOn(org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum)>($r16);	interfaceinvoke r15.<com.microsoft.schemas.vml.CTShadow: void setColor(java.lang.String)>("black");	$r17 = <org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum T>;	interfaceinvoke r15.<com.microsoft.schemas.vml.CTShadow: void setObscured(org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse$Enum)>($r17);	$r19 = interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: com.microsoft.schemas.vml.CTPath addNewPath()>();	$r18 = <com.microsoft.schemas.office.office.STConnectType: com.microsoft.schemas.office.office.STConnectType$Enum NONE>;	interfaceinvoke $r19.<com.microsoft.schemas.vml.CTPath: void setConnecttype(com.microsoft.schemas.office.office.STConnectType$Enum)>($r18);	$r20 = interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: com.microsoft.schemas.vml.CTTextbox addNewTextbox()>();	interfaceinvoke $r20.<com.microsoft.schemas.vml.CTTextbox: void setStyle(java.lang.String)>("mso-direction-alt:auto");	r21 = interfaceinvoke r41.<com.microsoft.schemas.vml.CTShape: com.microsoft.schemas.office.excel.CTClientData addNewClientData()>();	$r22 = <com.microsoft.schemas.office.excel.STObjectType: com.microsoft.schemas.office.excel.STObjectType$Enum NOTE>;	interfaceinvoke r21.<com.microsoft.schemas.office.excel.CTClientData: void setObjectType(com.microsoft.schemas.office.excel.STObjectType$Enum)>($r22);	interfaceinvoke r21.<com.microsoft.schemas.office.excel.CTClientData: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalseBlank addNewMoveWithCells()>();	interfaceinvoke r21.<com.microsoft.schemas.office.excel.CTClientData: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalseBlank addNewSizeWithCells()>();	$r23 = interfaceinvoke r21.<com.microsoft.schemas.office.excel.CTClientData: org.apache.xmlbeans.XmlString addNewAnchor()>();	interfaceinvoke $r23.<org.apache.xmlbeans.XmlString: void setStringValue(java.lang.String)>("1, 15, 0, 2, 3, 15, 3, 16");	$r24 = interfaceinvoke r21.<com.microsoft.schemas.office.excel.CTClientData: org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalseBlank addNewAutoFill()>();	interfaceinvoke $r24.<org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalseBlank: void setStringValue(java.lang.String)>("False");	$r26 = interfaceinvoke r21.<com.microsoft.schemas.office.excel.CTClientData: org.apache.xmlbeans.XmlInteger addNewRow()>();	$r25 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(0L);	interfaceinvoke $r26.<org.apache.xmlbeans.XmlInteger: void setBigIntegerValue(java.math.BigInteger)>($r25);	$r28 = interfaceinvoke r21.<com.microsoft.schemas.office.excel.CTClientData: org.apache.xmlbeans.XmlInteger addNewColumn()>();	$r27 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(0L);	interfaceinvoke $r28.<org.apache.xmlbeans.XmlInteger: void setBigIntegerValue(java.math.BigInteger)>($r27);	$r29 = r4.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: org.apache.poi.schemas.vmldrawing.XmlDocument root>;	$r30 = interfaceinvoke $r29.<org.apache.poi.schemas.vmldrawing.XmlDocument: org.apache.poi.schemas.vmldrawing.CTXML getXml()>();	r31 = interfaceinvoke $r30.<org.apache.poi.schemas.vmldrawing.CTXML: org.apache.xmlbeans.XmlCursor newCursor()>();	r42 = null;	$r34 := @caughtexception;	if r31 == null goto throw $r34;	throw $r34
;block_num 4