(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3182 0)
(declare-sort var2383 0)
(declare-sort var1494 0)
(declare-sort var1641 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/-2006819493 (var3182) var2383)
(declare-fun hashCode/1739917532 (var1494) Int)
(declare-fun cast-from-var2383-to-var1494 (var2383) var1494)
(declare-fun getClass/1258963082 (var1494) ClassObject)
(declare-fun cast-from-var3182-to-var1494 (var3182) var1494)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun columnAlias/-2006819493 (var3182) String)
(declare-const null-var3182 var3182)
(declare-const null-var2383 var2383)
(declare-const null-String String)
(declare-const var1819 var3182) ; Statement: r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn 
(assert (not (= var1819 null-var3182)))
(define-const var3669 var2383 (type/-2006819493 var1819)) ; Statement: $r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type> 
 ; Statement: if $r1 == null goto $i5 = 0 
(assert (not (= var3669 null-var2383))) ; Negate: Cond: $r1 == null  
(define-const var3539 var2383 (type/-2006819493 var1819)) ; Statement: $r6 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type> 
(assert true)
(define-const var2300 Int (hashCode/1739917532 (cast-from-var2383-to-var1494 var3539))) ; Statement: $i5 = virtualinvoke $r6.<java.lang.Object: int hashCode()>() 
 ; Statement: goto [?= $i1 = 31 * $i5] 
(assert true) ; Non Conditional
(define-const var3250 Int (* 31 var2300)) ; Statement: $i1 = 31 * $i5 
(assert true)
(define-const var1215 ClassObject (getClass/1258963082 (cast-from-var3182-to-var1494 var1819))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var682 String (getName/-1958580599 var1215)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1433 Int (hashCode/-467973558 var682)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var351 Int (+ var3250 var1433)) ; Statement: $i4 = $i1 + $i0 
(define-const var3316 Int (* 31 var351)) ; Statement: $i2 = 31 * $i4 
(define-const var1287 String (columnAlias/-2006819493 var1819)) ; Statement: $r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: java.lang.String columnAlias> 
 ; Statement: if $r4 == null goto $i6 = 0 
(assert (= var1287 null-String)) ; Cond: $r4 == null 
(define-const var1835 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var845 Int (+ var3316 var1835)) ; Statement: $i3 = $i2 + $i6 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {type/-2006819493=([org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn], org.hibernate.type.Type), hashCode/1739917532=([java.lang.Object], int), cast-from-var2383-to-var1494=([org.hibernate.type.Type], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3182-to-var1494=([org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), hashCode/-467973558=([java.lang.String], int), columnAlias/-2006819493=([org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn], java.lang.String)}
; {var3182=org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn, var1819=r0, var2383=org.hibernate.type.Type, var3669=$r1, var3539=$r6, var1494=java.lang.Object, var2300=$i5, var3250=$i1, var1215=$r2, var682=$r3, var1433=$i0, var351=$i4, var3316=$i2, var1287=$r4, var1641=null_type, var1835=$i6, var845=$i3}
; {org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn=var3182, r0=var1819, org.hibernate.type.Type=var2383, $r1=var3669, $r6=var3539, java.lang.Object=var1494, $i5=var2300, $i1=var3250, $r2=var1215, $r3=var682, $i0=var1433, $i4=var351, $i2=var3316, $r4=var1287, null_type=var1641, $i6=var1835, $i3=var845}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn;	$r1 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type>;	if $r1 == null goto $i5 = 0;	$r6 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: org.hibernate.type.Type type>;	$i5 = virtualinvoke $r6.<java.lang.Object: int hashCode()>();	goto [?= $i1 = 31 * $i5];	$i1 = 31 * $i5;	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i4 = $i1 + $i0;	$i2 = 31 * $i4;	$r4 = r0.<org.hibernate.engine.query.spi.sql.NativeSQLQueryScalarReturn: java.lang.String columnAlias>;	if $r4 == null goto $i6 = 0;	$i6 = 0;	$i3 = $i2 + $i6;	return $i3
;block_num 5