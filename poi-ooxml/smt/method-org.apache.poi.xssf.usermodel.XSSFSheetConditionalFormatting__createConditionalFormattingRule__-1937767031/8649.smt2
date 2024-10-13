(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1951 0)
(declare-sort var883 0)
(declare-sort var3154 0)
(declare-sort var2317 0)
(declare-sort var3420 0)
(declare-sort var3207 0)
(declare-sort var644 0)
(declare-sort var3151 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3154-init () var3154)
(declare-fun _sheet/16105264 (var1951) var2317)
(declare-fun <init>/-626433543 (var3154 var2317) void)
(declare-fun getCTCfRule/1253978379 (var3154) var3420)
(declare-fun var3420_addFormula/1550658226 (var3420 String) void)
(declare-fun var3420_setType/1670718486 (var3420 var3207) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3151-init () var3151)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3151 String) void)
(declare-const null-var1951 var1951)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var644-CELL_IS var3207)
(declare-const var3483 var1951) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheetConditionalFormatting 
(assert (not (= var3483 null-var1951)))
(declare-const var948 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var948 null-Int)))
(declare-const var82 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var82 null-String)))
(declare-const var2177 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var2177 null-String)))
(define-const var88 var3154 var3154-init) ; Statement: $r13 = new org.apache.poi.xssf.usermodel.XSSFConditionalFormattingRule 
(define-const var2697 var2317 (_sheet/16105264 var3483)) ; Statement: $r2 = r1.<org.apache.poi.xssf.usermodel.XSSFSheetConditionalFormatting: org.apache.poi.xssf.usermodel.XSSFSheet _sheet> 
(assert true)
;(assert (<init>/-626433543 var88 var2697)) ; Statement: specialinvoke $r13.<org.apache.poi.xssf.usermodel.XSSFConditionalFormattingRule: void <init>(org.apache.poi.xssf.usermodel.XSSFSheet)>($r2) 

(declare-const var88!1 var3154)
(declare-const var2697!1 var2317)
(assert true)
(define-const var2227 var3420 (getCTCfRule/1253978379 var88!1)) ; Statement: r3 = virtualinvoke $r13.<org.apache.poi.xssf.usermodel.XSSFConditionalFormattingRule: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCfRule getCTCfRule()>() 
;(assert (var3420_addFormula/1550658226 var2227 var82)) ; Statement: interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCfRule: void addFormula(java.lang.String)>(r4) 

(declare-const var2227!1 var3420)
(declare-const var82!1 String)
 ; Statement: if r5 == null goto $r6 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STCfType: org.openxmlformats.schemas.spreadsheetml.x2006.main.STCfType$Enum CELL_IS> 
(assert (= var2177 null-String)) ; Cond: r5 == null 
(define-const var977 var3207 var644-CELL_IS) ; Statement: $r6 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STCfType: org.openxmlformats.schemas.spreadsheetml.x2006.main.STCfType$Enum CELL_IS> 
;(assert (var3420_setType/1670718486 var2227!1 var977)) ; Statement: interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCfRule: void setType(org.openxmlformats.schemas.spreadsheetml.x2006.main.STCfType$Enum)>($r6) 

(declare-const var2227!2 var3420)
(declare-const var977!1 var3207)
(define-const var2274 Int (cast-from-Int-to-Int var948)) ; Statement: $i1 = (int) b0 
 ; Statement: tableswitch($i1) {     case 1: goto r12 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator: org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator$Enum BETWEEN>;     case 2: goto r12 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator: org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator$Enum NOT_BETWEEN>;     case 3: goto r12 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator: org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator$Enum EQUAL>;     case 4: goto r12 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator: org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator$Enum NOT_EQUAL>;     case 5: goto r12 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator: org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator$Enum GREATER_THAN>;     case 6: goto r12 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator: org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator$Enum LESS_THAN>;     case 7: goto r12 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator: org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator$Enum GREATER_THAN_OR_EQUAL>;     case 8: goto r12 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator: org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator$Enum LESS_THAN_OR_EQUAL>;     default: goto $r15 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var2274 8)) (and (not (= var2274 7)) (and (not (= var2274 6)) (and (not (= var2274 5)) (and (not (= var2274 4)) (and (not (= var2274 3)) (and (not (= var2274 2)) (and (not (= var2274 1)) true))))))))) ; Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional        
