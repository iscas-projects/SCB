(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var671 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getResource/-954326160 (var671) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var671 var671)
(declare-const var2704 var671) ; Statement: r1 := @parameter0: org.apache.ibatis.mapping.MappedStatement 
(assert (not (= var2704 null-var671)))
(declare-const var2386 var671) ; Statement: r5 := @parameter1: org.apache.ibatis.mapping.MappedStatement 
(assert (not (= var2386 null-var671)))
(define-const var3274 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3274)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3274!1 String)
(assert (= var3274!1 ""))
(assert true)
(define-const var1075 String (append/672562846 var3274!1 ". please check ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". please check ") 
(declare-const var3274!2 String)
(assert (= var3274!2 (str.++ var3274!1 ". please check ")))
(assert true)
(define-const var288 String (getResource/-954326160 var2704)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.mapping.MappedStatement: java.lang.String getResource()>() 
(assert true)
(define-const var2042 String (append/672562846 var1075 var288)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1075!1 String)
(assert (= var1075!1 (str.++ var1075 var288)))
(assert true)
(define-const var2144 String (append/672562846 var2042 " and ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var2042!1 String)
(assert (= var2042!1 (str.++ var2042 " and ")))
(assert true)
(define-const var2908 String (getResource/-954326160 var2386)) ; Statement: $r6 = virtualinvoke r5.<org.apache.ibatis.mapping.MappedStatement: java.lang.String getResource()>() 
(assert true)
(define-const var558 String (append/672562846 var2144 var2908)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2144!1 String)
(assert (= var2144!1 (str.++ var2144 var2908)))
(assert true)
(define-const var1428 String (toString/-2075883882 var558)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getResource/-954326160=([org.apache.ibatis.mapping.MappedStatement], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var671=org.apache.ibatis.mapping.MappedStatement, var2704=r1, var2386=r5, var3274=$r0, var1075=$r3, var288=$r2, var2042=$r4, var2144=$r7, var2908=$r6, var558=$r8, var1428=$r9}
; {org.apache.ibatis.mapping.MappedStatement=var671, r1=var2704, r5=var2386, $r0=var3274, $r3=var1075, $r2=var288, $r4=var2042, $r7=var2144, $r6=var2908, $r8=var558, $r9=var1428}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.apache.ibatis.mapping.MappedStatement;	r5 := @parameter1: org.apache.ibatis.mapping.MappedStatement;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". please check ");	$r2 = virtualinvoke r1.<org.apache.ibatis.mapping.MappedStatement: java.lang.String getResource()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$r6 = virtualinvoke r5.<org.apache.ibatis.mapping.MappedStatement: java.lang.String getResource()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1