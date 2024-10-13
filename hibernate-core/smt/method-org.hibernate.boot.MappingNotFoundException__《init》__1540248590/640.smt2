(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3726 0)
(declare-sort var159 0)
(declare-sort var2616 0)
(declare-sort var1696 0)
(declare-sort var1489 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2616-init () (Array Int var2616))
(declare-fun getType/1217882498 (var159) var1696)
(declare-fun cast-from-var1696-to-var2616 (var1696) var2616)
(declare-fun getName/-611695624 (var159) String)
(declare-fun cast-from-String-to-var2616 (String) var2616)
(declare-fun String_format/1339386452 (String (Array Int var2616)) String)
(declare-fun <init>/235758574 (var1489 String var159) void)
(declare-fun cast-from-var3726-to-var1489 (var3726) var1489)
(declare-const null-var3726 var3726)
(declare-const null-var159 var159)
(declare-const null-__Array__Int__var2616__ (Array Int var2616))
(declare-const var3156 var3726) ; Statement: r0 := @this: org.hibernate.boot.MappingNotFoundException 
(assert (not (= var3156 null-var3726)))
(declare-const var7 var159) ; Statement: r2 := @parameter0: org.hibernate.boot.jaxb.Origin 
(assert (not (= var7 null-var159)))
(define-const var2015 (Array Int var2616) arr-var2616-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var2678 var1696 (getType/1217882498 var7)) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType getType()>() 
(declare-const var2015!1 (Array Int var2616))
(assert (not (= var2015!1 null-__Array__Int__var2616__)))
(assert (= (select var2015!1 0) (cast-from-var1696-to-var2616 var2678))) ; Statement: $r1[0] = $r3 
(assert true)
(define-const var610 String (getName/-611695624 var7)) ; Statement: $r4 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: java.lang.String getName()>() 
(declare-const var2015!2 (Array Int var2616))
(assert (not (= var2015!2 null-__Array__Int__var2616__)))
(assert (= (select var2015!2 1) (cast-from-String-to-var2616 var610))) ; Statement: $r1[1] = $r4 
(define-const var2424 String (String_format/1339386452 "Mapping (%s) not found : %s" var2015!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Mapping (%s) not found : %s", $r1) 
(assert true)
;(assert (<init>/235758574 (cast-from-var3726-to-var1489 var3156) var2424 var7)) ; Statement: specialinvoke r0.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r5, r2) 

(declare-const var3156!1 var3726)
(declare-const var2424!1 String)
(declare-const var7!1 var159)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2616-init=([], java.lang.Object[]), getType/1217882498=([org.hibernate.boot.jaxb.Origin], org.hibernate.boot.jaxb.SourceType), cast-from-var1696-to-var2616=([org.hibernate.boot.jaxb.SourceType], java.lang.Object), getName/-611695624=([org.hibernate.boot.jaxb.Origin], java.lang.String), cast-from-String-to-var2616=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/235758574=([org.hibernate.boot.MappingException, java.lang.String, org.hibernate.boot.jaxb.Origin], void), cast-from-var3726-to-var1489=([org.hibernate.boot.MappingNotFoundException], org.hibernate.boot.MappingException)}
; {var3726=org.hibernate.boot.MappingNotFoundException, var3156=r0, var159=org.hibernate.boot.jaxb.Origin, var7=r2, var2616=java.lang.Object, var2015=$r1, var1696=org.hibernate.boot.jaxb.SourceType, var2678=$r3, var610=$r4, var2424=$r5, var1489=org.hibernate.boot.MappingException}
; {org.hibernate.boot.MappingNotFoundException=var3726, r0=var3156, org.hibernate.boot.jaxb.Origin=var159, r2=var7, java.lang.Object=var2616, $r1=var2015, org.hibernate.boot.jaxb.SourceType=var1696, $r3=var2678, $r4=var610, $r5=var2424, org.hibernate.boot.MappingException=var1489}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.MappingNotFoundException;	r2 := @parameter0: org.hibernate.boot.jaxb.Origin;	$r1 = newarray (java.lang.Object)[2];	$r3 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: org.hibernate.boot.jaxb.SourceType getType()>();	$r1[0] = $r3;	$r4 = virtualinvoke r2.<org.hibernate.boot.jaxb.Origin: java.lang.String getName()>();	$r1[1] = $r4;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Mapping (%s) not found : %s", $r1);	specialinvoke r0.<org.hibernate.boot.MappingException: void <init>(java.lang.String,org.hibernate.boot.jaxb.Origin)>($r5, r2);	return
;block_num 1