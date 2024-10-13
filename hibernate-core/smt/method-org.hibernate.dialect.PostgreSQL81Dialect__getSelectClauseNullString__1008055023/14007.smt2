(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2713 0)
(declare-sort var3377 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTypeName/8134362 (var3377 Int Int Int Int) String)
(declare-fun cast-from-var2713-to-var3377 (var2713) var3377)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2713 var2713)
(declare-const null-Int Int)
(declare-const var1787 var2713) ; Statement: r0 := @this: org.hibernate.dialect.PostgreSQL81Dialect 
(assert (not (= var1787 null-var2713)))
(declare-const var1752 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1752 null-Int)))
(assert true)
(define-const var2834 String (getTypeName/8134362 (cast-from-var2713-to-var3377 var1787) var1752 1 1 0)) ; Statement: r5 = virtualinvoke r0.<org.hibernate.dialect.PostgreSQL81Dialect: java.lang.String getTypeName(int,long,int,int)>(i0, 1L, 1, 0) 
(assert true)
(define-const var3568 Int (indexOf/-1037706067 var2834 40)) ; Statement: i1 = virtualinvoke r5.<java.lang.String: int indexOf(int)>(40) 
(define-const var404 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i1 <= $i3 goto $r6 = new java.lang.StringBuilder 
(assert (<= var3568 var404)) ; Cond: i1 <= $i3 
(define-const var2195 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2195)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2195!1 String)
(assert (= var2195!1 ""))
(assert true)
(define-const var641 String (append/672562846 var2195!1 "null::")) ; Statement: $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null::") 
(declare-const var2195!2 String)
(assert (= var2195!2 (str.++ var2195!1 "null::")))
(assert true)
(define-const var2485 String (append/672562846 var641 var2834)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var641!1 String)
(assert (= var641!1 (str.++ var641 var2834)))
(assert true)
(define-const var3399 String (toString/-2075883882 var2485)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getTypeName/8134362=([org.hibernate.dialect.Dialect, int, long, int, int], java.lang.String), cast-from-var2713-to-var3377=([org.hibernate.dialect.PostgreSQL81Dialect], org.hibernate.dialect.Dialect), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2713=org.hibernate.dialect.PostgreSQL81Dialect, var1787=r0, var1752=i0, var3377=org.hibernate.dialect.Dialect, var2834=r5, var3568=i1, var404=$i3, var2195=$r6, var641=$r2, var2485=$r3, var3399=$r4}
; {org.hibernate.dialect.PostgreSQL81Dialect=var2713, r0=var1787, i0=var1752, org.hibernate.dialect.Dialect=var3377, r5=var2834, i1=var3568, $i3=var404, $r6=var2195, $r2=var641, $r3=var2485, $r4=var3399}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.PostgreSQL81Dialect;	i0 := @parameter0: int;	r5 = virtualinvoke r0.<org.hibernate.dialect.PostgreSQL81Dialect: java.lang.String getTypeName(int,long,int,int)>(i0, 1L, 1, 0);	i1 = virtualinvoke r5.<java.lang.String: int indexOf(int)>(40);	$i3 = (int) -1;	if i1 <= $i3 goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null::");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2