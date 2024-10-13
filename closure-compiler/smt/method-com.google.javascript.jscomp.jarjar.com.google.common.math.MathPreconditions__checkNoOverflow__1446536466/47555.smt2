(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var571 0)
(declare-sort var986 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var986-init () var986)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-106732513 (var986 String) void)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var11 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var11 null-Bool)))
(declare-const var2618 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2618 null-String)))
(declare-const var2822 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2822 null-Int)))
(declare-const var1030 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1030 null-Int)))
 ; Statement: if z0 != 0 goto return 
(assert (not (not (= (ite var11 1 0) 0)))) ; Negate: Cond: z0 != 0  
(define-const var3972 var986 var986-init) ; Statement: $r0 = new java.lang.ArithmeticException 
(define-const var2491 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2491)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2491!1 String)
(assert (= var2491!1 ""))
(assert true)
(define-const var3895 String (append/672562846 var2491!1 "overflow: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("overflow: ") 
(declare-const var2491!2 String)
(assert (= var2491!2 (str.++ var2491!1 "overflow: ")))
(assert true)
(define-const var1489 String (append/672562846 var3895 var2618)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3895!1 String)
(assert (= var3895!1 (str.++ var3895 var2618)))
(assert true)
(define-const var3085 String (append/672562846 var1489 "(")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1489!1 String)
(assert (= var1489!1 (str.++ var1489 "(")))
(assert true)
(define-const var3136 String (append/-1001720160 var3085 var2822)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3085!1 String)
(assert (str.prefixof var3085 var3085!1))
(assert true)
(define-const var1916 String (append/672562846 var3136 ", ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3136!1 String)
(assert (= var3136!1 (str.++ var3136 ", ")))
(assert true)
(define-const var2856 String (append/-1001720160 var1916 var1030)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1916!1 String)
(assert (str.prefixof var1916 var1916!1))
(assert true)
(define-const var1661 String (append/672562846 var2856 ")")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2856!1 String)
(assert (= var2856!1 (str.++ var2856 ")")))
(assert true)
(define-const var3167 String (toString/-2075883882 var1661)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-106732513 var3972 var3167)) ; Statement: specialinvoke $r0.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r10) 

(declare-const var3972!1 var986)
(declare-const var3167!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var986-init=([], java.lang.ArithmeticException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-106732513=([java.lang.ArithmeticException, java.lang.String], void)}
; {var11=z0, var2618=r2, var571=null_type, var2822=i0, var1030=i1, var986=java.lang.ArithmeticException, var3972=$r0, var2491=$r1, var3895=$r3, var1489=$r4, var3085=$r5, var3136=$r6, var1916=$r7, var2856=$r8, var1661=$r9, var3167=$r10}
; {z0=var11, r2=var2618, null_type=var571, i0=var2822, i1=var1030, java.lang.ArithmeticException=var986, $r0=var3972, $r1=var2491, $r3=var3895, $r4=var1489, $r5=var3085, $r6=var3136, $r7=var1916, $r8=var2856, $r9=var1661, $r10=var3167}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts z0 := @parameter0: boolean;	r2 := @parameter1: java.lang.String;	i0 := @parameter2: int;	i1 := @parameter3: int;	if z0 != 0 goto return;	$r0 = new java.lang.ArithmeticException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("overflow: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.ArithmeticException: void <init>(java.lang.String)>($r10);	throw $r0
;block_num 2