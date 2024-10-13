(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2276 0)
(declare-sort var906 0)
(declare-sort var3247 0)
(declare-sort var1656 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCellType/2130661539 (var2276) var3247)
(declare-fun ordinal/366243679 (var3247) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1656) String)
(declare-fun cast-from-var3247-to-var1656 (var3247) var1656)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2276 var2276)
(declare-const var906-$SwitchMap$org$apache$poi$ss$usermodel$CellType (Array Int Int))
(declare-const var1290 var2276) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell 
(assert (not (= var1290 null-var2276)))
(define-const var983 (Array Int Int) var906-$SwitchMap$org$apache$poi$ss$usermodel$CellType) ; Statement: $r1 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType> 
(assert true)
(define-const var3256 var3247 (getCellType/2130661539 var1290)) ; Statement: $r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>() 
(assert true)
(define-const var459 Int (ordinal/366243679 var3256)) ; Statement: $i0 = virtualinvoke $r2.<org.apache.poi.ss.usermodel.CellType: int ordinal()>() 
(define-const var878 Int (select var983 var459)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "";     case 2: goto $z1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: boolean getBooleanCellValue()>();     case 3: goto $r12 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: java.lang.String getCellFormula()>();     case 4: goto $r21 = (org.apache.poi.ss.usermodel.Cell) r0;     case 5: goto $r4 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.xssf.usermodel.XSSFRichTextString getRichStringCellValue()>();     case 6: goto $b2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: byte getErrorCellValue()>();     default: goto $r20 = new java.lang.StringBuilder; } 
(assert (and (not (= var878 6)) (and (not (= var878 5)) (and (not (= var878 4)) (and (not (= var878 3)) (and (not (= var878 2)) (and (not (= var878 1)) true))))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var3592 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3592)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3592!1 String)
(assert (= var3592!1 ""))
(assert true)
(define-const var2349 String (append/672562846 var3592!1 "Unknown Cell Type: ")) ; Statement: $r15 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown Cell Type: ") 
(declare-const var3592!2 String)
(assert (= var3592!2 (str.++ var3592!1 "Unknown Cell Type: ")))
(assert true)
(define-const var1189 var3247 (getCellType/2130661539 var1290)) ; Statement: $r14 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>() 
(assert true)
(define-const var1843 String (append/-1031950772 var2349 (cast-from-var3247-to-var1656 var1189))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14) 
(declare-const var2349!1 String)
(assert (str.prefixof var2349 var2349!1))
(assert true)
(define-const var3876 String (toString/-2075883882 var1843)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {getCellType/2130661539=([org.apache.poi.xssf.usermodel.XSSFCell], org.apache.poi.ss.usermodel.CellType), ordinal/366243679=([org.apache.poi.ss.usermodel.CellType], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3247-to-var1656=([org.apache.poi.ss.usermodel.CellType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2276=org.apache.poi.xssf.usermodel.XSSFCell, var1290=r0, var906=org.apache.poi.xssf.usermodel.XSSFCell$1, var983=$r1, var3247=org.apache.poi.ss.usermodel.CellType, var3256=$r2, var459=$i0, var878=$i1, var3592=$r20, var2349=$r15, var1189=$r14, var1656=java.lang.Object, var1843=$r16, var3876=$r17}
; {org.apache.poi.xssf.usermodel.XSSFCell=var2276, r0=var1290, org.apache.poi.xssf.usermodel.XSSFCell$1=var906, $r1=var983, org.apache.poi.ss.usermodel.CellType=var3247, $r2=var3256, $i0=var459, $i1=var878, $r20=var3592, $r15=var2349, $r14=var1189, java.lang.Object=var1656, $r16=var1843, $r17=var3876}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell;	$r1 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType>;	$r2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>();	$i0 = virtualinvoke $r2.<org.apache.poi.ss.usermodel.CellType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "";     case 2: goto $z1 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: boolean getBooleanCellValue()>();     case 3: goto $r12 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: java.lang.String getCellFormula()>();     case 4: goto $r21 = (org.apache.poi.ss.usermodel.Cell) r0;     case 5: goto $r4 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.xssf.usermodel.XSSFRichTextString getRichStringCellValue()>();     case 6: goto $b2 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: byte getErrorCellValue()>();     default: goto $r20 = new java.lang.StringBuilder; };	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown Cell Type: ");	$r14 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 2