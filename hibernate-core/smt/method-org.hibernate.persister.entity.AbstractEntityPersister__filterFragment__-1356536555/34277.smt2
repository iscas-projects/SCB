(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var259 0)
(declare-sort var814 0)
(declare-sort var1957 0)
(declare-sort var1222 0)
(declare-sort var3300 0)
(declare-sort var3883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun filterHelper/824079012 (var259) var1222)
(declare-fun getFilterAliasGenerator/-54881581 (var3883 String) var3300)
(declare-fun cast-from-var259-to-var3883 (var259) var3883)
(declare-fun render/2062854292 (var1222 String var3300 var1957) void)
(declare-fun filterFragment/548985381 (var259 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var259 var259)
(declare-const null-String String)
(declare-const null-var1957 var1957)
(declare-const var1588 var259) ; Statement: r1 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var1588 null-var259)))
(declare-const var1477 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1477 null-String)))
(declare-const var89 var1957) ; Statement: r4 := @parameter1: java.util.Map 
(assert (not (= var89 null-var1957)))
(define-const var610 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var610)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var610!1 String)
(assert (= var610!1 ""))
(define-const var1736 var1222 (filterHelper/824079012 var1588)) ; Statement: $r3 = r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.FilterHelper filterHelper> 
(assert true)
(define-const var2230 var3300 (getFilterAliasGenerator/-54881581 (cast-from-var259-to-var3883 var1588) var1477)) ; Statement: $r5 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.FilterAliasGenerator getFilterAliasGenerator(java.lang.String)>(r2) 
(assert true)
;(assert (render/2062854292 var1736 var610!1 var2230 var89)) ; Statement: virtualinvoke $r3.<org.hibernate.internal.FilterHelper: void render(java.lang.StringBuilder,org.hibernate.internal.FilterAliasGenerator,java.util.Map)>($r0, $r5, r4) 

(declare-const var1736!1 var1222)
(declare-const var610!2 String)
(declare-const var2230!1 var3300)
(declare-const var89!1 var1957)
(assert true)
(define-const var1741 String (filterFragment/548985381 var1588 var1477)) ; Statement: $r6 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String filterFragment(java.lang.String)>(r2) 
(assert true)
(define-const var1171 String (append/672562846 var610!2 var1741)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var610!3 String)
(assert (= var610!3 (str.++ var610!2 var1741)))
(assert true)
(define-const var2355 String (toString/-2075883882 var1171)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), filterHelper/824079012=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.internal.FilterHelper), getFilterAliasGenerator/-54881581=([org.hibernate.persister.entity.EntityPersister, java.lang.String], org.hibernate.internal.FilterAliasGenerator), cast-from-var259-to-var3883=([org.hibernate.persister.entity.AbstractEntityPersister], org.hibernate.persister.entity.EntityPersister), render/2062854292=([org.hibernate.internal.FilterHelper, java.lang.StringBuilder, org.hibernate.internal.FilterAliasGenerator, java.util.Map], void), filterFragment/548985381=([org.hibernate.persister.entity.AbstractEntityPersister, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var259=org.hibernate.persister.entity.AbstractEntityPersister, var1588=r1, var1477=r2, var814=null_type, var1957=java.util.Map, var89=r4, var610=$r0, var1222=org.hibernate.internal.FilterHelper, var1736=$r3, var3300=org.hibernate.internal.FilterAliasGenerator, var3883=org.hibernate.persister.entity.EntityPersister, var2230=$r5, var1741=$r6, var1171=$r7, var2355=$r8}
; {org.hibernate.persister.entity.AbstractEntityPersister=var259, r1=var1588, r2=var1477, null_type=var814, java.util.Map=var1957, r4=var89, $r0=var610, org.hibernate.internal.FilterHelper=var1222, $r3=var1736, org.hibernate.internal.FilterAliasGenerator=var3300, org.hibernate.persister.entity.EntityPersister=var3883, $r5=var2230, $r6=var1741, $r7=var1171, $r8=var2355}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.util.Map;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.FilterHelper filterHelper>;	$r5 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.FilterAliasGenerator getFilterAliasGenerator(java.lang.String)>(r2);	virtualinvoke $r3.<org.hibernate.internal.FilterHelper: void render(java.lang.StringBuilder,org.hibernate.internal.FilterAliasGenerator,java.util.Map)>($r0, $r5, r4);	$r6 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String filterFragment(java.lang.String)>(r2);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1