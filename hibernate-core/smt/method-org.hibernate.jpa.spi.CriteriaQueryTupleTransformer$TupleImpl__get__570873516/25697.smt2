(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2923 0)
(declare-sort var3607 0)
(declare-sort var3100 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3100-init () var3100)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3100 String) void)
(declare-const null-var2923 var2923)
(declare-const null-String String)
(declare-const var1230 var2923) ; Statement: r0 := @this: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl 
(assert (not (= var1230 null-var2923)))
(declare-const var3893 String) ; Statement: r15 := @parameter0: java.lang.String 
(assert (not (= var3893 null-String)))
(define-const var3747 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
(define-const var2410 Int var3747) ; Statement: i1 = $i4 
 ; Statement: if r15 == null goto (branch) 
(assert (= var3893 null-String)) ; Cond: r15 == null 
 ; Statement: if i1 >= 0 goto $r1 = r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples> 
(assert (not (>= var2410 0))) ; Negate: Cond: i1 >= 0  
(define-const var387 var3100 var3100-init) ; Statement: $r17 = new java.lang.IllegalArgumentException 
(define-const var2364 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2364)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2364!1 String)
(assert (= var2364!1 ""))
(assert true)
(define-const var3635 String (append/672562846 var2364!1 "Given alias [")) ; Statement: $r5 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Given alias [") 
(declare-const var2364!2 String)
(assert (= var2364!2 (str.++ var2364!1 "Given alias [")))
(assert true)
(define-const var568 String (append/672562846 var3635 var3893)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15) 
(declare-const var3635!1 String)
(assert (= var3635!1 (str.++ var3635 var3893)))
(assert true)
(define-const var2046 String (append/672562846 var568 "] did not correspond to an element in the result tuple")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] did not correspond to an element in the result tuple") 
(declare-const var568!1 String)
(assert (= var568!1 (str.++ var568 "] did not correspond to an element in the result tuple")))
(assert true)
(define-const var652 String (toString/-2075883882 var2046)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var387 var652)) ; Statement: specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var387!1 var3100)
(declare-const var652!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), var3100-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2923=org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl, var1230=r0, var3893=r15, var3607=null_type, var3747=$i4, var2410=i1, var3100=java.lang.IllegalArgumentException, var387=$r17, var2364=$r16, var3635=$r5, var568=$r6, var2046=$r7, var652=$r8}
; {org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl=var2923, r0=var1230, r15=var3893, null_type=var3607, $i4=var3747, i1=var2410, java.lang.IllegalArgumentException=var3100, $r17=var387, $r16=var2364, $r5=var3635, $r6=var568, $r7=var2046, $r8=var652}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl;	r15 := @parameter0: java.lang.String;	$i4 = (int) -1;	i1 = $i4;	if r15 == null goto (branch);	if i1 >= 0 goto $r1 = r0.<org.hibernate.jpa.spi.CriteriaQueryTupleTransformer$TupleImpl: java.lang.Object[] tuples>;	$r17 = new java.lang.IllegalArgumentException;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Given alias [");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] did not correspond to an element in the result tuple");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r17
;block_num 3