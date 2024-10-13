(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3092 0)
(declare-sort var1956 0)
(declare-sort var2905 0)
(declare-sort var3618 0)
(declare-sort var2023 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCellType/2130661539 (var3092) var1956)
(declare-fun ordinal/366243679 (var1956) Int)
(declare-fun var3618-init () var3618)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2023) String)
(declare-fun cast-from-var1956-to-var2023 (var1956) var2023)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3618 String) void)
(declare-const null-var3092 var3092)
(declare-const var1956-FORMULA var1956)
(declare-const var2905-$SwitchMap$org$apache$poi$ss$usermodel$CellType (Array Int Int))
(declare-const var1337 var3092) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell 
(assert (not (= var1337 null-var3092)))
(assert true)
(define-const var164 var1956 (getCellType/2130661539 var1337)) ; Statement: r19 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>() 
(define-const var2933 var1956 var1956-FORMULA) ; Statement: $r1 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType FORMULA> 
 ; Statement: if r19 != $r1 goto $r2 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType> 
(assert (not (= var164 var2933))) ; Cond: r19 != $r1 
(define-const var1604 (Array Int Int) var2905-$SwitchMap$org$apache$poi$ss$usermodel$CellType) ; Statement: $r2 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType> 
(assert true)
(define-const var2013 Int (ordinal/366243679 var164)) ; Statement: $i0 = virtualinvoke r19.<org.apache.poi.ss.usermodel.CellType: int ordinal()>() 
(define-const var49 Int (select var1604 var2013)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return 0;     case 2: goto $r12 = "1";     case 3: goto $r13 = new java.lang.IllegalStateException;     case 4: goto $r8 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 5: goto $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 6: goto return 0;     default: goto $r13 = new java.lang.IllegalStateException; } 
(assert (and (not (= var49 2)) (and (not (= var49 1)) true))) ; Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var3358 var3618 var3618-init) ; Statement: $r13 = new java.lang.IllegalStateException 
(define-const var3835 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3835)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3835!1 String)
(assert (= var3835!1 ""))
(assert true)
(define-const var2562 String (append/672562846 var3835!1 "Unexpected cell type (")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected cell type (") 
(declare-const var3835!2 String)
(assert (= var3835!2 (str.++ var3835!1 "Unexpected cell type (")))
(assert true)
(define-const var1868 String (append/-1031950772 var2562 (cast-from-var1956-to-var2023 var164))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r19) 
(declare-const var2562!1 String)
(assert (str.prefixof var2562 var2562!1))
(assert true)
(define-const var3067 String (append/672562846 var1868 ")")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1868!1 String)
(assert (= var1868!1 (str.++ var1868 ")")))
(assert true)
(define-const var2059 String (toString/-2075883882 var3067)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3358 var2059)) ; Statement: specialinvoke $r13.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r18) 

(declare-const var3358!1 var3618)
(declare-const var2059!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getCellType/2130661539=([org.apache.poi.xssf.usermodel.XSSFCell], org.apache.poi.ss.usermodel.CellType), ordinal/366243679=([org.apache.poi.ss.usermodel.CellType], int), var3618-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1956-to-var2023=([org.apache.poi.ss.usermodel.CellType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3092=org.apache.poi.xssf.usermodel.XSSFCell, var1337=r0, var1956=org.apache.poi.ss.usermodel.CellType, var164=r19, var2933=$r1, var2905=org.apache.poi.xssf.usermodel.XSSFCell$1, var1604=$r2, var2013=$i0, var49=$i1, var3618=java.lang.IllegalStateException, var3358=$r13, var3835=$r14, var2562=$r15, var2023=java.lang.Object, var1868=$r16, var3067=$r17, var2059=$r18}
; {org.apache.poi.xssf.usermodel.XSSFCell=var3092, r0=var1337, org.apache.poi.ss.usermodel.CellType=var1956, r19=var164, $r1=var2933, org.apache.poi.xssf.usermodel.XSSFCell$1=var2905, $r2=var1604, $i0=var2013, $i1=var49, java.lang.IllegalStateException=var3618, $r13=var3358, $r14=var3835, $r15=var2562, java.lang.Object=var2023, $r16=var1868, $r17=var3067, $r18=var2059}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFCell;	r19 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.apache.poi.ss.usermodel.CellType getCellType()>();	$r1 = <org.apache.poi.ss.usermodel.CellType: org.apache.poi.ss.usermodel.CellType FORMULA>;	if r19 != $r1 goto $r2 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType>;	$r2 = <org.apache.poi.xssf.usermodel.XSSFCell$1: int[] $SwitchMap$org$apache$poi$ss$usermodel$CellType>;	$i0 = virtualinvoke r19.<org.apache.poi.ss.usermodel.CellType: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto return 0;     case 2: goto $r12 = "1";     case 3: goto $r13 = new java.lang.IllegalStateException;     case 4: goto $r8 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 5: goto $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFCell: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCell _cell>;     case 6: goto return 0;     default: goto $r13 = new java.lang.IllegalStateException; };	$r13 = new java.lang.IllegalStateException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected cell type (");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r19);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r18);	throw $r13
;block_num 3