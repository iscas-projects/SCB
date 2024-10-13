(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3260 0)
(declare-sort var2675 0)
(declare-sort var1806 0)
(declare-sort var3069 0)
(declare-sort var2492 0)
(declare-sort var2356 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var3069) Int)
(declare-fun cast-from-var2675-to-var3069 (var2675) var3069)
(declare-fun var2492-init () var2492)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2356) String)
(declare-fun cast-from-var2675-to-var2356 (var2675) var2356)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2492 String) void)
(declare-const null-var3260 var3260)
(declare-const null-var2675 var2675)
(declare-const var1806-$SwitchMap$org$apache$poi$xssf$usermodel$extensions$XSSFCellBorder$BorderSide (Array Int Int))
(declare-const var686 var3260) ; Statement: r2 := @this: org.apache.poi.xssf.usermodel.XSSFCellStyle 
(assert (not (= var686 null-var3260)))
(declare-const var2252 var2675) ; Statement: r0 := @parameter0: org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$BorderSide 
(assert (not (= var2252 null-var2675)))
(define-const var2711 (Array Int Int) var1806-$SwitchMap$org$apache$poi$xssf$usermodel$extensions$XSSFCellBorder$BorderSide) ; Statement: $r1 = <org.apache.poi.xssf.usermodel.XSSFCellStyle$1: int[] $SwitchMap$org$apache$poi$xssf$usermodel$extensions$XSSFCellBorder$BorderSide> 
(assert true)
(define-const var1285 Int (ordinal/-291641772 (cast-from-var2675-to-var3069 var2252))) ; Statement: $i0 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$BorderSide: int ordinal()>() 
(define-const var764 Int (select var2711 var1285)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r6 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFCellStyle: org.apache.poi.xssf.usermodel.XSSFColor getBottomBorderXSSFColor()>();     case 2: goto $r5 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFCellStyle: org.apache.poi.xssf.usermodel.XSSFColor getRightBorderXSSFColor()>();     case 3: goto $r4 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFCellStyle: org.apache.poi.xssf.usermodel.XSSFColor getTopBorderXSSFColor()>();     case 4: goto $r3 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFCellStyle: org.apache.poi.xssf.usermodel.XSSFColor getLeftBorderXSSFColor()>();     default: goto $r7 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var764 4)) (and (not (= var764 3)) (and (not (= var764 2)) (and (not (= var764 1)) true))))) ; Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(define-const var1465 var2492 var2492-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var2041 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2041)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2041!1 String)
(assert (= var2041!1 ""))
(assert true)
(define-const var600 String (append/672562846 var2041!1 "Unknown border: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown border: ") 
(declare-const var2041!2 String)
(assert (= var2041!2 (str.++ var2041!1 "Unknown border: ")))
(assert true)
(define-const var3190 String (append/-1031950772 var600 (cast-from-var2675-to-var2356 var2252))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var600!1 String)
(assert (str.prefixof var600 var600!1))
(assert true)
(define-const var3285 String (toString/-2075883882 var3190)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1465 var3285)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var1465!1 var2492)
(declare-const var3285!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var2675-to-var3069=([org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$BorderSide], java.lang.Enum), var2492-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2675-to-var2356=([org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$BorderSide], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3260=org.apache.poi.xssf.usermodel.XSSFCellStyle, var686=r2, var2675=org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$BorderSide, var2252=r0, var1806=org.apache.poi.xssf.usermodel.XSSFCellStyle$1, var2711=$r1, var3069=java.lang.Enum, var1285=$i0, var764=$i1, var2492=java.lang.IllegalArgumentException, var1465=$r7, var2041=$r8, var600=$r9, var2356=java.lang.Object, var3190=$r10, var3285=$r11}
; {org.apache.poi.xssf.usermodel.XSSFCellStyle=var3260, r2=var686, org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$BorderSide=var2675, r0=var2252, org.apache.poi.xssf.usermodel.XSSFCellStyle$1=var1806, $r1=var2711, java.lang.Enum=var3069, $i0=var1285, $i1=var764, java.lang.IllegalArgumentException=var2492, $r7=var1465, $r8=var2041, $r9=var600, java.lang.Object=var2356, $r10=var3190, $r11=var3285}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.poi.xssf.usermodel.XSSFCellStyle;	r0 := @parameter0: org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$BorderSide;	$r1 = <org.apache.poi.xssf.usermodel.XSSFCellStyle$1: int[] $SwitchMap$org$apache$poi$xssf$usermodel$extensions$XSSFCellBorder$BorderSide>;	$i0 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$BorderSide: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r6 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFCellStyle: org.apache.poi.xssf.usermodel.XSSFColor getBottomBorderXSSFColor()>();     case 2: goto $r5 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFCellStyle: org.apache.poi.xssf.usermodel.XSSFColor getRightBorderXSSFColor()>();     case 3: goto $r4 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFCellStyle: org.apache.poi.xssf.usermodel.XSSFColor getTopBorderXSSFColor()>();     case 4: goto $r3 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFCellStyle: org.apache.poi.xssf.usermodel.XSSFColor getLeftBorderXSSFColor()>();     default: goto $r7 = new java.lang.IllegalArgumentException; };	$r7 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown border: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r7
;block_num 2