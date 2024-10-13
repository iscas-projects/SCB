(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3743 0)
(declare-sort var1063 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1063-init () var1063)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1063 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var109 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var109 null-String)))
(declare-const var991 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var991 null-Int)))
(define-const var249 Int (ite (> var991 0) 1 (ite (< var991 0) (- 1) 0))) ; Statement: $b1 = l0 cmp 0L 
(define-const var1625 Int (cast-from-Int-to-Int var249)) ; Statement: $i2 = (int) $b1 
 ; Statement: if $i2 > 0 goto return l0 
(assert (not (> var1625 0))) ; Negate: Cond: $i2 > 0  
(define-const var934 var1063 var1063-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(define-const var3197 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3197)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3197!1 String)
(assert (= var3197!1 ""))
(assert true)
(define-const var1893 String (append/672562846 var3197!1 var109)) ; Statement: $r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3197!2 String)
(assert (= var3197!2 (str.++ var3197!1 var109)))
(assert true)
(define-const var1461 String (append/672562846 var1893 " (")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var1893!1 String)
(assert (= var1893!1 (str.++ var1893 " (")))
(assert true)
(define-const var3439 String (append/-901862667 var1461 var991)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var1461!1 String)
(assert (str.prefixof var1461 var1461!1))
(assert true)
(define-const var1071 String (append/672562846 var3439 ") must be > 0")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") must be > 0") 
(declare-const var3439!1 String)
(assert (= var3439!1 (str.++ var3439 ") must be > 0")))
(assert true)
(define-const var813 String (toString/-2075883882 var1071)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var934 var813)) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var934!1 var1063)
(declare-const var813!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), var1063-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var109=r2, var3743=null_type, var991=l0, var249=$b1, var1625=$i2, var1063=java.lang.IllegalArgumentException, var934=$r9, var3197=$r8, var1893=$r3, var1461=$r4, var3439=$r5, var1071=$r6, var813=$r7}
; {r2=var109, null_type=var3743, l0=var991, $b1=var249, $i2=var1625, java.lang.IllegalArgumentException=var1063, $r9=var934, $r8=var3197, $r3=var1893, $r4=var1461, $r5=var3439, $r6=var1071, $r7=var813}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	l0 := @parameter1: long;	$b1 = l0 cmp 0L;	$i2 = (int) $b1;	if $i2 > 0 goto return l0;	$r9 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") must be > 0");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r9
;block_num 2