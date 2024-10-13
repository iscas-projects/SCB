(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1770 0)
(declare-sort var1114 0)
(declare-sort var294 0)
(declare-sort var2574 0)
(declare-sort var408 0)
(declare-sort var2998 0)
(declare-sort var3683 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNumCellStyles/-1337965875 (var1770) Int)
(declare-fun styleXfs/-259146367 (var1770) var1114)
(declare-fun var1114_size/-959786421 (var1114) Int)
(declare-fun newInstance/532723879 (var294) var408)
(declare-fun cast-from-var408-to-var2574 (var408) var2574)
(declare-fun var2574_setNumFmtId/-1669556111 (var2574 Int) void)
(declare-fun var2574_setFontId/1271210697 (var2574 Int) void)
(declare-fun var2574_setFillId/1367757845 (var2574 Int) void)
(declare-fun var2574_setBorderId/447278348 (var2574 Int) void)
(declare-fun var2574_setXfId/423795082 (var2574 Int) void)
(declare-fun putCellXf/1451497416 (var1770 var2574) Int)
(declare-fun var2998-init () var2998)
(declare-fun theme/-259146367 (var1770) var3683)
(declare-fun <init>/-789625974 (var2998 Int Int var1770 var3683) void)
(declare-const null-var1770 var1770)
(declare-const var1770-MAXIMUM_STYLE_ID Int)
(declare-const var2574-Factory var294)
(declare-const var3265 var1770) ; Statement: r0 := @this: org.apache.poi.xssf.model.StylesTable 
(assert (not (= var3265 null-var1770)))
(assert true)
(define-const var194 Int (getNumCellStyles/-1337965875 var3265)) ; Statement: $i1 = virtualinvoke r0.<org.apache.poi.xssf.model.StylesTable: int getNumCellStyles()>() 
(define-const var2103 Int var1770-MAXIMUM_STYLE_ID) ; Statement: $i0 = <org.apache.poi.xssf.model.StylesTable: int MAXIMUM_STYLE_ID> 
 ; Statement: if $i1 <= $i0 goto $r1 = r0.<org.apache.poi.xssf.model.StylesTable: java.util.List styleXfs> 
