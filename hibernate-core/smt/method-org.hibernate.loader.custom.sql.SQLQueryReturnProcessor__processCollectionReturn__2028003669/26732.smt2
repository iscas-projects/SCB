(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var4 0)
(declare-sort var3500 0)
(declare-sort var2997 0)
(declare-sort var3755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getOwnerEntityName/1440972302 (var3500) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getOwnerProperty/527127463 (var3500) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getAlias/249253204 (var2997) String)
(declare-fun cast-from-var3500-to-var2997 (var3500) var2997)
(declare-fun getPropertyResultsMap/137119132 (var2997) var3755)
(declare-fun addCollection/-1823316186 (var4 String String var3755) void)
(declare-const null-var4 var4)
(declare-const null-var3500 var3500)
(declare-const var575 var4) ; Statement: r8 := @this: org.hibernate.loader.custom.sql.SQLQueryReturnProcessor 
(assert (not (= var575 null-var4)))
(declare-const var2550 var3500) ; Statement: r1 := @parameter0: org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn 
(assert (not (= var2550 null-var3500)))
(define-const var2586 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2586)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2586!1 String)
(assert (= var2586!1 ""))
(assert true)
(define-const var3730 String (getOwnerEntityName/1440972302 var2550)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String getOwnerEntityName()>() 
(assert true)
(define-const var2038 String (append/672562846 var2586!1 var3730)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2586!2 String)
(assert (= var2586!2 (str.++ var2586!1 var3730)))
(assert true)
(define-const var1980 String (append/-1166366385 var2038 46)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2038!1 String)
(assert (str.prefixof var2038 var2038!1))
(assert true)
(define-const var2225 String (getOwnerProperty/527127463 var2550)) ; Statement: $r4 = virtualinvoke r1.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String getOwnerProperty()>() 
(assert true)
(define-const var737 String (append/672562846 var1980 var2225)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1980!1 String)
(assert (= var1980!1 (str.++ var1980 var2225)))
(assert true)
(define-const var1230 String (toString/-2075883882 var737)) ; Statement: r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var808 String (getAlias/249253204 (cast-from-var3500-to-var2997 var2550))) ; Statement: $r10 = virtualinvoke r1.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String getAlias()>() 
(assert true)
(define-const var1975 var3755 (getPropertyResultsMap/137119132 (cast-from-var3500-to-var2997 var2550))) ; Statement: $r9 = virtualinvoke r1.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.util.Map getPropertyResultsMap()>() 
(assert true)
;(assert (addCollection/-1823316186 var575 var1230 var808 var1975)) ; Statement: specialinvoke r8.<org.hibernate.loader.custom.sql.SQLQueryReturnProcessor: void addCollection(java.lang.String,java.lang.String,java.util.Map)>(r7, $r10, $r9) 

(declare-const var575!1 var4)
(declare-const var1230!1 String)
(declare-const var808!1 String)
(declare-const var1975!1 var3755)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getOwnerEntityName/1440972302=([org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getOwnerProperty/527127463=([org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getAlias/249253204=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], java.lang.String), cast-from-var3500-to-var2997=([org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn], org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn), getPropertyResultsMap/137119132=([org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn], java.util.Map), addCollection/-1823316186=([org.hibernate.loader.custom.sql.SQLQueryReturnProcessor, java.lang.String, java.lang.String, java.util.Map], void)}
; {var4=org.hibernate.loader.custom.sql.SQLQueryReturnProcessor, var575=r8, var3500=org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn, var2550=r1, var2586=$r0, var3730=$r2, var2038=$r3, var1980=$r5, var2225=$r4, var737=$r6, var1230=r7, var2997=org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn, var808=$r10, var3755=java.util.Map, var1975=$r9}
; {org.hibernate.loader.custom.sql.SQLQueryReturnProcessor=var4, r8=var575, org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn=var3500, r1=var2550, $r0=var2586, $r2=var3730, $r3=var2038, $r5=var1980, $r4=var2225, $r6=var737, r7=var1230, org.hibernate.engine.query.spi.sql.NativeSQLQueryNonScalarReturn=var2997, $r10=var808, java.util.Map=var3755, $r9=var1975}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.hibernate.loader.custom.sql.SQLQueryReturnProcessor;	r1 := @parameter0: org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String getOwnerEntityName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r4 = virtualinvoke r1.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String getOwnerProperty()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke r1.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.lang.String getAlias()>();	$r9 = virtualinvoke r1.<org.hibernate.engine.query.spi.sql.NativeSQLQueryCollectionReturn: java.util.Map getPropertyResultsMap()>();	specialinvoke r8.<org.hibernate.loader.custom.sql.SQLQueryReturnProcessor: void addCollection(java.lang.String,java.lang.String,java.util.Map)>(r7, $r10, $r9);	return
;block_num 1