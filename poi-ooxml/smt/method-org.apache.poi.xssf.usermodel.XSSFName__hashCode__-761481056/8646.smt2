(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2022 0)
(declare-sort var3064 0)
(declare-sort var1044 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _ctName/-35664305 (var2022) var3064)
(declare-fun toString/-522406933 (var1044) String)
(declare-fun cast-from-var3064-to-var1044 (var3064) var1044)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2022 var2022)
(declare-const var443 var2022) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFName 
(assert (not (= var443 null-var2022)))
(define-const var1205 var3064 (_ctName/-35664305 var443)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFName: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName _ctName> 
(assert true)
(define-const var1916 String (toString/-522406933 (cast-from-var3064-to-var1044 var1205))) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var310 Int (hashCode/-467973558 var1916)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {_ctName/-35664305=([org.apache.poi.xssf.usermodel.XSSFName], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3064-to-var1044=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName], java.lang.Object), hashCode/-467973558=([java.lang.String], int)}
; {var2022=org.apache.poi.xssf.usermodel.XSSFName, var443=r0, var3064=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName, var1205=$r1, var1044=java.lang.Object, var1916=$r2, var310=$i0}
; {org.apache.poi.xssf.usermodel.XSSFName=var2022, r0=var443, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName=var3064, $r1=var1205, java.lang.Object=var1044, $r2=var1916, $i0=var310}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFName;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFName: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTDefinedName _ctName>;	$r2 = virtualinvoke $r1.<java.lang.Object: java.lang.String toString()>();	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	return $i0
;block_num 1