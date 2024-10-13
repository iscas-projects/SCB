(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2825 0)
(declare-sort var3661 0)
(declare-sort var1364 0)
(declare-sort var2099 0)
(declare-sort var73 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3661_builder/-311177978 () String)
(declare-fun field/-397091132 (var2825) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun direction/-397091132 (var2825) var1364)
(declare-fun cast-from-var1364-to-var2099 (var1364) var2099)
(declare-fun append/-1031950772 (String var73) String)
(declare-fun cast-from-var2099-to-var73 (var2099) var73)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2825 var2825)
(declare-const null-var1364 var1364)
(declare-const var3362 var2825) ; Statement: r0 := @this: cn.hutool.db.sql.Order 
(assert (not (= var3362 null-var2825)))
(define-const var2404 String var3661_builder/-311177978) ; Statement: $r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(define-const var3207 String (field/-397091132 var3362)) ; Statement: $r1 = r0.<cn.hutool.db.sql.Order: java.lang.String field> 
(assert true)
(define-const var297 String (append/672562846 var2404 var3207)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var2404!1 String)
(assert (= var2404!1 (str.++ var2404 var3207)))
(assert true)
(define-const var1889 String (append/672562846 var297 " ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var297!1 String)
(assert (= var297!1 (str.++ var297 " ")))
(define-const var1390 var1364 (direction/-397091132 var3362)) ; Statement: $r4 = r0.<cn.hutool.db.sql.Order: cn.hutool.db.sql.Direction direction> 
 ; Statement: if null != $r4 goto $r8 = r0.<cn.hutool.db.sql.Order: cn.hutool.db.sql.Direction direction> 
(assert (not (= null-var1364 var1390))) ; Cond: null != $r4 
(define-const var2797 var2099 (cast-from-var1364-to-var2099 (direction/-397091132 var3362))) ; Statement: $r8 = r0.<cn.hutool.db.sql.Order: cn.hutool.db.sql.Direction direction> 
(assert true) ; Non Conditional
(assert true)
(define-const var692 String (append/-1031950772 var1889 (cast-from-var2099-to-var73 var2797))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var1889!1 String)
(assert (str.prefixof var1889 var1889!1))
(assert true)
(define-const var2130 String (toString/-2075883882 var692)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3661_builder/-311177978=([], java.lang.StringBuilder), field/-397091132=([cn.hutool.db.sql.Order], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), direction/-397091132=([cn.hutool.db.sql.Order], cn.hutool.db.sql.Direction), cast-from-var1364-to-var2099=([cn.hutool.db.sql.Direction], java.io.Serializable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2099-to-var73=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2825=cn.hutool.db.sql.Order, var3362=r0, var3661=cn.hutool.core.util.StrUtil, var2404=$r2, var3207=$r1, var297=$r3, var1889=$r5, var1364=cn.hutool.db.sql.Direction, var1390=$r4, var2099=java.io.Serializable, var2797=$r8, var73=java.lang.Object, var692=$r6, var2130=$r7}
; {cn.hutool.db.sql.Order=var2825, r0=var3362, cn.hutool.core.util.StrUtil=var3661, $r2=var2404, $r1=var3207, $r3=var297, $r5=var1889, cn.hutool.db.sql.Direction=var1364, $r4=var1390, java.io.Serializable=var2099, $r8=var2797, java.lang.Object=var73, $r6=var692, $r7=var2130}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.db.sql.Order;	$r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	$r1 = r0.<cn.hutool.db.sql.Order: java.lang.String field>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r4 = r0.<cn.hutool.db.sql.Order: cn.hutool.db.sql.Direction direction>;	if null != $r4 goto $r8 = r0.<cn.hutool.db.sql.Order: cn.hutool.db.sql.Direction direction>;	$r8 = r0.<cn.hutool.db.sql.Order: cn.hutool.db.sql.Direction direction>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3