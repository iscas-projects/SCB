(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3703 0)
(declare-sort var2809 0)
(declare-sort var1546 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun toLowerCase/1946809429 (String var1546) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3703 var3703)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1546-ROOT var1546)
(declare-const var1603 var3703) ; Statement: r4 := @this: org.hibernate.dialect.Oracle9Dialect 
(assert (not (= var1603 null-var3703)))
(declare-const var1702 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1702 null-String)))
(declare-const var75 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var75 null-Bool)))
(assert true)
(define-const var1808 String (trim/-847153721 var1702)) ; Statement: r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>() 
(define-const var3942 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var2675 var1546 var1546-ROOT) ; Statement: $r0 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var626 String (toLowerCase/1946809429 var1808 var2675)) ; Statement: $r1 = virtualinvoke r6.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0) 
(assert true)
(define-const var913 Bool (endsWith/985337093 var626 " for update")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(" for update") 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (= (ite var913 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2134 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var2368 Int (length/-134980193 var1808)) ; Statement: $i0 = virtualinvoke r6.<java.lang.String: int length()>() 
(define-const var2091 Int (+ var2368 100)) ; Statement: $i1 = $i0 + 100 
(assert true)
;(assert (<init>/543593434 var2134 var2091)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var2134!1 String)
(declare-const var2091!1 Int)
 ; Statement: if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(assert (not (= (ite var75 1 0) 0))) ; Negate: Cond: z1 == 0  
(assert true)
;(assert (append/672562846 var2134!1 "select * from ( select row_.*, rownum rownum_ from ( ")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ") 
(declare-const var2134!2 String)
(assert (= var2134!2 (str.++ var2134!1 "select * from ( select row_.*, rownum rownum_ from ( ")))
 ; Statement: goto [?= virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2134!2 var1808)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var2134!3 String)
(assert (= var2134!3 (str.++ var2134!2 var1808)))
 ; Statement: if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(assert (not (= (ite var75 1 0) 0))) ; Negate: Cond: z1 == 0  
(assert true)
;(assert (append/672562846 var2134!3 " ) row_ where rownum <= ?) where rownum_ > ?")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ where rownum <= ?) where rownum_ > ?") 
(declare-const var2134!4 String)
(assert (= var2134!4 (str.++ var2134!3 " ) row_ where rownum <= ?) where rownum_ > ?")))
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z2 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3942 1 0) 0)) ; Cond: z2 == 0 
(assert true)
(define-const var3894 String (toString/-2075883882 var2134!4)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3703=org.hibernate.dialect.Oracle9Dialect, var1603=r4, var1702=r5, var2809=null_type, var75=z1, var1808=r6, var3942=z2, var1546=java.util.Locale, var2675=$r0, var626=$r1, var913=$z0, var2134=$r2, var2368=$i0, var2091=$i1, var3894=$r3}
; {org.hibernate.dialect.Oracle9Dialect=var3703, r4=var1603, r5=var1702, null_type=var2809, z1=var75, r6=var1808, z2=var3942, java.util.Locale=var1546, $r0=var2675, $r1=var626, $z0=var913, $r2=var2134, $i0=var2368, $i1=var2091, $r3=var3894}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.dialect.Oracle9Dialect;	r5 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>();	z2 = 0;	$r0 = <java.util.Locale: java.util.Locale ROOT>;	$r1 = virtualinvoke r6.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0);	$z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(" for update");	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$i0 = virtualinvoke r6.<java.lang.String: int length()>();	$i1 = $i0 + 100;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i1);	if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ");	goto [?= virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6)];	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) row_ where rownum <= ?) where rownum_ > ?");	goto [?= (branch)];	if z2 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 7