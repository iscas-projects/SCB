(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var135 0)
(declare-sort var2707 0)
(declare-sort var1264 0)
(declare-sort var2453 0)
(declare-sort var2315 0)
(declare-sort var3168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var2453) Int)
(declare-fun cast-from-var2707-to-var2453 (var2707) var2453)
(declare-fun var2315-init () var2315)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3168) String)
(declare-fun cast-from-var2707-to-var3168 (var2707) var3168)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var2315 String) void)
(declare-const null-var135 var135)
(declare-const null-var2707 var2707)
(declare-const var1264-$SwitchMap$org$hibernate$annotations$OptimisticLockType (Array Int Int))
(declare-const var1872 var135) ; Statement: r11 := @this: org.hibernate.cfg.annotations.EntityBinder 
(assert (not (= var1872 null-var135)))
(declare-const var1079 var2707) ; Statement: r0 := @parameter0: org.hibernate.annotations.OptimisticLockType 
(assert (not (= var1079 null-var2707)))
(define-const var2185 (Array Int Int) var1264-$SwitchMap$org$hibernate$annotations$OptimisticLockType) ; Statement: $r1 = <org.hibernate.cfg.annotations.EntityBinder$1: int[] $SwitchMap$org$hibernate$annotations$OptimisticLockType> 
(assert true)
(define-const var292 Int (ordinal/-291641772 (cast-from-var2707-to-var2453 var1079))) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.annotations.OptimisticLockType: int ordinal()>() 
(define-const var2716 Int (select var2185 var292)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r5 = <org.hibernate.engine.OptimisticLockStyle: org.hibernate.engine.OptimisticLockStyle VERSION>;     case 2: goto $r4 = <org.hibernate.engine.OptimisticLockStyle: org.hibernate.engine.OptimisticLockStyle NONE>;     case 3: goto $r3 = <org.hibernate.engine.OptimisticLockStyle: org.hibernate.engine.OptimisticLockStyle DIRTY>;     case 4: goto $r2 = <org.hibernate.engine.OptimisticLockStyle: org.hibernate.engine.OptimisticLockStyle ALL>;     default: goto $r6 = new org.hibernate.AssertionFailure; } 
(assert (and (not (= var2716 4)) (and (not (= var2716 3)) (and (not (= var2716 2)) (and (not (= var2716 1)) true))))) ; Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(define-const var3850 var2315 var2315-init) ; Statement: $r6 = new org.hibernate.AssertionFailure 
(define-const var3039 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3039)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3039!1 String)
(assert (= var3039!1 ""))
(assert true)
(define-const var1520 String (append/672562846 var3039!1 "optimistic locking not supported: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("optimistic locking not supported: ") 
(declare-const var3039!2 String)
(assert (= var3039!2 (str.++ var3039!1 "optimistic locking not supported: ")))
(assert true)
(define-const var2747 String (append/-1031950772 var1520 (cast-from-var2707-to-var3168 var1079))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1520!1 String)
(assert (str.prefixof var1520 var1520!1))
(assert true)
(define-const var284 String (toString/-2075883882 var2747)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var3850 var284)) ; Statement: specialinvoke $r6.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r10) 

(declare-const var3850!1 var2315)
(declare-const var284!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var2707-to-var2453=([org.hibernate.annotations.OptimisticLockType], java.lang.Enum), var2315-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2707-to-var3168=([org.hibernate.annotations.OptimisticLockType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var135=org.hibernate.cfg.annotations.EntityBinder, var1872=r11, var2707=org.hibernate.annotations.OptimisticLockType, var1079=r0, var1264=org.hibernate.cfg.annotations.EntityBinder$1, var2185=$r1, var2453=java.lang.Enum, var292=$i0, var2716=$i1, var2315=org.hibernate.AssertionFailure, var3850=$r6, var3039=$r7, var1520=$r8, var3168=java.lang.Object, var2747=$r9, var284=$r10}
; {org.hibernate.cfg.annotations.EntityBinder=var135, r11=var1872, org.hibernate.annotations.OptimisticLockType=var2707, r0=var1079, org.hibernate.cfg.annotations.EntityBinder$1=var1264, $r1=var2185, java.lang.Enum=var2453, $i0=var292, $i1=var2716, org.hibernate.AssertionFailure=var2315, $r6=var3850, $r7=var3039, $r8=var1520, java.lang.Object=var3168, $r9=var2747, $r10=var284}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.cfg.annotations.EntityBinder;	r0 := @parameter0: org.hibernate.annotations.OptimisticLockType;	$r1 = <org.hibernate.cfg.annotations.EntityBinder$1: int[] $SwitchMap$org$hibernate$annotations$OptimisticLockType>;	$i0 = virtualinvoke r0.<org.hibernate.annotations.OptimisticLockType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r5 = <org.hibernate.engine.OptimisticLockStyle: org.hibernate.engine.OptimisticLockStyle VERSION>;     case 2: goto $r4 = <org.hibernate.engine.OptimisticLockStyle: org.hibernate.engine.OptimisticLockStyle NONE>;     case 3: goto $r3 = <org.hibernate.engine.OptimisticLockStyle: org.hibernate.engine.OptimisticLockStyle DIRTY>;     case 4: goto $r2 = <org.hibernate.engine.OptimisticLockStyle: org.hibernate.engine.OptimisticLockStyle ALL>;     default: goto $r6 = new org.hibernate.AssertionFailure; };	$r6 = new org.hibernate.AssertionFailure;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("optimistic locking not supported: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r10);	throw $r6
;block_num 2