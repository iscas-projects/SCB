(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2745 0)
(declare-sort var3413 0)
(declare-sort var1793 0)
(declare-sort var1127 0)
(declare-sort var18 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1793_checkNotNullParameter/-2060636419 (var1127 String) void)
(declare-fun cast-from-String-to-var1127 (String) var1127)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var18-init () var18)
(declare-fun toString/-522406933 (var1127) String)
(declare-fun <init>/-1092629202 (var18 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3413 var3413)
(declare-const var3108 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3108 null-String)))
(declare-const var1739 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var1739 null-Int)))
(declare-const var883 var3413) ; Statement: r1 := @parameter2: java.util.concurrent.TimeUnit 
(assert (not (= var883 null-var3413)))
;(assert (var1793_checkNotNullParameter/-2060636419 (cast-from-String-to-var1127 var3108) "name")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "name") 

(declare-const var3108!1 String)
(declare-const var1386 String)
(define-const var1083 Int (ite (> var1739 0) 1 (ite (< var1739 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var3409 Int (cast-from-Int-to-Int var1083)) ; Statement: $i7 = (int) $b1 
 ; Statement: if $i7 < 0 goto $z0 = 0 
(assert (not (< var3409 0))) ; Negate: Cond: $i7 < 0  
(define-const var583 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (not (= (ite var583 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2191 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2191)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2191!1 String)
(assert (= var2191!1 ""))
(assert true)
(define-const var132 String (append/672562846 var2191!1 var3108!1)) ; Statement: $r15 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2191!2 String)
(assert (= var2191!2 (str.++ var2191!1 var3108!1)))
(assert true)
(define-const var1540 String (append/672562846 var132 " < 0")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" < 0") 
(declare-const var132!1 String)
(assert (= var132!1 (str.++ var132 " < 0")))
(assert true)
(define-const var3555 String (toString/-2075883882 var1540)) ; Statement: $r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2683 var18 var18-init) ; Statement: $r24 = new java.lang.IllegalStateException 
(assert true)
(define-const var3945 String (toString/-522406933 (cast-from-String-to-var1127 var3555))) ; Statement: $r18 = virtualinvoke $r19.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2683 var3945)) ; Statement: specialinvoke $r24.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r18) 

(declare-const var2683!1 var18)
(declare-const var3945!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var1793_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1127=([java.lang.String], java.lang.Object), cast-from-Int-to-Int=([byte], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var18-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3108=r0, var2745=null_type, var1739=l0, var3413=java.util.concurrent.TimeUnit, var883=r1, var1793=kotlin.jvm.internal.Intrinsics, var1127=java.lang.Object, var1386="name", var1083=$b1, var3409=$i7, var583=$z0, var2191=$r23, var132=$r15, var1540=$r16, var3555=$r19, var18=java.lang.IllegalStateException, var2683=$r24, var3945=$r18}
; {r0=var3108, null_type=var2745, l0=var1739, java.util.concurrent.TimeUnit=var3413, r1=var883, kotlin.jvm.internal.Intrinsics=var1793, java.lang.Object=var1127, "name"=var1386, $b1=var1083, $i7=var3409, $z0=var583, $r23=var2191, $r15=var132, $r16=var1540, $r19=var3555, java.lang.IllegalStateException=var18, $r24=var2683, $r18=var3945}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	l0 := @parameter1: long;	r1 := @parameter2: java.util.concurrent.TimeUnit;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "name");	$b1 = l0 cmp 0L;	$i7 = (int) $b1;	if $i7 < 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto (branch);	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" < 0");	$r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r24 = new java.lang.IllegalStateException;	$r18 = virtualinvoke $r19.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r24.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r18);	throw $r24
;block_num 4