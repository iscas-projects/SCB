(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var781 0)
(declare-sort var3795 0)
(declare-sort var3419 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ctDataValidation/-245270905 (var781) var3419)
(declare-fun encodeUtf/-1297862013 (var781 String) String)
(declare-fun var3419_setPromptTitle/-761676599 (var3419 String) void)
(declare-fun var3419_setPrompt/422902691 (var3419 String) void)
(declare-const null-var781 var781)
(declare-const null-String String)
(declare-const var3309 var781) ; Statement: r2 := @this: org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (not (= var3309 null-var781)))
(declare-const var1510 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1510 null-String)))
(declare-const var829 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var829 null-String)))
 ; Statement: if r0 == null goto (branch) 
(assert (= var1510 null-String)) ; Cond: r0 == null 
 ; Statement: if r1 == null goto $r3 = r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation ctDataValidation> 
(assert (= var829 null-String)) ; Cond: r1 == null 
(define-const var2601 var3419 (ctDataValidation/-245270905 var3309)) ; Statement: $r3 = r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation ctDataValidation> 
(assert true)
(define-const var3804 String (encodeUtf/-1297862013 var3309 var1510)) ; Statement: $r4 = specialinvoke r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: java.lang.String encodeUtf(java.lang.String)>(r0) 
;(assert (var3419_setPromptTitle/-761676599 var2601 var3804)) ; Statement: interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: void setPromptTitle(java.lang.String)>($r4) 

(declare-const var2601!1 var3419)
(declare-const var3804!1 String)
(define-const var2498 var3419 (ctDataValidation/-245270905 var3309)) ; Statement: $r5 = r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation ctDataValidation> 
(assert true)
(define-const var564 String (encodeUtf/-1297862013 var3309 var829)) ; Statement: $r6 = specialinvoke r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: java.lang.String encodeUtf(java.lang.String)>(r1) 
;(assert (var3419_setPrompt/422902691 var2498 var564)) ; Statement: interfaceinvoke $r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: void setPrompt(java.lang.String)>($r6) 

(declare-const var2498!1 var3419)
(declare-const var564!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {ctDataValidation/-245270905=([org.apache.poi.xssf.usermodel.XSSFDataValidation], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation), encodeUtf/-1297862013=([org.apache.poi.xssf.usermodel.XSSFDataValidation, java.lang.String], java.lang.String), var3419_setPromptTitle/-761676599=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation, java.lang.String], void), var3419_setPrompt/422902691=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation, java.lang.String], void)}
; {var781=org.apache.poi.xssf.usermodel.XSSFDataValidation, var3309=r2, var1510=r0, var3795=null_type, var829=r1, var3419=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation, var2601=$r3, var3804=$r4, var2498=$r5, var564=$r6}
; {org.apache.poi.xssf.usermodel.XSSFDataValidation=var781, r2=var3309, r0=var1510, null_type=var3795, r1=var829, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation=var3419, $r3=var2601, $r4=var3804, $r5=var2498, $r6=var564}
;seq 
;cnt {}
;stmts r2 := @this: org.apache.poi.xssf.usermodel.XSSFDataValidation;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	if r0 == null goto (branch);	if r1 == null goto $r3 = r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation ctDataValidation>;	$r3 = r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation ctDataValidation>;	$r4 = specialinvoke r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: java.lang.String encodeUtf(java.lang.String)>(r0);	interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: void setPromptTitle(java.lang.String)>($r4);	$r5 = r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation ctDataValidation>;	$r6 = specialinvoke r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: java.lang.String encodeUtf(java.lang.String)>(r1);	interfaceinvoke $r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: void setPrompt(java.lang.String)>($r6);	return
;block_num 3