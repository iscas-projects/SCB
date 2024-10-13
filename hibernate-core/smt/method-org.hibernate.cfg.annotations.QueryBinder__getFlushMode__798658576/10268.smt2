(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1220 0)
(declare-sort var3048 0)
(declare-sort var127 0)
(declare-sort var3001 0)
(declare-sort var443 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var127) Int)
(declare-fun cast-from-var1220-to-var127 (var1220) var127)
(declare-fun var3001-init () var3001)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var443) String)
(declare-fun cast-from-var1220-to-var443 (var1220) var443)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var3001 String) void)
(declare-const null-var1220 var1220)
(declare-const var3048-$SwitchMap$org$hibernate$annotations$FlushModeType (Array Int Int))
(declare-const var3881 var1220) ; Statement: r0 := @parameter0: org.hibernate.annotations.FlushModeType 
(assert (not (= var3881 null-var1220)))
(define-const var99 (Array Int Int) var3048-$SwitchMap$org$hibernate$annotations$FlushModeType) ; Statement: $r1 = <org.hibernate.cfg.annotations.QueryBinder$1: int[] $SwitchMap$org$hibernate$annotations$FlushModeType> 
(assert true)
(define-const var3501 Int (ordinal/-291641772 (cast-from-var1220-to-var127 var3881))) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.annotations.FlushModeType: int ordinal()>() 
(define-const var2398 Int (select var99 var3501)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto r7 = <org.hibernate.FlushMode: org.hibernate.FlushMode ALWAYS>;     case 2: goto r7 = <org.hibernate.FlushMode: org.hibernate.FlushMode AUTO>;     case 3: goto r7 = <org.hibernate.FlushMode: org.hibernate.FlushMode COMMIT>;     case 4: goto r7 = <org.hibernate.FlushMode: org.hibernate.FlushMode MANUAL>;     case 5: goto r7 = <org.hibernate.FlushMode: org.hibernate.FlushMode MANUAL>;     case 6: goto r7 = null;     default: goto $r2 = new org.hibernate.AssertionFailure; } 
(assert (and (not (= var2398 6)) (and (not (= var2398 5)) (and (not (= var2398 4)) (and (not (= var2398 3)) (and (not (= var2398 2)) (and (not (= var2398 1)) true))))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var2826 var3001 var3001-init) ; Statement: $r2 = new org.hibernate.AssertionFailure 
(define-const var1581 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1581)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1581!1 String)
(assert (= var1581!1 ""))
(assert true)
(define-const var2976 String (append/672562846 var1581!1 "Unknown flushModeType: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown flushModeType: ") 
(declare-const var1581!2 String)
(assert (= var1581!2 (str.++ var1581!1 "Unknown flushModeType: ")))
(assert true)
(define-const var1266 String (append/-1031950772 var2976 (cast-from-var1220-to-var443 var3881))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2976!1 String)
(assert (str.prefixof var2976 var2976!1))
(assert true)
(define-const var2248 String (toString/-2075883882 var1266)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var2826 var2248)) ; Statement: specialinvoke $r2.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r6) 

(declare-const var2826!1 var3001)
(declare-const var2248!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var1220-to-var127=([org.hibernate.annotations.FlushModeType], java.lang.Enum), var3001-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1220-to-var443=([org.hibernate.annotations.FlushModeType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var1220=org.hibernate.annotations.FlushModeType, var3881=r0, var3048=org.hibernate.cfg.annotations.QueryBinder$1, var99=$r1, var127=java.lang.Enum, var3501=$i0, var2398=$i1, var3001=org.hibernate.AssertionFailure, var2826=$r2, var1581=$r3, var2976=$r4, var443=java.lang.Object, var1266=$r5, var2248=$r6}
; {org.hibernate.annotations.FlushModeType=var1220, r0=var3881, org.hibernate.cfg.annotations.QueryBinder$1=var3048, $r1=var99, java.lang.Enum=var127, $i0=var3501, $i1=var2398, org.hibernate.AssertionFailure=var3001, $r2=var2826, $r3=var1581, $r4=var2976, java.lang.Object=var443, $r5=var1266, $r6=var2248}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.hibernate.annotations.FlushModeType;	$r1 = <org.hibernate.cfg.annotations.QueryBinder$1: int[] $SwitchMap$org$hibernate$annotations$FlushModeType>;	$i0 = virtualinvoke r0.<org.hibernate.annotations.FlushModeType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto r7 = <org.hibernate.FlushMode: org.hibernate.FlushMode ALWAYS>;     case 2: goto r7 = <org.hibernate.FlushMode: org.hibernate.FlushMode AUTO>;     case 3: goto r7 = <org.hibernate.FlushMode: org.hibernate.FlushMode COMMIT>;     case 4: goto r7 = <org.hibernate.FlushMode: org.hibernate.FlushMode MANUAL>;     case 5: goto r7 = <org.hibernate.FlushMode: org.hibernate.FlushMode MANUAL>;     case 6: goto r7 = null;     default: goto $r2 = new org.hibernate.AssertionFailure; };	$r2 = new org.hibernate.AssertionFailure;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown flushModeType: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 2