(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2348 0)
(declare-sort var2874 0)
(declare-sort var561 0)
(declare-sort var854 0)
(declare-sort var1815 0)
(declare-sort var1037 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var854) Int)
(declare-fun cast-from-var2874-to-var854 (var2874) var854)
(declare-fun var1815-init () var1815)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1037) String)
(declare-fun cast-from-var2874-to-var1037 (var2874) var1037)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1815 String) void)
(declare-const null-var2348 var2348)
(declare-const null-var2874 var2874)
(declare-const null-Bool Bool)
(declare-const var561-$SwitchMap$org$apache$poi$xssf$usermodel$extensions$XSSFCellBorder$BorderSide (Array Int Int))
(declare-const var3988 var2348) ; Statement: r2 := @this: org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder 
(assert (not (= var3988 null-var2348)))
(declare-const var1639 var2874) ; Statement: r0 := @parameter0: org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$BorderSide 
(assert (not (= var1639 null-var2874)))
(declare-const var2230 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2230 null-Bool)))
(define-const var2585 (Array Int Int) var561-$SwitchMap$org$apache$poi$xssf$usermodel$extensions$XSSFCellBorder$BorderSide) ; Statement: $r1 = <org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$1: int[] $SwitchMap$org$apache$poi$xssf$usermodel$extensions$XSSFCellBorder$BorderSide> 
(assert true)
(define-const var2490 Int (ordinal/-291641772 (cast-from-var2874-to-var854 var1639))) ; Statement: $i0 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$BorderSide: int ordinal()>() 
(define-const var1518 Int (select var2585 var2490)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r15 = r2.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder border>;     case 2: goto $r13 = r2.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder border>;     case 3: goto $r11 = r2.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder border>;     case 4: goto $r9 = r2.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder border>;     case 5: goto $r7 = r2.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder border>;     case 6: goto $r5 = r2.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder border>;     case 7: goto $r3 = r2.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder border>;     default: goto $r17 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1518 7)) (and (not (= var1518 6)) (and (not (= var1518 5)) (and (not (= var1518 4)) (and (not (= var1518 3)) (and (not (= var1518 2)) (and (not (= var1518 1)) true)))))))) ; Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional       
(define-const var179 var1815 var1815-init) ; Statement: $r17 = new java.lang.IllegalArgumentException 
(define-const var87 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var87)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var87!1 String)
(assert (= var87!1 ""))
(assert true)
(define-const var1517 String (append/672562846 var87!1 "No suitable side specified for the border, had ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No suitable side specified for the border, had ") 
(declare-const var87!2 String)
(assert (= var87!2 (str.++ var87!1 "No suitable side specified for the border, had ")))
(assert true)
(define-const var954 String (append/-1031950772 var1517 (cast-from-var2874-to-var1037 var1639))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1517!1 String)
(assert (str.prefixof var1517 var1517!1))
(assert true)
(define-const var3198 String (toString/-2075883882 var954)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var179 var3198)) ; Statement: specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r21) 

(declare-const var179!1 var1815)
(declare-const var3198!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var2874-to-var854=([org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$BorderSide], java.lang.Enum), var1815-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2874-to-var1037=([org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$BorderSide], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2348=org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder, var3988=r2, var2874=org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$BorderSide, var1639=r0, var2230=z0, var561=org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$1, var2585=$r1, var854=java.lang.Enum, var2490=$i0, var1518=$i1, var1815=java.lang.IllegalArgumentException, var179=$r17, var87=$r18, var1517=$r19, var1037=java.lang.Object, var954=$r20, var3198=$r21}
; {org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder=var2348, r2=var3988, org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$BorderSide=var2874, r0=var1639, z0=var2230, org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$1=var561, $r1=var2585, java.lang.Enum=var854, $i0=var2490, $i1=var1518, java.lang.IllegalArgumentException=var1815, $r17=var179, $r18=var87, $r19=var1517, java.lang.Object=var1037, $r20=var954, $r21=var3198}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder;	r0 := @parameter0: org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$BorderSide;	z0 := @parameter1: boolean;	$r1 = <org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$1: int[] $SwitchMap$org$apache$poi$xssf$usermodel$extensions$XSSFCellBorder$BorderSide>;	$i0 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder$BorderSide: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r15 = r2.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder border>;     case 2: goto $r13 = r2.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder border>;     case 3: goto $r11 = r2.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder border>;     case 4: goto $r9 = r2.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder border>;     case 5: goto $r7 = r2.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder border>;     case 6: goto $r5 = r2.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder border>;     case 7: goto $r3 = r2.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder border>;     default: goto $r17 = new java.lang.IllegalArgumentException; };	$r17 = new java.lang.IllegalArgumentException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No suitable side specified for the border, had ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r21);	throw $r17
;block_num 2