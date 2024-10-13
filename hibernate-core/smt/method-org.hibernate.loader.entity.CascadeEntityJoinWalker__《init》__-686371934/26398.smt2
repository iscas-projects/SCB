(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3253 0)
(declare-sort var1750 0)
(declare-sort var3573 0)
(declare-sort var272 0)
(declare-sort var2485 0)
(declare-sort var2543 0)
(declare-sort var846 0)
(declare-sort var1566 0)
(declare-sort var3890 0)
(declare-sort var2978 0)
(declare-sort var3876 0)
(declare-sort var2540 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-243918656 (var2543 var1750 var272 var2485) void)
(declare-fun cast-from-var3253-to-var2543 (var3253) var2543)
(declare-fun cascadeAction/411371905 (var3253) var3573)
(declare-fun getAlias/-1544776148 (var2543) String)
(declare-fun var846_getIdentifierColumnNames/-230260269 (var846) (Array Int String))
(declare-fun cast-from-var1750-to-var846 (var1750) var846)
(declare-fun whereString/500907501 (var1566 String (Array Int String) Int) String)
(declare-fun cast-from-var3253-to-var1566 (var3253) var1566)
(declare-fun var3876_filterFragment/1785996213 (var3876 String var3890) String)
(declare-fun cast-from-var1750-to-var3876 (var1750) var3876)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun initAll/390723747 (var2543 String String var2540) void)
(declare-const null-var3253 var3253)
(declare-const null-var1750 var1750)
(declare-const null-var3573 var3573)
(declare-const null-var272 var272)
(declare-const var2485-NONE var2485)
(declare-const var2978-EMPTY_MAP var3890)
(declare-const var2540-READ var2540)
(declare-const var3867 var3253) ; Statement: r0 := @this: org.hibernate.loader.entity.CascadeEntityJoinWalker 
(assert (not (= var3867 null-var3253)))
(declare-const var817 var1750) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.OuterJoinLoadable 
(assert (not (= var817 null-var1750)))
(declare-const var1523 var3573) ; Statement: r4 := @parameter1: org.hibernate.engine.spi.CascadingAction 
(assert (not (= var1523 null-var3573)))
(declare-const var2875 var272) ; Statement: r2 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var2875 null-var272)))
(define-const var611 var2485 var2485-NONE) ; Statement: $r3 = <org.hibernate.engine.spi.LoadQueryInfluencers: org.hibernate.engine.spi.LoadQueryInfluencers NONE> 
(assert true)
;(assert (<init>/-243918656 (cast-from-var3253-to-var2543 var3867) var817 var2875 var611)) ; Statement: specialinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: void <init>(org.hibernate.persister.entity.OuterJoinLoadable,org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.engine.spi.LoadQueryInfluencers)>(r1, r2, $r3) 

(declare-const var3867!1 var3253)
(declare-const var817!1 var1750)
(declare-const var2875!1 var272)
(declare-const var611!1 var2485)
(declare-const var3867!2 var3253)
(assert (not (= var3867!2 null-var3253)))
(assert (= (cascadeAction/411371905 var3867!2) var1523)) ; Statement: r0.<org.hibernate.loader.entity.CascadeEntityJoinWalker: org.hibernate.engine.spi.CascadingAction cascadeAction> = r4 
(assert true)
(define-const var398 String (getAlias/-1544776148 (cast-from-var3253-to-var2543 var3867!2))) ; Statement: $r6 = virtualinvoke r0.<org.hibernate.loader.entity.CascadeEntityJoinWalker: java.lang.String getAlias()>() 
(define-const var3977 (Array Int String) (var846_getIdentifierColumnNames/-230260269 (cast-from-var1750-to-var846 var817!1))) ; Statement: $r5 = interfaceinvoke r1.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String[] getIdentifierColumnNames()>() 
(assert true)
(define-const var1907 String (whereString/500907501 (cast-from-var3253-to-var1566 var3867!2) var398 var3977 1)) ; Statement: $r10 = virtualinvoke r0.<org.hibernate.loader.entity.CascadeEntityJoinWalker: java.lang.StringBuilder whereString(java.lang.String,java.lang.String[],int)>($r6, $r5, 1) 
(assert true)
(define-const var7 String (getAlias/-1544776148 (cast-from-var3253-to-var2543 var3867!2))) ; Statement: $r8 = virtualinvoke r0.<org.hibernate.loader.entity.CascadeEntityJoinWalker: java.lang.String getAlias()>() 
(define-const var575 var3890 var2978-EMPTY_MAP) ; Statement: $r7 = <java.util.Collections: java.util.Map EMPTY_MAP> 
(define-const var3940 String (var3876_filterFragment/1785996213 (cast-from-var1750-to-var3876 var817!1) var7 var575)) ; Statement: $r9 = interfaceinvoke r1.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String filterFragment(java.lang.String,java.util.Map)>($r8, $r7) 
(assert true)
(define-const var755 String (append/672562846 var1907 var3940)) ; Statement: r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1907!1 String)
(assert (= var1907!1 (str.++ var1907 var3940)))
(assert true)
(define-const var289 String (toString/-2075883882 var755)) ; Statement: $r13 = virtualinvoke r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3550 var2540 var2540-READ) ; Statement: $r12 = <org.hibernate.LockOptions: org.hibernate.LockOptions READ> 
(assert true)
;(assert (initAll/390723747 (cast-from-var3253-to-var2543 var3867!2) var289 "" var3550)) ; Statement: virtualinvoke r0.<org.hibernate.loader.entity.CascadeEntityJoinWalker: void initAll(java.lang.String,java.lang.String,org.hibernate.LockOptions)>($r13, "", $r12) 

