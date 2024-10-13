(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2978 0)
(declare-sort var1179 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2978 var2978)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1324 var2978) ; Statement: r16 := @this: org.hibernate.dialect.DB2Dialect 
(assert (not (= var1324 null-var2978)))
(declare-const var3734 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3734 null-String)))
(declare-const var355 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var355 null-Int)))
(declare-const var266 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var266 null-Int)))
 ; Statement: if i0 != 0 goto $r0 = new java.lang.StringBuilder 
(assert (not (= var355 0))) ; Cond: i0 != 0 
(define-const var2931 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2931)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2931!1 String)
(assert (= var2931!1 ""))
(assert true)
(define-const var1662 String (append/672562846 var2931!1 "select * from ( select inner2_.*, rownumber() over(order by order of inner2_) as rownumber_ from ( ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select inner2_.*, rownumber() over(order by order of inner2_) as rownumber_ from ( ") 
(declare-const var2931!2 String)
(assert (= var2931!2 (str.++ var2931!1 "select * from ( select inner2_.*, rownumber() over(order by order of inner2_) as rownumber_ from ( ")))
(assert true)
(define-const var3542 String (append/672562846 var1662 var3734)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1662!1 String)
(assert (= var1662!1 (str.++ var1662 var3734)))
(assert true)
(define-const var1275 String (append/672562846 var3542 " fetch first ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ") 
(declare-const var3542!1 String)
(assert (= var3542!1 (str.++ var3542 " fetch first ")))
(assert true)
(define-const var3137 String (append/-1001720160 var1275 var266)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1275!1 String)
(assert (str.prefixof var1275 var1275!1))
(assert true)
(define-const var354 String (append/672562846 var3137 " rows only ) as inner2_ ) as inner1_ where rownumber_ > ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only ) as inner2_ ) as inner1_ where rownumber_ > ") 
(declare-const var3137!1 String)
(assert (= var3137!1 (str.++ var3137 " rows only ) as inner2_ ) as inner1_ where rownumber_ > ")))
(assert true)
(define-const var661 String (append/-1001720160 var354 var355)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var354!1 String)
(assert (str.prefixof var354 var354!1))
(assert true)
(define-const var900 String (append/672562846 var661 " order by rownumber_")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" order by rownumber_") 
(declare-const var661!1 String)
(assert (= var661!1 (str.++ var661 " order by rownumber_")))
(assert true)
(define-const var193 String (toString/-2075883882 var900)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2978=org.hibernate.dialect.DB2Dialect, var1324=r16, var3734=r1, var1179=null_type, var355=i0, var266=i1, var2931=$r0, var1662=$r2, var3542=$r3, var1275=$r4, var3137=$r5, var354=$r6, var661=$r7, var900=$r8, var193=$r9}
; {org.hibernate.dialect.DB2Dialect=var2978, r16=var1324, r1=var3734, null_type=var1179, i0=var355, i1=var266, $r0=var2931, $r2=var1662, $r3=var3542, $r4=var1275, $r5=var3137, $r6=var354, $r7=var661, $r8=var900, $r9=var193}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r16 := @this: org.hibernate.dialect.DB2Dialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	if i0 != 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select inner2_.*, rownumber() over(order by order of inner2_) as rownumber_ from ( ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only ) as inner2_ ) as inner1_ where rownumber_ > ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" order by rownumber_");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2