(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2160 0)
(declare-sort var60 0)
(declare-sort var35 0)
(declare-sort var3948 0)
(declare-sort var2457 0)
(declare-sort var2081 0)
(declare-sort var598 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCellType/2130661539 (var2160) var60)
(declare-fun ordinal/366243679 (var60) Int)
(declare-fun _cell/-35988186 (var2160) var3948)
(declare-fun var3948_getV/-1548608474 (var3948) String)
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-fun _sharedStringSource/-35988186 (var2160) var2457)
(declare-fun getItemAt/-2103531468 (var2457 Int) var2081)
(declare-fun var2081_getString/468471729 (var2081) String)
(declare-fun var598_parseBoolean/746105335 (String) Bool)
(declare-const null-var2160 var2160)
(declare-const var60-FORMULA var60)
(declare-const var35-$SwitchMap$org$apache$poi$ss$usermodel$CellType (Array Int Int))
(declare-const var3848 var2160) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell 
(assert (not (= var3848 null-var2160)))
(assert true)
(define-const var966 var60 (getCellType/2130661539 var3848)) ; Statement: r19 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>() 
(define-const var2794 var60 var60-FORMULA) ; Statement: $r1 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType FORMULA> 
 ; Statement: if r19 != $r1 goto $r2 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType> 
(assert (not (= var966 var2794))) ; Cond: r19 != $r1 
(define-const var2513 (Array Int Int) var35-$SwitchMap$org$apache$poi$ss$usermodel$CellType) ; Statement: $r2 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType> 
(assert true)
(define-const var137 Int (ordinal/366243679 var966)) ; Statement: $i0 = virtualinvoke r19.<org.apache.poi.ss.usermodel.CellType: int ordinal()>() 
(define-const var1871 Int (select var2513 var137)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return 0;     case 2: goto $r12 = "1";     case 3: goto $r13 = new java.lang.IllegalStateException;     case 4: goto $r8 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 5: goto $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 6: goto return 0;     default: goto $r13 = new java.lang.IllegalStateException; } 
(assert (and (= var1871 5) (and (not (= var1871 4)) (and (not (= var1871 3)) (and (not (= var1871 2)) (and (not (= var1871 1)) true)))))) ; Intersect: Cond: $i1 == 5  and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional     
(define-const var3452 var3948 (_cell/-35988186 var3848)) ; Statement: $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell> 
(define-const var974 String (var3948_getV/-1548608474 var3452)) ; Statement: $r4 = interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell: java.lang.String getV()>() 
(define-const var1585 Int (Int_parseInt/1370970945 var974)) ; Statement: i2 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4) 
(define-const var451 var2457 (_sharedStringSource/-35988186 var3848)) ; Statement: $r5 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.xssf.model.SharedStringsTable _sharedStringSource> 
(assert true)
(define-const var3147 var2081 (getItemAt/-2103531468 var451 var1585)) ; Statement: r6 = virtualinvoke $r5.<org.apache.poi.xssf.model.SharedStringsTable: org.apache.poi.ss.usermodel.RichTextString getItemAt(int)>(i2) 
(define-const var2091 String (var2081_getString/468471729 var3147)) ; Statement: r7 = interfaceinvoke r6.<org.apache.poi.ss.usermodel.RichTextString: java.lang.String getString()>() 
(define-const var2645 Bool (var598_parseBoolean/746105335 var2091)) ; Statement: $z0 = staticinvoke <java.lang.Boolean: boolean parseBoolean(java.lang.String)>(r7) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getCellType/2130661539=([org.apache.poi.xssf.usermodel.XSSFCell], org.apache.poi.ss.usermodel.CellType), ordinal/366243679=([org.apache.poi.ss.usermodel.CellType], int), _cell/-35988186=([org.apache.poi.xssf.usermodel.XSSFCell], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell), var3948_getV/-1548608474=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell], java.lang.String), Int_parseInt/1370970945=([java.lang.String], int), _sharedStringSource/-35988186=([org.apache.poi.xssf.usermodel.XSSFCell], org.apache.poi.xssf.model.SharedStringsTable), getItemAt/-2103531468=([org.apache.poi.xssf.model.SharedStringsTable, int], org.apache.poi.ss.usermodel.RichTextString), var2081_getString/468471729=([org.apache.poi.ss.usermodel.RichTextString], java.lang.String), var598_parseBoolean/746105335=([java.lang.String], boolean)}
; {var2160=org.apache.poi.xssf.usermodel.XSSFCell, var3848=r0, var60=org.apache.poi.ss.usermodel.CellType, var966=r19, var2794=$r1, var35=org.apache.poi.xssf.usermodel.XSSFCell$1, var2513=$r2, var137=$i0, var1871=$i1, var3948=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell, var3452=$r3, var974=$r4, var1585=i2, var2457=org.apache.poi.xssf.model.SharedStringsTable, var451=$r5, var2081=org.apache.poi.ss.usermodel.RichTextString, var3147=r6, var2091=r7, var598=java.lang.Boolean, var2645=$z0}
; {org.apache.poi.xssf.usermodel.XSSFCell=var2160, r0=var3848, org.apache.poi.ss.usermodel.CellType=var60, r19=var966, $r1=var2794, org.apache.poi.xssf.usermodel.XSSFCell$1=var35, $r2=var2513, $i0=var137, $i1=var1871, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell=var3948, $r3=var3452, $r4=var974, i2=var1585, org.apache.poi.xssf.model.SharedStringsTable=var2457, $r5=var451, org.apache.poi.ss.usermodel.RichTextString=var2081, r6=var3147, r7=var2091, java.lang.Boolean=var598, $z0=var2645}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell;	r19 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>();	$r1 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType FORMULA>;	if r19 != $r1 goto $r2 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType>;	$r2 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType>;	$i0 = virtualinvoke r19.<org.apache.poi.ss.usermodel.CellType: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto return 0;     case 2: goto $r12 = "1";     case 3: goto $r13 = new java.lang.IllegalStateException;     case 4: goto $r8 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 5: goto $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 6: goto return 0;     default: goto $r13 = new java.lang.IllegalStateException; };	$r3 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;	$r4 = interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell: java.lang.String getV()>();	i2 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	$r5 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.xssf.model.SharedStringsTable _sharedStringSource>;	r6 = virtualinvoke $r5.<org.apache.poi.xssf.model.SharedStringsTable: org.apache.poi.ss.usermodel.RichTextString getItemAt(int)>(i2);	r7 = interfaceinvoke r6.<org.apache.poi.ss.usermodel.RichTextString: java.lang.String getString()>();	$z0 = staticinvoke <java.lang.Boolean: boolean parseBoolean(java.lang.String)>(r7);	return $z0
;block_num 3