(define-const var2276 var3151 var3151-init) ; Statement: $r15 = new java.lang.IllegalArgumentException 
(define-const var2899 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2899)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2899!1 String)
(assert (= var2899!1 ""))
(assert true)
(define-const var2490 String (append/672562846 var2899!1 "Unknown comparison operator: ")) ; Statement: $r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown comparison operator: ") 
(declare-const var2899!2 String)
(assert (= var2899!2 (str.++ var2899!1 "Unknown comparison operator: ")))
(define-const var1329 Int (cast-from-Int-to-Int var948)) ; Statement: $i2 = (int) b0 
(assert true)
(define-const var1459 String (append/-1001720160 var2490 var1329)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2490!1 String)
(assert (str.prefixof var2490 var2490!1))
(assert true)
(define-const var1956 String (toString/-2075883882 var1459)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2276 var1956)) ; Statement: specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var2276!1 var3151)
(declare-const var1956!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3154-init=([], org.apache.poi.xssf.usermodel.XSSFConditionalFormattingRule), _sheet/16105264=([org.apache.poi.xssf.usermodel.XSSFSheetConditionalFormatting], org.apache.poi.xssf.usermodel.XSSFSheet), <init>/-626433543=([org.apache.poi.xssf.usermodel.XSSFConditionalFormattingRule, org.apache.poi.xssf.usermodel.XSSFSheet], void), getCTCfRule/1253978379=([org.apache.poi.xssf.usermodel.XSSFConditionalFormattingRule], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCfRule), var3420_addFormula/1550658226=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCfRule, java.lang.String], void), var3420_setType/1670718486=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCfRule, org.openxmlformats.schemas.spreadsheetml.x2006.main.STCfType$Enum], void), cast-from-Int-to-Int=([byte], int), var3151-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1951=org.apache.poi.xssf.usermodel.XSSFSheetConditionalFormatting, var3483=r1, var948=b0, var82=r4, var883=null_type, var2177=r5, var3154=org.apache.poi.xssf.usermodel.XSSFConditionalFormattingRule, var88=$r13, var2317=org.apache.poi.xssf.usermodel.XSSFSheet, var2697=$r2, var3420=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCfRule, var2227=r3, var3207=org.openxmlformats.schemas.spreadsheetml.x2006.main.STCfType$Enum, var644=org.openxmlformats.schemas.spreadsheetml.x2006.main.STCfType, var977=$r6, var2274=$i1, var3151=java.lang.IllegalArgumentException, var2276=$r15, var2899=$r14, var2490=$r9, var1329=$i2, var1459=$r10, var1956=$r11}
; {org.apache.poi.xssf.usermodel.XSSFSheetConditionalFormatting=var1951, r1=var3483, b0=var948, r4=var82, null_type=var883, r5=var2177, org.apache.poi.xssf.usermodel.XSSFConditionalFormattingRule=var3154, $r13=var88, org.apache.poi.xssf.usermodel.XSSFSheet=var2317, $r2=var2697, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCfRule=var3420, r3=var2227, org.openxmlformats.schemas.spreadsheetml.x2006.main.STCfType$Enum=var3207, org.openxmlformats.schemas.spreadsheetml.x2006.main.STCfType=var644, $r6=var977, $i1=var2274, java.lang.IllegalArgumentException=var3151, $r15=var2276, $r14=var2899, $r9=var2490, $i2=var1329, $r10=var1459, $r11=var1956}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFSheetConditionalFormatting;	b0 := @parameter0: byte;	r4 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String;	$r13 = new org.apache.poi.xssf.usermodel.XSSFConditionalFormattingRule;	$r2 = r1.<org.apache.poi.xssf.usermodel.XSSFSheetConditionalFormatting: org.apache.poi.xssf.usermodel.XSSFSheet _sheet>;	specialinvoke $r13.<org.apache.poi.xssf.usermodel.XSSFConditionalFormattingRule: void <init>(org.apache.poi.xssf.usermodel.XSSFSheet)>($r2);	r3 = virtualinvoke $r13.<org.apache.poi.xssf.usermodel.XSSFConditionalFormattingRule: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCfRule getCTCfRule()>();	interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCfRule: void addFormula(java.lang.String)>(r4);	if r5 == null goto $r6 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STCfType: org.openxmlformats.schemas.spreadsheetml.x2006.main.STCfType$Enum CELL_IS>;	$r6 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STCfType: org.openxmlformats.schemas.spreadsheetml.x2006.main.STCfType$Enum CELL_IS>;	interfaceinvoke r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTCfRule: void setType(org.openxmlformats.schemas.spreadsheetml.x2006.main.STCfType$Enum)>($r6);	$i1 = (int) b0;	tableswitch($i1) {     case 1: goto r12 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator: org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator$Enum BETWEEN>;     case 2: goto r12 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator: org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator$Enum NOT_BETWEEN>;     case 3: goto r12 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator: org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator$Enum EQUAL>;     case 4: goto r12 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator: org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator$Enum NOT_EQUAL>;     case 5: goto r12 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator: org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator$Enum GREATER_THAN>;     case 6: goto r12 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator: org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator$Enum LESS_THAN>;     case 7: goto r12 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator: org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator$Enum GREATER_THAN_OR_EQUAL>;     case 8: goto r12 = <org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator: org.openxmlformats.schemas.spreadsheetml.x2006.main.STConditionalFormattingOperator$Enum LESS_THAN_OR_EQUAL>;     default: goto $r15 = new java.lang.IllegalArgumentException; };	$r15 = new java.lang.IllegalArgumentException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown comparison operator: ");	$i2 = (int) b0;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r15
;block_num 3