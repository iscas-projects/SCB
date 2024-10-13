(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3015 0)
(declare-sort var684 0)
(declare-sort var2850 0)
(declare-sort var2416 0)
(declare-sort var1933 0)
(declare-sort var1767 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3015_validateEntity/970713086 (var684) void)
(declare-fun getTableName/-517879498 (var684) String)
(declare-fun wrapper/-1710938057 (var3015) var2850)
(declare-fun sql/-1710938057 (var3015) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1933_bootstrap$/-1407331329 (var3015) var2416)
(declare-fun forEach/-83680035 (var1767 var2416) void)
(declare-fun cast-from-var684-to-var1767 (var684) var1767)
(declare-const null-var3015 var3015)
(declare-const null-var684 var684)
(declare-const null-var2850 var2850)
(declare-const var2544 var3015) ; Statement: r1 := @this: cn.hutool.db.sql.SqlBuilder 
(assert (not (= var2544 null-var3015)))
(declare-const var440 var684) ; Statement: r0 := @parameter0: cn.hutool.db.Entity 
(assert (not (= var440 null-var684)))
;(assert (var3015_validateEntity/970713086 var440)) ; Statement: staticinvoke <cn.hutool.db.sql.SqlBuilder: void validateEntity(cn.hutool.db.Entity)>(r0) 

(declare-const var440!1 var684)
(assert true)
(define-const var3183 String (getTableName/-517879498 var440!1)) ; Statement: r8 = virtualinvoke r0.<cn.hutool.db.Entity: java.lang.String getTableName()>() 
(define-const var1229 var2850 (wrapper/-1710938057 var2544)) ; Statement: $r2 = r1.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.Wrapper wrapper> 
 ; Statement: if null == $r2 goto $r3 = r1.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> 
(assert (= null-var2850 var1229)) ; Cond: null == $r2 
(define-const var3254 String (sql/-1710938057 var2544)) ; Statement: $r3 = r1.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql> 
(assert true)
(define-const var1133 String (append/672562846 var3254 "UPDATE ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UPDATE ") 
(declare-const var3254!1 String)
(assert (= var3254!1 (str.++ var3254 "UPDATE ")))
(assert true)
(define-const var2723 String (append/672562846 var1133 var3183)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var1133!1 String)
(assert (= var1133!1 (str.++ var1133 var3183)))
(assert true)
;(assert (append/672562846 var2723 " SET ")) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" SET ") 
(declare-const var2723!1 String)
(assert (= var2723!1 (str.++ var2723 " SET ")))
(define-const var3709 var2416 (var1933_bootstrap$/-1407331329 var2544)) ; Statement: $r6 = staticinvoke <cn.hutool.db.sql.SqlBuilder$lambda_update_1__529: java.util.function.BiConsumer bootstrap$(cn.hutool.db.sql.SqlBuilder)>(r1) 
(assert true)
;(assert (forEach/-83680035 (cast-from-var684-to-var1767 var440!1) var3709)) ; Statement: virtualinvoke r0.<cn.hutool.db.Entity: void forEach(java.util.function.BiConsumer)>($r6) 

(declare-const var440!2 var684)
(declare-const var3709!1 var2416)
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3015_validateEntity/970713086=([cn.hutool.db.Entity], void), getTableName/-517879498=([cn.hutool.db.Entity], java.lang.String), wrapper/-1710938057=([cn.hutool.db.sql.SqlBuilder], cn.hutool.db.sql.Wrapper), sql/-1710938057=([cn.hutool.db.sql.SqlBuilder], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1933_bootstrap$/-1407331329=([cn.hutool.db.sql.SqlBuilder], java.util.function.BiConsumer), forEach/-83680035=([java.util.LinkedHashMap, java.util.function.BiConsumer], void), cast-from-var684-to-var1767=([cn.hutool.db.Entity], java.util.LinkedHashMap)}
; {var3015=cn.hutool.db.sql.SqlBuilder, var2544=r1, var684=cn.hutool.db.Entity, var440=r0, var3183=r8, var2850=cn.hutool.db.sql.Wrapper, var1229=$r2, var3254=$r3, var1133=$r4, var2723=$r5, var2416=java.util.function.BiConsumer, var1933=cn.hutool.db.sql.SqlBuilder$lambda_update_1__529, var3709=$r6, var1767=java.util.LinkedHashMap}
; {cn.hutool.db.sql.SqlBuilder=var3015, r1=var2544, cn.hutool.db.Entity=var684, r0=var440, r8=var3183, cn.hutool.db.sql.Wrapper=var2850, $r2=var1229, $r3=var3254, $r4=var1133, $r5=var2723, java.util.function.BiConsumer=var2416, cn.hutool.db.sql.SqlBuilder$lambda_update_1__529=var1933, $r6=var3709, java.util.LinkedHashMap=var1767}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r1 := @this: cn.hutool.db.sql.SqlBuilder;	r0 := @parameter0: cn.hutool.db.Entity;	staticinvoke <cn.hutool.db.sql.SqlBuilder: void validateEntity(cn.hutool.db.Entity)>(r0);	r8 = virtualinvoke r0.<cn.hutool.db.Entity: java.lang.String getTableName()>();	$r2 = r1.<cn.hutool.db.sql.SqlBuilder: cn.hutool.db.sql.Wrapper wrapper>;	if null == $r2 goto $r3 = r1.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql>;	$r3 = r1.<cn.hutool.db.sql.SqlBuilder: java.lang.StringBuilder sql>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UPDATE ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" SET ");	$r6 = staticinvoke <cn.hutool.db.sql.SqlBuilder$lambda_update_1__529: java.util.function.BiConsumer bootstrap$(cn.hutool.db.sql.SqlBuilder)>(r1);	virtualinvoke r0.<cn.hutool.db.Entity: void forEach(java.util.function.BiConsumer)>($r6);	return r1
;block_num 2