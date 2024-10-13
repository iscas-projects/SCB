(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var197 0)
(declare-sort var2543 0)
(declare-sort var3875 0)
(declare-sort var418 0)
(declare-sort var3081 0)
(declare-sort var3865 0)
(declare-sort var3444 0)
(declare-sort var989 0)
(declare-sort var36 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun referencedEntityName/-1916588974 (var197) String)
(declare-fun var2543_get/1088891777 (var2543 var3875) var3875)
(declare-fun cast-from-String-to-var3875 (String) var3875)
(declare-fun cast-from-var3875-to-var418 (var3875) var418)
(declare-fun getKey/1394458065 (var418) var3081)
(declare-fun var3865_getColumnIterator/-1913046240 (var3865) Iterator)
(declare-fun cast-from-var3081-to-var3865 (var3081) var3865)
(declare-fun columns/-1916588974 (var197) (Array Int var3444))
(declare-fun value/-1916588974 (var197) var989)
(declare-fun var36_linkJoinColumnWithValueOverridingNameIfImplicit/623154610 (var418 Iterator (Array Int var3444) var989) void)
(declare-const null-var197 var197)
(declare-const null-var2543 var2543)
(declare-const null-var418 var418)
(declare-const var1051 var197) ; Statement: r1 := @this: org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass 
(assert (not (= var1051 null-var197)))
(declare-const var3051 var2543) ; Statement: r0 := @parameter0: java.util.Map 
(assert (not (= var3051 null-var2543)))
(define-const var2524 String (referencedEntityName/-1916588974 var1051)) ; Statement: $r2 = r1.<org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass: java.lang.String referencedEntityName> 
(define-const var2784 var3875 (var2543_get/1088891777 var3051 (cast-from-String-to-var3875 var2524))) ; Statement: $r3 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2) 
(define-const var2715 var418 (cast-from-var3875-to-var418 var2784)) ; Statement: r4 = (org.hibernate.mapping.PersistentClass) $r3 
 ; Statement: if r4 != null goto $r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getKey()>() 
(assert (not (= var2715 null-var418))) ; Cond: r4 != null 
(assert true)
(define-const var1847 var3081 (getKey/1394458065 var2715)) ; Statement: $r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getKey()>() 
(define-const var1412 Iterator (var3865_getColumnIterator/-1913046240 (cast-from-var3081-to-var3865 var1847))) ; Statement: $r8 = interfaceinvoke $r5.<org.hibernate.mapping.KeyValue: java.util.Iterator getColumnIterator()>() 
(define-const var1430 (Array Int var3444) (columns/-1916588974 var1051)) ; Statement: $r7 = r1.<org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass: org.hibernate.cfg.Ejb3JoinColumn[] columns> 
(define-const var3689 var989 (value/-1916588974 var1051)) ; Statement: $r6 = r1.<org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass: org.hibernate.mapping.SimpleValue value> 
;(assert (var36_linkJoinColumnWithValueOverridingNameIfImplicit/623154610 var2715 var1412 var1430 var3689)) ; Statement: staticinvoke <org.hibernate.cfg.annotations.TableBinder: void linkJoinColumnWithValueOverridingNameIfImplicit(org.hibernate.mapping.PersistentClass,java.util.Iterator,org.hibernate.cfg.Ejb3JoinColumn[],org.hibernate.mapping.SimpleValue)>(r4, $r8, $r7, $r6) 

(declare-const var2715!1 var418)
(declare-const var1412!1 Iterator)
(declare-const var1430!1 (Array Int var3444))
(declare-const var3689!1 var989)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {referencedEntityName/-1916588974=([org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass], java.lang.String), var2543_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3875=([java.lang.String], java.lang.Object), cast-from-var3875-to-var418=([java.lang.Object], org.hibernate.mapping.PersistentClass), getKey/1394458065=([org.hibernate.mapping.PersistentClass], org.hibernate.mapping.KeyValue), var3865_getColumnIterator/-1913046240=([org.hibernate.mapping.Value], java.util.Iterator), cast-from-var3081-to-var3865=([org.hibernate.mapping.KeyValue], org.hibernate.mapping.Value), columns/-1916588974=([org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass], org.hibernate.cfg.Ejb3JoinColumn[]), value/-1916588974=([org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass], org.hibernate.mapping.SimpleValue), var36_linkJoinColumnWithValueOverridingNameIfImplicit/623154610=([org.hibernate.mapping.PersistentClass, java.util.Iterator, org.hibernate.cfg.Ejb3JoinColumn[], org.hibernate.mapping.SimpleValue], void)}
; {var197=org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass, var1051=r1, var2543=java.util.Map, var3051=r0, var2524=$r2, var3875=java.lang.Object, var2784=$r3, var418=org.hibernate.mapping.PersistentClass, var2715=r4, var3081=org.hibernate.mapping.KeyValue, var1847=$r5, var3865=org.hibernate.mapping.Value, var1412=$r8, var3444=org.hibernate.cfg.Ejb3JoinColumn, var1430=$r7, var989=org.hibernate.mapping.SimpleValue, var3689=$r6, var36=org.hibernate.cfg.annotations.TableBinder}
; {org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass=var197, r1=var1051, java.util.Map=var2543, r0=var3051, $r2=var2524, java.lang.Object=var3875, $r3=var2784, org.hibernate.mapping.PersistentClass=var418, r4=var2715, org.hibernate.mapping.KeyValue=var3081, $r5=var1847, org.hibernate.mapping.Value=var3865, $r8=var1412, org.hibernate.cfg.Ejb3JoinColumn=var3444, $r7=var1430, org.hibernate.mapping.SimpleValue=var989, $r6=var3689, org.hibernate.cfg.annotations.TableBinder=var36}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass;	r0 := @parameter0: java.util.Map;	$r2 = r1.<org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass: java.lang.String referencedEntityName>;	$r3 = interfaceinvoke r0.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2);	r4 = (org.hibernate.mapping.PersistentClass) $r3;	if r4 != null goto $r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getKey()>();	$r5 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.KeyValue getKey()>();	$r8 = interfaceinvoke $r5.<org.hibernate.mapping.KeyValue: java.util.Iterator getColumnIterator()>();	$r7 = r1.<org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass: org.hibernate.cfg.Ejb3JoinColumn[] columns>;	$r6 = r1.<org.hibernate.cfg.PkDrivenByDefaultMapsIdSecondPass: org.hibernate.mapping.SimpleValue value>;	staticinvoke <org.hibernate.cfg.annotations.TableBinder: void linkJoinColumnWithValueOverridingNameIfImplicit(org.hibernate.mapping.PersistentClass,java.util.Iterator,org.hibernate.cfg.Ejb3JoinColumn[],org.hibernate.mapping.SimpleValue)>(r4, $r8, $r7, $r6);	return
;block_num 2