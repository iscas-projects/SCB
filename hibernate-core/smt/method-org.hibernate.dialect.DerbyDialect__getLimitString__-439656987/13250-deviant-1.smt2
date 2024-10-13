(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1595 0)
(declare-sort var3155 0)
(declare-sort var2018 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun toLowerCase/1946809429 (String var2018) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-fun hasForUpdateClause/647860617 (var1595 Int) Bool)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1166366385 (String Int) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1595 var1595)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2018-ROOT var2018)
(declare-const var3445 var1595) ; Statement: r5 := @this: org.hibernate.dialect.DerbyDialect 
(assert (not (= var3445 null-var1595)))
(declare-const var3648 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3648 null-String)))
(declare-const var3939 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var3939 null-Int)))
(declare-const var967 Int) ; Statement: i4 := @parameter2: int 
(assert (not (= var967 null-Int)))
(define-const var226 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var2888 Int (length/-134980193 var3648)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1137 Int (+ var2888 50)) ; Statement: $i1 = $i0 + 50 
(assert true)
;(assert (<init>/543593434 var226 var1137)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var226!1 String)
(declare-const var1137!1 Int)
(define-const var292 var2018 var2018-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var54 String (toLowerCase/1946809429 var3648 var292)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2) 
(assert true)
(define-const var1615 String (trim/-847153721 var54)) ; Statement: r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var930 Int (lastIndexOf/-618837785 var1615 "for update")) ; Statement: i2 = virtualinvoke r4.<java.lang.String: int lastIndexOf(java.lang.String)>("for update") 
(assert true)
(define-const var2432 Bool (hasForUpdateClause/647860617 var3445 var930)) ; Statement: $z0 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasForUpdateClause(int)>(i2) 
 ; Statement: if $z0 == 0 goto $z1 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4) 
(assert (not (= (ite var2432 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3480 Int (- var930 1)) ; Statement: $i8 = i2 - 1 
(assert (and true (and (>= 0 0) (>= (str.len var3648) var3480) (>= var3480 0))))
(define-const var111 String (substring/-1240304868 var3648 0 var3480)) ; Statement: $r13 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i8) 
(assert true)
;(assert (append/672562846 var226!1 var111)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var226!2 String)
(assert (= var226!2 (str.++ var226!1 var111)))
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i3 != 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset ") 
(assert (not (= var3939 0))) ; Cond: i3 != 0 
(assert true)
(define-const var2248 String (append/672562846 var226!2 " offset ")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset ") 
(declare-const var226!3 String)
(assert (= var226!3 (str.++ var226!2 " offset ")))
(assert true)
(define-const var1968 String (append/-1001720160 var2248 var3939)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var2248!1 String)
(assert (str.prefixof var2248 var2248!1))
(assert true)
;(assert (append/672562846 var1968 " rows fetch next ")) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows fetch next ") 
(declare-const var1968!1 String)
(assert (= var1968!1 (str.++ var1968 " rows fetch next ")))
(assert true) ; Non Conditional
(assert true)
(define-const var536 String (append/-1001720160 var226!3 var967)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var226!4 String)
(assert (str.prefixof var226!3 var226!4))
(assert true)
;(assert (append/672562846 var536 " rows only")) ; Statement: virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only") 
(declare-const var536!1 String)
(assert (= var536!1 (str.++ var536 " rows only")))
(assert true)
(define-const var66 Bool (hasForUpdateClause/647860617 var3445 var930)) ; Statement: $z2 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasForUpdateClause(int)>(i2) 
 ; Statement: if $z2 == 0 goto $z3 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4) 
(assert (not (= (ite var66 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
;(assert (append/-1166366385 var226!4 32)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var226!5 String)
(assert (str.prefixof var226!4 var226!5))
(assert (not (and true (and (>= var930 0) (>= (str.len var3648) var930)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), hasForUpdateClause/647860617=([org.hibernate.dialect.DerbyDialect, int], boolean), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1595=org.hibernate.dialect.DerbyDialect, var3445=r5, var3648=r1, var3155=null_type, var3939=i3, var967=i4, var226=$r0, var2888=$i0, var1137=$i1, var2018=java.util.Locale, var292=$r2, var54=$r3, var1615=r4, var930=i2, var2432=$z0, var3480=$i8, var111=$r13, var2248=$r6, var1968=$r7, var536=$r8, var66=$z2, var1599=$r11, var3395=$r14}
; {org.hibernate.dialect.DerbyDialect=var1595, r5=var3445, r1=var3648, null_type=var3155, i3=var3939, i4=var967, $r0=var226, $i0=var2888, $i1=var1137, java.util.Locale=var2018, $r2=var292, $r3=var54, r4=var1615, i2=var930, $z0=var2432, $i8=var3480, $r13=var111, $r6=var2248, $r7=var1968, $r8=var536, $z2=var66, $r11=var1599, $r14=var3395}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.DerbyDialect;	r1 := @parameter0: java.lang.String;	i3 := @parameter1: int;	i4 := @parameter2: int;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 50;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	r4 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>();	i2 = virtualinvoke r4.<java.lang.String: int lastIndexOf(java.lang.String)>("for update");	$z0 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasForUpdateClause(int)>(i2);	if $z0 == 0 goto $z1 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4);	$i8 = i2 - 1;	$r13 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i8);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	goto [?= (branch)];	if i3 != 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset ");	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows fetch next ");	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" rows only");	$z2 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasForUpdateClause(int)>(i2);	if $z2 == 0 goto $z3 = specialinvoke r5.<org.hibernate.dialect.DerbyDialect: boolean hasWithClause(java.lang.String)>(r4);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r11 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	goto [?= $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>()];	$r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 7