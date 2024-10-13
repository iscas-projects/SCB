(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3564 0)
(declare-sort var108 0)
(declare-sort var187 0)
(declare-sort var641 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var641-init () var641)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var641 String var187) void)
(declare-fun cast-from-var641-to-var187 (var641) var187)
(declare-const null-var3564 var3564)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var187 var187)
(declare-const var1386 var3564) ; Statement: r11 := @this: org.hibernate.hql.internal.ast.util.LiteralProcessor 
(assert (not (= var1386 null-var3564)))
(declare-const var3946 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3946 null-String)))
(declare-const var1044 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1044 null-Int)))
(define-const var1735 String var3946) ; Statement: r12 = r0 
 ; Statement: if i0 != 102 goto (branch) 
(assert (not (= var1044 102))) ; Cond: i0 != 102 
 ; Statement: if i0 != 101 goto (branch) 
(assert (not (= var1044 101))) ; Cond: i0 != 101 
 ; Statement: if i0 != 105 goto $r14 = new java.math.BigDecimal 
(assert (not (not (= var1044 105)))) ; Negate: Cond: i0 != 105  
(declare-const var3790 var187) ; Statement: $r4 := @caughtexception 
(assert (not (= var3790 null-var187)))
(define-const var997 var641 var641-init) ; Statement: $r16 = new org.hibernate.HibernateException 
(define-const var3718 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3718)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3718!1 String)
(assert (= var3718!1 ""))
(assert true)
(define-const var3025 String (append/672562846 var3718!1 "Could not parse literal [")) ; Statement: $r7 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not parse literal [") 
(declare-const var3718!2 String)
(assert (= var3718!2 (str.++ var3718!1 "Could not parse literal [")))
(assert true)
(define-const var1612 String (append/672562846 var3025 var3946)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3025!1 String)
(assert (= var3025!1 (str.++ var3025 var3946)))
(assert true)
(define-const var1734 String (append/672562846 var1612 "] as big-decimal")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] as big-decimal") 
(declare-const var1612!1 String)
(assert (= var1612!1 (str.++ var1612 "] as big-decimal")))
(assert true)
(define-const var3583 String (toString/-2075883882 var1734)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var997 var3583 var3790)) ; Statement: specialinvoke $r16.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4) 

(declare-const var997!1 var641)
(declare-const var3583!1 String)
(declare-const var3790!1 var187)
(define-const var3034 var187 (cast-from-var641-to-var187 var997!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var641-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var641-to-var187=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var3564=org.hibernate.hql.internal.ast.util.LiteralProcessor, var1386=r11, var3946=r0, var108=null_type, var1044=i0, var1735=r12, var187=java.lang.Throwable, var3790=$r4, var641=org.hibernate.HibernateException, var997=$r16, var3718=$r15, var3025=$r7, var1612=$r8, var1734=$r9, var3583=$r10, var3034=$r17}
; {org.hibernate.hql.internal.ast.util.LiteralProcessor=var3564, r11=var1386, r0=var3946, null_type=var108, i0=var1044, r12=var1735, java.lang.Throwable=var187, $r4=var3790, org.hibernate.HibernateException=var641, $r16=var997, $r15=var3718, $r7=var3025, $r8=var1612, $r9=var1734, $r10=var3583, $r17=var3034}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.hql.internal.ast.util.LiteralProcessor;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r12 = r0;	if i0 != 102 goto (branch);	if i0 != 101 goto (branch);	if i0 != 105 goto $r14 = new java.math.BigDecimal;	$r4 := @caughtexception;	$r16 = new org.hibernate.HibernateException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not parse literal [");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] as big-decimal");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r4);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 4