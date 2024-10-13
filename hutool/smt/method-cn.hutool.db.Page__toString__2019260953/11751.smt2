(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2082 0)
(declare-sort var3767 0)
(declare-sort var2962 0)
(declare-sort var3631 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun pageNumber/-1972064967 (var2082) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun pageSize/-1972064967 (var2082) Int)
(declare-fun orders/-1972064967 (var2082) (Array Int var3767))
(declare-fun var2962_toString/-575966009 ((Array Int var3631)) String)
(declare-fun cast-from-__Array__Int__var3767__-to-__Array__Int__var3631__ ((Array Int var3767)) (Array Int var3631))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2082 var2082)
(declare-const var3245 var2082) ; Statement: r1 := @this: cn.hutool.db.Page 
(assert (not (= var3245 null-var2082)))
(define-const var1659 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1659)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1659!1 String)
(assert (= var1659!1 ""))
(assert true)
(define-const var1437 String (append/672562846 var1659!1 "Page [page=")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Page [page=") 
(declare-const var1659!2 String)
(assert (= var1659!2 (str.++ var1659!1 "Page [page=")))
(define-const var2899 Int (pageNumber/-1972064967 var3245)) ; Statement: $i0 = r1.<cn.hutool.db.Page: int pageNumber> 
(assert true)
(define-const var536 String (append/-1001720160 var1437 var2899)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1437!1 String)
(assert (str.prefixof var1437 var1437!1))
(assert true)
(define-const var2280 String (append/672562846 var536 ", pageSize=")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", pageSize=") 
(declare-const var536!1 String)
(assert (= var536!1 (str.++ var536 ", pageSize=")))
(define-const var226 Int (pageSize/-1972064967 var3245)) ; Statement: $i1 = r1.<cn.hutool.db.Page: int pageSize> 
(assert true)
(define-const var2683 String (append/-1001720160 var2280 var226)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2280!1 String)
(assert (str.prefixof var2280 var2280!1))
(assert true)
(define-const var2255 String (append/672562846 var2683 ", order=")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", order=") 
(declare-const var2683!1 String)
(assert (= var2683!1 (str.++ var2683 ", order=")))
(define-const var2484 (Array Int var3767) (orders/-1972064967 var3245)) ; Statement: $r6 = r1.<cn.hutool.db.Page: cn.hutool.db.sql.Order[] orders> 
(define-const var918 String (var2962_toString/-575966009 (cast-from-__Array__Int__var3767__-to-__Array__Int__var3631__ var2484))) ; Statement: $r7 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r6) 
(assert true)
(define-const var1245 String (append/672562846 var2255 var918)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2255!1 String)
(assert (= var2255!1 (str.++ var2255 var918)))
(assert true)
(define-const var2604 String (append/672562846 var1245 "]")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1245!1 String)
(assert (= var1245!1 (str.++ var1245 "]")))
(assert true)
(define-const var2671 String (toString/-2075883882 var2604)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), pageNumber/-1972064967=([cn.hutool.db.Page], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), pageSize/-1972064967=([cn.hutool.db.Page], int), orders/-1972064967=([cn.hutool.db.Page], cn.hutool.db.sql.Order[]), var2962_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var3767__-to-__Array__Int__var3631__=([cn.hutool.db.sql.Order[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2082=cn.hutool.db.Page, var3245=r1, var1659=$r0, var1437=$r2, var2899=$i0, var536=$r3, var2280=$r4, var226=$i1, var2683=$r5, var2255=$r8, var3767=cn.hutool.db.sql.Order, var2484=$r6, var2962=java.util.Arrays, var3631=java.lang.Object, var918=$r7, var1245=$r9, var2604=$r10, var2671=$r11}
; {cn.hutool.db.Page=var2082, r1=var3245, $r0=var1659, $r2=var1437, $i0=var2899, $r3=var536, $r4=var2280, $i1=var226, $r5=var2683, $r8=var2255, cn.hutool.db.sql.Order=var3767, $r6=var2484, java.util.Arrays=var2962, java.lang.Object=var3631, $r7=var918, $r9=var1245, $r10=var2604, $r11=var2671}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.db.Page;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Page [page=");	$i0 = r1.<cn.hutool.db.Page: int pageNumber>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", pageSize=");	$i1 = r1.<cn.hutool.db.Page: int pageSize>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", order=");	$r6 = r1.<cn.hutool.db.Page: cn.hutool.db.sql.Order[] orders>;	$r7 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1