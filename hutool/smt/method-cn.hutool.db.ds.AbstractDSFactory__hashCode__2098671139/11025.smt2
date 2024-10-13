(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var573 0)
(declare-sort var678 0)
(declare-sort var3831 0)
(declare-sort var2869 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dataSourceName/2040706918 (var678) String)
(declare-fun cast-from-var573-to-var678 (var573) var678)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun setting/-30870940 (var573) var2869)
(declare-const null-var573 var573)
(declare-const null-String String)
(declare-const null-var2869 var2869)
(declare-const var3488 var573) ; Statement: r0 := @this: cn.hutool.db.ds.AbstractDSFactory 
(assert (not (= var3488 null-var573)))
(define-const var397 String (dataSourceName/2040706918 (cast-from-var573-to-var678 var3488))) ; Statement: $r1 = r0.<cn.hutool.db.ds.AbstractDSFactory: java.lang.String dataSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<cn.hutool.db.ds.AbstractDSFactory: java.lang.String dataSourceName> 
(assert (not (= var397 null-String))) ; Cond: $r1 != null 
(define-const var2096 String (dataSourceName/2040706918 (cast-from-var573-to-var678 var3488))) ; Statement: $r2 = r0.<cn.hutool.db.ds.AbstractDSFactory: java.lang.String dataSourceName> 
(assert true)
(define-const var1663 Int (hashCode/-467973558 var2096)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3505 Int (+ 31 var1663)) ; Statement: $i2 = 31 + $i3 
(define-const var1485 Int (* 31 var3505)) ; Statement: $i0 = 31 * $i2 
(define-const var3287 var2869 (setting/-30870940 var3488)) ; Statement: $r3 = r0.<cn.hutool.db.ds.AbstractDSFactory: cn.hutool.setting.Setting setting> 
 ; Statement: if $r3 != null goto $r4 = r0.<cn.hutool.db.ds.AbstractDSFactory: cn.hutool.setting.Setting setting> 
(assert (not (not (= var3287 null-var2869)))) ; Negate: Cond: $r3 != null  
(define-const var297 Int 0) ; Statement: $i4 = 0 
 ; Statement: goto [?= $i1 = $i0 + $i4] 
(assert true) ; Non Conditional
(define-const var3724 Int (+ var1485 var297)) ; Statement: $i1 = $i0 + $i4 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {dataSourceName/2040706918=([cn.hutool.db.ds.DSFactory], java.lang.String), cast-from-var573-to-var678=([cn.hutool.db.ds.AbstractDSFactory], cn.hutool.db.ds.DSFactory), hashCode/-467973558=([java.lang.String], int), setting/-30870940=([cn.hutool.db.ds.AbstractDSFactory], cn.hutool.setting.Setting)}
; {var573=cn.hutool.db.ds.AbstractDSFactory, var3488=r0, var678=cn.hutool.db.ds.DSFactory, var397=$r1, var3831=null_type, var2096=$r2, var1663=$i3, var3505=$i2, var1485=$i0, var2869=cn.hutool.setting.Setting, var3287=$r3, var297=$i4, var3724=$i1}
; {cn.hutool.db.ds.AbstractDSFactory=var573, r0=var3488, cn.hutool.db.ds.DSFactory=var678, $r1=var397, null_type=var3831, $r2=var2096, $i3=var1663, $i2=var3505, $i0=var1485, cn.hutool.setting.Setting=var2869, $r3=var3287, $i4=var297, $i1=var3724}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: cn.hutool.db.ds.AbstractDSFactory;	$r1 = r0.<cn.hutool.db.ds.AbstractDSFactory: java.lang.String dataSourceName>;	if $r1 != null goto $r2 = r0.<cn.hutool.db.ds.AbstractDSFactory: java.lang.String dataSourceName>;	$r2 = r0.<cn.hutool.db.ds.AbstractDSFactory: java.lang.String dataSourceName>;	$i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i2 = 31 + $i3;	$i0 = 31 * $i2;	$r3 = r0.<cn.hutool.db.ds.AbstractDSFactory: cn.hutool.setting.Setting setting>;	if $r3 != null goto $r4 = r0.<cn.hutool.db.ds.AbstractDSFactory: cn.hutool.setting.Setting setting>;	$i4 = 0;	goto [?= $i1 = $i0 + $i4];	$i1 = $i0 + $i4;	return $i1
;block_num 5