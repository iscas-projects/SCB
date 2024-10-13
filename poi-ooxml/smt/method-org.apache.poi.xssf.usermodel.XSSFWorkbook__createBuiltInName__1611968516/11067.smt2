(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3038 0)
(declare-sort var1972 0)
(declare-sort var1712 0)
(declare-sort var208 0)
(declare-sort var2549 0)
(declare-sort var102 0)
(declare-sort var2406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validateSheetIndex/302308305 (var3038 Int) void)
(declare-fun workbook/-433134786 (var3038) var1712)
(declare-fun var1712_getDefinedNames/1834598957 (var1712) var208)
(declare-fun var208_addNewDefinedName/-411754027 (var208) var2549)
(declare-fun var2549_setName/965050371 (var2549 String) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2549_setLocalSheetId/1228459254 (var2549 Int) void)
(declare-fun getBuiltInName/1235420764 (var3038 String Int) var102)
(declare-fun var2406-init () var2406)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1934569527 (var2406 String) void)
(declare-const null-var3038 var3038)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var208 var208)
(declare-const null-var102 var102)
(declare-const var3483 var3038) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var3483 null-var3038)))
(declare-const var2659 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2659 null-String)))
(declare-const var1590 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1590 null-Int)))
(assert true)
;(assert (validateSheetIndex/302308305 var3483 var1590)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: void validateSheetIndex(int)>(i0) 

(declare-const var3483!1 var3038)
(declare-const var1590!1 Int)
(define-const var513 var1712 (workbook/-433134786 var3483!1)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook> 
(define-const var7 var208 (var1712_getDefinedNames/1834598957 var513)) ; Statement: $r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames getDefinedNames()>() 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook> 
(assert (not (= var7 null-var208))) ; Cond: $r2 != null 
(define-const var984 var1712 (workbook/-433134786 var3483!1)) ; Statement: $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook> 
(define-const var3658 var208 (var1712_getDefinedNames/1834598957 var984)) ; Statement: $r17 = interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames getDefinedNames()>() 
(assert true) ; Non Conditional
(define-const var238 var2549 (var208_addNewDefinedName/-411754027 var3658)) ; Statement: $r16 = interfaceinvoke $r17.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName addNewDefinedName()>() 
;(assert (var2549_setName/965050371 var238 var2659)) ; Statement: interfaceinvoke $r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: void setName(java.lang.String)>(r4) 

(declare-const var238!1 var2549)
(declare-const var2659!1 String)
(define-const var3771 Int (cast-from-Int-to-Int var1590!1)) ; Statement: $l1 = (long) i0 
;(assert (var2549_setLocalSheetId/1228459254 var238!1 var3771)) ; Statement: interfaceinvoke $r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: void setLocalSheetId(long)>($l1) 

(declare-const var238!2 var2549)
(declare-const var3771!1 Int)
(assert true)
(define-const var2248 var102 (getBuiltInName/1235420764 var3483!1 var2659!1 var1590!1)) ; Statement: $r5 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>(r4, i0) 
 ; Statement: if $r5 == null goto $r6 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName createAndStoreName(org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName)>($r16) 
(assert (not (= var2248 null-var102))) ; Negate: Cond: $r5 == null  
(define-const var780 var2406 var2406-init) ; Statement: $r7 = new org.apache.poi.ooxml.POIXMLException 
(define-const var325 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var325)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var325!1 String)
(assert (= var325!1 ""))
(assert true)
(define-const var2984 String (append/672562846 var325!1 "Builtin (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Builtin (") 
(declare-const var325!2 String)
(assert (= var325!2 (str.++ var325!1 "Builtin (")))
(assert true)
(define-const var2493 String (append/672562846 var2984 var2659!1)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2984!1 String)
(assert (= var2984!1 (str.++ var2984 var2659!1)))
(assert true)
(define-const var3924 String (append/672562846 var2493 ") already exists for sheet (")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") already exists for sheet (") 
(declare-const var2493!1 String)
(assert (= var2493!1 (str.++ var2493 ") already exists for sheet (")))
(assert true)
(define-const var2044 String (append/-1001720160 var3924 var1590!1)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3924!1 String)
(assert (str.prefixof var3924 var3924!1))
(assert true)
(define-const var1175 String (append/672562846 var2044 ")")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2044!1 String)
(assert (= var2044!1 (str.++ var2044 ")")))
(assert true)
(define-const var352 String (toString/-2075883882 var1175)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1934569527 var780 var352)) ; Statement: specialinvoke $r7.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String)>($r14) 

(declare-const var780!1 var2406)
(declare-const var352!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {validateSheetIndex/302308305=([org.apache.poi.xssf.usermodel.XSSFWorkbook, int], void), workbook/-433134786=([org.apache.poi.xssf.usermodel.XSSFWorkbook], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook), var1712_getDefinedNames/1834598957=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames), var208_addNewDefinedName/-411754027=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName), var2549_setName/965050371=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName, java.lang.String], void), cast-from-Int-to-Int=([int], long), var2549_setLocalSheetId/1228459254=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName, long], void), getBuiltInName/1235420764=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], org.apache.poi.xssf.usermodel.XSSFName), var2406-init=([], org.apache.poi.ooxml.POIXMLException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1934569527=([org.apache.poi.ooxml.POIXMLException, java.lang.String], void)}
; {var3038=org.apache.poi.xssf.usermodel.XSSFWorkbook, var3483=r0, var2659=r4, var1972=null_type, var1590=i0, var1712=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook, var513=$r1, var208=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames, var7=$r2, var984=$r3, var3658=$r17, var2549=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName, var238=$r16, var3771=$l1, var102=org.apache.poi.xssf.usermodel.XSSFName, var2248=$r5, var2406=org.apache.poi.ooxml.POIXMLException, var780=$r7, var325=$r8, var2984=$r9, var2493=$r10, var3924=$r11, var2044=$r12, var1175=$r13, var352=$r14}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var3038, r0=var3483, r4=var2659, null_type=var1972, i0=var1590, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook=var1712, $r1=var513, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames=var208, $r2=var7, $r3=var984, $r17=var3658, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName=var2549, $r16=var238, $l1=var3771, org.apache.poi.xssf.usermodel.XSSFName=var102, $r5=var2248, org.apache.poi.ooxml.POIXMLException=var2406, $r7=var780, $r8=var325, $r9=var2984, $r10=var2493, $r11=var3924, $r12=var2044, $r13=var1175, $r14=var352}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	r4 := @parameter0: java.lang.String;	i0 := @parameter1: int;	specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: void validateSheetIndex(int)>(i0);	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook>;	$r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames getDefinedNames()>();	if $r2 != null goto $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook>;	$r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook>;	$r17 = interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames getDefinedNames()>();	$r16 = interfaceinvoke $r17.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName addNewDefinedName()>();	interfaceinvoke $r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: void setName(java.lang.String)>(r4);	$l1 = (long) i0;	interfaceinvoke $r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: void setLocalSheetId(long)>($l1);	$r5 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>(r4, i0);	if $r5 == null goto $r6 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName createAndStoreName(org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName)>($r16);	$r7 = new org.apache.poi.ooxml.POIXMLException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Builtin (");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") already exists for sheet (");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String)>($r14);	throw $r7
;block_num 4