(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2180 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2180-init () var2180)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2180 String) void)
(declare-const null-Int Int)
(declare-const var2682 Int) ; Statement: s0 := @parameter0: short 
(assert (not (= var2682 null-Int)))
(define-const var409 Int (cast-from-Int-to-Int var2682)) ; Statement: $i1 = (int) s0 
 ; Statement: tableswitch($i1) {     case 0: goto $r2 = <org.hibernate.engine.jdbc.spi.TypeNullability: org.hibernate.engine.jdbc.spi.TypeNullability NON_NULLABLE>;     case 1: goto $r1 = <org.hibernate.engine.jdbc.spi.TypeNullability: org.hibernate.engine.jdbc.spi.TypeNullability NULLABLE>;     case 2: goto $r0 = <org.hibernate.engine.jdbc.spi.TypeNullability: org.hibernate.engine.jdbc.spi.TypeNullability UNKNOWN>;     default: goto $r10 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var409 2)) (and (not (= var409 1)) (and (not (= var409 0)) true)))) ; Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Intersect: Negate: Cond: $i1 == 0   and Non Conditional   
(define-const var3799 var2180 var2180-init) ; Statement: $r10 = new java.lang.IllegalArgumentException 
(define-const var269 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var269)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var269!1 String)
(assert (= var269!1 ""))
(assert true)
(define-const var1140 String (append/672562846 var269!1 "Unknown type nullability code [")) ; Statement: $r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown type nullability code [") 
(declare-const var269!2 String)
(assert (= var269!2 (str.++ var269!1 "Unknown type nullability code [")))
(define-const var584 Int (cast-from-Int-to-Int var2682)) ; Statement: $i2 = (int) s0 
(assert true)
(define-const var2748 String (append/-1001720160 var1140 var584)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1140!1 String)
(assert (str.prefixof var1140 var1140!1))
(assert true)
(define-const var3641 String (append/672562846 var2748 "] enountered")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] enountered") 
(declare-const var2748!1 String)
(assert (= var2748!1 (str.++ var2748 "] enountered")))
(assert true)
(define-const var2333 String (toString/-2075883882 var3641)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3799 var2333)) ; Statement: specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var3799!1 var2180)
(declare-const var2333!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([short], int), var2180-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2682=s0, var409=$i1, var2180=java.lang.IllegalArgumentException, var3799=$r10, var269=$r9, var1140=$r5, var584=$i2, var2748=$r6, var3641=$r7, var2333=$r8}
; {s0=var2682, $i1=var409, java.lang.IllegalArgumentException=var2180, $r10=var3799, $r9=var269, $r5=var1140, $i2=var584, $r6=var2748, $r7=var3641, $r8=var2333}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts s0 := @parameter0: short;	$i1 = (int) s0;	tableswitch($i1) {     case 0: goto $r2 = <org.hibernate.engine.jdbc.spi.TypeNullability: org.hibernate.engine.jdbc.spi.TypeNullability NON_NULLABLE>;     case 1: goto $r1 = <org.hibernate.engine.jdbc.spi.TypeNullability: org.hibernate.engine.jdbc.spi.TypeNullability NULLABLE>;     case 2: goto $r0 = <org.hibernate.engine.jdbc.spi.TypeNullability: org.hibernate.engine.jdbc.spi.TypeNullability UNKNOWN>;     default: goto $r10 = new java.lang.IllegalArgumentException; };	$r10 = new java.lang.IllegalArgumentException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown type nullability code [");	$i2 = (int) s0;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] enountered");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r10
;block_num 2