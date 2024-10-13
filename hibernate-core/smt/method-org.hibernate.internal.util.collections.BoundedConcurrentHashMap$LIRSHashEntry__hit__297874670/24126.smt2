(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3661 0)
(declare-sort var3386 0)
(declare-sort var2446 0)
(declare-sort var1626 0)
(declare-sort var1069 0)
(declare-sort var2842 0)
(declare-sort var2871 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/78202838 (var3661) var1626)
(declare-fun ordinal/-291641772 (var1069) Int)
(declare-fun cast-from-var1626-to-var1069 (var1626) var1069)
(declare-fun var2842-init () var2842)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2871) String)
(declare-fun cast-from-var1626-to-var2871 (var1626) var2871)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var2842 var2871) void)
(declare-fun cast-from-String-to-var2871 (String) var2871)
(declare-const null-var3661 var3661)
(declare-const null-var3386 var3386)
(declare-const var2446-$SwitchMap$org$hibernate$internal$util$collections$BoundedConcurrentHashMap$Recency (Array Int Int))
(declare-const var194 var3661) ; Statement: r0 := @this: org.hibernate.internal.util.collections.BoundedConcurrentHashMap$LIRSHashEntry 
(assert (not (= var194 null-var3661)))
(declare-const var2940 var3386) ; Statement: r4 := @parameter0: java.util.Set 
(assert (not (= var2940 null-var3386)))
(define-const var1440 (Array Int Int) var2446-$SwitchMap$org$hibernate$internal$util$collections$BoundedConcurrentHashMap$Recency) ; Statement: $r2 = <org.hibernate.internal.util.collections.BoundedConcurrentHashMap$1: int[] $SwitchMap$org$hibernate$internal$util$collections$BoundedConcurrentHashMap$Recency> 
(define-const var3660 var1626 (state/78202838 var194)) ; Statement: $r1 = r0.<org.hibernate.internal.util.collections.BoundedConcurrentHashMap$LIRSHashEntry: org.hibernate.internal.util.collections.BoundedConcurrentHashMap$Recency state> 
(assert true)
(define-const var2037 Int (ordinal/-291641772 (cast-from-var1626-to-var1069 var3660))) ; Statement: $i0 = virtualinvoke $r1.<org.hibernate.internal.util.collections.BoundedConcurrentHashMap$Recency: int ordinal()>() 
(define-const var1388 Int (select var1440 var2037)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto specialinvoke r0.<org.hibernate.internal.util.collections.BoundedConcurrentHashMap$LIRSHashEntry: void hotHit(java.util.Set)>(r4);     case 2: goto specialinvoke r0.<org.hibernate.internal.util.collections.BoundedConcurrentHashMap$LIRSHashEntry: void coldHit(java.util.Set)>(r4);     case 3: goto $r3 = new java.lang.IllegalStateException;     default: goto $r5 = new java.lang.AssertionError; } 
(assert (and (not (= var1388 3)) (and (not (= var1388 2)) (and (not (= var1388 1)) true)))) ; Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var1506 var2842 var2842-init) ; Statement: $r5 = new java.lang.AssertionError 
(define-const var3515 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3515)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3515!1 String)
(assert (= var3515!1 ""))
(assert true)
(define-const var2152 String (append/672562846 var3515!1 "Hit with unknown status: ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hit with unknown status: ") 
(declare-const var3515!2 String)
(assert (= var3515!2 (str.++ var3515!1 "Hit with unknown status: ")))
(define-const var149 var1626 (state/78202838 var194)) ; Statement: $r7 = r0.<org.hibernate.internal.util.collections.BoundedConcurrentHashMap$LIRSHashEntry: org.hibernate.internal.util.collections.BoundedConcurrentHashMap$Recency state> 
(assert true)
(define-const var1249 String (append/-1031950772 var2152 (cast-from-var1626-to-var2871 var149))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var2152!1 String)
(assert (str.prefixof var2152 var2152!1))
(assert true)
(define-const var323 String (toString/-2075883882 var1249)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var1506 (cast-from-String-to-var2871 var323))) ; Statement: specialinvoke $r5.<java.lang.AssertionError: void <init>(java.lang.Object)>($r10) 

(declare-const var1506!1 var2842)
(declare-const var323!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {state/78202838=([org.hibernate.internal.util.collections.BoundedConcurrentHashMap$LIRSHashEntry], org.hibernate.internal.util.collections.BoundedConcurrentHashMap$Recency), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1626-to-var1069=([org.hibernate.internal.util.collections.BoundedConcurrentHashMap$Recency], java.lang.Enum), var2842-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1626-to-var2871=([org.hibernate.internal.util.collections.BoundedConcurrentHashMap$Recency], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2871=([java.lang.String], java.lang.Object)}
; {var3661=org.hibernate.internal.util.collections.BoundedConcurrentHashMap$LIRSHashEntry, var194=r0, var3386=java.util.Set, var2940=r4, var2446=org.hibernate.internal.util.collections.BoundedConcurrentHashMap$1, var1440=$r2, var1626=org.hibernate.internal.util.collections.BoundedConcurrentHashMap$Recency, var3660=$r1, var1069=java.lang.Enum, var2037=$i0, var1388=$i1, var2842=java.lang.AssertionError, var1506=$r5, var3515=$r6, var2152=$r8, var149=$r7, var2871=java.lang.Object, var1249=$r9, var323=$r10}
; {org.hibernate.internal.util.collections.BoundedConcurrentHashMap$LIRSHashEntry=var3661, r0=var194, java.util.Set=var3386, r4=var2940, org.hibernate.internal.util.collections.BoundedConcurrentHashMap$1=var2446, $r2=var1440, org.hibernate.internal.util.collections.BoundedConcurrentHashMap$Recency=var1626, $r1=var3660, java.lang.Enum=var1069, $i0=var2037, $i1=var1388, java.lang.AssertionError=var2842, $r5=var1506, $r6=var3515, $r8=var2152, $r7=var149, java.lang.Object=var2871, $r9=var1249, $r10=var323}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.internal.util.collections.BoundedConcurrentHashMap$LIRSHashEntry;	r4 := @parameter0: java.util.Set;	$r2 = <org.hibernate.internal.util.collections.BoundedConcurrentHashMap$1: int[] $SwitchMap$org$hibernate$internal$util$collections$BoundedConcurrentHashMap$Recency>;	$r1 = r0.<org.hibernate.internal.util.collections.BoundedConcurrentHashMap$LIRSHashEntry: org.hibernate.internal.util.collections.BoundedConcurrentHashMap$Recency state>;	$i0 = virtualinvoke $r1.<org.hibernate.internal.util.collections.BoundedConcurrentHashMap$Recency: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto specialinvoke r0.<org.hibernate.internal.util.collections.BoundedConcurrentHashMap$LIRSHashEntry: void hotHit(java.util.Set)>(r4);     case 2: goto specialinvoke r0.<org.hibernate.internal.util.collections.BoundedConcurrentHashMap$LIRSHashEntry: void coldHit(java.util.Set)>(r4);     case 3: goto $r3 = new java.lang.IllegalStateException;     default: goto $r5 = new java.lang.AssertionError; };	$r5 = new java.lang.AssertionError;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hit with unknown status: ");	$r7 = r0.<org.hibernate.internal.util.collections.BoundedConcurrentHashMap$LIRSHashEntry: org.hibernate.internal.util.collections.BoundedConcurrentHashMap$Recency state>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.AssertionError: void <init>(java.lang.Object)>($r10);	throw $r5
;block_num 2