(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var5 0)
(declare-sort var544 0)
(declare-sort var616 0)
(declare-sort var3041 0)
(declare-sort var2763 0)
(declare-sort var2633 0)
(declare-sort var1805 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var3041) Int)
(declare-fun cast-from-var544-to-var3041 (var544) var3041)
(declare-fun var2763-init () var2763)
(declare-fun arr-var1805-init () (Array Int var1805))
(declare-fun cast-from-var544-to-var1805 (var544) var1805)
(declare-fun String_format/-647569892 (var2633 String (Array Int var1805)) String)
(declare-fun <init>/-1092629202 (var2763 String) void)
(declare-const null-var5 var5)
(declare-const null-var544 var544)
(declare-const var616-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var2633-ROOT var2633)
(declare-const null-__Array__Int__var1805__ (Array Int var1805))
(declare-const var2231 var5) ; Statement: r2 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var2231 null-var5)))
(declare-const var2677 var544) ; Statement: r0 := @parameter0: org.hibernate.LockMode 
(assert (not (= var2677 null-var544)))
(define-const var908 (Array Int Int) var616-$SwitchMap$org$hibernate$LockMode) ; Statement: $r1 = <org.hibernate.persister.entity.AbstractEntityPersister$3: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var1057 Int (ordinal/-291641772 (cast-from-var544-to-var3041 var2677))) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2926 Int (select var908 var1057)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r6 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.loader.entity.UniqueEntityLoader createEntityLoader(org.hibernate.LockMode)>(r0);     case 2: goto $r6 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.loader.entity.UniqueEntityLoader createEntityLoader(org.hibernate.LockMode)>(r0);     case 3: goto $r6 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.loader.entity.UniqueEntityLoader createEntityLoader(org.hibernate.LockMode)>(r0);     case 4: goto $r6 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.loader.entity.UniqueEntityLoader createEntityLoader(org.hibernate.LockMode)>(r0);     case 5: goto $i2 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassTableSpan()>();     case 6: goto $i2 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassTableSpan()>();     case 7: goto $i2 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassTableSpan()>();     case 8: goto $i2 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassTableSpan()>();     case 9: goto $i2 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassTableSpan()>();     case 10: goto $i2 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassTableSpan()>();     case 11: goto $i2 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassTableSpan()>();     default: goto $r7 = new java.lang.IllegalStateException; } 
(assert (and (not (= var2926 11)) (and (not (= var2926 10)) (and (not (= var2926 9)) (and (not (= var2926 8)) (and (not (= var2926 7)) (and (not (= var2926 6)) (and (not (= var2926 5)) (and (not (= var2926 4)) (and (not (= var2926 3)) (and (not (= var2926 2)) (and (not (= var2926 1)) true)))))))))))) ; Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional           
(define-const var115 var2763 var2763-init) ; Statement: $r7 = new java.lang.IllegalStateException 
(define-const var3138 var2633 var2633-ROOT) ; Statement: $r9 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var864 (Array Int var1805) arr-var1805-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var864!1 (Array Int var1805))
(assert (not (= var864!1 null-__Array__Int__var1805__)))
(assert (= (select var864!1 0) (cast-from-var544-to-var1805 var2677))) ; Statement: $r8[0] = r0 
(define-const var2480 String (String_format/-647569892 var3138 "Lock mode %1$s not supported by entity loaders." var864!1)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r9, "Lock mode %1$s not supported by entity loaders.", $r8) 
(assert true)
;(assert (<init>/-1092629202 var115 var2480)) ; Statement: specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r10) 

(declare-const var115!1 var2763)
(declare-const var2480!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var544-to-var3041=([org.hibernate.LockMode], java.lang.Enum), var2763-init=([], java.lang.IllegalStateException), arr-var1805-init=([], java.lang.Object[]), cast-from-var544-to-var1805=([org.hibernate.LockMode], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var5=org.hibernate.persister.entity.AbstractEntityPersister, var2231=r2, var544=org.hibernate.LockMode, var2677=r0, var616=org.hibernate.persister.entity.AbstractEntityPersister$3, var908=$r1, var3041=java.lang.Enum, var1057=$i0, var2926=$i1, var2763=java.lang.IllegalStateException, var115=$r7, var2633=java.util.Locale, var3138=$r9, var1805=java.lang.Object, var864=$r8, var2480=$r10}
; {org.hibernate.persister.entity.AbstractEntityPersister=var5, r2=var2231, org.hibernate.LockMode=var544, r0=var2677, org.hibernate.persister.entity.AbstractEntityPersister$3=var616, $r1=var908, java.lang.Enum=var3041, $i0=var1057, $i1=var2926, java.lang.IllegalStateException=var2763, $r7=var115, java.util.Locale=var2633, $r9=var3138, java.lang.Object=var1805, $r8=var864, $r10=var2480}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r2 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	r0 := @parameter0: org.hibernate.LockMode;	$r1 = <org.hibernate.persister.entity.AbstractEntityPersister$3: int[] $SwitchMap$org$hibernate$LockMode>;	$i0 = virtualinvoke r0.<org.hibernate.LockMode: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r6 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.loader.entity.UniqueEntityLoader createEntityLoader(org.hibernate.LockMode)>(r0);     case 2: goto $r6 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.loader.entity.UniqueEntityLoader createEntityLoader(org.hibernate.LockMode)>(r0);     case 3: goto $r6 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.loader.entity.UniqueEntityLoader createEntityLoader(org.hibernate.LockMode)>(r0);     case 4: goto $r6 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.loader.entity.UniqueEntityLoader createEntityLoader(org.hibernate.LockMode)>(r0);     case 5: goto $i2 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassTableSpan()>();     case 6: goto $i2 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassTableSpan()>();     case 7: goto $i2 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassTableSpan()>();     case 8: goto $i2 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassTableSpan()>();     case 9: goto $i2 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassTableSpan()>();     case 10: goto $i2 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassTableSpan()>();     case 11: goto $i2 = virtualinvoke r2.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassTableSpan()>();     default: goto $r7 = new java.lang.IllegalStateException; };	$r7 = new java.lang.IllegalStateException;	$r9 = <java.util.Locale: java.util.Locale ROOT>;	$r8 = newarray (java.lang.Object)[1];	$r8[0] = r0;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r9, "Lock mode %1$s not supported by entity loaders.", $r8);	specialinvoke $r7.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r10);	throw $r7
;block_num 2