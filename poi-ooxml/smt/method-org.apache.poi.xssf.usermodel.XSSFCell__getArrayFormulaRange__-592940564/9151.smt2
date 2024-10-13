(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1017 0)
(declare-sort var3591 0)
(declare-sort var1694 0)
(declare-sort var3577 0)
(declare-sort var172 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSheet/1494324359 (var1017) var3591)
(declare-fun getFirstCellInArrayFormula/-558682336 (var3591 var1017) var1017)
(declare-fun _cell/-35988186 (var1017) var1694)
(declare-fun var1694_getF/-2109420691 (var1694) var3577)
(declare-fun var3577_getRef/2024865907 (var3577) String)
(declare-fun var172_valueOf/234543428 (String) var172)
(declare-const null-var1017 var1017)
(declare-const var2170 var1017) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell 
(assert (not (= var2170 null-var1017)))
(assert true)
(define-const var3665 var3591 (getSheet/1494324359 var2170)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.xssf.usermodel.XSSFSheet getSheet()>() 
(assert true)
(define-const var1312 var1017 (getFirstCellInArrayFormula/-558682336 var3665 var2170)) ; Statement: r2 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFCell getFirstCellInArrayFormula(org.apache.poi.xssf.usermodel.XSSFCell)>(r0) 
 ; Statement: if r2 != null goto $r3 = r2.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell> 
(assert (not (= var1312 null-var1017))) ; Cond: r2 != null 
(define-const var1763 var1694 (_cell/-35988186 var1312)) ; Statement: $r3 = r2.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell> 
(define-const var3998 var3577 (var1694_getF/-2109420691 var1763)) ; Statement: $r4 = interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula getF()>() 
(define-const var3956 String (var3577_getRef/2024865907 var3998)) ; Statement: r5 = interfaceinvoke $r4.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula: java.lang.String getRef()>() 
(define-const var903 var172 (var172_valueOf/234543428 var3956)) ; Statement: $r6 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getSheet/1494324359=([org.apache.poi.xssf.usermodel.XSSFCell], org.apache.poi.xssf.usermodel.XSSFSheet), getFirstCellInArrayFormula/-558682336=([org.apache.poi.xssf.usermodel.XSSFSheet, org.apache.poi.xssf.usermodel.XSSFCell], org.apache.poi.xssf.usermodel.XSSFCell), _cell/-35988186=([org.apache.poi.xssf.usermodel.XSSFCell], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell), var1694_getF/-2109420691=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula), var3577_getRef/2024865907=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula], java.lang.String), var172_valueOf/234543428=([java.lang.String], org.apache.poi.ss.util.CellRangeAddress)}
; {var1017=org.apache.poi.xssf.usermodel.XSSFCell, var2170=r0, var3591=org.apache.poi.xssf.usermodel.XSSFSheet, var3665=$r1, var1312=r2, var1694=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell, var1763=$r3, var3577=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula, var3998=$r4, var3956=r5, var172=org.apache.poi.ss.util.CellRangeAddress, var903=$r6}
; {org.apache.poi.xssf.usermodel.XSSFCell=var1017, r0=var2170, org.apache.poi.xssf.usermodel.XSSFSheet=var3591, $r1=var3665, r2=var1312, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell=var1694, $r3=var1763, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula=var3577, $r4=var3998, r5=var3956, org.apache.poi.ss.util.CellRangeAddress=var172, $r6=var903}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell;	$r1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.xssf.usermodel.XSSFSheet getSheet()>();	r2 = virtualinvoke $r1.<org.apache.poi.xssf.usermodel.XSSFSheet: org.apache.poi.xssf.usermodel.XSSFCell getFirstCellInArrayFormula(org.apache.poi.xssf.usermodel.XSSFCell)>(r0);	if r2 != null goto $r3 = r2.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;	$r3 = r2.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;	$r4 = interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula getF()>();	r5 = interfaceinvoke $r4.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCellFormula: java.lang.String getRef()>();	$r6 = staticinvoke <org.apache.poi.ss.util.CellRangeAddress: org.apache.poi.ss.util.CellRangeAddress valueOf(java.lang.String)>(r5);	return $r6
;block_num 2