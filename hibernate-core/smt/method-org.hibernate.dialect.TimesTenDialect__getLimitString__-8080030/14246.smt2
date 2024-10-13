(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1532 0)
(declare-sort var2904 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun <init>/1968657023 () String "")
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun insert/1196171004 (String Int String) String)
(declare-const null-var1532 var1532)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1242 var1532) ; Statement: r10 := @this: org.hibernate.dialect.TimesTenDialect 
(assert (not (= var1242 null-var1532)))
(declare-const var3169 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3169 null-String)))
(declare-const var3975 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3975 null-Int)))
(declare-const var226 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var226 null-Int)))
 ; Statement: if i0 <= 0 goto $r0 = new java.lang.StringBuilder 
(assert (<= var3975 0)) ; Cond: i0 <= 0 
(define-const var1218 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var3509 Int (length/-134980193 var3169)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1649 Int (+ var3509 8)) ; Statement: $i2 = $i1 + 8 
(assert true)
;(assert (<init>/543593434 var1218 var1649)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var1218!1 String)
(declare-const var1649!1 Int)
(assert true)
(define-const var3185 String (append/672562846 var1218!1 var3169)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1218!2 String)
(assert (= var1218!2 (str.++ var1218!1 var3169)))
(define-const var243 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var243)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var243!1 String)
(assert (= var243!1 ""))
(assert true)
(define-const var1372 String (append/672562846 var243!1 " first ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" first ") 
(declare-const var243!2 String)
(assert (= var243!2 (str.++ var243!1 " first ")))
(assert true)
(define-const var1004 String (append/-1001720160 var1372 var226)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var1372!1 String)
(assert (str.prefixof var1372 var1372!1))
(assert true)
(define-const var606 String (toString/-2075883882 var1004)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3632 String (insert/1196171004 var3185 6 var606)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(6, $r5) 
(assert true)
(define-const var3878 String (toString/-2075883882 var3632)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder)}
; {var1532=org.hibernate.dialect.TimesTenDialect, var1242=r10, var3169=r1, var2904=null_type, var3975=i0, var226=i3, var1218=$r0, var3509=$i1, var1649=$i2, var3185=$r6, var243=$r2, var1372=$r3, var1004=$r4, var606=$r5, var3632=$r7, var3878=$r8}
; {org.hibernate.dialect.TimesTenDialect=var1532, r10=var1242, r1=var3169, null_type=var2904, i0=var3975, i3=var226, $r0=var1218, $i1=var3509, $i2=var1649, $r6=var3185, $r2=var243, $r3=var1372, $r4=var1004, $r5=var606, $r7=var3632, $r8=var3878}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1}
;stmts r10 := @this: org.hibernate.dialect.TimesTenDialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i3 := @parameter2: int;	if i0 <= 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i1 + 8;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" first ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(6, $r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2