(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3195 0)
(declare-sort var38 0)
(declare-sort var3045 0)
(declare-sort var1226 0)
(declare-sort var1159 0)
(declare-sort var610 0)
(declare-sort var3535 0)
(declare-sort var2062 0)
(declare-sort var2832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-1457227422 (var3195) var3045)
(declare-fun var3045_access$000/-1911093919 (var3045) var1226)
(declare-fun var38_getName/-1030042408 (var38) String)
(declare-fun var1226_put/1464166817 (var1226 var1159 var1159) var1159)
(declare-fun cast-from-String-to-var1159 (String) var1159)
(declare-fun cast-from-var38-to-var1159 (var38) var1159)
(declare-fun cast-from-var38-to-var610 (var38) var610)
(declare-fun var610_getBindableType/2092002323 (var610) var3535)
(declare-fun ordinal/-943601516 (var3535) Int)
(declare-fun var2832-init () var2832)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1159) String)
(declare-fun cast-from-var3535-to-var1159 (var3535) var1159)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var2832 String) void)
(declare-const null-var3195 var3195)
(declare-const null-var38 var38)
(declare-const var2062-$SwitchMap$javax$persistence$metamodel$Bindable$BindableType (Array Int Int))
(declare-const var2405 var3195) ; Statement: r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType$InFlightAccessImpl 
(assert (not (= var2405 null-var3195)))
(declare-const var3595 var38) ; Statement: r2 := @parameter0: org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor 
(assert (not (= var3595 null-var38)))
(define-const var3384 var3045 (this$0/-1457227422 var2405)) ; Statement: $r1 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType$InFlightAccessImpl: org.hibernate.metamodel.model.domain.internal.AbstractManagedType this$0> 
(define-const var2361 var1226 (var3045_access$000/-1911093919 var3384)) ; Statement: $r4 = staticinvoke <org.hibernate.metamodel.model.domain.internal.AbstractManagedType: java.util.Map access$000(org.hibernate.metamodel.model.domain.internal.AbstractManagedType)>($r1) 
(define-const var2759 String (var38_getName/-1030042408 var3595)) ; Statement: $r3 = interfaceinvoke r2.<org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor: java.lang.String getName()>() 
;(assert (var1226_put/1464166817 var2361 (cast-from-String-to-var1159 var2759) (cast-from-var38-to-var1159 var3595))) ; Statement: interfaceinvoke $r4.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r3, r2) 

(declare-const var2361!1 var1226)
(declare-const var2759!1 String)
(declare-const var3595!1 var38)
(define-const var1884 var610 (cast-from-var38-to-var610 var3595!1)) ; Statement: $r5 = (javax.persistence.metamodel.Bindable) r2 
(define-const var845 var3535 (var610_getBindableType/2092002323 var1884)) ; Statement: r6 = interfaceinvoke $r5.<javax.persistence.metamodel.Bindable: javax.persistence.metamodel.Bindable$BindableType getBindableType()>() 
(define-const var1216 (Array Int Int) var2062-$SwitchMap$javax$persistence$metamodel$Bindable$BindableType) ; Statement: $r7 = <org.hibernate.metamodel.model.domain.internal.AbstractManagedType$1: int[] $SwitchMap$javax$persistence$metamodel$Bindable$BindableType> 
(assert true)
(define-const var2174 Int (ordinal/-943601516 var845)) ; Statement: $i0 = virtualinvoke r6.<javax.persistence.metamodel.Bindable$BindableType: int ordinal()>() 
(define-const var1820 Int (select var1216 var2174)) ; Statement: $i1 = $r7[$i0] 
 ; Statement: lookupswitch($i1) {     case 1: goto $r16 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType$InFlightAccessImpl: org.hibernate.metamodel.model.domain.internal.AbstractManagedType this$0>;     case 2: goto $r8 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType$InFlightAccessImpl: org.hibernate.metamodel.model.domain.internal.AbstractManagedType this$0>;     default: goto $r20 = new org.hibernate.AssertionFailure; } 
(assert (and (not (= var1820 2)) (and (not (= var1820 1)) true))) ; Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var3947 var2832 var2832-init) ; Statement: $r20 = new org.hibernate.AssertionFailure 
(define-const var239 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var239)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var239!1 String)
(assert (= var239!1 ""))
(assert true)
(define-const var522 String (append/672562846 var239!1 "unknown bindable type: ")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown bindable type: ") 
(declare-const var239!2 String)
(assert (= var239!2 (str.++ var239!1 "unknown bindable type: ")))
(assert true)
(define-const var146 String (append/-1031950772 var522 (cast-from-var3535-to-var1159 var845))) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6) 
(declare-const var522!1 String)
(assert (str.prefixof var522 var522!1))
(assert true)
(define-const var1068 String (toString/-2075883882 var146)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var3947 var1068)) ; Statement: specialinvoke $r20.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r24) 

