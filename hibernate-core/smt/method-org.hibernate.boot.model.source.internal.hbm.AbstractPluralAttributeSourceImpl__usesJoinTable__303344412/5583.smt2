(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2608 0)
(declare-sort var2734 0)
(declare-sort var3594 0)
(declare-sort var551 0)
(declare-sort var313 0)
(declare-sort var484 0)
(declare-sort var3754 0)
(declare-sort var3818 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun elementSource/-1958166275 (var2608) var3594)
(declare-fun var3594_getNature/1811841888 (var3594) var551)
(declare-fun ordinal/-291641772 (var313) Int)
(declare-fun cast-from-var551-to-var313 (var551) var313)
(declare-fun var484-init () var484)
(declare-fun arr-var3754-init () (Array Int var3754))
(declare-fun cast-from-var551-to-var3754 (var551) var3754)
(declare-fun String_format/1339386452 (String (Array Int var3754)) String)
(declare-fun <init>/1041412376 (var484 String) void)
(declare-fun cast-from-var484-to-var3818 (var484) var3818)
(declare-const null-var2608 var2608)
(declare-const var2734-$SwitchMap$org$hibernate$boot$model$source$spi$PluralAttributeElementNature (Array Int Int))
(declare-const null-__Array__Int__var3754__ (Array Int var3754))
(declare-const var2289 var2608) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl 
(assert (not (= var2289 null-var2608)))
(define-const var2834 (Array Int Int) var2734-$SwitchMap$org$hibernate$boot$model$source$spi$PluralAttributeElementNature) ; Statement: $r2 = <org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl$1: int[] $SwitchMap$org$hibernate$boot$model$source$spi$PluralAttributeElementNature> 
(define-const var245 var3594 (elementSource/-1958166275 var2289)) ; Statement: $r1 = r0.<org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl: org.hibernate.boot.model.source.spi.PluralAttributeElementSource elementSource> 
(define-const var562 var551 (var3594_getNature/1811841888 var245)) ; Statement: $r3 = interfaceinvoke $r1.<org.hibernate.boot.model.source.spi.PluralAttributeElementSource: org.hibernate.boot.model.source.spi.PluralAttributeElementNature getNature()>() 
(assert true)
(define-const var701 Int (ordinal/-291641772 (cast-from-var551-to-var313 var562))) ; Statement: $i0 = virtualinvoke $r3.<org.hibernate.boot.model.source.spi.PluralAttributeElementNature: int ordinal()>() 
(define-const var2260 Int (select var2834 var701)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return 0;     case 2: goto return 0;     case 3: goto return 0;     case 4: goto return 1;     case 5: goto $r14 = new org.hibernate.cfg.NotYetImplementedException;     default: goto $r15 = new org.hibernate.AssertionFailure; } 
(assert (and (= var2260 5) (and (not (= var2260 4)) (and (not (= var2260 3)) (and (not (= var2260 2)) (and (not (= var2260 1)) true)))))) ; Intersect: Cond: $i1 == 5  and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional     
(define-const var3025 var484 var484-init) ; Statement: $r14 = new org.hibernate.cfg.NotYetImplementedException 
(define-const var2348 (Array Int var3754) arr-var3754-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(define-const var2300 var3594 (elementSource/-1958166275 var2289)) ; Statement: $r6 = r0.<org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl: org.hibernate.boot.model.source.spi.PluralAttributeElementSource elementSource> 
(define-const var505 var551 (var3594_getNature/1811841888 var2300)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.boot.model.source.spi.PluralAttributeElementSource: org.hibernate.boot.model.source.spi.PluralAttributeElementNature getNature()>() 
(declare-const var2348!1 (Array Int var3754))
(assert (not (= var2348!1 null-__Array__Int__var3754__)))
(assert (= (select var2348!1 0) (cast-from-var551-to-var3754 var505))) ; Statement: $r5[0] = $r7 
(define-const var3166 String (String_format/1339386452 "%s is not implemented yet." var2348!1)) ; Statement: $r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s is not implemented yet.", $r5) 
(assert true)
;(assert (<init>/1041412376 var3025 var3166)) ; Statement: specialinvoke $r14.<org.hibernate.cfg.NotYetImplementedException: void <init>(java.lang.String)>($r8) 

(declare-const var3025!1 var484)
(declare-const var3166!1 String)
(define-const var1316 var3818 (cast-from-var484-to-var3818 var3025!1)) ; Statement: $r16 = (java.lang.Throwable) $r14 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {elementSource/-1958166275=([org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl], org.hibernate.boot.model.source.spi.PluralAttributeElementSource), var3594_getNature/1811841888=([org.hibernate.boot.model.source.spi.PluralAttributeElementSource], org.hibernate.boot.model.source.spi.PluralAttributeElementNature), ordinal/-291641772=([java.lang.Enum], int), cast-from-var551-to-var313=([org.hibernate.boot.model.source.spi.PluralAttributeElementNature], java.lang.Enum), var484-init=([], org.hibernate.cfg.NotYetImplementedException), arr-var3754-init=([], java.lang.Object[]), cast-from-var551-to-var3754=([org.hibernate.boot.model.source.spi.PluralAttributeElementNature], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/1041412376=([org.hibernate.cfg.NotYetImplementedException, java.lang.String], void), cast-from-var484-to-var3818=([org.hibernate.cfg.NotYetImplementedException], java.lang.Throwable)}
; {var2608=org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl, var2289=r0, var2734=org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl$1, var2834=$r2, var3594=org.hibernate.boot.model.source.spi.PluralAttributeElementSource, var245=$r1, var551=org.hibernate.boot.model.source.spi.PluralAttributeElementNature, var562=$r3, var313=java.lang.Enum, var701=$i0, var2260=$i1, var484=org.hibernate.cfg.NotYetImplementedException, var3025=$r14, var3754=java.lang.Object, var2348=$r5, var2300=$r6, var505=$r7, var3166=$r8, var3818=java.lang.Throwable, var1316=$r16}
; {org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl=var2608, r0=var2289, org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl$1=var2734, $r2=var2834, org.hibernate.boot.model.source.spi.PluralAttributeElementSource=var3594, $r1=var245, org.hibernate.boot.model.source.spi.PluralAttributeElementNature=var551, $r3=var562, java.lang.Enum=var313, $i0=var701, $i1=var2260, org.hibernate.cfg.NotYetImplementedException=var484, $r14=var3025, java.lang.Object=var3754, $r5=var2348, $r6=var2300, $r7=var505, $r8=var3166, java.lang.Throwable=var3818, $r16=var1316}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl;	$r2 = <org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl$1: int[] $SwitchMap$org$hibernate$boot$model$source$spi$PluralAttributeElementNature>;	$r1 = r0.<org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl: org.hibernate.boot.model.source.spi.PluralAttributeElementSource elementSource>;	$r3 = interfaceinvoke $r1.<org.hibernate.boot.model.source.spi.PluralAttributeElementSource: org.hibernate.boot.model.source.spi.PluralAttributeElementNature getNature()>();	$i0 = virtualinvoke $r3.<org.hibernate.boot.model.source.spi.PluralAttributeElementNature: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto return 0;     case 2: goto return 0;     case 3: goto return 0;     case 4: goto return 1;     case 5: goto $r14 = new org.hibernate.cfg.NotYetImplementedException;     default: goto $r15 = new org.hibernate.AssertionFailure; };	$r14 = new org.hibernate.cfg.NotYetImplementedException;	$r5 = newarray (java.lang.Object)[1];	$r6 = r0.<org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl: org.hibernate.boot.model.source.spi.PluralAttributeElementSource elementSource>;	$r7 = interfaceinvoke $r6.<org.hibernate.boot.model.source.spi.PluralAttributeElementSource: org.hibernate.boot.model.source.spi.PluralAttributeElementNature getNature()>();	$r5[0] = $r7;	$r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s is not implemented yet.", $r5);	specialinvoke $r14.<org.hibernate.cfg.NotYetImplementedException: void <init>(java.lang.String)>($r8);	$r16 = (java.lang.Throwable) $r14;	throw $r16
;block_num 2