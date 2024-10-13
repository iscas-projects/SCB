(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1218 0)
(declare-sort var3993 0)
(declare-sort var3505 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun toLowerCase/1946809429 (String var3505) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1218 var1218)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3505-ROOT var3505)
(declare-const var3700 var1218) ; Statement: r4 := @this: org.hibernate.dialect.OracleDialect 
(assert (not (= var3700 null-var1218)))
(declare-const var3298 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3298 null-String)))
(declare-const var39 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var39 null-Bool)))
(assert true)
(define-const var942 String (trim/-847153721 var3298)) ; Statement: r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>() 
(define-const var1408 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var1282 var3505 var3505-ROOT) ; Statement: $r0 = <java.util.Locale: java.util.Locale ROOT> 
(assert true)
(define-const var642 String (toLowerCase/1946809429 var942 var1282)) ; Statement: $r1 = virtualinvoke r6.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0) 
(assert true)
(define-const var3506 Bool (endsWith/985337093 var642 " for update")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(" for update") 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (= (ite var3506 1 0) 0)) ; Cond: $z0 == 0 
(define-const var448 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var1466 Int (length/-134980193 var942)) ; Statement: $i0 = virtualinvoke r6.<java.lang.String: int length()>() 
(define-const var230 Int (+ var1466 100)) ; Statement: $i1 = $i0 + 100 
(assert true)
;(assert (<init>/543593434 var448 var230)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var448!1 String)
(declare-const var230!1 Int)
 ; Statement: if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ") 
(assert (not (= (ite var39 1 0) 0))) ; Negate: Cond: z1 == 0  
(assert true)
;(assert (append/672562846 var448!1 "select * from ( select row_.*, rownum rownum_ from ( ")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ") 
(declare-const var448!2 String)
(assert (= var448!2 (str.++ var448!1 "select * from ( select row_.*, rownum rownum_ from ( ")))
 ; Statement: goto [?= virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var448!2 var942)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var448!3 String)
(assert (= var448!3 (str.++ var448!2 var942)))
 ; Statement: if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(assert (= (ite var39 1 0) 0)) ; Cond: z1 == 0 
(assert true)
;(assert (append/672562846 var448!3 " ) where rownum <= ?")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?") 
(declare-const var448!4 String)
(assert (= var448!4 (str.++ var448!3 " ) where rownum <= ?")))
(assert true) ; Non Conditional
 ; Statement: if z2 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1408 1 0) 0)) ; Cond: z2 == 0 
(assert true)
(define-const var3076 String (toString/-2075883882 var448!4)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1218=org.hibernate.dialect.OracleDialect, var3700=r4, var3298=r5, var3993=null_type, var39=z1, var942=r6, var1408=z2, var3505=java.util.Locale, var1282=$r0, var642=$r1, var3506=$z0, var448=$r2, var1466=$i0, var230=$i1, var3076=$r3}
; {org.hibernate.dialect.OracleDialect=var1218, r4=var3700, r5=var3298, null_type=var3993, z1=var39, r6=var942, z2=var1408, java.util.Locale=var3505, $r0=var1282, $r1=var642, $z0=var3506, $r2=var448, $i0=var1466, $i1=var230, $r3=var3076}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>;	<java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.dialect.OracleDialect;	r5 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	r6 = virtualinvoke r5.<java.lang.String: java.lang.String trim()>();	z2 = 0;	$r0 = <java.util.Locale: java.util.Locale ROOT>;	$r1 = virtualinvoke r6.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r0);	$z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(" for update");	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	$i0 = virtualinvoke r6.<java.lang.String: int length()>();	$i1 = $i0 + 100;	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i1);	if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( ");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("select * from ( select row_.*, rownum rownum_ from ( ");	goto [?= virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6)];	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	if z1 == 0 goto virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) where rownum <= ?");	if z2 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 7