(assert (<= var194 var2103)) ; Cond: $i1 <= $i0 
(define-const var1032 var1114 (styleXfs/-259146367 var3265)) ; Statement: $r1 = r0.<org.apache.poi.xssf.model.StylesTable: java.util.List styleXfs> 
(define-const var669 Int (var1114_size/-959786421 var1032)) ; Statement: i2 = interfaceinvoke $r1.<java.util.List: int size()>() 
(define-const var3384 var294 var2574-Factory) ; Statement: $r2 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf: org.apache.xmlbeans.impl.schema.DocumentFactory Factory> 
(assert true)
(define-const var814 var408 (newInstance/532723879 var3384)) ; Statement: $r3 = virtualinvoke $r2.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>() 
(define-const var3020 var2574 (cast-from-var408-to-var2574 var814)) ; Statement: r4 = (org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf) $r3 
;(assert (var2574_setNumFmtId/-1669556111 var3020 0)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf: void setNumFmtId(long)>(0L) 

(declare-const var3020!1 var2574)
(declare-const var2102 Int)
;(assert (var2574_setFontId/1271210697 var3020!1 0)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf: void setFontId(long)>(0L) 

(declare-const var3020!2 var2574)
(declare-const var2102!1 Int)
;(assert (var2574_setFillId/1367757845 var3020!2 0)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf: void setFillId(long)>(0L) 

(declare-const var3020!3 var2574)
(declare-const var2102!2 Int)
;(assert (var2574_setBorderId/447278348 var3020!3 0)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf: void setBorderId(long)>(0L) 

(declare-const var3020!4 var2574)
(declare-const var2102!3 Int)
;(assert (var2574_setXfId/423795082 var3020!4 0)) ; Statement: interfaceinvoke r4.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf: void setXfId(long)>(0L) 

(declare-const var3020!5 var2574)
(declare-const var2102!4 Int)
(assert true)
(define-const var2209 Int (putCellXf/1451497416 var3265 var3020!5)) ; Statement: i3 = virtualinvoke r0.<org.apache.poi.xssf.model.StylesTable: int putCellXf(org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf)>(r4) 
(define-const var3390 var2998 var2998-init) ; Statement: $r5 = new org.apache.poi.xssf.usermodel.XSSFCellStyle 
(define-const var2184 Int (- var2209 1)) ; Statement: $i5 = i3 - 1 
(define-const var3417 Int (- var669 1)) ; Statement: $i4 = i2 - 1 
(define-const var1030 var3683 (theme/-259146367 var3265)) ; Statement: $r6 = r0.<org.apache.poi.xssf.model.StylesTable: org.apache.poi.xssf.model.ThemesTable theme> 
(assert true)
;(assert (<init>/-789625974 var3390 var2184 var3417 var3265 var1030)) ; Statement: specialinvoke $r5.<org.apache.poi.xssf.usermodel.XSSFCellStyle: void <init>(int,int,org.apache.poi.xssf.model.StylesTable,org.apache.poi.xssf.model.ThemesTable)>($i5, $i4, r0, $r6) 

(declare-const var3390!1 var2998)
(declare-const var2184!1 Int)
(declare-const var3417!1 Int)
(declare-const var3265!1 var1770)
(declare-const var1030!1 var3683)
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getNumCellStyles/-1337965875=([org.apache.poi.xssf.model.StylesTable], int), styleXfs/-259146367=([org.apache.poi.xssf.model.StylesTable], java.util.List), var1114_size/-959786421=([java.util.List], int), newInstance/532723879=([org.apache.xmlbeans.impl.schema.DocumentFactory], java.lang.Object), cast-from-var408-to-var2574=([java.lang.Object], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf), var2574_setNumFmtId/-1669556111=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf, long], void), var2574_setFontId/1271210697=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf, long], void), var2574_setFillId/1367757845=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf, long], void), var2574_setBorderId/447278348=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf, long], void), var2574_setXfId/423795082=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf, long], void), putCellXf/1451497416=([org.apache.poi.xssf.model.StylesTable, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf], int), var2998-init=([], org.apache.poi.xssf.usermodel.XSSFCellStyle), theme/-259146367=([org.apache.poi.xssf.model.StylesTable], org.apache.poi.xssf.model.ThemesTable), <init>/-789625974=([org.apache.poi.xssf.usermodel.XSSFCellStyle, int, int, org.apache.poi.xssf.model.StylesTable, org.apache.poi.xssf.model.ThemesTable], void)}
; {var1770=org.apache.poi.xssf.model.StylesTable, var3265=r0, var194=$i1, var2103=$i0, var1114=java.util.List, var1032=$r1, var669=i2, var294=org.apache.xmlbeans.impl.schema.DocumentFactory, var2574=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf, var3384=$r2, var408=java.lang.Object, var814=$r3, var3020=r4, var2102=0L, var2209=i3, var2998=org.apache.poi.xssf.usermodel.XSSFCellStyle, var3390=$r5, var2184=$i5, var3417=$i4, var3683=org.apache.poi.xssf.model.ThemesTable, var1030=$r6}
; {org.apache.poi.xssf.model.StylesTable=var1770, r0=var3265, $i1=var194, $i0=var2103, java.util.List=var1114, $r1=var1032, i2=var669, org.apache.xmlbeans.impl.schema.DocumentFactory=var294, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf=var2574, $r2=var3384, java.lang.Object=var408, $r3=var814, r4=var3020, 0L=var2102, i3=var2209, org.apache.poi.xssf.usermodel.XSSFCellStyle=var2998, $r5=var3390, $i5=var2184, $i4=var3417, org.apache.poi.xssf.model.ThemesTable=var3683, $r6=var1030}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.xssf.model.StylesTable;	$i1 = virtualinvoke r0.<org.apache.poi.xssf.model.StylesTable: int getNumCellStyles()>();	$i0 = <org.apache.poi.xssf.model.StylesTable: int MAXIMUM_STYLE_ID>;	if $i1 <= $i0 goto $r1 = r0.<org.apache.poi.xssf.model.StylesTable: java.util.List styleXfs>;	$r1 = r0.<org.apache.poi.xssf.model.StylesTable: java.util.List styleXfs>;	i2 = interfaceinvoke $r1.<java.util.List: int size()>();	$r2 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf: org.apache.xmlbeans.impl.schema.DocumentFactory Factory>;	$r3 = virtualinvoke $r2.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>();	r4 = (org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf) $r3;	interfaceinvoke r4.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf: void setNumFmtId(long)>(0L);	interfaceinvoke r4.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf: void setFontId(long)>(0L);	interfaceinvoke r4.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf: void setFillId(long)>(0L);	interfaceinvoke r4.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf: void setBorderId(long)>(0L);	interfaceinvoke r4.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf: void setXfId(long)>(0L);	i3 = virtualinvoke r0.<org.apache.poi.xssf.model.StylesTable: int putCellXf(org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf)>(r4);	$r5 = new org.apache.poi.xssf.usermodel.XSSFCellStyle;	$i5 = i3 - 1;	$i4 = i2 - 1;	$r6 = r0.<org.apache.poi.xssf.model.StylesTable: org.apache.poi.xssf.model.ThemesTable theme>;	specialinvoke $r5.<org.apache.poi.xssf.usermodel.XSSFCellStyle: void <init>(int,int,org.apache.poi.xssf.model.StylesTable,org.apache.poi.xssf.model.ThemesTable)>($i5, $i4, r0, $r6);	return $r5
;block_num 2