(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2147 0)
(declare-sort var1178 0)
(declare-sort var847 0)
(declare-sort var3751 0)
(declare-sort var3926 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/366243679 (var1178) Int)
(declare-fun var3751-init () var3751)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3926) String)
(declare-fun cast-from-var1178-to-var3926 (var1178) var3926)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3751 String) void)
(declare-const null-var2147 var2147)
(declare-const null-var1178 var1178)
(declare-const var847-$SwitchMap$org$apache$poi$ss$usermodel$CellType (Array Int Int))
(declare-const var825 var2147) ; Statement: r2 := @this: org.apache.poi.xssf.streaming.SXSSFCell 
(assert (not (= var825 null-var2147)))
(declare-const var171 var1178) ; Statement: r0 := @parameter0: org.apache.poi.ss.usermodel.CellType 
(assert (not (= var171 null-var1178)))
(define-const var1203 (Array Int Int) var847-$SwitchMap$org$apache$poi$ss$usermodel$CellType) ; Statement: $r1 = <org.apache.poi.xssf.streaming.SXSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType> 
(assert true)
(define-const var3028 Int (ordinal/366243679 var171)) ; Statement: $i0 = virtualinvoke r0.<org.apache.poi.ss.usermodel.CellType: int ordinal()>() 
(define-const var130 Int (select var1203 var3028)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "";     case 2: goto $d0 = virtualinvoke r2.<org.apache.poi.xssf.streaming.SXSSFCell: double getNumericCellValue()>();     case 3: goto $r12 = virtualinvoke r2.<org.apache.poi.xssf.streaming.SXSSFCell: java.lang.String getStringCellValue()>();     case 4: goto $z0 = virtualinvoke r2.<org.apache.poi.xssf.streaming.SXSSFCell: boolean getBooleanCellValue()>();     case 5: goto b2 = virtualinvoke r2.<org.apache.poi.xssf.streaming.SXSSFCell: byte getErrorCellValue()>();     case 6: goto $r3 = r2.<org.apache.poi.xssf.streaming.SXSSFCell: org.apache.poi.xssf.streaming.SXSSFCell$Value _value>;     default: goto $r14 = new java.lang.IllegalStateException; } 
(assert (and (not (= var130 6)) (and (not (= var130 5)) (and (not (= var130 4)) (and (not (= var130 3)) (and (not (= var130 2)) (and (not (= var130 1)) true))))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var261 var3751 var3751-init) ; Statement: $r14 = new java.lang.IllegalStateException 
(define-const var2359 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2359)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2359!1 String)
(assert (= var2359!1 ""))
(assert true)
(define-const var1985 String (append/672562846 var2359!1 "Unexpected cell type (")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected cell type (") 
(declare-const var2359!2 String)
(assert (= var2359!2 (str.++ var2359!1 "Unexpected cell type (")))
(assert true)
(define-const var1893 String (append/-1031950772 var1985 (cast-from-var1178-to-var3926 var171))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1985!1 String)
(assert (str.prefixof var1985 var1985!1))
(assert true)
(define-const var3022 String (append/672562846 var1893 ")")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1893!1 String)
(assert (= var1893!1 (str.++ var1893 ")")))
(assert true)
(define-const var1418 String (toString/-2075883882 var3022)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var261 var1418)) ; Statement: specialinvoke $r14.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r19) 

(declare-const var261!1 var3751)
(declare-const var1418!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/366243679=([org.apache.poi.ss.usermodel.CellType], int), var3751-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1178-to-var3926=([org.apache.poi.ss.usermodel.CellType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2147=org.apache.poi.xssf.streaming.SXSSFCell, var825=r2, var1178=org.apache.poi.ss.usermodel.CellType, var171=r0, var847=org.apache.poi.xssf.streaming.SXSSFCell$1, var1203=$r1, var3028=$i0, var130=$i1, var3751=java.lang.IllegalStateException, var261=$r14, var2359=$r15, var1985=$r16, var3926=java.lang.Object, var1893=$r17, var3022=$r18, var1418=$r19}
; {org.apache.poi.xssf.streaming.SXSSFCell=var2147, r2=var825, org.apache.poi.ss.usermodel.CellType=var1178, r0=var171, org.apache.poi.xssf.streaming.SXSSFCell$1=var847, $r1=var1203, $i0=var3028, $i1=var130, java.lang.IllegalStateException=var3751, $r14=var261, $r15=var2359, $r16=var1985, java.lang.Object=var3926, $r17=var1893, $r18=var3022, $r19=var1418}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.poi.xssf.streaming.SXSSFCell;	r0 := @parameter0: org.apache.poi.ss.usermodel.CellType;	$r1 = <org.apache.poi.xssf.streaming.SXSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType>;	$i0 = virtualinvoke r0.<org.apache.poi.ss.usermodel.CellType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "";     case 2: goto $d0 = virtualinvoke r2.<org.apache.poi.xssf.streaming.SXSSFCell: double getNumericCellValue()>();     case 3: goto $r12 = virtualinvoke r2.<org.apache.poi.xssf.streaming.SXSSFCell: java.lang.String getStringCellValue()>();     case 4: goto $z0 = virtualinvoke r2.<org.apache.poi.xssf.streaming.SXSSFCell: boolean getBooleanCellValue()>();     case 5: goto b2 = virtualinvoke r2.<org.apache.poi.xssf.streaming.SXSSFCell: byte getErrorCellValue()>();     case 6: goto $r3 = r2.<org.apache.poi.xssf.streaming.SXSSFCell: org.apache.poi.xssf.streaming.SXSSFCell$Value _value>;     default: goto $r14 = new java.lang.IllegalStateException; };	$r14 = new java.lang.IllegalStateException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected cell type (");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r19);	throw $r14
;block_num 2