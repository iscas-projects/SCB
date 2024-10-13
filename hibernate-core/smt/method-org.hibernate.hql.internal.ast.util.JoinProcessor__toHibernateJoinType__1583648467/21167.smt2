(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1028 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1028-init () var1028)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var1028 String) void)
(declare-const null-Int Int)
(declare-const var2263 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2263 null-Int)))
 ; Statement: lookupswitch(i0) {     case 24: goto $r3 = <org.hibernate.sql.JoinType: org.hibernate.sql.JoinType FULL_JOIN>;     case 29: goto $r2 = <org.hibernate.sql.JoinType: org.hibernate.sql.JoinType INNER_JOIN>;     case 146: goto $r1 = <org.hibernate.sql.JoinType: org.hibernate.sql.JoinType LEFT_OUTER_JOIN>;     case 147: goto $r0 = <org.hibernate.sql.JoinType: org.hibernate.sql.JoinType RIGHT_OUTER_JOIN>;     default: goto $r4 = new org.hibernate.AssertionFailure; } 
(assert (and (not (= var2263 147)) (and (not (= var2263 146)) (and (not (= var2263 29)) (and (not (= var2263 24)) true))))) ; Intersect: Negate: Cond: i0 == 147   and Intersect: Negate: Cond: i0 == 146   and Intersect: Negate: Cond: i0 == 29   and Intersect: Negate: Cond: i0 == 24   and Non Conditional    
(define-const var1395 var1028 var1028-init) ; Statement: $r4 = new org.hibernate.AssertionFailure 
(define-const var19 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var19)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var19!1 String)
(assert (= var19!1 ""))
(assert true)
(define-const var3138 String (append/672562846 var19!1 "undefined join type ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("undefined join type ") 
(declare-const var19!2 String)
(assert (= var19!2 (str.++ var19!1 "undefined join type ")))
(assert true)
(define-const var673 String (append/-1001720160 var3138 var2263)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3138!1 String)
(assert (str.prefixof var3138 var3138!1))
(assert true)
(define-const var1726 String (toString/-2075883882 var673)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var1395 var1726)) ; Statement: specialinvoke $r4.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r8) 

(declare-const var1395!1 var1028)
(declare-const var1726!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1028-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var2263=i0, var1028=org.hibernate.AssertionFailure, var1395=$r4, var19=$r5, var3138=$r6, var673=$r7, var1726=$r8}
; {i0=var2263, org.hibernate.AssertionFailure=var1028, $r4=var1395, $r5=var19, $r6=var3138, $r7=var673, $r8=var1726}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	lookupswitch(i0) {     case 24: goto $r3 = <org.hibernate.sql.JoinType: org.hibernate.sql.JoinType FULL_JOIN>;     case 29: goto $r2 = <org.hibernate.sql.JoinType: org.hibernate.sql.JoinType INNER_JOIN>;     case 146: goto $r1 = <org.hibernate.sql.JoinType: org.hibernate.sql.JoinType LEFT_OUTER_JOIN>;     case 147: goto $r0 = <org.hibernate.sql.JoinType: org.hibernate.sql.JoinType RIGHT_OUTER_JOIN>;     default: goto $r4 = new org.hibernate.AssertionFailure; };	$r4 = new org.hibernate.AssertionFailure;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("undefined join type ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2