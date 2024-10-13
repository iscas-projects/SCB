(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2377 0)
(declare-sort var183 0)
(declare-sort var2910 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun toLowerCase/1946809429 (String var2910) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-fun hasForUpdateClause/647860617 (var2377 Int) Bool)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun hasWithClause/1674452377 (var2377 String) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2377 var2377)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2910-ROOT var2910)
(declare-const var3215 var2377) ; Statement: r5 := @this: org.hibernate.dialect.DerbyDialect 
(assert (not (= var3215 null-var2377)))
(declare-const var1334 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1334 null-String)))
(declare-const var3831 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var3831 null-Int)))
(declare-const var54 Int) ; Statement: i4 := @parameter2: int 
(assert (not (= var54 null-Int)))
(define-const var3522 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var3014 Int (length/-134980193 var1334)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3673 Int (+ var3014 50)) ; Statement: $i1 = $i0 + 50 
(assert true)
;(assert (<init>/543593434 var3522 var3673)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3522!1 String)
(declare-const var3673!1 Int)
(define-const var2557 var2910 var2910-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var573 String (toLowerCase/1946809429 var1334 var2557)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(assert true)
(define-const var351 String (trim/-847153721 var573)) ; Statement: r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2415 Int (lastIndexOf/-618837785 var351 "for update")) ; Statement: i2 = virtualinvoke r4.<java.lang.String: int lastIndexOf(java.lang.String)>("for update") 
(assert true)
(define-const var1235 Bool (hasForUpdateClause/647860617 var3215 var2415)) ; Statement: $z0 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasForUpdateClause(int)>(i2) 
 ; Statement: if $z0 == 0 goto $z1 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4) 
(assert (not (= (ite var1235 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2908 Int (- var2415 1)) ; Statement: $i8 = i2 - 1 
(assert (and true (and (>= 0 0) (>= (str.len var1334) var2908) (>= var2908 0))))
(define-const var1460 String (substring/-1240304868 var1334 0 var2908)) ; Statement: $r13 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i8) 
(assert true)
;(assert (append/672562846 var3522!1 var1460)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3522!2 String)
(assert (= var3522!2 (str.++ var3522!1 var1460)))
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i3 != 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset ") 
(assert (not (= var3831 0))) ; Cond: i3 != 0 
(assert true)
(define-const var2526 String (append/672562846 var3522!2 " offset ")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset ") 
(declare-const var3522!3 String)
(assert (= var3522!3 (str.++ var3522!2 " offset ")))
(assert true)
(define-const var1763 String (append/-1001720160 var2526 var3831)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var2526!1 String)
(assert (str.prefixof var2526 var2526!1))
(assert true)
;(assert (append/672562846 var1763 " rows fetch next ")) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows fetch next ") 
(declare-const var1763!1 String)
(assert (= var1763!1 (str.++ var1763 " rows fetch next ")))
(assert true) ; Non Conditional
(assert true)
(define-const var2069 String (append/-1001720160 var3522!3 var54)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var3522!4 String)
(assert (str.prefixof var3522!3 var3522!4))
(assert true)
;(assert (append/672562846 var2069 " rows only")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only") 
(declare-const var2069!1 String)
(assert (= var2069!1 (str.++ var2069 " rows only")))
(assert true)
(define-const var2663 Bool (hasForUpdateClause/647860617 var3215 var2415)) ; Statement: $z2 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasForUpdateClause(int)>(i2) 
 ; Statement: if $z2 == 0 goto $z3 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4) 
(assert (= (ite var2663 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var670 Bool (hasWithClause/1674452377 var3215 var351)) ; Statement: $z3 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4) 
 ; Statement: if $z3 == 0 goto $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var670 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
(define-const var1803 String (toString/-2075883882 var3522!4)) ; Statement: $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), hasForUpdateClause/647860617=([org.hibernate.dialect.DerbyDialect, int], boolean), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), hasWithClause/1674452377=([org.hibernate.dialect.DerbyDialect, java.lang.String], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2377=org.hibernate.dialect.DerbyDialect, var3215=r5, var1334=r1, var183=null_type, var3831=i3, var54=i4, var3522=$r0, var3014=$i0, var3673=$i1, var2910=java.util.Locale, var2557=$r2, var573=$r3, var351=r4, var2415=i2, var1235=$z0, var2908=$i8, var1460=$r13, var2526=$r6, var1763=$r7, var2069=$r8, var2663=$z2, var670=$z3, var1803=$r14}
; {org.hibernate.dialect.DerbyDialect=var2377, r5=var3215, r1=var1334, null_type=var183, i3=var3831, i4=var54, $r0=var3522, $i0=var3014, $i1=var3673, java.util.Locale=var2910, $r2=var2557, $r3=var573, r4=var351, i2=var2415, $z0=var1235, $i8=var2908, $r13=var1460, $r6=var2526, $r7=var1763, $r8=var2069, $z2=var2663, $z3=var670, $r14=var1803}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.DerbyDialect;	r1 := @parameter0: java.lang.String;	i3 := @parameter1: int;	i4 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 50;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>();	i2 = virtualinvoke r4.<java.lang.String: int lastIndexOf(java.lang.String)>("for update");	$z0 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasForUpdateClause(int)>(i2);	if $z0 == 0 goto $z1 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4);	$i8 = i2 - 1;	$r13 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i8);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	goto [?= (branch)];	if i3 != 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset ");	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows fetch next ");	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only");	$z2 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasForUpdateClause(int)>(i2);	if $z2 == 0 goto $z3 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4);	$z3 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4);	if $z3 == 0 goto $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 7