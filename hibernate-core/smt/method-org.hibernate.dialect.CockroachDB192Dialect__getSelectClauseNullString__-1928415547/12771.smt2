(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1109 0)
(declare-sort var2261 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTypeName/8134362 (var2261 Int Int Int Int) String)
(declare-fun cast-from-var1109-to-var2261 (var1109) var2261)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1109 var1109)
(declare-const null-Int Int)
(declare-const var753 var1109) ; Statement: r0 := @this: org.hibernate.dialect.CockroachDB192Dialect 
(assert (not (= var753 null-var1109)))
(declare-const var3317 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3317 null-Int)))
(assert true)
(define-const var2773 String (getTypeName/8134362 (cast-from-var1109-to-var2261 var753) var3317 1 1 0)) ; Statement: r5 = virtualinvoke r0.<org.hibernate.dialect.CockroachDB192Dialect: java.lang.String getTypeName(int,long,int,int)>(i0, 1L, 1, 0) 
(assert true)
(define-const var978 Int (indexOf/-1037706067 var2773 40)) ; Statement: i1 = virtualinvoke r5.<java.lang.String: int indexOf(int)>(40) 
(define-const var1767 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i1 <= $i3 goto $r6 = new java.lang.StringBuilder 
(assert (<= var978 var1767)) ; Cond: i1 <= $i3 
(define-const var2157 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2157)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2157!1 String)
(assert (= var2157!1 ""))
(assert true)
(define-const var551 String (append/672562846 var2157!1 "null::")) ; Statement: $r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null::") 
(declare-const var2157!2 String)
(assert (= var2157!2 (str.++ var2157!1 "null::")))
(assert true)
(define-const var2886 String (append/672562846 var551 var2773)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var551!1 String)
(assert (= var551!1 (str.++ var551 var2773)))
(assert true)
(define-const var915 String (toString/-2075883882 var2886)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getTypeName/8134362=([org.hibernate.dialect.Dialect, int, long, int, int], java.lang.String), cast-from-var1109-to-var2261=([org.hibernate.dialect.CockroachDB192Dialect], org.hibernate.dialect.Dialect), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1109=org.hibernate.dialect.CockroachDB192Dialect, var753=r0, var3317=i0, var2261=org.hibernate.dialect.Dialect, var2773=r5, var978=i1, var1767=$i3, var2157=$r6, var551=$r2, var2886=$r3, var915=$r4}
; {org.hibernate.dialect.CockroachDB192Dialect=var1109, r0=var753, i0=var3317, org.hibernate.dialect.Dialect=var2261, r5=var2773, i1=var978, $i3=var1767, $r6=var2157, $r2=var551, $r3=var2886, $r4=var915}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.CockroachDB192Dialect;	i0 := @parameter0: int;	r5 = virtualinvoke r0.<org.hibernate.dialect.CockroachDB192Dialect: java.lang.String getTypeName(int,long,int,int)>(i0, 1L, 1, 0);	i1 = virtualinvoke r5.<java.lang.String: int indexOf(int)>(40);	$i3 = (int) -1;	if i1 <= $i3 goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null::");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 2