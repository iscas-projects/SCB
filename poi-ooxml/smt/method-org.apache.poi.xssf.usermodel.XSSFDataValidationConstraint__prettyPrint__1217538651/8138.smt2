(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2351 0)
(declare-sort var389 0)
(declare-sort var1363 0)
(declare-sort var1689 0)
(declare-sort var66 0)
(declare-sort var1999 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun validationType/-963040316 (var2351) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var389_get/1088891777 (var389 var1689) var1689)
(declare-fun cast-from-Int-to-var1689 (Int) var1689)
(declare-fun cast-from-var1689-to-var66 (var1689) var66)
(declare-fun operator/-963040316 (var2351) Int)
(declare-fun cast-from-var1689-to-var1999 (var1689) var1999)
(declare-fun append/-1031950772 (String var1689) String)
(declare-fun cast-from-var66-to-var1689 (var66) var1689)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2351 var2351)
(declare-const var1363-validationTypeMappings var389)
(declare-const var1363-operatorTypeMappings var389)
(declare-const var713 var2351) ; Statement: r1 := @this: org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint 
(assert (not (= var713 null-var2351)))
(define-const var1942 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1942)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1942!1 String)
(assert (= var1942!1 ""))
(define-const var563 var389 var1363-validationTypeMappings) ; Statement: $r2 = <org.apache.poi.xssf.usermodel.XSSFDataValidation: java.util.Map validationTypeMappings> 
(define-const var42 Int (validationType/-963040316 var713)) ; Statement: $i0 = r1.<org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint: int validationType> 
(define-const var2815 Int (Int_valueOf/-1371140006 var42)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
(define-const var1109 var1689 (var389_get/1088891777 var563 (cast-from-Int-to-var1689 var2815))) ; Statement: $r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3) 
(define-const var3492 var66 (cast-from-var1689-to-var66 var1109)) ; Statement: r5 = (org.openxmlformats.schemas.spreadsheetml.x2006.main.STDataValidationType$Enum) $r4 
(define-const var3391 var389 var1363-operatorTypeMappings) ; Statement: $r6 = <org.apache.poi.xssf.usermodel.XSSFDataValidation: java.util.Map operatorTypeMappings> 
(define-const var3929 Int (operator/-963040316 var713)) ; Statement: $i1 = r1.<org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint: int operator> 
(define-const var3837 Int (Int_valueOf/-1371140006 var3929)) ; Statement: $r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
(define-const var2920 var1689 (var389_get/1088891777 var3391 (cast-from-Int-to-var1689 var3837))) ; Statement: $r8 = interfaceinvoke $r6.<java.util.Map: java.lang.Object get(java.lang.Object)>($r7) 
(define-const var1092 var1999 (cast-from-var1689-to-var1999 var2920)) ; Statement: r9 = (org.openxmlformats.schemas.spreadsheetml.x2006.main.STDataValidationOperator$Enum) $r8 
(assert true)
;(assert (append/-1031950772 var1942!1 (cast-from-var66-to-var1689 var3492))) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var1942!2 String)
(assert (str.prefixof var1942!1 var1942!2))
(assert true)
;(assert (append/-1166366385 var1942!2 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1942!3 String)
(assert (str.prefixof var1942!2 var1942!3))
(define-const var1633 Int (validationType/-963040316 var713)) ; Statement: $i2 = r1.<org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint: int validationType> 
 ; Statement: if $i2 == 0 goto $r27 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var1633 0)) ; Cond: $i2 == 0 
(assert true)
(define-const var2210 String (toString/-2075883882 var1942!3)) ; Statement: $r27 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), validationType/-963040316=([org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint], int), Int_valueOf/-1371140006=([int], java.lang.Integer), var389_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var1689=([java.lang.Integer], java.lang.Object), cast-from-var1689-to-var66=([java.lang.Object], org.openxmlformats.schemas.spreadsheetml.x2006.main.STDataValidationType$Enum), operator/-963040316=([org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint], int), cast-from-var1689-to-var1999=([java.lang.Object], org.openxmlformats.schemas.spreadsheetml.x2006.main.STDataValidationOperator$Enum), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var66-to-var1689=([org.openxmlformats.schemas.spreadsheetml.x2006.main.STDataValidationType$Enum], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2351=org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint, var713=r1, var1942=$r0, var389=java.util.Map, var1363=org.apache.poi.xssf.usermodel.XSSFDataValidation, var563=$r2, var42=$i0, var2815=$r3, var1689=java.lang.Object, var1109=$r4, var66=org.openxmlformats.schemas.spreadsheetml.x2006.main.STDataValidationType$Enum, var3492=r5, var3391=$r6, var3929=$i1, var3837=$r7, var2920=$r8, var1999=org.openxmlformats.schemas.spreadsheetml.x2006.main.STDataValidationOperator$Enum, var1092=r9, var1633=$i2, var2210=$r27}
; {org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint=var2351, r1=var713, $r0=var1942, java.util.Map=var389, org.apache.poi.xssf.usermodel.XSSFDataValidation=var1363, $r2=var563, $i0=var42, $r3=var2815, java.lang.Object=var1689, $r4=var1109, org.openxmlformats.schemas.spreadsheetml.x2006.main.STDataValidationType$Enum=var66, r5=var3492, $r6=var3391, $i1=var3929, $r7=var3837, $r8=var2920, org.openxmlformats.schemas.spreadsheetml.x2006.main.STDataValidationOperator$Enum=var1999, r9=var1092, $i2=var1633, $r27=var2210}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = <org.apache.poi.xssf.usermodel.XSSFDataValidation: java.util.Map validationTypeMappings>;	$i0 = r1.<org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint: int validationType>;	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	$r4 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>($r3);	r5 = (org.openxmlformats.schemas.spreadsheetml.x2006.main.STDataValidationType$Enum) $r4;	$r6 = <org.apache.poi.xssf.usermodel.XSSFDataValidation: java.util.Map operatorTypeMappings>;	$i1 = r1.<org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint: int operator>;	$r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	$r8 = interfaceinvoke $r6.<java.util.Map: java.lang.Object get(java.lang.Object)>($r7);	r9 = (org.openxmlformats.schemas.spreadsheetml.x2006.main.STDataValidationOperator$Enum) $r8;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$i2 = r1.<org.apache.poi.xssf.usermodel.XSSFDataValidationConstraint: int validationType>;	if $i2 == 0 goto $r27 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r27
;block_num 2