(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3055 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3055-init () var3055)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3055 String) void)
(declare-const null-Int Int)
(declare-const var2374 Int) ; Statement: s0 := @parameter0: short 
(assert (not (= var2374 null-Int)))
(define-const var3086 Int (cast-from-Int-to-Int var2374)) ; Statement: $i1 = (int) s0 
 ; Statement: tableswitch($i1) {     case 0: goto $r3 = <org.hibernate.engine.jdbc.spi.TypeSearchability: org.hibernate.engine.jdbc.spi.TypeSearchability NONE>;     case 1: goto $r2 = <org.hibernate.engine.jdbc.spi.TypeSearchability: org.hibernate.engine.jdbc.spi.TypeSearchability CHAR>;     case 2: goto $r1 = <org.hibernate.engine.jdbc.spi.TypeSearchability: org.hibernate.engine.jdbc.spi.TypeSearchability BASIC>;     case 3: goto $r0 = <org.hibernate.engine.jdbc.spi.TypeSearchability: org.hibernate.engine.jdbc.spi.TypeSearchability FULL>;     default: goto $r11 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3086 3)) (and (not (= var3086 2)) (and (not (= var3086 1)) (and (not (= var3086 0)) true))))) ; Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Intersect: Negate: Cond: $i1 == 0   and Non Conditional    
(define-const var237 var3055 var3055-init) ; Statement: $r11 = new java.lang.IllegalArgumentException 
(define-const var1996 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1996)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1996!1 String)
(assert (= var1996!1 ""))
(assert true)
(define-const var921 String (append/672562846 var1996!1 "Unknown type searchability code [")) ; Statement: $r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown type searchability code [") 
(declare-const var1996!2 String)
(assert (= var1996!2 (str.++ var1996!1 "Unknown type searchability code [")))
(define-const var230 Int (cast-from-Int-to-Int var2374)) ; Statement: $i2 = (int) s0 
(assert true)
(define-const var2784 String (append/-1001720160 var921 var230)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var921!1 String)
(assert (str.prefixof var921 var921!1))
(assert true)
(define-const var487 String (append/672562846 var2784 "] enountered")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] enountered") 
(declare-const var2784!1 String)
(assert (= var2784!1 (str.++ var2784 "] enountered")))
(assert true)
(define-const var1346 String (toString/-2075883882 var487)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var237 var1346)) ; Statement: specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9) 

(declare-const var237!1 var3055)
(declare-const var1346!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([short], int), var3055-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2374=s0, var3086=$i1, var3055=java.lang.IllegalArgumentException, var237=$r11, var1996=$r10, var921=$r6, var230=$i2, var2784=$r7, var487=$r8, var1346=$r9}
; {s0=var2374, $i1=var3086, java.lang.IllegalArgumentException=var3055, $r11=var237, $r10=var1996, $r6=var921, $i2=var230, $r7=var2784, $r8=var487, $r9=var1346}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts s0 := @parameter0: short;	$i1 = (int) s0;	tableswitch($i1) {     case 0: goto $r3 = <org.hibernate.engine.jdbc.spi.TypeSearchability: org.hibernate.engine.jdbc.spi.TypeSearchability NONE>;     case 1: goto $r2 = <org.hibernate.engine.jdbc.spi.TypeSearchability: org.hibernate.engine.jdbc.spi.TypeSearchability CHAR>;     case 2: goto $r1 = <org.hibernate.engine.jdbc.spi.TypeSearchability: org.hibernate.engine.jdbc.spi.TypeSearchability BASIC>;     case 3: goto $r0 = <org.hibernate.engine.jdbc.spi.TypeSearchability: org.hibernate.engine.jdbc.spi.TypeSearchability FULL>;     default: goto $r11 = new java.lang.IllegalArgumentException; };	$r11 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown type searchability code [");	$i2 = (int) s0;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] enountered");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r9);	throw $r11
;block_num 2