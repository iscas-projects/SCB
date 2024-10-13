(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var629 0)
(declare-sort var2523 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var629 var629)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1596 var629) ; Statement: r16 := @this: org.hibernate.dialect.DB2400V7R3Dialect 
(assert (not (= var1596 null-var629)))
(declare-const var956 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var956 null-String)))
(declare-const var706 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var706 null-Int)))
(declare-const var1405 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1405 null-Int)))
 ; Statement: if i0 != 0 goto $r0 = new java.lang.StringBuilder 
(assert (not (= var706 0))) ; Cond: i0 != 0 
(define-const var2658 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2658)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2658!1 String)
(assert (= var2658!1 ""))
(assert true)
(define-const var2006 String (append/672562846 var2658!1 "select * from ( select inner2_.*, rownumber() over(order by order of inner2_) as rownumber_ from ( ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select inner2_.*, rownumber() over(order by order of inner2_) as rownumber_ from ( ") 
(declare-const var2658!2 String)
(assert (= var2658!2 (str.++ var2658!1 "select * from ( select inner2_.*, rownumber() over(order by order of inner2_) as rownumber_ from ( ")))
(assert true)
(define-const var3096 String (append/672562846 var2006 var956)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2006!1 String)
(assert (= var2006!1 (str.++ var2006 var956)))
(assert true)
(define-const var3287 String (append/672562846 var3096 " fetch first ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ") 
(declare-const var3096!1 String)
(assert (= var3096!1 (str.++ var3096 " fetch first ")))
(assert true)
(define-const var2398 String (append/-1001720160 var3287 var1405)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3287!1 String)
(assert (str.prefixof var3287 var3287!1))
(assert true)
(define-const var717 String (append/672562846 var2398 " rows only ) as inner2_ ) as inner1_ where rownumber_ > ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only ) as inner2_ ) as inner1_ where rownumber_ > ") 
(declare-const var2398!1 String)
(assert (= var2398!1 (str.++ var2398 " rows only ) as inner2_ ) as inner1_ where rownumber_ > ")))
(assert true)
(define-const var2754 String (append/-1001720160 var717 var706)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var717!1 String)
(assert (str.prefixof var717 var717!1))
(assert true)
(define-const var2047 String (append/672562846 var2754 " order by rownumber_")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" order by rownumber_") 
(declare-const var2754!1 String)
(assert (= var2754!1 (str.++ var2754 " order by rownumber_")))
(assert true)
(define-const var2872 String (toString/-2075883882 var2047)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var629=org.hibernate.dialect.DB2400V7R3Dialect, var1596=r16, var956=r1, var2523=null_type, var706=i0, var1405=i1, var2658=$r0, var2006=$r2, var3096=$r3, var3287=$r4, var2398=$r5, var717=$r6, var2754=$r7, var2047=$r8, var2872=$r9}
; {org.hibernate.dialect.DB2400V7R3Dialect=var629, r16=var1596, r1=var956, null_type=var2523, i0=var706, i1=var1405, $r0=var2658, $r2=var2006, $r3=var3096, $r4=var3287, $r5=var2398, $r6=var717, $r7=var2754, $r8=var2047, $r9=var2872}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r16 := @this: org.hibernate.dialect.DB2400V7R3Dialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	if i0 != 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select inner2_.*, rownumber() over(order by order of inner2_) as rownumber_ from ( ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only ) as inner2_ ) as inner1_ where rownumber_ > ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" order by rownumber_");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2