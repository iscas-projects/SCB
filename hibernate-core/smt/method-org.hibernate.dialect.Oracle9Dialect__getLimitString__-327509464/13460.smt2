(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3208 0)
(declare-sort var3952 0)
(declare-sort var1252 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun toLowerCase/1946809429 (String var1252) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3208 var3208)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1252-ROOT var1252)
(declare-const var3150 var3208) ; Statement: r4 := @this: org.hibernate.dialect.Oracle9Dialect 
(assert (not (= var3150 null-var3208)))
(declare-const var2895 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2895 null-String)))
(declare-const var2251 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2251 null-Bool)))
(assert true)
(define-const var2545 String (trim/-847153721 var2895)) ; Statement: r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>() 
(define-const var3663 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var2989 var1252 var1252-ROOT) ; Statement: $r0 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var1971 String (toLowerCase/1946809429 var2545 var2989)) ; Statement: $r1 = virtualinvoke r6.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0) 
(assert true)
(define-const var797 Bool (endsWith/985337093 var1971 " for update")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(" for update") 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (= (ite var797 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1240 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var2569 Int (length/-134980193 var2545)) ; Statement: $i0 = virtualinvoke r6.<java.lang.String: int length()>() 
(define-const var2587 Int (+ var2569 100)) ; Statement: $i1 = $i0 + 100 
(assert true)
;(assert (<init>/543593434 var1240 var2587)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1240!1 String)
(declare-const var2587!1 Int)
 ; Statement: if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(assert (not (= (ite var2251 1 0) 0))) ; Negate: Cond: z1 == 0  
(assert true)
;(assert (append/672562846 var1240!1 "select * from ( select row_.*, rownum rownum_ from ( ")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ") 
(declare-const var1240!2 String)
(assert (= var1240!2 (str.++ var1240!1 "select * from ( select row_.*, rownum rownum_ from ( ")))
 ; Statement: goto [?= virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1240!2 var2545)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1240!3 String)
(assert (= var1240!3 (str.++ var1240!2 var2545)))
 ; Statement: if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(assert (= (ite var2251 1 0) 0)) ; Cond: z1 == 0 
(assert true)
;(assert (append/672562846 var1240!3 " ) where rownum <= ?")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(declare-const var1240!4 String)
(assert (= var1240!4 (str.++ var1240!3 " ) where rownum <= ?")))
(assert true) ; Non Conditional
 ; Statement: if z2 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var3663 1 0) 0)) ; Cond: z2 == 0 
(assert true)
(define-const var2313 String (toString/-2075883882 var1240!4)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3208=org.hibernate.dialect.Oracle9Dialect, var3150=r4, var2895=r5, var3952=null_type, var2251=z1, var2545=r6, var3663=z2, var1252=java.util.Locale, var2989=$r0, var1971=$r1, var797=$z0, var1240=$r2, var2569=$i0, var2587=$i1, var2313=$r3}
; {org.hibernate.dialect.Oracle9Dialect=var3208, r4=var3150, r5=var2895, null_type=var3952, z1=var2251, r6=var2545, z2=var3663, java.util.Locale=var1252, $r0=var2989, $r1=var1971, $z0=var797, $r2=var1240, $i0=var2569, $i1=var2587, $r3=var2313}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.dialect.Oracle9Dialect;	r5 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>();	z2 = 0;	$r0 = <java.util.Locale: java.util.Locale ROOT>;	$r1 = virtualinvoke r6.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0);	$z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(" for update");	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$i0 = virtualinvoke r6.<java.lang.String: int length()>();	$i1 = $i0 + 100;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i1);	if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ");	goto [?= virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6)];	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	if z2 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 7