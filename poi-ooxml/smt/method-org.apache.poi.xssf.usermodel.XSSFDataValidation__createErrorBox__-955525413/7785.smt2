(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1340 0)
(declare-sort var3786 0)
(declare-sort var3607 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ctDataValidation/-245270905 (var1340) var3607)
(declare-fun encodeUtf/-1297862013 (var1340 String) String)
(declare-fun var3607_setErrorTitle/-1561994793 (var3607 String) void)
(declare-fun var3607_setError/1624403413 (var3607 String) void)
(declare-const null-var1340 var1340)
(declare-const null-String String)
(declare-const var1190 var1340) ; Statement: r2 := @this: org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (not (= var1190 null-var1340)))
(declare-const var1907 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1907 null-String)))
(declare-const var1998 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1998 null-String)))
 ; Statement: if r0 == null goto (branch) 
(assert (= var1907 null-String)) ; Cond: r0 == null 
 ; Statement: if r1 == null goto $r3 = r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation ctDataValidation> 
(assert (= var1998 null-String)) ; Cond: r1 == null 
(define-const var1230 var3607 (ctDataValidation/-245270905 var1190)) ; Statement: $r3 = r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation ctDataValidation> 
(assert true)
(define-const var64 String (encodeUtf/-1297862013 var1190 var1907)) ; Statement: $r4 = specialinvoke r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: java.lang.String encodeUtf(java.lang.String)>(r0) 
;(assert (var3607_setErrorTitle/-1561994793 var1230 var64)) ; Statement: interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: void setErrorTitle(java.lang.String)>($r4) 

(declare-const var1230!1 var3607)
(declare-const var64!1 String)
(define-const var1168 var3607 (ctDataValidation/-245270905 var1190)) ; Statement: $r5 = r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation ctDataValidation> 
(assert true)
(define-const var2734 String (encodeUtf/-1297862013 var1190 var1998)) ; Statement: $r6 = specialinvoke r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: java.lang.String encodeUtf(java.lang.String)>(r1) 
;(assert (var3607_setError/1624403413 var1168 var2734)) ; Statement: interfaceinvoke $r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: void setError(java.lang.String)>($r6) 

(declare-const var1168!1 var3607)
(declare-const var2734!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {ctDataValidation/-245270905=([org.apache.poi.xssf.usermodel.XSSFDataValidation], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation), encodeUtf/-1297862013=([org.apache.poi.xssf.usermodel.XSSFDataValidation, java.lang.String], java.lang.String), var3607_setErrorTitle/-1561994793=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation, java.lang.String], void), var3607_setError/1624403413=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation, java.lang.String], void)}
; {var1340=org.apache.poi.xssf.usermodel.XSSFDataValidation, var1190=r2, var1907=r0, var3786=null_type, var1998=r1, var3607=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation, var1230=$r3, var64=$r4, var1168=$r5, var2734=$r6}
; {org.apache.poi.xssf.usermodel.XSSFDataValidation=var1340, r2=var1190, r0=var1907, null_type=var3786, r1=var1998, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation=var3607, $r3=var1230, $r4=var64, $r5=var1168, $r6=var2734}
;seq 
;cnt {}
;stmts r2 := @this: org.apache.poi.xssf.usermodel.XSSFDataValidation;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	if r0 == null goto (branch);	if r1 == null goto $r3 = r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation ctDataValidation>;	$r3 = r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation ctDataValidation>;	$r4 = specialinvoke r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: java.lang.String encodeUtf(java.lang.String)>(r0);	interfaceinvoke $r3.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: void setErrorTitle(java.lang.String)>($r4);	$r5 = r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation ctDataValidation>;	$r6 = specialinvoke r2.<org.apache.poi.xssf.usermodel.XSSFDataValidation: java.lang.String encodeUtf(java.lang.String)>(r1);	interfaceinvoke $r5.<org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDataValidation: void setError(java.lang.String)>($r6);	return
;block_num 3