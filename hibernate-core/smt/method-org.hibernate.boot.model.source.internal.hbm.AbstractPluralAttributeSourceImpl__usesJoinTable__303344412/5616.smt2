(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2227 0)
(declare-sort var3086 0)
(declare-sort var2554 0)
(declare-sort var817 0)
(declare-sort var1400 0)
(declare-sort var182 0)
(declare-sort var1669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun elementSource/-1958166275 (var2227) var2554)
(declare-fun var2554_getNature/1811841888 (var2554) var817)
(declare-fun ordinal/-291641772 (var1400) Int)
(declare-fun cast-from-var817-to-var1400 (var817) var1400)
(declare-fun var182-init () var182)
(declare-fun arr-var1669-init () (Array Int var1669))
(declare-fun cast-from-var817-to-var1669 (var817) var1669)
(declare-fun String_format/1339386452 (String (Array Int var1669)) String)
(declare-fun <init>/1590914260 (var182 String) void)
(declare-const null-var2227 var2227)
(declare-const var3086-$SwitchMap$org$hibernate$boot$model$source$spi$PluralAttributeElementNature (Array Int Int))
(declare-const null-__Array__Int__var1669__ (Array Int var1669))
(declare-const var1789 var2227) ; Statement: r0 := @this: org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl 
(assert (not (= var1789 null-var2227)))
(define-const var3210 (Array Int Int) var3086-$SwitchMap$org$hibernate$boot$model$source$spi$PluralAttributeElementNature) ; Statement: $r2 = <org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl$1: int[] $SwitchMap$org$hibernate$boot$model$source$spi$PluralAttributeElementNature> 
(define-const var128 var2554 (elementSource/-1958166275 var1789)) ; Statement: $r1 = r0.<org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl: org.hibernate.boot.model.source.spi.PluralAttributeElementSource elementSource> 
(define-const var2128 var817 (var2554_getNature/1811841888 var128)) ; Statement: $r3 = interfaceinvoke $r1.<org.hibernate.boot.model.source.spi.PluralAttributeElementSource: org.hibernate.boot.model.source.spi.PluralAttributeElementNature getNature()>() 
(assert true)
(define-const var1356 Int (ordinal/-291641772 (cast-from-var817-to-var1400 var2128))) ; Statement: $i0 = virtualinvoke $r3.<org.hibernate.boot.model.source.spi.PluralAttributeElementNature: int ordinal()>() 
(define-const var3611 Int (select var3210 var1356)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return 0;     case 2: goto return 0;     case 3: goto return 0;     case 4: goto return 1;     case 5: goto $r14 = new org.hibernate.cfg.NotYetImplementedException;     default: goto $r15 = new org.hibernate.AssertionFailure; } 
(assert (and (not (= var3611 5)) (and (not (= var3611 4)) (and (not (= var3611 3)) (and (not (= var3611 2)) (and (not (= var3611 1)) true)))))) ; Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional     
(define-const var3499 var182 var182-init) ; Statement: $r15 = new org.hibernate.AssertionFailure 
(define-const var3206 (Array Int var1669) arr-var1669-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(define-const var595 var2554 (elementSource/-1958166275 var1789)) ; Statement: $r11 = r0.<org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl: org.hibernate.boot.model.source.spi.PluralAttributeElementSource elementSource> 
(define-const var3244 var817 (var2554_getNature/1811841888 var595)) ; Statement: $r12 = interfaceinvoke $r11.<org.hibernate.boot.model.source.spi.PluralAttributeElementSource: org.hibernate.boot.model.source.spi.PluralAttributeElementNature getNature()>() 
(declare-const var3206!1 (Array Int var1669))
(assert (not (= var3206!1 null-__Array__Int__var1669__)))
(assert (= (select var3206!1 0) (cast-from-var817-to-var1669 var3244))) ; Statement: $r10[0] = $r12 
(define-const var2604 String (String_format/1339386452 "Unexpected plural attribute element source nature: %s" var3206!1)) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unexpected plural attribute element source nature: %s", $r10) 
(assert true)
;(assert (<init>/1590914260 var3499 var2604)) ; Statement: specialinvoke $r15.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r13) 

(declare-const var3499!1 var182)
(declare-const var2604!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {elementSource/-1958166275=([org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl], org.hibernate.boot.model.source.spi.PluralAttributeElementSource), var2554_getNature/1811841888=([org.hibernate.boot.model.source.spi.PluralAttributeElementSource], org.hibernate.boot.model.source.spi.PluralAttributeElementNature), ordinal/-291641772=([java.lang.Enum], int), cast-from-var817-to-var1400=([org.hibernate.boot.model.source.spi.PluralAttributeElementNature], java.lang.Enum), var182-init=([], org.hibernate.AssertionFailure), arr-var1669-init=([], java.lang.Object[]), cast-from-var817-to-var1669=([org.hibernate.boot.model.source.spi.PluralAttributeElementNature], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var2227=org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl, var1789=r0, var3086=org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl$1, var3210=$r2, var2554=org.hibernate.boot.model.source.spi.PluralAttributeElementSource, var128=$r1, var817=org.hibernate.boot.model.source.spi.PluralAttributeElementNature, var2128=$r3, var1400=java.lang.Enum, var1356=$i0, var3611=$i1, var182=org.hibernate.AssertionFailure, var3499=$r15, var1669=java.lang.Object, var3206=$r10, var595=$r11, var3244=$r12, var2604=$r13}
; {org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl=var2227, r0=var1789, org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl$1=var3086, $r2=var3210, org.hibernate.boot.model.source.spi.PluralAttributeElementSource=var2554, $r1=var128, org.hibernate.boot.model.source.spi.PluralAttributeElementNature=var817, $r3=var2128, java.lang.Enum=var1400, $i0=var1356, $i1=var3611, org.hibernate.AssertionFailure=var182, $r15=var3499, java.lang.Object=var1669, $r10=var3206, $r11=var595, $r12=var3244, $r13=var2604}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl;	$r2 = <org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl$1: int[] $SwitchMap$org$hibernate$boot$model$source$spi$PluralAttributeElementNature>;	$r1 = r0.<org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl: org.hibernate.boot.model.source.spi.PluralAttributeElementSource elementSource>;	$r3 = interfaceinvoke $r1.<org.hibernate.boot.model.source.spi.PluralAttributeElementSource: org.hibernate.boot.model.source.spi.PluralAttributeElementNature getNature()>();	$i0 = virtualinvoke $r3.<org.hibernate.boot.model.source.spi.PluralAttributeElementNature: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto return 0;     case 2: goto return 0;     case 3: goto return 0;     case 4: goto return 1;     case 5: goto $r14 = new org.hibernate.cfg.NotYetImplementedException;     default: goto $r15 = new org.hibernate.AssertionFailure; };	$r15 = new org.hibernate.AssertionFailure;	$r10 = newarray (java.lang.Object)[1];	$r11 = r0.<org.hibernate.boot.model.source.internal.hbm.AbstractPluralAttributeSourceImpl: org.hibernate.boot.model.source.spi.PluralAttributeElementSource elementSource>;	$r12 = interfaceinvoke $r11.<org.hibernate.boot.model.source.spi.PluralAttributeElementSource: org.hibernate.boot.model.source.spi.PluralAttributeElementNature getNature()>();	$r10[0] = $r12;	$r13 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Unexpected plural attribute element source nature: %s", $r10);	specialinvoke $r15.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r13);	throw $r15
;block_num 2