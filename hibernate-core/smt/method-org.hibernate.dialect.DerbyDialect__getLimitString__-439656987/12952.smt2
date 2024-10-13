(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2782 0)
(declare-sort var1168 0)
(declare-sort var1418 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun toLowerCase/1946809429 (String var1418) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-fun hasForUpdateClause/647860617 (var2782 Int) Bool)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun hasWithClause/1674452377 (var2782 String) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2782 var2782)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1418-ROOT var1418)
(declare-const var2836 var2782) ; Statement: r5 := @this: org.hibernate.dialect.DerbyDialect 
(assert (not (= var2836 null-var2782)))
(declare-const var601 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var601 null-String)))
(declare-const var3901 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var3901 null-Int)))
(declare-const var3860 Int) ; Statement: i4 := @parameter2: int 
(assert (not (= var3860 null-Int)))
(define-const var658 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var1838 Int (length/-134980193 var601)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2512 Int (+ var1838 50)) ; Statement: $i1 = $i0 + 50 
(assert true)
;(assert (<init>/543593434 var658 var2512)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var658!1 String)
(declare-const var2512!1 Int)
(define-const var1884 var1418 var1418-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var2136 String (toLowerCase/1946809429 var601 var1884)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(assert true)
(define-const var212 String (trim/-847153721 var2136)) ; Statement: r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var355 Int (lastIndexOf/-618837785 var212 "for update")) ; Statement: i2 = virtualinvoke r4.<java.lang.String: int lastIndexOf(java.lang.String)>("for update") 
(assert true)
(define-const var3051 Bool (hasForUpdateClause/647860617 var2836 var355)) ; Statement: $z0 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasForUpdateClause(int)>(i2) 
 ; Statement: if $z0 == 0 goto $z1 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4) 
(assert (not (= (ite var3051 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1574 Int (- var355 1)) ; Statement: $i8 = i2 - 1 
(assert (and true (and (>= 0 0) (>= (str.len var601) var1574) (>= var1574 0))))
(define-const var3340 String (substring/-1240304868 var601 0 var1574)) ; Statement: $r13 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i8) 
(assert true)
;(assert (append/672562846 var658!1 var3340)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var658!2 String)
(assert (= var658!2 (str.++ var658!1 var3340)))
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i3 != 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset ") 
(assert (not (not (= var3901 0)))) ; Negate: Cond: i3 != 0  
(assert true)
;(assert (append/672562846 var658!2 " fetch first ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ") 
(declare-const var658!3 String)
(assert (= var658!3 (str.++ var658!2 " fetch first ")))
 ; Statement: goto [?= $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4)] 
(assert true) ; Non Conditional
(assert true)
(define-const var137 String (append/-1001720160 var658!3 var3860)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var658!4 String)
(assert (str.prefixof var658!3 var658!4))
(assert true)
;(assert (append/672562846 var137 " rows only")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only") 
(declare-const var137!1 String)
(assert (= var137!1 (str.++ var137 " rows only")))
(assert true)
(define-const var2615 Bool (hasForUpdateClause/647860617 var2836 var355)) ; Statement: $z2 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasForUpdateClause(int)>(i2) 
 ; Statement: if $z2 == 0 goto $z3 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4) 
(assert (= (ite var2615 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var3088 Bool (hasWithClause/1674452377 var2836 var212)) ; Statement: $z3 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4) 
 ; Statement: if $z3 == 0 goto $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3088 1 0) 0)) ; Cond: $z3 == 0 
(assert true)
(define-const var485 String (toString/-2075883882 var658!4)) ; Statement: $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), hasForUpdateClause/647860617=([org.hibernate.dialect.DerbyDialect, int], boolean), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), hasWithClause/1674452377=([org.hibernate.dialect.DerbyDialect, java.lang.String], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2782=org.hibernate.dialect.DerbyDialect, var2836=r5, var601=r1, var1168=null_type, var3901=i3, var3860=i4, var658=$r0, var1838=$i0, var2512=$i1, var1418=java.util.Locale, var1884=$r2, var2136=$r3, var212=r4, var355=i2, var3051=$z0, var1574=$i8, var3340=$r13, var137=$r8, var2615=$z2, var3088=$z3, var485=$r14}
; {org.hibernate.dialect.DerbyDialect=var2782, r5=var2836, r1=var601, null_type=var1168, i3=var3901, i4=var3860, $r0=var658, $i0=var1838, $i1=var2512, java.util.Locale=var1418, $r2=var1884, $r3=var2136, r4=var212, i2=var355, $z0=var3051, $i8=var1574, $r13=var3340, $r8=var137, $z2=var2615, $z3=var3088, $r14=var485}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.DerbyDialect;	r1 := @parameter0: java.lang.String;	i3 := @parameter1: int;	i4 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 50;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>();	i2 = virtualinvoke r4.<java.lang.String: int lastIndexOf(java.lang.String)>("for update");	$z0 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasForUpdateClause(int)>(i2);	if $z0 == 0 goto $z1 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4);	$i8 = i2 - 1;	$r13 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i8);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	goto [?= (branch)];	if i3 != 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ");	goto [?= $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4)];	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only");	$z2 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasForUpdateClause(int)>(i2);	if $z2 == 0 goto $z3 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4);	$z3 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4);	if $z3 == 0 goto $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 7