(declare-const var3947!1 var2832)
(declare-const var1068!1 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-1457227422=([org.hibernate.metamodel.model.domain.internal.AbstractManagedType$InFlightAccessImpl], org.hibernate.metamodel.model.domain.internal.AbstractManagedType), var3045_access$000/-1911093919=([org.hibernate.metamodel.model.domain.internal.AbstractManagedType], java.util.Map), var38_getName/-1030042408=([org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor], java.lang.String), var1226_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var1159=([java.lang.String], java.lang.Object), cast-from-var38-to-var1159=([org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor], java.lang.Object), cast-from-var38-to-var610=([org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor], javax.persistence.metamodel.Bindable), var610_getBindableType/2092002323=([javax.persistence.metamodel.Bindable], javax.persistence.metamodel.Bindable$BindableType), ordinal/-943601516=([javax.persistence.metamodel.Bindable$BindableType], int), var2832-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3535-to-var1159=([javax.persistence.metamodel.Bindable$BindableType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var3195=org.hibernate.metamodel.model.domain.internal.AbstractManagedType$InFlightAccessImpl, var2405=r0, var38=org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor, var3595=r2, var3045=org.hibernate.metamodel.model.domain.internal.AbstractManagedType, var3384=$r1, var1226=java.util.Map, var2361=$r4, var2759=$r3, var1159=java.lang.Object, var610=javax.persistence.metamodel.Bindable, var1884=$r5, var3535=javax.persistence.metamodel.Bindable$BindableType, var845=r6, var2062=org.hibernate.metamodel.model.domain.internal.AbstractManagedType$1, var1216=$r7, var2174=$i0, var1820=$i1, var2832=org.hibernate.AssertionFailure, var3947=$r20, var239=$r21, var522=$r22, var146=$r23, var1068=$r24}
; {org.hibernate.metamodel.model.domain.internal.AbstractManagedType$InFlightAccessImpl=var3195, r0=var2405, org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor=var38, r2=var3595, org.hibernate.metamodel.model.domain.internal.AbstractManagedType=var3045, $r1=var3384, java.util.Map=var1226, $r4=var2361, $r3=var2759, java.lang.Object=var1159, javax.persistence.metamodel.Bindable=var610, $r5=var1884, javax.persistence.metamodel.Bindable$BindableType=var3535, r6=var845, org.hibernate.metamodel.model.domain.internal.AbstractManagedType$1=var2062, $r7=var1216, $i0=var2174, $i1=var1820, org.hibernate.AssertionFailure=var2832, $r20=var3947, $r21=var239, $r22=var522, $r23=var146, $r24=var1068}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.metamodel.model.domain.internal.AbstractManagedType$InFlightAccessImpl;	r2 := @parameter0: org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor;	$r1 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType$InFlightAccessImpl: org.hibernate.metamodel.model.domain.internal.AbstractManagedType this$0>;	$r4 = staticinvoke <org.hibernate.metamodel.model.domain.internal.AbstractManagedType: java.util.Map access$000(org.hibernate.metamodel.model.domain.internal.AbstractManagedType)>($r1);	$r3 = interfaceinvoke r2.<org.hibernate.metamodel.model.domain.spi.PersistentAttributeDescriptor: java.lang.String getName()>();	interfaceinvoke $r4.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r3, r2);	$r5 = (javax.persistence.metamodel.Bindable) r2;	r6 = interfaceinvoke $r5.<javax.persistence.metamodel.Bindable: javax.persistence.metamodel.Bindable$BindableType getBindableType()>();	$r7 = <org.hibernate.metamodel.model.domain.internal.AbstractManagedType$1: int[] $SwitchMap$javax$persistence$metamodel$Bindable$BindableType>;	$i0 = virtualinvoke r6.<javax.persistence.metamodel.Bindable$BindableType: int ordinal()>();	$i1 = $r7[$i0];	lookupswitch($i1) {     case 1: goto $r16 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType$InFlightAccessImpl: org.hibernate.metamodel.model.domain.internal.AbstractManagedType this$0>;     case 2: goto $r8 = r0.<org.hibernate.metamodel.model.domain.internal.AbstractManagedType$InFlightAccessImpl: org.hibernate.metamodel.model.domain.internal.AbstractManagedType this$0>;     default: goto $r20 = new org.hibernate.AssertionFailure; };	$r20 = new org.hibernate.AssertionFailure;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown bindable type: ");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r24);	throw $r20
;block_num 2