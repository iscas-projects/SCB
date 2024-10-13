(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3520 0)
(declare-sort var2919 0)
(declare-sort var3049 0)
(declare-sort var954 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun regions/-245270905 (var3520) var2919)
(declare-fun getCellRangeAddresses/1251019366 (var2919) (Array Int var3049))
(declare-fun getLength-Arr-var3049-1 ((Array Int var3049)) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun validationConstraint/-245270905 (var3520) var954)
(declare-fun prettyPrint/1217538651 (var954) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3520 var3520)
(declare-const var2845 var3520) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFDataValidation 
(assert (not (= var2845 null-var3520)))
(define-const var1314 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1314)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1314!1 String)
(assert (= var1314!1 ""))
(define-const var1094 var2919 (regions/-245270905 var2845)) ; Statement: $r2 = r1.<org.apache.poi.xssf.usermodel.XSSFDataValidation: org.apache.poi.ss.util.CellRangeAddressList regions> 
(assert true)
(define-const var3612 (Array Int var3049) (getCellRangeAddresses/1251019366 var1094)) ; Statement: r3 = virtualinvoke $r2.<org.apache.poi.ss.util.CellRangeAddressList: org.apache.poi.ss.util.CellRangeAddress[] getCellRangeAddresses()>() 
(define-const var2891 Int (getLength-Arr-var3049-1 var3612)) ; Statement: i0 = lengthof r3 
(define-const var2866 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" => ") 
(assert (>= var2866 var2891)) ; Cond: i1 >= i0 
(assert true)
;(assert (append/672562846 var1314!1 " => ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" => ") 
(declare-const var1314!2 String)
(assert (= var1314!2 (str.++ var1314!1 " => ")))
(define-const var1878 var954 (validationConstraint/-245270905 var2845)) ; Statement: $r4 = r1.<org.apache.poi.xssf.usermodel.XSSFDataValidation: org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint validationConstraint> 
(assert true)
(define-const var234 String (prettyPrint/1217538651 var1878)) ; Statement: $r5 = virtualinvoke $r4.<org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint: java.lang.String prettyPrint()>() 
(assert true)
;(assert (append/672562846 var1314!2 var234)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1314!3 String)
(assert (= var1314!3 (str.++ var1314!2 var234)))
(assert true)
(define-const var2495 String (toString/-2075883882 var1314!3)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), regions/-245270905=([org.apache.poi.xssf.usermodel.XSSFDataValidation], org.apache.poi.ss.util.CellRangeAddressList), getCellRangeAddresses/1251019366=([org.apache.poi.ss.util.CellRangeAddressList], org.apache.poi.ss.util.CellRangeAddress[]), getLength-Arr-var3049-1=([org.apache.poi.ss.util.CellRangeAddress[]], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), validationConstraint/-245270905=([org.apache.poi.xssf.usermodel.XSSFDataValidation], org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint), prettyPrint/1217538651=([org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3520=org.apache.poi.xssf.usermodel.XSSFDataValidation, var2845=r1, var1314=$r0, var2919=org.apache.poi.ss.util.CellRangeAddressList, var1094=$r2, var3049=org.apache.poi.ss.util.CellRangeAddress, var3612=r3, var2891=i0, var2866=i1, var954=org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint, var1878=$r4, var234=$r5, var2495=$r6}
; {org.apache.poi.xssf.usermodel.XSSFDataValidation=var3520, r1=var2845, $r0=var1314, org.apache.poi.ss.util.CellRangeAddressList=var2919, $r2=var1094, org.apache.poi.ss.util.CellRangeAddress=var3049, r3=var3612, i0=var2891, i1=var2866, org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint=var954, $r4=var1878, $r5=var234, $r6=var2495}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFDataValidation;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.apache.poi.xssf.usermodel.XSSFDataValidation: org.apache.poi.ss.util.CellRangeAddressList regions>;	r3 = virtualinvoke $r2.<org.apache.poi.ss.util.CellRangeAddressList: org.apache.poi.ss.util.CellRangeAddress[] getCellRangeAddresses()>();	i0 = lengthof r3;	i1 = 0;	if i1 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" => ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" => ");	$r4 = r1.<org.apache.poi.xssf.usermodel.XSSFDataValidation: org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint validationConstraint>;	$r5 = virtualinvoke $r4.<org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint: java.lang.String prettyPrint()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3