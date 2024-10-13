(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var800 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var800-init () var800)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var800 String) void)
(declare-const null-Int Int)
(declare-const var423 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var423 null-Int)))
 ; Statement: tableswitch(i0) {     case -1: goto $r3 = <org.hibernate.engine.OptimisticLockStyle: org.hibernate.engine.OptimisticLockStyle NONE>;     case 0: goto $r2 = <org.hibernate.engine.OptimisticLockStyle: org.hibernate.engine.OptimisticLockStyle VERSION>;     case 1: goto $r1 = <org.hibernate.engine.OptimisticLockStyle: org.hibernate.engine.OptimisticLockStyle DIRTY>;     case 2: goto $r0 = <org.hibernate.engine.OptimisticLockStyle: org.hibernate.engine.OptimisticLockStyle ALL>;     default: goto $r4 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var423 2)) (and (not (= var423 1)) (and (not (= var423 0)) (and (not (= var423 (- 1))) true))))) ; Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == 0   and Intersect: Negate: Cond: i0 == -1   and Non Conditional    
(define-const var103 var800 var800-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var3222 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3222)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3222!1 String)
(assert (= var3222!1 ""))
(assert true)
(define-const var1169 String (append/672562846 var3222!1 "Illegal legacy optimistic lock style code :")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal legacy optimistic lock style code :") 
(declare-const var3222!2 String)
(assert (= var3222!2 (str.++ var3222!1 "Illegal legacy optimistic lock style code :")))
(assert true)
(define-const var179 String (append/-1001720160 var1169 var423)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1169!1 String)
(assert (str.prefixof var1169 var1169!1))
(assert true)
(define-const var3916 String (toString/-2075883882 var179)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var103 var3916)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var103!1 var800)
(declare-const var3916!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var800-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var423=i0, var800=java.lang.IllegalArgumentException, var103=$r4, var3222=$r5, var1169=$r6, var179=$r7, var3916=$r8}
; {i0=var423, java.lang.IllegalArgumentException=var800, $r4=var103, $r5=var3222, $r6=var1169, $r7=var179, $r8=var3916}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	tableswitch(i0) {     case -1: goto $r3 = <org.hibernate.engine.OptimisticLockStyle: org.hibernate.engine.OptimisticLockStyle NONE>;     case 0: goto $r2 = <org.hibernate.engine.OptimisticLockStyle: org.hibernate.engine.OptimisticLockStyle VERSION>;     case 1: goto $r1 = <org.hibernate.engine.OptimisticLockStyle: org.hibernate.engine.OptimisticLockStyle DIRTY>;     case 2: goto $r0 = <org.hibernate.engine.OptimisticLockStyle: org.hibernate.engine.OptimisticLockStyle ALL>;     default: goto $r4 = new java.lang.IllegalArgumentException; };	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Illegal legacy optimistic lock style code :");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2