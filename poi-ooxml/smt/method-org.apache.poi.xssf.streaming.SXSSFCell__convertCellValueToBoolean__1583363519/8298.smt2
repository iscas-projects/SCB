(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3012 0)
(declare-sort var2941 0)
(declare-sort var1484 0)
(declare-sort var1735 0)
(declare-sort var1486 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCellType/-1052272528 (var3012) var2941)
(declare-fun ordinal/366243679 (var2941) Int)
(declare-fun var1735-init () var1735)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1486) String)
(declare-fun cast-from-var2941-to-var1486 (var2941) var1486)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1735 String) void)
(declare-const null-var3012 var3012)
(declare-const var2941-FORMULA var2941)
(declare-const var1484-$SwitchMap$org$apache$poi$ss$usermodel$CellType (Array Int Int))
(declare-const var3547 var3012) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.SXSSFCell 
(assert (not (= var3547 null-var3012)))
(assert true)
(define-const var1002 var2941 (getCellType/-1052272528 var3547)) ; Statement: r10 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>() 
(define-const var1684 var2941 var2941-FORMULA) ; Statement: $r1 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType FORMULA> 
 ; Statement: if r10 != $r1 goto $r2 = <org.apache.poi.xssf.streaming.SXSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType> 
(assert (not (= var1002 var1684))) ; Cond: r10 != $r1 
(define-const var3598 (Array Int Int) var1484-$SwitchMap$org$apache$poi$ss$usermodel$CellType) ; Statement: $r2 = <org.apache.poi.xssf.streaming.SXSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType> 
(assert true)
(define-const var3022 Int (ordinal/366243679 var1002)) ; Statement: $i0 = virtualinvoke r10.<org.apache.poi.ss.usermodel.CellType: int ordinal()>() 
(define-const var989 Int (select var3598 var3022)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return 0;     case 2: goto $d0 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: double getNumericCellValue()>();     case 3: goto r3 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: java.lang.String getStringCellValue()>();     case 4: goto $z0 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: boolean getBooleanCellValue()>();     case 5: goto return 0;     default: goto $r4 = new java.lang.IllegalStateException; } 
(assert (and (not (= var989 5)) (and (not (= var989 4)) (and (not (= var989 3)) (and (not (= var989 2)) (and (not (= var989 1)) true)))))) ; Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional     
(define-const var241 var1735 var1735-init) ; Statement: $r4 = new java.lang.IllegalStateException 
(define-const var2423 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2423)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2423!1 String)
(assert (= var2423!1 ""))
(assert true)
(define-const var2984 String (append/672562846 var2423!1 "Unexpected cell type (")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected cell type (") 
(declare-const var2423!2 String)
(assert (= var2423!2 (str.++ var2423!1 "Unexpected cell type (")))
(assert true)
(define-const var1307 String (append/-1031950772 var2984 (cast-from-var2941-to-var1486 var1002))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r10) 
(declare-const var2984!1 String)
(assert (str.prefixof var2984 var2984!1))
(assert true)
(define-const var155 String (append/672562846 var1307 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1307!1 String)
(assert (= var1307!1 (str.++ var1307 ")")))
(assert true)
(define-const var1078 String (toString/-2075883882 var155)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var241 var1078)) ; Statement: specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9) 

(declare-const var241!1 var1735)
(declare-const var1078!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getCellType/-1052272528=([org.apache.poi.xssf.streaming.SXSSFCell], org.apache.poi.ss.usermodel.CellType), ordinal/366243679=([org.apache.poi.ss.usermodel.CellType], int), var1735-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2941-to-var1486=([org.apache.poi.ss.usermodel.CellType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3012=org.apache.poi.xssf.streaming.SXSSFCell, var3547=r0, var2941=org.apache.poi.ss.usermodel.CellType, var1002=r10, var1684=$r1, var1484=org.apache.poi.xssf.streaming.SXSSFCell$1, var3598=$r2, var3022=$i0, var989=$i1, var1735=java.lang.IllegalStateException, var241=$r4, var2423=$r5, var2984=$r6, var1486=java.lang.Object, var1307=$r7, var155=$r8, var1078=$r9}
; {org.apache.poi.xssf.streaming.SXSSFCell=var3012, r0=var3547, org.apache.poi.ss.usermodel.CellType=var2941, r10=var1002, $r1=var1684, org.apache.poi.xssf.streaming.SXSSFCell$1=var1484, $r2=var3598, $i0=var3022, $i1=var989, java.lang.IllegalStateException=var1735, $r4=var241, $r5=var2423, $r6=var2984, java.lang.Object=var1486, $r7=var1307, $r8=var155, $r9=var1078}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.SXSSFCell;	r10 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>();	$r1 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType FORMULA>;	if r10 != $r1 goto $r2 = <org.apache.poi.xssf.streaming.SXSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType>;	$r2 = <org.apache.poi.xssf.streaming.SXSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType>;	$i0 = virtualinvoke r10.<org.apache.poi.ss.usermodel.CellType: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto return 0;     case 2: goto $d0 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: double getNumericCellValue()>();     case 3: goto r3 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: java.lang.String getStringCellValue()>();     case 4: goto $z0 = virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFCell: boolean getBooleanCellValue()>();     case 5: goto return 0;     default: goto $r4 = new java.lang.IllegalStateException; };	$r4 = new java.lang.IllegalStateException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected cell type (");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r10);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 3