(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var279 0)
(declare-sort var1127 0)
(declare-sort var608 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun toLowerCase/1946809429 (String var608) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-fun hasForUpdateClause/647860617 (var279 Int) Bool)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1166366385 (String Int) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var279 var279)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var608-ROOT var608)
(declare-const var1284 var279) ; Statement: r5 := @this: org.hibernate.dialect.DerbyDialect 
(assert (not (= var1284 null-var279)))
(declare-const var74 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var74 null-String)))
(declare-const var2227 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var2227 null-Int)))
(declare-const var1259 Int) ; Statement: i4 := @parameter2: int 
(assert (not (= var1259 null-Int)))
(define-const var1741 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var2334 Int (length/-134980193 var74)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3138 Int (+ var2334 50)) ; Statement: $i1 = $i0 + 50 
(assert true)
;(assert (<init>/543593434 var1741 var3138)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1741!1 String)
(declare-const var3138!1 Int)
(define-const var3639 var608 var608-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var3013 String (toLowerCase/1946809429 var74 var3639)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(assert true)
(define-const var1454 String (trim/-847153721 var3013)) ; Statement: r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var182 Int (lastIndexOf/-618837785 var1454 "for update")) ; Statement: i2 = virtualinvoke r4.<java.lang.String: int lastIndexOf(java.lang.String)>("for update") 
(assert true)
(define-const var3949 Bool (hasForUpdateClause/647860617 var1284 var182)) ; Statement: $z0 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasForUpdateClause(int)>(i2) 
 ; Statement: if $z0 == 0 goto $z1 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4) 
(assert (not (= (ite var3949 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3205 Int (- var182 1)) ; Statement: $i8 = i2 - 1 
(assert (and true (and (>= 0 0) (>= (str.len var74) var3205) (>= var3205 0))))
(define-const var1702 String (substring/-1240304868 var74 0 var3205)) ; Statement: $r13 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i8) 
(assert true)
;(assert (append/672562846 var1741!1 var1702)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1741!2 String)
(assert (= var1741!2 (str.++ var1741!1 var1702)))
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i3 != 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset ") 
(assert (not (not (= var2227 0)))) ; Negate: Cond: i3 != 0  
(assert true)
;(assert (append/672562846 var1741!2 " fetch first ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ") 
(declare-const var1741!3 String)
(assert (= var1741!3 (str.++ var1741!2 " fetch first ")))
 ; Statement: goto [?= $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3368 String (append/-1001720160 var1741!3 var1259)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var1741!4 String)
(assert (str.prefixof var1741!3 var1741!4))
(assert true)
;(assert (append/672562846 var3368 " rows only")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only") 
(declare-const var3368!1 String)
(assert (= var3368!1 (str.++ var3368 " rows only")))
(assert true)
(define-const var2290 Bool (hasForUpdateClause/647860617 var1284 var182)) ; Statement: $z2 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasForUpdateClause(int)>(i2) 
 ; Statement: if $z2 == 0 goto $z3 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4) 
(assert (not (= (ite var2290 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
;(assert (append/-1166366385 var1741!4 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1741!5 String)
(assert (str.prefixof var1741!4 var1741!5))
(assert (and true (and (>= var182 0) (>= (str.len var74) var182))))
(define-const var2478 String (substring/850833817 var74 var182)) ; Statement: $r11 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2) 
(assert true)
;(assert (append/672562846 var1741!5 var2478)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1741!6 String)
(assert (= var1741!6 (str.++ var1741!5 var2478)))
 ; Statement: goto [?= $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2828 String (toString/-2075883882 var1741!6)) ; Statement: $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), hasForUpdateClause/647860617=([org.hibernate.dialect.DerbyDialect, int], boolean), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var279=org.hibernate.dialect.DerbyDialect, var1284=r5, var74=r1, var1127=null_type, var2227=i3, var1259=i4, var1741=$r0, var2334=$i0, var3138=$i1, var608=java.util.Locale, var3639=$r2, var3013=$r3, var1454=r4, var182=i2, var3949=$z0, var3205=$i8, var1702=$r13, var3368=$r8, var2290=$z2, var2478=$r11, var2828=$r14}
; {org.hibernate.dialect.DerbyDialect=var279, r5=var1284, r1=var74, null_type=var1127, i3=var2227, i4=var1259, $r0=var1741, $i0=var2334, $i1=var3138, java.util.Locale=var608, $r2=var3639, $r3=var3013, r4=var1454, i2=var182, $z0=var3949, $i8=var3205, $r13=var1702, $r8=var3368, $z2=var2290, $r11=var2478, $r14=var2828}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.DerbyDialect;	r1 := @parameter0: java.lang.String;	i3 := @parameter1: int;	i4 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 50;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>();	i2 = virtualinvoke r4.<java.lang.String: int lastIndexOf(java.lang.String)>("for update");	$z0 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasForUpdateClause(int)>(i2);	if $z0 == 0 goto $z1 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4);	$i8 = i2 - 1;	$r13 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i8);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	goto [?= (branch)];	if i3 != 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" fetch first ");	goto [?= $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4)];	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only");	$z2 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasForUpdateClause(int)>(i2);	if $z2 == 0 goto $z3 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r11 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	goto [?= $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()];	$r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 7