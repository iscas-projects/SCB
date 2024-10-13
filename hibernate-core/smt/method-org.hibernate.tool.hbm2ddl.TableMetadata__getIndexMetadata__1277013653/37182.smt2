(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2641 0)
(declare-sort var3588 0)
(declare-sort var3918 0)
(declare-sort var3453 0)
(declare-sort var581 0)
(declare-sort var798 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun indexes/-1096668020 (var2641) var3918)
(declare-fun toLowerCase/1946809429 (String var3453) String)
(declare-fun var3918_get/1088891777 (var3918 var581) var581)
(declare-fun cast-from-String-to-var581 (String) var581)
(declare-fun cast-from-var581-to-var798 (var581) var798)
(declare-const null-var2641 var2641)
(declare-const null-String String)
(declare-const var3453-ROOT var3453)
(declare-const var3072 var2641) ; Statement: r0 := @this: org.hibernate.tool.hbm2ddl.TableMetadata 
(assert (not (= var3072 null-var2641)))
(declare-const var1100 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1100 null-String)))
(define-const var2922 var3918 (indexes/-1096668020 var3072)) ; Statement: $r3 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map indexes> 
(define-const var1560 var3453 var3453-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var304 String (toLowerCase/1946809429 var1100 var1560)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(define-const var2253 var581 (var3918_get/1088891777 var2922 (cast-from-String-to-var581 var304))) ; Statement: $r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4) 
(define-const var3392 var798 (cast-from-var581-to-var798 var2253)) ; Statement: $r6 = (org.hibernate.tool.hbm2ddl.IndexMetadata) $r5 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {indexes/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.util.Map), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var3918_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var581=([java.lang.String], java.lang.Object), cast-from-var581-to-var798=([java.lang.Object], org.hibernate.tool.hbm2ddl.IndexMetadata)}
; {var2641=org.hibernate.tool.hbm2ddl.TableMetadata, var3072=r0, var1100=r1, var3588=null_type, var3918=java.util.Map, var2922=$r3, var3453=java.util.Locale, var1560=$r2, var304=$r4, var581=java.lang.Object, var2253=$r5, var798=org.hibernate.tool.hbm2ddl.IndexMetadata, var3392=$r6}
; {org.hibernate.tool.hbm2ddl.TableMetadata=var2641, r0=var3072, r1=var1100, null_type=var3588, java.util.Map=var3918, $r3=var2922, java.util.Locale=var3453, $r2=var1560, $r4=var304, java.lang.Object=var581, $r5=var2253, org.hibernate.tool.hbm2ddl.IndexMetadata=var798, $r6=var3392}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.hibernate.tool.hbm2ddl.TableMetadata;	r1 := @parameter0: java.lang.String;	$r3 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map indexes>;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4);	$r6 = (org.hibernate.tool.hbm2ddl.IndexMetadata) $r5;	return $r6
;block_num 1