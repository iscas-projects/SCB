(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var855 0)
(declare-sort var2078 0)
(declare-sort var2848 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _cellXf/-16279509 (var855) var2078)
(declare-fun toString/-522406933 (var2848) String)
(declare-fun cast-from-var2078-to-var2848 (var2078) var2848)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var855 var855)
(declare-const var1746 var855) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.XSSFCellStyle 
(assert (not (= var1746 null-var855)))
(define-const var3268 var2078 (_cellXf/-16279509 var1746)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.XSSFCellStyle: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf _cellXf> 
(assert true)
(define-const var3777 String (toString/-522406933 (cast-from-var2078-to-var2848 var3268))) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2308 Int (hashCode/-467973558 var3777)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {_cellXf/-16279509=([org.apache.poi.xssf.usermodel.XSSFCellStyle], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2078-to-var2848=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf], java.lang.Object), hashCode/-467973558=([java.lang.String], int)}
; {var855=org.apache.poi.xssf.usermodel.XSSFCellStyle, var1746=r0, var2078=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf, var3268=$r1, var2848=java.lang.Object, var3777=$r2, var2308=$i0}
; {org.apache.poi.xssf.usermodel.XSSFCellStyle=var855, r0=var1746, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf=var2078, $r1=var3268, java.lang.Object=var2848, $r2=var3777, $i0=var2308}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.XSSFCellStyle;	$r1 = r0.<org.apache.poi.xssf.usermodel.XSSFCellStyle: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTXf _cellXf>;	$r2 = virtualinvoke $r1.<java.lang.Object: java.lang.String toString()>();	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	return $i0
;block_num 1