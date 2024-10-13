(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var439 0)
(declare-sort var3147 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3147-init () var3147)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3147 String) void)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2797 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2797 null-Int)))
(declare-const var3098 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3098 null-String)))
(define-const var1174 Int (cast-from-Int-to-Int (- 32768))) ; Statement: $i2 = (int) -32768 
 ; Statement: if i0 < $i2 goto $r8 = new java.lang.IllegalArgumentException 
(assert (< var2797 var1174)) ; Cond: i0 < $i2 
(define-const var3806 var3147 var3147-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var1588 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1588)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1588!1 String)
(assert (= var1588!1 ""))
(assert true)
(define-const var2218 String (append/672562846 var1588!1 var3098)) ; Statement: $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1588!2 String)
(assert (= var1588!2 (str.++ var1588!1 var3098)))
(assert true)
(define-const var637 String (append/672562846 var2218 " (must be a signed short): ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (must be a signed short): ") 
(declare-const var2218!1 String)
(assert (= var2218!1 (str.++ var2218 " (must be a signed short): ")))
(assert true)
(define-const var2281 String (append/-1001720160 var637 var2797)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var637!1 String)
(assert (str.prefixof var637 var637!1))
(assert true)
(define-const var1094 String (toString/-2075883882 var2281)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3806 var1094)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var3806!1 var3147)
(declare-const var1094!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), var3147-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2797=i0, var3098=r2, var439=null_type, var1174=$i2, var3147=java.lang.IllegalArgumentException, var3806=$r8, var1588=$r7, var2218=$r3, var637=$r4, var2281=$r5, var1094=$r6}
; {i0=var2797, r2=var3098, null_type=var439, $i2=var1174, java.lang.IllegalArgumentException=var3147, $r8=var3806, $r7=var1588, $r3=var2218, $r4=var637, $r5=var2281, $r6=var1094}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	r2 := @parameter1: java.lang.String;	$i2 = (int) -32768;	if i0 < $i2 goto $r8 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (must be a signed short): ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2