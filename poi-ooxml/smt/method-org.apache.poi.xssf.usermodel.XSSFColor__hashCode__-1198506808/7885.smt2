(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2236 0)
(declare-sort var456 0)
(declare-sort var2846 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ctColor/-1115335649 (var2236) var456)
(declare-fun toString/-522406933 (var2846) String)
(declare-fun cast-from-var456-to-var2846 (var456) var2846)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2236 var2236)
(declare-const var89 var2236) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFColor 
(assert (not (= var89 null-var2236)))
(define-const var665 var456 (ctColor/-1115335649 var89)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFColor: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColor ctColor> 
(assert true)
(define-const var1798 String (toString/-522406933 (cast-from-var456-to-var2846 var665))) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2178 Int (hashCode/-467973558 var1798)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {ctColor/-1115335649=([org.apache.poi.xssf.usermodel.XSSFColor], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColor), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var456-to-var2846=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColor], java.lang.Object), hashCode/-467973558=([java.lang.String], int)}
; {var2236=org.apache.poi.xssf.usermodel.XSSFColor, var89=r0, var456=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColor, var665=$r1, var2846=java.lang.Object, var1798=$r2, var2178=$i0}
; {org.apache.poi.xssf.usermodel.XSSFColor=var2236, r0=var89, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColor=var456, $r1=var665, java.lang.Object=var2846, $r2=var1798, $i0=var2178}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFColor;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFColor: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTColor ctColor>;	$r2 = virtualinvoke $r1.<java.lang.Object: java.lang.String toString()>();	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	return $i0
;block_num 1