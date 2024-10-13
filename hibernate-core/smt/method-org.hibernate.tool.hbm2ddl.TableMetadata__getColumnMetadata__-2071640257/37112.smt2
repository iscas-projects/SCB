(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var181 0)
(declare-sort var3515 0)
(declare-sort var3864 0)
(declare-sort var1367 0)
(declare-sort var3349 0)
(declare-sort var3092 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun columns/-1096668020 (var181) var3864)
(declare-fun toLowerCase/1946809429 (String var1367) String)
(declare-fun var3864_get/1088891777 (var3864 var3349) var3349)
(declare-fun cast-from-String-to-var3349 (String) var3349)
(declare-fun cast-from-var3349-to-var3092 (var3349) var3092)
(declare-const null-var181 var181)
(declare-const null-String String)
(declare-const var1367-ROOT var1367)
(declare-const var3671 var181) ; Statement: r0 := @this: org.hibernate.tool.hbm2ddl.TableMetadata 
(assert (not (= var3671 null-var181)))
(declare-const var2272 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2272 null-String)))
(define-const var1124 var3864 (columns/-1096668020 var3671)) ; Statement: $r3 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map columns> 
(define-const var3110 var1367 var1367-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var969 String (toLowerCase/1946809429 var2272 var3110)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(define-const var104 var3349 (var3864_get/1088891777 var1124 (cast-from-String-to-var3349 var969))) ; Statement: $r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4) 
(define-const var3816 var3092 (cast-from-var3349-to-var3092 var104)) ; Statement: $r6 = (org.hibernate.tool.hbm2ddl.ColumnMetadata) $r5 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {columns/-1096668020=([org.hibernate.tool.hbm2ddl.TableMetadata], java.util.Map), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), var3864_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3349=([java.lang.String], java.lang.Object), cast-from-var3349-to-var3092=([java.lang.Object], org.hibernate.tool.hbm2ddl.ColumnMetadata)}
; {var181=org.hibernate.tool.hbm2ddl.TableMetadata, var3671=r0, var2272=r1, var3515=null_type, var3864=java.util.Map, var1124=$r3, var1367=java.util.Locale, var3110=$r2, var969=$r4, var3349=java.lang.Object, var104=$r5, var3092=org.hibernate.tool.hbm2ddl.ColumnMetadata, var3816=$r6}
; {org.hibernate.tool.hbm2ddl.TableMetadata=var181, r0=var3671, r1=var2272, null_type=var3515, java.util.Map=var3864, $r3=var1124, java.util.Locale=var1367, $r2=var3110, $r4=var969, java.lang.Object=var3349, $r5=var104, org.hibernate.tool.hbm2ddl.ColumnMetadata=var3092, $r6=var3816}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @this: org.hibernate.tool.hbm2ddl.TableMetadata;	r1 := @parameter0: java.lang.String;	$r3 = r0.<org.hibernate.tool.hbm2ddl.TableMetadata: java.util.Map columns>;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	$r5 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r4);	$r6 = (org.hibernate.tool.hbm2ddl.ColumnMetadata) $r5;	return $r6
;block_num 1