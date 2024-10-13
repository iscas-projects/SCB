(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3063 0)
(declare-sort var3482 0)
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
(declare-const null-var3063 var3063)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1859 var3063) ; Statement: r10 := @this: org.hibernate.dialect.IngresDialect 
(assert (not (= var1859 null-var3063)))
(declare-const var2559 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2559 null-String)))
(declare-const var1028 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1028 null-Int)))
(declare-const var2076 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var2076 null-Int)))
 ; Statement: if i0 <= 0 goto $r0 = new java.lang.StringBuilder 
(assert (<= var1028 0)) ; Cond: i0 <= 0 
(define-const var205 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var838 Int (length/-134980193 var2559)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2865 Int (+ var838 16)) ; Statement: $i2 = $i1 + 16 
(assert true)
;(assert (<init>/543593434 var205 var2865)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2) 

(declare-const var205!1 String)
(declare-const var2865!1 Int)
(assert true)
(define-const var157 String (append/672562846 var205!1 var2559)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var205!2 String)
(assert (= var205!2 (str.++ var205!1 var2559)))
(define-const var258 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var258)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var258!1 String)
(assert (= var258!1 ""))
(assert true)
(define-const var1689 String (append/672562846 var258!1 " first ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" first ") 
(declare-const var258!2 String)
(assert (= var258!2 (str.++ var258!1 " first ")))
(assert true)
(define-const var1337 String (append/-1001720160 var1689 var2076)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var1689!1 String)
(assert (str.prefixof var1689 var1689!1))
(assert true)
(define-const var786 String (toString/-2075883882 var1337)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var265 String (insert/1196171004 var157 6 var786)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(6, $r5) 
(assert true)
(define-const var3616 String (toString/-2075883882 var265)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder)}
; {var3063=org.hibernate.dialect.IngresDialect, var1859=r10, var2559=r1, var3482=null_type, var1028=i0, var2076=i3, var205=$r0, var838=$i1, var2865=$i2, var157=$r6, var258=$r2, var1689=$r3, var1337=$r4, var786=$r5, var265=$r7, var3616=$r8}
; {org.hibernate.dialect.IngresDialect=var3063, r10=var1859, r1=var2559, null_type=var3482, i0=var1028, i3=var2076, $r0=var205, $i1=var838, $i2=var2865, $r6=var157, $r2=var258, $r3=var1689, $r4=var1337, $r5=var786, $r7=var265, $r8=var3616}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1}
;stmts r10 := @this: org.hibernate.dialect.IngresDialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i3 := @parameter2: int;	if i0 <= 0 goto $r0 = new java.lang.StringBuilder;	$r0 = new java.lang.StringBuilder;	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = $i1 + 16;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i2);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" first ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(6, $r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2