(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2897 0)
(declare-sort var3138 0)
(declare-sort var3696 0)
(declare-sort var36 0)
(declare-sort var3954 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/366243679 (var3138) Int)
(declare-fun var36-init () var36)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3954) String)
(declare-fun cast-from-var3138-to-var3954 (var3138) var3954)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var36 var3954) void)
(declare-fun cast-from-String-to-var3954 (String) var3954)
(declare-const null-var2897 var2897)
(declare-const null-var3138 var3138)
(declare-const var3696-$SwitchMap$org$apache$poi$ss$usermodel$CellType (Array Int Int))
(declare-const var942 var2897) ; Statement: r2 := @parameter0: org.apache.poi.xssf.usermodel.XSSFCell 
(assert (not (= var942 null-var2897)))
(declare-const var2238 var3138) ; Statement: r0 := @parameter1: org.apache.poi.ss.usermodel.CellType 
(assert (not (= var2238 null-var3138)))
(define-const var1129 (Array Int Int) var3696-$SwitchMap$org$apache$poi$ss$usermodel$CellType) ; Statement: $r1 = <org.apache.poi.xssf.usermodel.XSSFRow$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType> 
(assert true)
(define-const var465 Int (ordinal/366243679 var2238)) ; Statement: $i0 = virtualinvoke r0.<org.apache.poi.ss.usermodel.CellType: int ordinal()>() 
(define-const var2992 Int (select var1129 var465)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFCell: void setCellValue(double)>(0.0);     case 2: goto virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFCell: void setCellValue(java.lang.String)>("");     case 3: goto virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFCell: void setCellValue(boolean)>(0);     case 4: goto $r3 = <org.apache.poi.ss.usermodel.FormulaError: org.apache.poi.ss.usermodel.FormulaError _NO_ERROR>;     default: goto $r4 = new java.lang.AssertionError; } 
(assert (and (not (= var2992 4)) (and (not (= var2992 3)) (and (not (= var2992 2)) (and (not (= var2992 1)) true))))) ; Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(define-const var939 var36 var36-init) ; Statement: $r4 = new java.lang.AssertionError 
(define-const var240 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var240)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var240!1 String)
(assert (= var240!1 ""))
(assert true)
(define-const var1916 String (append/672562846 var240!1 "Unknown cell-type specified: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown cell-type specified: ") 
(declare-const var240!2 String)
(assert (= var240!2 (str.++ var240!1 "Unknown cell-type specified: ")))
(assert true)
(define-const var2888 String (append/-1031950772 var1916 (cast-from-var3138-to-var3954 var2238))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1916!1 String)
(assert (str.prefixof var1916 var1916!1))
(assert true)
(define-const var2452 String (toString/-2075883882 var2888)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var939 (cast-from-String-to-var3954 var2452))) ; Statement: specialinvoke $r4.<java.lang.AssertionError: void <init>(java.lang.Object)>($r8) 

(declare-const var939!1 var36)
(declare-const var2452!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/366243679=([org.apache.poi.ss.usermodel.CellType], int), var36-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3138-to-var3954=([org.apache.poi.ss.usermodel.CellType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var3954=([java.lang.String], java.lang.Object)}
; {var2897=org.apache.poi.xssf.usermodel.XSSFCell, var942=r2, var3138=org.apache.poi.ss.usermodel.CellType, var2238=r0, var3696=org.apache.poi.xssf.usermodel.XSSFRow$1, var1129=$r1, var465=$i0, var2992=$i1, var36=java.lang.AssertionError, var939=$r4, var240=$r5, var1916=$r6, var3954=java.lang.Object, var2888=$r7, var2452=$r8}
; {org.apache.poi.xssf.usermodel.XSSFCell=var2897, r2=var942, org.apache.poi.ss.usermodel.CellType=var3138, r0=var2238, org.apache.poi.xssf.usermodel.XSSFRow$1=var3696, $r1=var1129, $i0=var465, $i1=var2992, java.lang.AssertionError=var36, $r4=var939, $r5=var240, $r6=var1916, java.lang.Object=var3954, $r7=var2888, $r8=var2452}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: org.apache.poi.xssf.usermodel.XSSFCell;	r0 := @parameter1: org.apache.poi.ss.usermodel.CellType;	$r1 = <org.apache.poi.xssf.usermodel.XSSFRow$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType>;	$i0 = virtualinvoke r0.<org.apache.poi.ss.usermodel.CellType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFCell: void setCellValue(double)>(0.0);     case 2: goto virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFCell: void setCellValue(java.lang.String)>("");     case 3: goto virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFCell: void setCellValue(boolean)>(0);     case 4: goto $r3 = <org.apache.poi.ss.usermodel.FormulaError: org.apache.poi.ss.usermodel.FormulaError _NO_ERROR>;     default: goto $r4 = new java.lang.AssertionError; };	$r4 = new java.lang.AssertionError;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown cell-type specified: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.AssertionError: void <init>(java.lang.Object)>($r8);	throw $r4
;block_num 2