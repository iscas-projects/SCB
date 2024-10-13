(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var558 0)
(declare-sort var1792 0)
(declare-sort var3937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _fill/14985079 (var558) var1792)
(declare-fun toString/-522406933 (var3937) String)
(declare-fun cast-from-var1792-to-var3937 (var1792) var3937)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var558 var558)
(declare-const var3779 var558) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.extensions.XSSFCellFill 
(assert (not (= var3779 null-var558)))
(define-const var1646 var1792 (_fill/14985079 var3779)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.extensions.XSSFCellFill: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill _fill> 
(assert true)
(define-const var854 String (toString/-522406933 (cast-from-var1792-to-var3937 var1646))) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var990 Int (hashCode/-467973558 var854)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {_fill/14985079=([org.apache.poi.xssf.usermodel.extensions.XSSFCellFill], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1792-to-var3937=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill], java.lang.Object), hashCode/-467973558=([java.lang.String], int)}
; {var558=org.apache.poi.xssf.usermodel.extensions.XSSFCellFill, var3779=r0, var1792=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill, var1646=$r1, var3937=java.lang.Object, var854=$r2, var990=$i0}
; {org.apache.poi.xssf.usermodel.extensions.XSSFCellFill=var558, r0=var3779, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill=var1792, $r1=var1646, java.lang.Object=var3937, $r2=var854, $i0=var990}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.extensions.XSSFCellFill;	$r1 = r0.<org.apache.poi.xssf.usermodel.extensions.XSSFCellFill: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTFill _fill>;	$r2 = virtualinvoke $r1.<java.lang.Object: java.lang.String toString()>();	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	return $i0
;block_num 1