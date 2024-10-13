(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var15 0)
(declare-sort var978 0)
(declare-sort var1815 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tuples/-945384285 (var15) (Array Int var978))
(declare-fun getLength-Arr-var978-1 ((Array Int var978)) Int)
(declare-fun var1815-init () var1815)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1815 String) void)
(declare-const null-var15 var15)
(declare-const null-Int Int)
(declare-const var2432 var15) ; Statement: r0 := @this: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl 
(assert (not (= var2432 null-var15)))
(declare-const var3775 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3775 null-Int)))
(define-const var2813 (Array Int var978) (tuples/-945384285 var2432)) ; Statement: $r1 = r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples> 
(define-const var1422 Int (getLength-Arr-var978-1 var2813)) ; Statement: $i1 = lengthof $r1 
 ; Statement: if i0 < $i1 goto $r2 = r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples> 
(assert (not (< var3775 var1422))) ; Negate: Cond: i0 < $i1  
(define-const var553 var1815 var1815-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var3231 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3231)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3231!1 String)
(assert (= var3231!1 ""))
(assert true)
(define-const var2508 String (append/672562846 var3231!1 "Given index [")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Given index [") 
(declare-const var3231!2 String)
(assert (= var3231!2 (str.++ var3231!1 "Given index [")))
(assert true)
(define-const var3250 String (append/-1001720160 var2508 var3775)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2508!1 String)
(assert (str.prefixof var2508 var2508!1))
(assert true)
(define-const var887 String (append/672562846 var3250 "] was outside the range of result tuple size [")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] was outside the range of result tuple size [") 
(declare-const var3250!1 String)
(assert (= var3250!1 (str.++ var3250 "] was outside the range of result tuple size [")))
(define-const var1067 (Array Int var978) (tuples/-945384285 var2432)) ; Statement: $r8 = r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples> 
(define-const var368 Int (getLength-Arr-var978-1 var1067)) ; Statement: $i2 = lengthof $r8 
(assert true)
(define-const var2642 String (append/-1001720160 var887 var368)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var887!1 String)
(assert (str.prefixof var887 var887!1))
(assert true)
(define-const var3780 String (append/672562846 var2642 "] ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ") 
(declare-const var2642!1 String)
(assert (= var2642!1 (str.++ var2642 "] ")))
(assert true)
(define-const var787 String (toString/-2075883882 var3780)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var553 var787)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12) 

(declare-const var553!1 var1815)
(declare-const var787!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {tuples/-945384285=([org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl], java.lang.Object[]), getLength-Arr-var978-1=([java.lang.Object[]], int), var1815-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var15=org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl, var2432=r0, var3775=i0, var978=java.lang.Object, var2813=$r1, var1422=$i1, var1815=java.lang.IllegalArgumentException, var553=$r4, var3231=$r5, var2508=$r6, var3250=$r7, var887=$r9, var1067=$r8, var368=$i2, var2642=$r10, var3780=$r11, var787=$r12}
; {org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl=var15, r0=var2432, i0=var3775, java.lang.Object=var978, $r1=var2813, $i1=var1422, java.lang.IllegalArgumentException=var1815, $r4=var553, $r5=var3231, $r6=var2508, $r7=var3250, $r9=var887, $r8=var1067, $i2=var368, $r10=var2642, $r11=var3780, $r12=var787}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl;	i0 := @parameter0: int;	$r1 = r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples>;	$i1 = lengthof $r1;	if i0 < $i1 goto $r2 = r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples>;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Given index [");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] was outside the range of result tuple size [");	$r8 = r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples>;	$i2 = lengthof $r8;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r12);	throw $r4
;block_num 2