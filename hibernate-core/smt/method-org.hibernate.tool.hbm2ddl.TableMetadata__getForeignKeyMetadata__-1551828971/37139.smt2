(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1062 0)
(declare-sort var1860 0)
(declare-sort var2691 0)
(declare-sort var3430 0)
(declare-sort var2488 0)
(declare-sort var2673 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun foreignKeys/-1096668020 (var1062) var2691)
(declare-fun toLowerCase/1946809429 (String var3430) String)
(declare-fun var2691_get/1088891777 (var2691 var2488) var2488)
(declare-fun cast-from-String-to-var2488 (String) var2488)
(declare-fun cast-from-var2488-to-var2673 (var2488) var2673)
(declare-const null-var1062 var1062)
(declare-const null-String String)
(declare-const var3430-ROOT var3430)
(declare-const var266 var1062) ; Statement: r0 := @this: org.hibernate.tool.hbm2ddl.TableMetadata 
(assert (not (= var266 null-var1062)))
(declare-const var1208 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1208 null-String)))
(define-const var1642 var2691 (foreignKeys/-1096668020 var266)) ; Statement: $r3 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map foreignKeys> 
(define-const var736 var3430 var3430-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3413 String (toLowerCase/1946809429 var1208 var736)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(define-const var2184 var2488 (var2691_get/1088891777 var1642 (cast-from-String-to-var2488 var3413))) ; Statement: $r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4) 
(define-const var3985 var2673 (cast-from-var2488-to-var2673 var2184)) ; Statement: $r6 = (org.hibernate.tool.hbm2ddl.ForeignKeyMetadata) $r5 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {foreignKeys/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.util.Map), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var2691_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2488=([java.lang.String], java.lang.Object), cast-from-var2488-to-var2673=([java.lang.Object], org.hibernate.tool.hbm2ddl.ForeignKeyMetadata)}
; {var1062=org.hibernate.tool.hbm2ddl.TableMetadata, var266=r0, var1208=r1, var1860=null_type, var2691=java.util.Map, var1642=$r3, var3430=java.util.Locale, var736=$r2, var3413=$r4, var2488=java.lang.Object, var2184=$r5, var2673=org.hibernate.tool.hbm2ddl.ForeignKeyMetadata, var3985=$r6}
; {org.hibernate.tool.hbm2ddl.TableMetadata=var1062, r0=var266, r1=var1208, null_type=var1860, java.util.Map=var2691, $r3=var1642, java.util.Locale=var3430, $r2=var736, $r4=var3413, java.lang.Object=var2488, $r5=var2184, org.hibernate.tool.hbm2ddl.ForeignKeyMetadata=var2673, $r6=var3985}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.hibernate.tool.hbm2ddl.TableMetadata;	r1 := @parameter0: java.lang.String;	$r3 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map foreignKeys>;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4);	$r6 = (org.hibernate.tool.hbm2ddl.ForeignKeyMetadata) $r5;	return $r6
;block_num 1