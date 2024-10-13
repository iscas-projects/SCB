(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var35 0)
(declare-sort var1397 0)
(declare-sort var921 0)
(declare-sort var890 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _cell/-35988186 (var35) var1397)
(declare-fun var1397_setT/123567328 (var1397 var921) void)
(declare-fun String_valueOf/-987357574 (Float64) String)
(declare-fun var1397_setV/1315798662 (var1397 String) void)
(declare-const null-var35 var35)
(declare-const null-Float64 Float64)
(declare-const var890-N var921)
(declare-const var2466 var35) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell 
(assert (not (= var2466 null-var35)))
(declare-const var762 Float64) ; Statement: d0 := @parameter0: double 
(assert (not (= var762 null-Float64)))
(define-const var2570 var1397 (_cell/-35988186 var2466)) ; Statement: $r2 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell> 
(define-const var3190 var921 var890-N) ; Statement: $r1 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType: org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType$Enum N> 
;(assert (var1397_setT/123567328 var2570 var3190)) ; Statement: interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell: void setT(org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType$Enum)>($r1) 

(declare-const var2570!1 var1397)
(declare-const var3190!1 var921)
(define-const var3730 var1397 (_cell/-35988186 var2466)) ; Statement: $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell> 
(define-const var3030 String (String_valueOf/-987357574 var762)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0) 
;(assert (var1397_setV/1315798662 var3730 var3030)) ; Statement: interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell: void setV(java.lang.String)>($r4) 

(declare-const var3730!1 var1397)
(declare-const var3030!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {_cell/-35988186=([org.apache.poi.xssf.usermodel.XSSFCell], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell), var1397_setT/123567328=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell, org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType$Enum], void), String_valueOf/-987357574=([double], java.lang.String), var1397_setV/1315798662=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell, java.lang.String], void)}
; {var35=org.apache.poi.xssf.usermodel.XSSFCell, var2466=r0, var762=d0, var1397=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell, var2570=$r2, var921=org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType$Enum, var890=org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType, var3190=$r1, var3730=$r3, var3030=$r4}
; {org.apache.poi.xssf.usermodel.XSSFCell=var35, r0=var2466, d0=var762, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell=var1397, $r2=var2570, org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType$Enum=var921, org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType=var890, $r1=var3190, $r3=var3730, $r4=var3030}
;seq <java.lang.String: java.lang.String valueOf(double)>
;cnt {"<java.lang.String: java.lang.String valueOf(double)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell;	d0 := @parameter0: double;	$r2 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;	$r1 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType: org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType$Enum N>;	interfaceinvoke $r2.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell: void setT(org.openxmlformats.schemas.spreadsheetml.x2006.main.STCellType$Enum)>($r1);	$r3 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(double)>(d0);	interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell: void setV(java.lang.String)>($r4);	return
;block_num 1