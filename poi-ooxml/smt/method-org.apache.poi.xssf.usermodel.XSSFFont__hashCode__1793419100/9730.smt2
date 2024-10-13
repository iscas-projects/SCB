(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2071 0)
(declare-sort var2494 0)
(declare-sort var2958 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _ctFont/-35889133 (var2071) var2494)
(declare-fun toString/-522406933 (var2958) String)
(declare-fun cast-from-var2494-to-var2958 (var2494) var2958)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2071 var2071)
(declare-const var697 var2071) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFFont 
(assert (not (= var697 null-var2071)))
(define-const var2624 var2494 (_ctFont/-35889133 var697)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFFont: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont _ctFont> 
(assert true)
(define-const var3170 String (toString/-522406933 (cast-from-var2494-to-var2958 var2624))) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var660 Int (hashCode/-467973558 var3170)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {_ctFont/-35889133=([org.apache.poi.xssf.usermodel.XSSFFont], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2494-to-var2958=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont], java.lang.Object), hashCode/-467973558=([java.lang.String], int)}
; {var2071=org.apache.poi.xssf.usermodel.XSSFFont, var697=r0, var2494=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont, var2624=$r1, var2958=java.lang.Object, var3170=$r2, var660=$i0}
; {org.apache.poi.xssf.usermodel.XSSFFont=var2071, r0=var697, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont=var2494, $r1=var2624, java.lang.Object=var2958, $r2=var3170, $i0=var660}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFFont;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFFont: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFont _ctFont>;	$r2 = virtualinvoke $r1.<java.lang.Object: java.lang.String toString()>();	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	return $i0
;block_num 1