(declare-const var3867!3 var3253)
(declare-const var289!1 String)
(declare-const var3900 String)
(declare-const var3550!1 var2540)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-243918656=([org.hibernate.loader.AbstractEntityJoinWalker, org.hibernate.persister.entity.OuterJoinLoadable, org.hibernate.engine.spi.SessionFactoryImplementor, org.hibernate.engine.spi.LoadQueryInfluencers], void), cast-from-var3253-to-var2543=([org.hibernate.loader.entity.CascadeEntityJoinWalker], org.hibernate.loader.AbstractEntityJoinWalker), cascadeAction/411371905=([org.hibernate.loader.entity.CascadeEntityJoinWalker], org.hibernate.engine.spi.CascadingAction), getAlias/-1544776148=([org.hibernate.loader.AbstractEntityJoinWalker], java.lang.String), var846_getIdentifierColumnNames/-230260269=([org.hibernate.persister.entity.Loadable], java.lang.String[]), cast-from-var1750-to-var846=([org.hibernate.persister.entity.OuterJoinLoadable], org.hibernate.persister.entity.Loadable), whereString/500907501=([org.hibernate.loader.JoinWalker, java.lang.String, java.lang.String[], int], java.lang.StringBuilder), cast-from-var3253-to-var1566=([org.hibernate.loader.entity.CascadeEntityJoinWalker], org.hibernate.loader.JoinWalker), var3876_filterFragment/1785996213=([org.hibernate.persister.entity.Joinable, java.lang.String, java.util.Map], java.lang.String), cast-from-var1750-to-var3876=([org.hibernate.persister.entity.OuterJoinLoadable], org.hibernate.persister.entity.Joinable), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), initAll/390723747=([org.hibernate.loader.AbstractEntityJoinWalker, java.lang.String, java.lang.String, org.hibernate.LockOptions], void)}
; {var3253=org.hibernate.loader.entity.CascadeEntityJoinWalker, var3867=r0, var1750=org.hibernate.persister.entity.OuterJoinLoadable, var817=r1, var3573=org.hibernate.engine.spi.CascadingAction, var1523=r4, var272=org.hibernate.engine.spi.SessionFactoryImplementor, var2875=r2, var2485=org.hibernate.engine.spi.LoadQueryInfluencers, var611=$r3, var2543=org.hibernate.loader.AbstractEntityJoinWalker, var398=$r6, var846=org.hibernate.persister.entity.Loadable, var3977=$r5, var1566=org.hibernate.loader.JoinWalker, var1907=$r10, var7=$r8, var3890=java.util.Map, var2978=java.util.Collections, var575=$r7, var3876=org.hibernate.persister.entity.Joinable, var3940=$r9, var755=r11, var289=$r13, var2540=org.hibernate.LockOptions, var3550=$r12, var3900=""}
; {org.hibernate.loader.entity.CascadeEntityJoinWalker=var3253, r0=var3867, org.hibernate.persister.entity.OuterJoinLoadable=var1750, r1=var817, org.hibernate.engine.spi.CascadingAction=var3573, r4=var1523, org.hibernate.engine.spi.SessionFactoryImplementor=var272, r2=var2875, org.hibernate.engine.spi.LoadQueryInfluencers=var2485, $r3=var611, org.hibernate.loader.AbstractEntityJoinWalker=var2543, $r6=var398, org.hibernate.persister.entity.Loadable=var846, $r5=var3977, org.hibernate.loader.JoinWalker=var1566, $r10=var1907, $r8=var7, java.util.Map=var3890, java.util.Collections=var2978, $r7=var575, org.hibernate.persister.entity.Joinable=var3876, $r9=var3940, r11=var755, $r13=var289, org.hibernate.LockOptions=var2540, $r12=var3550, ""=var3900}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.loader.entity.CascadeEntityJoinWalker;	r1 := @parameter0: org.hibernate.persister.entity.OuterJoinLoadable;	r4 := @parameter1: org.hibernate.engine.spi.CascadingAction;	r2 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$r3 = <org.hibernate.engine.spi.LoadQueryInfluencers: org.hibernate.engine.spi.LoadQueryInfluencers NONE>;	specialinvoke r0.<org.hibernate.loader.AbstractEntityJoinWalker: void <init>(org.hibernate.persister.entity.OuterJoinLoadable,org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.engine.spi.LoadQueryInfluencers)>(r1, r2, $r3);	r0.<org.hibernate.loader.entity.CascadeEntityJoinWalker: org.hibernate.engine.spi.CascadingAction cascadeAction> = r4;	$r6 = virtualinvoke r0.<org.hibernate.loader.entity.CascadeEntityJoinWalker: java.lang.String getAlias()>();	$r5 = interfaceinvoke r1.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String[] getIdentifierColumnNames()>();	$r10 = virtualinvoke r0.<org.hibernate.loader.entity.CascadeEntityJoinWalker: java.lang.StringBuilder whereString(java.lang.String,java.lang.String[],int)>($r6, $r5, 1);	$r8 = virtualinvoke r0.<org.hibernate.loader.entity.CascadeEntityJoinWalker: java.lang.String getAlias()>();	$r7 = <java.util.Collections: java.util.Map EMPTY_MAP>;	$r9 = interfaceinvoke r1.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String filterFragment(java.lang.String,java.util.Map)>($r8, $r7);	r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r13 = virtualinvoke r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = <org.hibernate.LockOptions: org.hibernate.LockOptions READ>;	virtualinvoke r0.<org.hibernate.loader.entity.CascadeEntityJoinWalker: void initAll(java.lang.String,java.lang.String,org.hibernate.LockOptions)>($r13, "", $r12);	return
;block_num 1