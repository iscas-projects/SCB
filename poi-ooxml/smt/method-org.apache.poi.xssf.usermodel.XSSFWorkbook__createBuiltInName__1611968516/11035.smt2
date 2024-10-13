(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var398 0)
(declare-sort var477 0)
(declare-sort var685 0)
(declare-sort var3690 0)
(declare-sort var1809 0)
(declare-sort var570 0)
(declare-sort var3400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validateSheetIndex/302308305 (var398 Int) void)
(declare-fun workbook/-433134786 (var398) var685)
(declare-fun var685_getDefinedNames/1834598957 (var685) var3690)
(declare-fun var685_addNewDefinedNames/-1521042758 (var685) var3690)
(declare-fun var3690_addNewDefinedName/-411754027 (var3690) var1809)
(declare-fun var1809_setName/965050371 (var1809 String) void)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1809_setLocalSheetId/1228459254 (var1809 Int) void)
(declare-fun getBuiltInName/1235420764 (var398 String Int) var570)
(declare-fun var3400-init () var3400)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1934569527 (var3400 String) void)
(declare-const null-var398 var398)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3690 var3690)
(declare-const null-var570 var570)
(declare-const var495 var398) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook 
(assert (not (= var495 null-var398)))
(declare-const var1568 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1568 null-String)))
(declare-const var1085 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1085 null-Int)))
(assert true)
;(assert (validateSheetIndex/302308305 var495 var1085)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: void validateSheetIndex(int)>(i0) 

(declare-const var495!1 var398)
(declare-const var1085!1 Int)
(define-const var3131 var685 (workbook/-433134786 var495!1)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook> 
(define-const var2305 var3690 (var685_getDefinedNames/1834598957 var3131)) ; Statement: $r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames getDefinedNames()>() 
 ; Statement: if $r2 != null goto $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook> 
(assert (not (not (= var2305 null-var3690)))) ; Negate: Cond: $r2 != null  
(define-const var1153 var685 (workbook/-433134786 var495!1)) ; Statement: $r15 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook> 
(define-const var3907 var3690 (var685_addNewDefinedNames/-1521042758 var1153)) ; Statement: $r17 = interfaceinvoke $r15.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames addNewDefinedNames()>() 
 ; Statement: goto [?= $r16 = interfaceinvoke $r17.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName addNewDefinedName()>()] 
(assert true) ; Non Conditional
(define-const var1515 var1809 (var3690_addNewDefinedName/-411754027 var3907)) ; Statement: $r16 = interfaceinvoke $r17.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName addNewDefinedName()>() 
;(assert (var1809_setName/965050371 var1515 var1568)) ; Statement: interfaceinvoke $r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: void setName(java.lang.String)>(r4) 

(declare-const var1515!1 var1809)
(declare-const var1568!1 String)
(define-const var2669 Int (cast-from-Int-to-Int var1085!1)) ; Statement: $l1 = (long) i0 
;(assert (var1809_setLocalSheetId/1228459254 var1515!1 var2669)) ; Statement: interfaceinvoke $r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: void setLocalSheetId(long)>($l1) 

(declare-const var1515!2 var1809)
(declare-const var2669!1 Int)
(assert true)
(define-const var1693 var570 (getBuiltInName/1235420764 var495!1 var1568!1 var1085!1)) ; Statement: $r5 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>(r4, i0) 
 ; Statement: if $r5 == null goto $r6 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName createAndStoreName(org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName)>($r16) 
(assert (not (= var1693 null-var570))) ; Negate: Cond: $r5 == null  
(define-const var2433 var3400 var3400-init) ; Statement: $r7 = new org.apache.poi.ooxml.POIXMLException 
(define-const var201 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var201)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var201!1 String)
(assert (= var201!1 ""))
(assert true)
(define-const var1479 String (append/672562846 var201!1 "Builtin (")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Builtin (") 
(declare-const var201!2 String)
(assert (= var201!2 (str.++ var201!1 "Builtin (")))
(assert true)
(define-const var820 String (append/672562846 var1479 var1568!1)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1479!1 String)
(assert (= var1479!1 (str.++ var1479 var1568!1)))
(assert true)
(define-const var547 String (append/672562846 var820 ") already exists for sheet (")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") already exists for sheet (") 
(declare-const var820!1 String)
(assert (= var820!1 (str.++ var820 ") already exists for sheet (")))
(assert true)
(define-const var2267 String (append/-1001720160 var547 var1085!1)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var547!1 String)
(assert (str.prefixof var547 var547!1))
(assert true)
(define-const var828 String (append/672562846 var2267 ")")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2267!1 String)
(assert (= var2267!1 (str.++ var2267 ")")))
(assert true)
(define-const var2645 String (toString/-2075883882 var828)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1934569527 var2433 var2645)) ; Statement: specialinvoke $r7.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String)>($r14) 

(declare-const var2433!1 var3400)
(declare-const var2645!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {validateSheetIndex/302308305=([org.apache.poi.xssf.usermodel.XSSFWorkbook, int], void), workbook/-433134786=([org.apache.poi.xssf.usermodel.XSSFWorkbook], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook), var685_getDefinedNames/1834598957=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames), var685_addNewDefinedNames/-1521042758=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames), var3690_addNewDefinedName/-411754027=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName), var1809_setName/965050371=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName, java.lang.String], void), cast-from-Int-to-Int=([int], long), var1809_setLocalSheetId/1228459254=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName, long], void), getBuiltInName/1235420764=([org.apache.poi.xssf.usermodel.XSSFWorkbook, java.lang.String, int], org.apache.poi.xssf.usermodel.XSSFName), var3400-init=([], org.apache.poi.ooxml.POIXMLException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1934569527=([org.apache.poi.ooxml.POIXMLException, java.lang.String], void)}
; {var398=org.apache.poi.xssf.usermodel.XSSFWorkbook, var495=r0, var1568=r4, var477=null_type, var1085=i0, var685=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook, var3131=$r1, var3690=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames, var2305=$r2, var1153=$r15, var3907=$r17, var1809=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName, var1515=$r16, var2669=$l1, var570=org.apache.poi.xssf.usermodel.XSSFName, var1693=$r5, var3400=org.apache.poi.ooxml.POIXMLException, var2433=$r7, var201=$r8, var1479=$r9, var820=$r10, var547=$r11, var2267=$r12, var828=$r13, var2645=$r14}
; {org.apache.poi.xssf.usermodel.XSSFWorkbook=var398, r0=var495, r4=var1568, null_type=var477, i0=var1085, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook=var685, $r1=var3131, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames=var3690, $r2=var2305, $r15=var1153, $r17=var3907, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName=var1809, $r16=var1515, $l1=var2669, org.apache.poi.xssf.usermodel.XSSFName=var570, $r5=var1693, org.apache.poi.ooxml.POIXMLException=var3400, $r7=var2433, $r8=var201, $r9=var1479, $r10=var820, $r11=var547, $r12=var2267, $r13=var828, $r14=var2645}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFWorkbook;	r4 := @parameter0: java.lang.String;	i0 := @parameter1: int;	specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: void validateSheetIndex(int)>(i0);	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook>;	$r2 = interfaceinvoke $r1.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames getDefinedNames()>();	if $r2 != null goto $r3 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook>;	$r15 = r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook workbook>;	$r17 = interfaceinvoke $r15.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTWorkbook: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames addNewDefinedNames()>();	goto [?= $r16 = interfaceinvoke $r17.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName addNewDefinedName()>()];	$r16 = interfaceinvoke $r17.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedNames: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName addNewDefinedName()>();	interfaceinvoke $r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: void setName(java.lang.String)>(r4);	$l1 = (long) i0;	interfaceinvoke $r16.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName: void setLocalSheetId(long)>($l1);	$r5 = virtualinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName getBuiltInName(java.lang.String,int)>(r4, i0);	if $r5 == null goto $r6 = specialinvoke r0.<org.apache.poi.xssf.usermodel.XSSFWorkbook: org.apache.poi.xssf.usermodel.XSSFName createAndStoreName(org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName)>($r16);	$r7 = new org.apache.poi.ooxml.POIXMLException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Builtin (");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") already exists for sheet (");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<org.apache.poi.ooxml.POIXMLException: void <init>(java.lang.String)>($r14);	throw $r7
;block_num 4