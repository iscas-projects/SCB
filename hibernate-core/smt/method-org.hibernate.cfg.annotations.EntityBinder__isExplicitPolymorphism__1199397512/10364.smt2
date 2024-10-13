(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2881 0)
(declare-sort var3957 0)
(declare-sort var1983 0)
(declare-sort var3274 0)
(declare-sort var1838 0)
(declare-sort var227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var3274) Int)
(declare-fun cast-from-var3957-to-var3274 (var3957) var3274)
(declare-fun var1838-init () var1838)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var227) String)
(declare-fun cast-from-var3957-to-var227 (var3957) var227)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var1838 String) void)
(declare-const null-var2881 var2881)
(declare-const null-var3957 var3957)
(declare-const var1983-$SwitchMap$org$hibernate$annotations$PolymorphismType (Array Int Int))
(declare-const var3558 var2881) ; Statement: r7 := @this: org.hibernate.cfg.annotations.EntityBinder 
(assert (not (= var3558 null-var2881)))
(declare-const var3892 var3957) ; Statement: r0 := @parameter0: org.hibernate.annotations.PolymorphismType 
(assert (not (= var3892 null-var3957)))
(define-const var2723 (Array Int Int) var1983-$SwitchMap$org$hibernate$annotations$PolymorphismType) ; Statement: $r1 = <org.hibernate.cfg.annotations.EntityBinder$1: int[] $SwitchMap$org$hibernate$annotations$PolymorphismType> 
(assert true)
(define-const var866 Int (ordinal/-291641772 (cast-from-var3957-to-var3274 var3892))) ; Statement: $i0 = virtualinvoke r0.<org.hibernate.annotations.PolymorphismType: int ordinal()>() 
(define-const var3332 Int (select var2723 var866)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: lookupswitch($i1) {     case 1: goto return 0;     case 2: goto return 1;     default: goto $r2 = new org.hibernate.AssertionFailure; } 
(assert (and (not (= var3332 2)) (and (not (= var3332 1)) true))) ; Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var3344 var1838 var1838-init) ; Statement: $r2 = new org.hibernate.AssertionFailure 
(define-const var1074 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1074)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1074!1 String)
(assert (= var1074!1 ""))
(assert true)
(define-const var2198 String (append/672562846 var1074!1 "Unknown polymorphism type: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown polymorphism type: ") 
(declare-const var1074!2 String)
(assert (= var1074!2 (str.++ var1074!1 "Unknown polymorphism type: ")))
(assert true)
(define-const var3901 String (append/-1031950772 var2198 (cast-from-var3957-to-var227 var3892))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2198!1 String)
(assert (str.prefixof var2198 var2198!1))
(assert true)
(define-const var2403 String (toString/-2075883882 var3901)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var3344 var2403)) ; Statement: specialinvoke $r2.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r6) 

(declare-const var3344!1 var1838)
(declare-const var2403!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var3957-to-var3274=([org.hibernate.annotations.PolymorphismType], java.lang.Enum), var1838-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3957-to-var227=([org.hibernate.annotations.PolymorphismType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var2881=org.hibernate.cfg.annotations.EntityBinder, var3558=r7, var3957=org.hibernate.annotations.PolymorphismType, var3892=r0, var1983=org.hibernate.cfg.annotations.EntityBinder$1, var2723=$r1, var3274=java.lang.Enum, var866=$i0, var3332=$i1, var1838=org.hibernate.AssertionFailure, var3344=$r2, var1074=$r3, var2198=$r4, var227=java.lang.Object, var3901=$r5, var2403=$r6}
; {org.hibernate.cfg.annotations.EntityBinder=var2881, r7=var3558, org.hibernate.annotations.PolymorphismType=var3957, r0=var3892, org.hibernate.cfg.annotations.EntityBinder$1=var1983, $r1=var2723, java.lang.Enum=var3274, $i0=var866, $i1=var3332, org.hibernate.AssertionFailure=var1838, $r2=var3344, $r3=var1074, $r4=var2198, java.lang.Object=var227, $r5=var3901, $r6=var2403}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.cfg.annotations.EntityBinder;	r0 := @parameter0: org.hibernate.annotations.PolymorphismType;	$r1 = <org.hibernate.cfg.annotations.EntityBinder$1: int[] $SwitchMap$org$hibernate$annotations$PolymorphismType>;	$i0 = virtualinvoke r0.<org.hibernate.annotations.PolymorphismType: int ordinal()>();	$i1 = $r1[$i0];	lookupswitch($i1) {     case 1: goto return 0;     case 2: goto return 1;     default: goto $r2 = new org.hibernate.AssertionFailure; };	$r2 = new org.hibernate.AssertionFailure;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown polymorphism type: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 2