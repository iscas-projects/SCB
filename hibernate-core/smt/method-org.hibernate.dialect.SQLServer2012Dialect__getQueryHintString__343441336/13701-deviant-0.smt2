(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1838 0)
(declare-sort var1226 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1838 var1838)
(declare-const null-String String)
(declare-const var2946 var1838) ; Statement: r6 := @this: org.hibernate.dialect.SQLServer2012Dialect 
(assert (not (= var2946 null-var1838)))
(declare-const var2608 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var2608 null-String)))
(declare-const var127 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var127 null-String)))
(define-const var927 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
(define-const var592 Int (length/-134980193 var2608)) ; Statement: $i1 = virtualinvoke r7.<java.lang.String: int length()>() 
(assert true)
(define-const var2008 Int (length/-134980193 var127)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1999 Int (+ var592 var2008)) ; Statement: $i2 = $i1 + $i0 
(define-const var2322 Int (+ var1999 12)) ; Statement: $i3 = $i2 + 12 
(assert true)
;(assert (<init>/543593434 var927 var2322)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i3) 

(declare-const var927!1 String)
(declare-const var2322!1 Int)
(assert true)
(define-const var609 Int (indexOf/-1037706067 var2608 59)) ; Statement: i4 = virtualinvoke r7.<java.lang.String: int indexOf(int)>(59) 
(define-const var3488 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
 ; Statement: if i4 <= $i6 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(assert (not (<= var609 var3488))) ; Negate: Cond: i4 <= $i6  
(assert (not (and true (and (>= 0 0) (>= (str.len var2608) var609) (>= var609 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1838=org.hibernate.dialect.SQLServer2012Dialect, var2946=r6, var2608=r7, var1226=null_type, var127=r1, var927=$r8, var592=$i1, var2008=$i0, var1999=$i2, var2322=$i3, var609=i4, var3488=$i6, var686=$r5, var3044=$r2, var762=$r3, var579=$i8, var3502=$r4}
; {org.hibernate.dialect.SQLServer2012Dialect=var1838, r6=var2946, r7=var2608, null_type=var1226, r1=var127, $r8=var927, $i1=var592, $i0=var2008, $i2=var1999, $i3=var2322, i4=var609, $i6=var3488, $r5=var686, $r2=var3044, $r3=var762, $i8=var579, $r4=var3502}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.dialect.SQLServer2012Dialect;	r7 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$r8 = new java.lang.StringBuilder;	$i1 = virtualinvoke r7.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i1 + $i0;	$i3 = $i2 + 12;	specialinvoke $r8.<java.lang.StringBuilder: void <init>(int)>($i3);	i4 = virtualinvoke r7.<java.lang.String: int indexOf(int)>(59);	$i6 = (int) -1;	if i4 <= $i6 goto virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r5 = virtualinvoke r7.<java.lang.String: java.lang.String substring(int,int)>(0, i4);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	goto [?= $r2 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" OPTION (")];	$r2 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" OPTION (");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$i8 = (int) -1;	if i4 <= $i8 goto $r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 4