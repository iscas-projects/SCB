(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var4 0)
(declare-sort var2621 0)
(declare-sort var1896 0)
(declare-sort var3152 0)
(declare-sort var1552 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun references/2133940011 (var4) var1896)
(declare-fun var2621_getString/-1872745797 (var2621 String) String)
(declare-fun toLowerCase/1946809429 (String var3152) String)
(declare-fun var1896_put/1464166817 (var1896 var1552 var1552) var1552)
(declare-fun cast-from-String-to-var1552 (String) var1552)
(declare-const null-var4 var4)
(declare-const null-var2621 var2621)
(declare-const var3152-ROOT var3152)
(declare-const var2702 var4) ; Statement: r0 := @this: org.hibernate.tool.hbm2ddl.ForeignKeyMetadata 
(assert (not (= var2702 null-var4)))
(declare-const var2591 var2621) ; Statement: r1 := @parameter0: java.sql.ResultSet 
(assert (not (= var2591 null-var2621)))
(define-const var2528 var1896 (references/2133940011 var2702)) ; Statement: $r2 = r0.<org.hibernate.tool.hbm2ddl.ForeignKeyMetadata: java.util.Map references> 
(define-const var637 String (var2621_getString/-1872745797 var2591 "FKCOLUMN_NAME")) ; Statement: $r4 = interfaceinvoke r1.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("FKCOLUMN_NAME") 
(define-const var3592 var3152 var3152-ROOT) ; Statement: $r3 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1649 String (toLowerCase/1946809429 var637 var3592)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3) 
(define-const var2588 String (var2621_getString/-1872745797 var2591 "PKCOLUMN_NAME")) ; Statement: $r5 = interfaceinvoke r1.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("PKCOLUMN_NAME") 
;(assert (var1896_put/1464166817 var2528 (cast-from-String-to-var1552 var1649) (cast-from-String-to-var1552 var2588))) ; Statement: interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r6, $r5) 

(declare-const var2528!1 var1896)
(declare-const var1649!1 String)
(declare-const var2588!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {references/2133940011=([org.hibernate.tool.hbm2ddl.ForeignKeyMetadata], java.util.Map), var2621_getString/-1872745797=([java.sql.ResultSet, java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var1896_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var1552=([java.lang.String], java.lang.Object)}
; {var4=org.hibernate.tool.hbm2ddl.ForeignKeyMetadata, var2702=r0, var2621=java.sql.ResultSet, var2591=r1, var1896=java.util.Map, var2528=$r2, var637=$r4, var3152=java.util.Locale, var3592=$r3, var1649=$r6, var2588=$r5, var1552=java.lang.Object}
; {org.hibernate.tool.hbm2ddl.ForeignKeyMetadata=var4, r0=var2702, java.sql.ResultSet=var2621, r1=var2591, java.util.Map=var1896, $r2=var2528, $r4=var637, java.util.Locale=var3152, $r3=var3592, $r6=var1649, $r5=var2588, java.lang.Object=var1552}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.hibernate.tool.hbm2ddl.ForeignKeyMetadata;	r1 := @parameter0: java.sql.ResultSet;	$r2 = r0.<org.hibernate.tool.hbm2ddl.ForeignKeyMetadata: java.util.Map references>;	$r4 = interfaceinvoke r1.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("FKCOLUMN_NAME");	$r3 = <java.util.Locale: java.util.Locale ROOT>;	$r6 = virtualinvoke $r4.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r3);	$r5 = interfaceinvoke r1.<java.sql.ResultSet: java.lang.String getString(java.lang.String)>("PKCOLUMN_NAME");	interfaceinvoke $r2.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r6, $r5);	return
;block_num 1