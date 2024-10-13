(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2787 0)
(declare-sort var1007 0)
(declare-sort var3747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun border/1406957856 (var2787) var1007)
(declare-fun toString/-522406933 (var3747) String)
(declare-fun cast-from-var1007-to-var3747 (var1007) var3747)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2787 var2787)
(declare-const var452 var2787) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder 
(assert (not (= var452 null-var2787)))
(define-const var510 var1007 (border/1406957856 var452)) ; Statement: $r1 = r0.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder border> 
(assert true)
(define-const var1146 String (toString/-522406933 (cast-from-var1007-to-var3747 var510))) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var934 Int (hashCode/-467973558 var1146)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {border/1406957856=([org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1007-to-var3747=([org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder], java.lang.Object), hashCode/-467973558=([java.lang.String], int)}
; {var2787=org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder, var452=r0, var1007=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder, var510=$r1, var3747=java.lang.Object, var1146=$r2, var934=$i0}
; {org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder=var2787, r0=var452, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder=var1007, $r1=var510, java.lang.Object=var3747, $r2=var1146, $i0=var934}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder;	$r1 = r0.<org.apache.poi.xssf.usermodel.extensions.XSSFCellBorder: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder border>;	$r2 = virtualinvoke $r1.<java.lang.Object: java.lang.String toString()>();	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	return $i0
;block_num 1