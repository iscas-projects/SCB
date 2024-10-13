(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1717 0)
(declare-sort var2300 0)
(declare-sort var2483 0)
(declare-sort var1100 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dataSourceName/2040706918 (var2300) String)
(declare-fun cast-from-var1717-to-var2300 (var1717) var2300)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun setting/-30870940 (var1717) var1100)
(declare-fun hashCode/1916587995 (var1100) Int)
(declare-const null-var1717 var1717)
(declare-const null-String String)
(declare-const null-var1100 var1100)
(declare-const var594 var1717) ; Statement: r0 := @this: cn.hutool.db.ds.AbstractDSFactory 
(assert (not (= var594 null-var1717)))
(define-const var1602 String (dataSourceName/2040706918 (cast-from-var1717-to-var2300 var594))) ; Statement: $r1 = r0.<cn.hutool.db.ds.AbstractDSFactory: java.lang.String dataSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<cn.hutool.db.ds.AbstractDSFactory: java.lang.String dataSourceName> 
(assert (not (= var1602 null-String))) ; Cond: $r1 != null 
(define-const var3110 String (dataSourceName/2040706918 (cast-from-var1717-to-var2300 var594))) ; Statement: $r2 = r0.<cn.hutool.db.ds.AbstractDSFactory: java.lang.String dataSourceName> 
(assert true)
(define-const var3282 Int (hashCode/-467973558 var3110)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2232 Int (+ 31 var3282)) ; Statement: $i2 = 31 + $i3 
(define-const var2463 Int (* 31 var2232)) ; Statement: $i0 = 31 * $i2 
(define-const var411 var1100 (setting/-30870940 var594)) ; Statement: $r3 = r0.<cn.hutool.db.ds.AbstractDSFactory: cn.hutool.setting.Setting setting> 
 ; Statement: if $r3 != null goto $r4 = r0.<cn.hutool.db.ds.AbstractDSFactory: cn.hutool.setting.Setting setting> 
(assert (not (= var411 null-var1100))) ; Cond: $r3 != null 
(define-const var434 var1100 (setting/-30870940 var594)) ; Statement: $r4 = r0.<cn.hutool.db.ds.AbstractDSFactory: cn.hutool.setting.Setting setting> 
(assert true)
(define-const var1672 Int (hashCode/1916587995 var434)) ; Statement: $i4 = virtualinvoke $r4.<cn.hutool.setting.Setting: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1488 Int (+ var2463 var1672)) ; Statement: $i1 = $i0 + $i4 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {dataSourceName/2040706918=([cn.hutool.db.ds.DSFactory], java.lang.String), cast-from-var1717-to-var2300=([cn.hutool.db.ds.AbstractDSFactory], cn.hutool.db.ds.DSFactory), hashCode/-467973558=([java.lang.String], int), setting/-30870940=([cn.hutool.db.ds.AbstractDSFactory], cn.hutool.setting.Setting), hashCode/1916587995=([cn.hutool.setting.Setting], int)}
; {var1717=cn.hutool.db.ds.AbstractDSFactory, var594=r0, var2300=cn.hutool.db.ds.DSFactory, var1602=$r1, var2483=null_type, var3110=$r2, var3282=$i3, var2232=$i2, var2463=$i0, var1100=cn.hutool.setting.Setting, var411=$r3, var434=$r4, var1672=$i4, var1488=$i1}
; {cn.hutool.db.ds.AbstractDSFactory=var1717, r0=var594, cn.hutool.db.ds.DSFactory=var2300, $r1=var1602, null_type=var2483, $r2=var3110, $i3=var3282, $i2=var2232, $i0=var2463, cn.hutool.setting.Setting=var1100, $r3=var411, $r4=var434, $i4=var1672, $i1=var1488}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: cn.hutool.db.ds.AbstractDSFactory;	$r1 = r0.<cn.hutool.db.ds.AbstractDSFactory: java.lang.String dataSourceName>;	if $r1 != null goto $r2 = r0.<cn.hutool.db.ds.AbstractDSFactory: java.lang.String dataSourceName>;	$r2 = r0.<cn.hutool.db.ds.AbstractDSFactory: java.lang.String dataSourceName>;	$i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i2 = 31 + $i3;	$i0 = 31 * $i2;	$r3 = r0.<cn.hutool.db.ds.AbstractDSFactory: cn.hutool.setting.Setting setting>;	if $r3 != null goto $r4 = r0.<cn.hutool.db.ds.AbstractDSFactory: cn.hutool.setting.Setting setting>;	$r4 = r0.<cn.hutool.db.ds.AbstractDSFactory: cn.hutool.setting.Setting setting>;	$i4 = virtualinvoke $r4.<cn.hutool.setting.Setting: int hashCode()>();	$i1 = $i0 + $i4;	return $i1
;block_num 5