(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3088 0)
(declare-sort var2328 0)
(declare-sort var3926 0)
(declare-sort var2113 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCellType/2130661539 (var3088) var2328)
(declare-fun ordinal/366243679 (var2328) Int)
(declare-fun _cell/-35988186 (var3088) var2113)
(declare-fun var2113_getV/-1548608474 (var2113) String)
(declare-const null-var3088 var3088)
(declare-const var2328-FORMULA var2328)
(declare-const var3926-$SwitchMap$org$apache$poi$ss$usermodel$CellType (Array Int Int))
(declare-const var255 var3088) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell 
(assert (not (= var255 null-var3088)))
(assert true)
(define-const var1126 var2328 (getCellType/2130661539 var255)) ; Statement: r19 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>() 
(define-const var563 var2328 var2328-FORMULA) ; Statement: $r1 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType FORMULA> 
 ; Statement: if r19 != $r1 goto $r2 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType> 
(assert (not (= var1126 var563))) ; Cond: r19 != $r1 
(define-const var3094 (Array Int Int) var3926-$SwitchMap$org$apache$poi$ss$usermodel$CellType) ; Statement: $r2 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType> 
(assert true)
(define-const var727 Int (ordinal/366243679 var1126)) ; Statement: $i0 = virtualinvoke r19.<org.apache.poi.ss.usermodel.CellType: int ordinal()>() 
(define-const var1029 Int (select var3094 var727)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return 0;     case 2: goto $r12 = "1";     case 3: goto $r13 = new java.lang.IllegalStateException;     case 4: goto $r8 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 5: goto $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 6: goto return 0;     default: goto $r13 = new java.lang.IllegalStateException; } 
(assert (and (= var1029 2) (and (not (= var1029 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var2862 String "1") ; Statement: $r12 = "1" 
(define-const var3709 var2113 (_cell/-35988186 var255)) ; Statement: $r10 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell> 
(define-const var691 String (var2113_getV/-1548608474 var3709)) ; Statement: $r11 = interfaceinvoke $r10.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell: java.lang.String getV()>() 
(assert true)
(define-const var663 Bool (= var2862 var691)) ; Statement: $z1 = virtualinvoke $r12.<java.lang.String: boolean equals(java.lang.Object)>($r11) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {getCellType/2130661539=([org.apache.poi.xssf.usermodel.XSSFCell], org.apache.poi.ss.usermodel.CellType), ordinal/366243679=([org.apache.poi.ss.usermodel.CellType], int), _cell/-35988186=([org.apache.poi.xssf.usermodel.XSSFCell], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell), var2113_getV/-1548608474=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell], java.lang.String)}
; {var3088=org.apache.poi.xssf.usermodel.XSSFCell, var255=r0, var2328=org.apache.poi.ss.usermodel.CellType, var1126=r19, var563=$r1, var3926=org.apache.poi.xssf.usermodel.XSSFCell$1, var3094=$r2, var727=$i0, var1029=$i1, var2862=$r12, var2113=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell, var3709=$r10, var691=$r11, var663=$z1}
; {org.apache.poi.xssf.usermodel.XSSFCell=var3088, r0=var255, org.apache.poi.ss.usermodel.CellType=var2328, r19=var1126, $r1=var563, org.apache.poi.xssf.usermodel.XSSFCell$1=var3926, $r2=var3094, $i0=var727, $i1=var1029, $r12=var2862, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell=var2113, $r10=var3709, $r11=var691, $z1=var663}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell;	r19 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>();	$r1 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType FORMULA>;	if r19 != $r1 goto $r2 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType>;	$r2 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType>;	$i0 = virtualinvoke r19.<org.apache.poi.ss.usermodel.CellType: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto return 0;     case 2: goto $r12 = "1";     case 3: goto $r13 = new java.lang.IllegalStateException;     case 4: goto $r8 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 5: goto $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 6: goto return 0;     default: goto $r13 = new java.lang.IllegalStateException; };	$r12 = "1";	$r10 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;	$r11 = interfaceinvoke $r10.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell: java.lang.String getV()>();	$z1 = virtualinvoke $r12.<java.lang.String: boolean equals(java.lang.Object)>($r11);	return $z1
;block_num 3