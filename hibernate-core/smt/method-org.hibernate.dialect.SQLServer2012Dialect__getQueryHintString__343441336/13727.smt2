(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3460 0)
(declare-sort var1016 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3460 var3460)
(declare-const null-String String)
(declare-const var1215 var3460) ; Statement: r6 := @this: org.hibernate.dialect.SQLServer2012Dialect 
(assert (not (= var1215 null-var3460)))
(declare-const var1373 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var1373 null-String)))
(declare-const var1007 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1007 null-String)))
(define-const var1482 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var1525 Int (length/-134980193 var1373)) ; Statement: $i1 = virtualinvoke r7.<java.lang.String: int length()>() 
(assert true)
(define-const var1458 Int (length/-134980193 var1007)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1374 Int (+ var1525 var1458)) ; Statement: $i2 = $i1 + $i0 
(define-const var2842 Int (+ var1374 12)) ; Statement: $i3 = $i2 + 12 
(assert true)
;(assert (<init>/543593434 var1482 var2842)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i3) 

(declare-const var1482!1 String)
(declare-const var2842!1 Int)
(assert true)
(define-const var3288 Int (indexOf/-1037706067 var1373 59)) ; Statement: i4 = virtualinvoke r7.<java.lang.String: int indexOf(int)>(59) 
(define-const var243 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if i4 <= $i6 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(assert (<= var3288 var243)) ; Cond: i4 <= $i6 
(assert true)
;(assert (append/672562846 var1482!1 var1373)) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var1482!2 String)
(assert (= var1482!2 (str.++ var1482!1 var1373)))
(assert true) ; Non Conditional
(assert true)
(define-const var71 String (append/672562846 var1482!2 " OPTION (")) ; Statement: $r2 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" OPTION (") 
(declare-const var1482!3 String)
(assert (= var1482!3 (str.++ var1482!2 " OPTION (")))
(assert true)
(define-const var3774 String (append/672562846 var71 var1007)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var71!1 String)
(assert (= var71!1 (str.++ var71 var1007)))
(assert true)
;(assert (append/672562846 var3774 ")")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3774!1 String)
(assert (= var3774!1 (str.++ var3774 ")")))
(define-const var195 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if i4 <= $i8 goto $r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var3288 var195)) ; Cond: i4 <= $i8 
(assert true)
(define-const var2471 String (toString/-2075883882 var1482!3)) ; Statement: $r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3460=org.hibernate.dialect.SQLServer2012Dialect, var1215=r6, var1373=r7, var1016=null_type, var1007=r1, var1482=$r8, var1525=$i1, var1458=$i0, var1374=$i2, var2842=$i3, var3288=i4, var243=$i6, var71=$r2, var3774=$r3, var195=$i8, var2471=$r4}
; {org.hibernate.dialect.SQLServer2012Dialect=var3460, r6=var1215, r7=var1373, null_type=var1016, r1=var1007, $r8=var1482, $i1=var1525, $i0=var1458, $i2=var1374, $i3=var2842, i4=var3288, $i6=var243, $r2=var71, $r3=var3774, $i8=var195, $r4=var2471}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.SQLServer2012Dialect;	r7 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$r8 = new java.lang.StringBuilder;	$i1 = virtualinvoke r7.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i1 + $i0;	$i3 = $i2 + 12;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i3);	i4 = virtualinvoke r7.<java.lang.String: int indexOf(int)>(59);	$i6 = (int) -1;	if i4 <= $i6 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r2 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" OPTION (");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$i8 = (int) -1;	if i4 <= $i8 goto $r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4