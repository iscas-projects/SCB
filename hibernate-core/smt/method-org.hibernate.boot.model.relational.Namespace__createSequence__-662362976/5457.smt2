(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2985 0)
(declare-sort var2990 0)
(declare-sort var3306 0)
(declare-sort var3420 0)
(declare-sort var661 0)
(declare-sort var3790 0)
(declare-sort var1445 0)
(declare-sort var3974 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sequences/944490799 (var2985) var3306)
(declare-fun var3306_containsKey/1715618542 (var3306 var3420) Bool)
(declare-fun cast-from-var2990-to-var3420 (var2990) var3420)
(declare-fun physicalNamingStrategy/944490799 (var2985) var661)
(declare-fun jdbcEnvironment/944490799 (var2985) var3790)
(declare-fun var661_toPhysicalSequenceName/2020037858 (var661 var2990 var3790) var2990)
(declare-fun var1445-init () var1445)
(declare-fun physicalName/944490799 (var2985) var3974)
(declare-fun getCatalog/996277168 (var3974) var2990)
(declare-fun getSchema/1471185296 (var3974) var2990)
(declare-fun <init>/-1720273720 (var1445 var2990 var2990 var2990 Int Int) void)
(declare-fun var3306_put/1464166817 (var3306 var3420 var3420) var3420)
(declare-fun cast-from-var1445-to-var3420 (var1445) var3420)
(declare-const null-var2985 var2985)
(declare-const null-var2990 var2990)
(declare-const null-Int Int)
(declare-const var2287 var2985) ; Statement: r0 := @this: org.hibernate.boot.model.relational.Namespace 
(assert (not (= var2287 null-var2985)))
(declare-const var2263 var2990) ; Statement: r1 := @parameter0: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var2263 null-var2990)))
(declare-const var293 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var293 null-Int)))
(declare-const var1352 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1352 null-Int)))
(define-const var3708 var3306 (sequences/944490799 var2287)) ; Statement: $r2 = r0.<org.hibernate.boot.model.relational.Namespace: java.util.Map sequences> 
(define-const var1418 Bool (var3306_containsKey/1715618542 var3708 (cast-from-var2990-to-var3420 var2263))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Map: boolean containsKey(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r4 = r0.<org.hibernate.boot.model.relational.Namespace: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy> 
(assert (= (ite var1418 1 0) 0)) ; Cond: $z0 == 0 
(define-const var623 var661 (physicalNamingStrategy/944490799 var2287)) ; Statement: $r4 = r0.<org.hibernate.boot.model.relational.Namespace: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy> 
(define-const var3730 var3790 (jdbcEnvironment/944490799 var2287)) ; Statement: $r3 = r0.<org.hibernate.boot.model.relational.Namespace: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment jdbcEnvironment> 
(define-const var2040 var2990 (var661_toPhysicalSequenceName/2020037858 var623 var2263 var3730)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.boot.model.naming.PhysicalNamingStrategy: org.hibernate.boot.model.naming.Identifier toPhysicalSequenceName(org.hibernate.boot.model.naming.Identifier,org.hibernate.engine.jdbc.env.spi.JdbcEnvironment)>(r1, $r3) 
(define-const var1497 var1445 var1445-init) ; Statement: $r21 = new org.hibernate.boot.model.relational.Sequence 
(define-const var70 var3974 (physicalName/944490799 var2287)) ; Statement: $r7 = r0.<org.hibernate.boot.model.relational.Namespace: org.hibernate.boot.model.relational.Namespace$Name physicalName> 
(assert true)
(define-const var1963 var2990 (getCatalog/996277168 var70)) ; Statement: $r10 = virtualinvoke $r7.<org.hibernate.boot.model.relational.Namespace$Name: org.hibernate.boot.model.naming.Identifier getCatalog()>() 
(define-const var220 var3974 (physicalName/944490799 var2287)) ; Statement: $r8 = r0.<org.hibernate.boot.model.relational.Namespace: org.hibernate.boot.model.relational.Namespace$Name physicalName> 
(assert true)
(define-const var3347 var2990 (getSchema/1471185296 var220)) ; Statement: $r9 = virtualinvoke $r8.<org.hibernate.boot.model.relational.Namespace$Name: org.hibernate.boot.model.naming.Identifier getSchema()>() 
(assert true)
;(assert (<init>/-1720273720 var1497 var1963 var3347 var2040 var293 var1352)) ; Statement: specialinvoke $r21.<org.hibernate.boot.model.relational.Sequence: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,int,int)>($r10, $r9, r5, i0, i1) 

(declare-const var1497!1 var1445)
(declare-const var1963!1 var2990)
(declare-const var3347!1 var2990)
(declare-const var2040!1 var2990)
(declare-const var293!1 Int)
(declare-const var1352!1 Int)
(define-const var2520 var3306 (sequences/944490799 var2287)) ; Statement: $r11 = r0.<org.hibernate.boot.model.relational.Namespace: java.util.Map sequences> 
;(assert (var3306_put/1464166817 var2520 (cast-from-var2990-to-var3420 var2263) (cast-from-var1445-to-var3420 var1497!1))) ; Statement: interfaceinvoke $r11.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r21) 

(declare-const var2520!1 var3306)
(declare-const var2263!1 var2990)
(declare-const var1497!2 var1445)
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {sequences/944490799=([org.hibernate.boot.model.relational.Namespace], java.util.Map), var3306_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-var2990-to-var3420=([org.hibernate.boot.model.naming.Identifier], java.lang.Object), physicalNamingStrategy/944490799=([org.hibernate.boot.model.relational.Namespace], org.hibernate.boot.model.naming.PhysicalNamingStrategy), jdbcEnvironment/944490799=([org.hibernate.boot.model.relational.Namespace], org.hibernate.engine.jdbc.env.spi.JdbcEnvironment), var661_toPhysicalSequenceName/2020037858=([org.hibernate.boot.model.naming.PhysicalNamingStrategy, org.hibernate.boot.model.naming.Identifier, org.hibernate.engine.jdbc.env.spi.JdbcEnvironment], org.hibernate.boot.model.naming.Identifier), var1445-init=([], org.hibernate.boot.model.relational.Sequence), physicalName/944490799=([org.hibernate.boot.model.relational.Namespace], org.hibernate.boot.model.relational.Namespace$Name), getCatalog/996277168=([org.hibernate.boot.model.relational.Namespace$Name], org.hibernate.boot.model.naming.Identifier), getSchema/1471185296=([org.hibernate.boot.model.relational.Namespace$Name], org.hibernate.boot.model.naming.Identifier), <init>/-1720273720=([org.hibernate.boot.model.relational.Sequence, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier, org.hibernate.boot.model.naming.Identifier, int, int], void), var3306_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1445-to-var3420=([org.hibernate.boot.model.relational.Sequence], java.lang.Object)}
; {var2985=org.hibernate.boot.model.relational.Namespace, var2287=r0, var2990=org.hibernate.boot.model.naming.Identifier, var2263=r1, var293=i0, var1352=i1, var3306=java.util.Map, var3708=$r2, var3420=java.lang.Object, var1418=$z0, var661=org.hibernate.boot.model.naming.PhysicalNamingStrategy, var623=$r4, var3790=org.hibernate.engine.jdbc.env.spi.JdbcEnvironment, var3730=$r3, var2040=r5, var1445=org.hibernate.boot.model.relational.Sequence, var1497=$r21, var3974=org.hibernate.boot.model.relational.Namespace$Name, var70=$r7, var1963=$r10, var220=$r8, var3347=$r9, var2520=$r11}
; {org.hibernate.boot.model.relational.Namespace=var2985, r0=var2287, org.hibernate.boot.model.naming.Identifier=var2990, r1=var2263, i0=var293, i1=var1352, java.util.Map=var3306, $r2=var3708, java.lang.Object=var3420, $z0=var1418, org.hibernate.boot.model.naming.PhysicalNamingStrategy=var661, $r4=var623, org.hibernate.engine.jdbc.env.spi.JdbcEnvironment=var3790, $r3=var3730, r5=var2040, org.hibernate.boot.model.relational.Sequence=var1445, $r21=var1497, org.hibernate.boot.model.relational.Namespace$Name=var3974, $r7=var70, $r10=var1963, $r8=var220, $r9=var3347, $r11=var2520}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.model.relational.Namespace;	r1 := @parameter0: org.hibernate.boot.model.naming.Identifier;	i0 := @parameter1: int;	i1 := @parameter2: int;	$r2 = r0.<org.hibernate.boot.model.relational.Namespace: java.util.Map sequences>;	$z0 = interfaceinvoke $r2.<java.util.Map: boolean containsKey(java.lang.Object)>(r1);	if $z0 == 0 goto $r4 = r0.<org.hibernate.boot.model.relational.Namespace: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy>;	$r4 = r0.<org.hibernate.boot.model.relational.Namespace: org.hibernate.boot.model.naming.PhysicalNamingStrategy physicalNamingStrategy>;	$r3 = r0.<org.hibernate.boot.model.relational.Namespace: org.hibernate.engine.jdbc.env.spi.JdbcEnvironment jdbcEnvironment>;	r5 = interfaceinvoke $r4.<org.hibernate.boot.model.naming.PhysicalNamingStrategy: org.hibernate.boot.model.naming.Identifier toPhysicalSequenceName(org.hibernate.boot.model.naming.Identifier,org.hibernate.engine.jdbc.env.spi.JdbcEnvironment)>(r1, $r3);	$r21 = new org.hibernate.boot.model.relational.Sequence;	$r7 = r0.<org.hibernate.boot.model.relational.Namespace: org.hibernate.boot.model.relational.Namespace$Name physicalName>;	$r10 = virtualinvoke $r7.<org.hibernate.boot.model.relational.Namespace$Name: org.hibernate.boot.model.naming.Identifier getCatalog()>();	$r8 = r0.<org.hibernate.boot.model.relational.Namespace: org.hibernate.boot.model.relational.Namespace$Name physicalName>;	$r9 = virtualinvoke $r8.<org.hibernate.boot.model.relational.Namespace$Name: org.hibernate.boot.model.naming.Identifier getSchema()>();	specialinvoke $r21.<org.hibernate.boot.model.relational.Sequence: void <init>(org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,org.hibernate.boot.model.naming.Identifier,int,int)>($r10, $r9, r5, i0, i1);	$r11 = r0.<org.hibernate.boot.model.relational.Namespace: java.util.Map sequences>;	interfaceinvoke $r11.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, $r21);	return $r21
;block_num 2