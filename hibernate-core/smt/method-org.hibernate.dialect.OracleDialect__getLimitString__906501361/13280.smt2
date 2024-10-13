(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3558 0)
(declare-sort var1211 0)
(declare-sort var1432 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun toLowerCase/1946809429 (String var1432) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3558 var3558)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1432-ROOT var1432)
(declare-const var913 var3558) ; Statement: r4 := @this: org.hibernate.dialect.OracleDialect 
(assert (not (= var913 null-var3558)))
(declare-const var3028 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3028 null-String)))
(declare-const var2602 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2602 null-Bool)))
(assert true)
(define-const var3080 String (trim/-847153721 var3028)) ; Statement: r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>() 
(define-const var2880 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var2580 var1432 var1432-ROOT) ; Statement: $r0 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var311 String (toLowerCase/1946809429 var3080 var2580)) ; Statement: $r1 = virtualinvoke r6.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0) 
(assert true)
(define-const var1751 Bool (endsWith/985337093 var311 " for update")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(" for update") 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (= (ite var1751 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3599 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var1096 Int (length/-134980193 var3080)) ; Statement: $i0 = virtualinvoke r6.<java.lang.String: int length()>() 
(define-const var2611 Int (+ var1096 100)) ; Statement: $i1 = $i0 + 100 
(assert true)
;(assert (<init>/543593434 var3599 var2611)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3599!1 String)
(declare-const var2611!1 Int)
 ; Statement: if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(assert (= (ite var2602 1 0) 0)) ; Cond: z1 == 0 
(assert true)
;(assert (append/672562846 var3599!1 "select * from ( ")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(declare-const var3599!2 String)
(assert (= var3599!2 (str.++ var3599!1 "select * from ( ")))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3599!2 var3080)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var3599!3 String)
(assert (= var3599!3 (str.++ var3599!2 var3080)))
 ; Statement: if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(assert (not (= (ite var2602 1 0) 0))) ; Negate: Cond: z1 == 0  
(assert true)
;(assert (append/672562846 var3599!3 " ) row_ ) where rownum_ <= ? and rownum_ > ?")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ ) where rownum_ <= ? and rownum_ > ?") 
(declare-const var3599!4 String)
(assert (= var3599!4 (str.++ var3599!3 " ) row_ ) where rownum_ <= ? and rownum_ > ?")))
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z2 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2880 1 0) 0)) ; Cond: z2 == 0 
(assert true)
(define-const var2296 String (toString/-2075883882 var3599!4)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3558=org.hibernate.dialect.OracleDialect, var913=r4, var3028=r5, var1211=null_type, var2602=z1, var3080=r6, var2880=z2, var1432=java.util.Locale, var2580=$r0, var311=$r1, var1751=$z0, var3599=$r2, var1096=$i0, var2611=$i1, var2296=$r3}
; {org.hibernate.dialect.OracleDialect=var3558, r4=var913, r5=var3028, null_type=var1211, z1=var2602, r6=var3080, z2=var2880, java.util.Locale=var1432, $r0=var2580, $r1=var311, $z0=var1751, $r2=var3599, $i0=var1096, $i1=var2611, $r3=var2296}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.dialect.OracleDialect;	r5 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>();	z2 = 0;	$r0 = <java.util.Locale: java.util.Locale ROOT>;	$r1 = virtualinvoke r6.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0);	$z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(" for update");	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$i0 = virtualinvoke r6.<java.lang.String: int length()>();	$i1 = $i0 + 100;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i1);	if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ ) where rownum_ <= ? and rownum_ > ?");	goto [?= (branch)];	if z2 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 7