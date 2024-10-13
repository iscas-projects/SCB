(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2928 0)
(declare-sort var101 0)
(declare-sort var3236 0)
(declare-sort var769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-671517906 (var2928) Int)
(declare-fun var3236-init () var3236)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var769) String)
(declare-fun cast-from-var2928-to-var769 (var2928) var769)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var3236 String) void)
(declare-const null-var2928 var2928)
(declare-const var101-$SwitchMap$javax$persistence$LockModeType (Array Int Int))
(declare-const var2530 var2928) ; Statement: r0 := @parameter0: javax.persistence.LockModeType 
(assert (not (= var2530 null-var2928)))
(define-const var929 (Array Int Int) var101-$SwitchMap$javax$persistence$LockModeType) ; Statement: $r1 = <org.hibernate.internal.util.LockModeConverter$1: int[] $SwitchMap$javax$persistence$LockModeType> 
(assert true)
(define-const var208 Int (ordinal/-671517906 var2530)) ; Statement: $i0 = virtualinvoke r0.<javax.persistence.LockModeType: int ordinal()>() 
(define-const var2390 Int (select var929 var208)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r7 = <org.hibernate.LockMode: org.hibernate.LockMode OPTIMISTIC>;     case 2: goto $r7 = <org.hibernate.LockMode: org.hibernate.LockMode OPTIMISTIC>;     case 3: goto $r6 = <org.hibernate.LockMode: org.hibernate.LockMode OPTIMISTIC_FORCE_INCREMENT>;     case 4: goto $r6 = <org.hibernate.LockMode: org.hibernate.LockMode OPTIMISTIC_FORCE_INCREMENT>;     case 5: goto $r5 = <org.hibernate.LockMode: org.hibernate.LockMode PESSIMISTIC_READ>;     case 6: goto $r4 = <org.hibernate.LockMode: org.hibernate.LockMode PESSIMISTIC_WRITE>;     case 7: goto $r3 = <org.hibernate.LockMode: org.hibernate.LockMode PESSIMISTIC_FORCE_INCREMENT>;     case 8: goto $r2 = <org.hibernate.LockMode: org.hibernate.LockMode NONE>;     default: goto $r8 = new org.hibernate.AssertionFailure; } 
(assert (and (not (= var2390 8)) (and (not (= var2390 7)) (and (not (= var2390 6)) (and (not (= var2390 5)) (and (not (= var2390 4)) (and (not (= var2390 3)) (and (not (= var2390 2)) (and (not (= var2390 1)) true))))))))) ; Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional        
(define-const var1623 var3236 var3236-init) ; Statement: $r8 = new org.hibernate.AssertionFailure 
(define-const var984 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var984)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var984!1 String)
(assert (= var984!1 ""))
(assert true)
(define-const var1827 String (append/672562846 var984!1 "Unknown LockModeType: ")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown LockModeType: ") 
(declare-const var984!2 String)
(assert (= var984!2 (str.++ var984!1 "Unknown LockModeType: ")))
(assert true)
(define-const var2815 String (append/-1031950772 var1827 (cast-from-var2928-to-var769 var2530))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1827!1 String)
(assert (str.prefixof var1827 var1827!1))
(assert true)
(define-const var3854 String (toString/-2075883882 var2815)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var1623 var3854)) ; Statement: specialinvoke $r8.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r12) 

(declare-const var1623!1 var3236)
(declare-const var3854!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-671517906=([javax.persistence.LockModeType], int), var3236-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2928-to-var769=([javax.persistence.LockModeType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var2928=javax.persistence.LockModeType, var2530=r0, var101=org.hibernate.internal.util.LockModeConverter$1, var929=$r1, var208=$i0, var2390=$i1, var3236=org.hibernate.AssertionFailure, var1623=$r8, var984=$r9, var1827=$r10, var769=java.lang.Object, var2815=$r11, var3854=$r12}
; {javax.persistence.LockModeType=var2928, r0=var2530, org.hibernate.internal.util.LockModeConverter$1=var101, $r1=var929, $i0=var208, $i1=var2390, org.hibernate.AssertionFailure=var3236, $r8=var1623, $r9=var984, $r10=var1827, java.lang.Object=var769, $r11=var2815, $r12=var3854}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: javax.persistence.LockModeType;	$r1 = <org.hibernate.internal.util.LockModeConverter$1: int[] $SwitchMap$javax$persistence$LockModeType>;	$i0 = virtualinvoke r0.<javax.persistence.LockModeType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r7 = <org.hibernate.LockMode: org.hibernate.LockMode OPTIMISTIC>;     case 2: goto $r7 = <org.hibernate.LockMode: org.hibernate.LockMode OPTIMISTIC>;     case 3: goto $r6 = <org.hibernate.LockMode: org.hibernate.LockMode OPTIMISTIC_FORCE_INCREMENT>;     case 4: goto $r6 = <org.hibernate.LockMode: org.hibernate.LockMode OPTIMISTIC_FORCE_INCREMENT>;     case 5: goto $r5 = <org.hibernate.LockMode: org.hibernate.LockMode PESSIMISTIC_READ>;     case 6: goto $r4 = <org.hibernate.LockMode: org.hibernate.LockMode PESSIMISTIC_WRITE>;     case 7: goto $r3 = <org.hibernate.LockMode: org.hibernate.LockMode PESSIMISTIC_FORCE_INCREMENT>;     case 8: goto $r2 = <org.hibernate.LockMode: org.hibernate.LockMode NONE>;     default: goto $r8 = new org.hibernate.AssertionFailure; };	$r8 = new org.hibernate.AssertionFailure;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown LockModeType: ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r12);	throw $r8
;block_num 2