(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2857 0)
(declare-sort var99 0)
(declare-sort var3211 0)
(declare-sort var2339 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCellType/-1052272528 (var2857) var3211)
(declare-fun ordinal/366243679 (var3211) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2339) String)
(declare-fun cast-from-var3211-to-var2339 (var3211) var2339)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2857 var2857)
(declare-const var99-$SwitchMap$org$apache$poi$ss$usermodel$CellType (Array Int Int))
(declare-const var2030 var2857) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.SXSSFCell 
(assert (not (= var2030 null-var2857)))
(define-const var272 (Array Int Int) var99-$SwitchMap$org$apache$poi$ss$usermodel$CellType) ; Statement: $r1 = <org.apache.poi.xssf.streaming.SXSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType> 
(assert true)
(define-const var2794 var3211 (getCellType/-1052272528 var2030)) ; Statement: $r2 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>() 
(assert true)
(define-const var2969 Int (ordinal/366243679 var2794)) ; Statement: $i0 = virtualinvoke $r2.<org.apache.poi.ss.usermodel.CellType: int ordinal()>() 
(define-const var109 Int (select var272 var2969)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "";     case 2: goto $r25 = (org.apache.poi.ss.usermodel.Cell) r0;     case 3: goto $r5 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: org.apache.poi.ss.usermodel.RichTextString getRichStringCellValue()>();     case 4: goto $z0 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: boolean getBooleanCellValue()>();     case 5: goto $b2 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: byte getErrorCellValue()>();     case 6: goto $r3 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: java.lang.String getCellFormula()>();     default: goto $r24 = new java.lang.StringBuilder; } 
(assert (and (not (= var109 6)) (and (not (= var109 5)) (and (not (= var109 4)) (and (not (= var109 3)) (and (not (= var109 2)) (and (not (= var109 1)) true))))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var2069 String String-init) ; Statement: $r24 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2069)) ; Statement: specialinvoke $r24.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2069!1 String)
(assert (= var2069!1 ""))
(assert true)
(define-const var722 String (append/672562846 var2069!1 "Unknown Cell Type: ")) ; Statement: $r18 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown Cell Type: ") 
(declare-const var2069!2 String)
(assert (= var2069!2 (str.++ var2069!1 "Unknown Cell Type: ")))
(assert true)
(define-const var2678 var3211 (getCellType/-1052272528 var2030)) ; Statement: $r17 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>() 
(assert true)
(define-const var1560 String (append/-1031950772 var722 (cast-from-var3211-to-var2339 var2678))) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17) 
(declare-const var722!1 String)
(assert (str.prefixof var722 var722!1))
(assert true)
(define-const var112 String (toString/-2075883882 var1560)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {getCellType/-1052272528=([org.apache.poi.xssf.streaming.SXSSFCell], org.apache.poi.ss.usermodel.CellType), ordinal/366243679=([org.apache.poi.ss.usermodel.CellType], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3211-to-var2339=([org.apache.poi.ss.usermodel.CellType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2857=org.apache.poi.xssf.streaming.SXSSFCell, var2030=r0, var99=org.apache.poi.xssf.streaming.SXSSFCell$1, var272=$r1, var3211=org.apache.poi.ss.usermodel.CellType, var2794=$r2, var2969=$i0, var109=$i1, var2069=$r24, var722=$r18, var2678=$r17, var2339=java.lang.Object, var1560=$r19, var112=$r20}
; {org.apache.poi.xssf.streaming.SXSSFCell=var2857, r0=var2030, org.apache.poi.xssf.streaming.SXSSFCell$1=var99, $r1=var272, org.apache.poi.ss.usermodel.CellType=var3211, $r2=var2794, $i0=var2969, $i1=var109, $r24=var2069, $r18=var722, $r17=var2678, java.lang.Object=var2339, $r19=var1560, $r20=var112}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.SXSSFCell;	$r1 = <org.apache.poi.xssf.streaming.SXSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType>;	$r2 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>();	$i0 = virtualinvoke $r2.<org.apache.poi.ss.usermodel.CellType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "";     case 2: goto $r25 = (org.apache.poi.ss.usermodel.Cell) r0;     case 3: goto $r5 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: org.apache.poi.ss.usermodel.RichTextString getRichStringCellValue()>();     case 4: goto $z0 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: boolean getBooleanCellValue()>();     case 5: goto $b2 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: byte getErrorCellValue()>();     case 6: goto $r3 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: java.lang.String getCellFormula()>();     default: goto $r24 = new java.lang.StringBuilder; };	$r24 = new java.lang.StringBuilder;	specialinvoke $r24.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown Cell Type: ");	$r17 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	return $r20
;block_num 2