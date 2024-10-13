(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2416 0)
(declare-sort var1475 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1475-init () var1475)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/180451120 (var2416) String)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var1475 String) void)
(declare-const null-var2416 var2416)
(declare-const var1112 var2416) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var1112 null-var2416)))
(define-const var2831 var2416 null-var2416) ; Statement: r18 = null 
(define-const var2881 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= 10000 goto $r0 = new java.io.IOException 
(assert (>= var2881 10000)) ; Cond: i3 >= 10000 
(define-const var2699 var1475 var1475-init) ; Statement: $r0 = new java.io.IOException 
(define-const var3055 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3055)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3055!1 String)
(assert (= var3055!1 ""))
(assert true)
(define-const var1956 String (append/672562846 var3055!1 "Unable to create temporary directory in: ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create temporary directory in: ") 
(declare-const var3055!2 String)
(assert (= var3055!2 (str.++ var3055!1 "Unable to create temporary directory in: ")))
(assert true)
(define-const var2245 String (toString/180451120 var1112)) ; Statement: $r3 = virtualinvoke r2.<java.io.File: java.lang.String toString()>() 
(assert true)
(define-const var3241 String (append/672562846 var1956 var2245)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1956!1 String)
(assert (= var1956!1 (str.++ var1956 var2245)))
(assert true)
(define-const var1179 String (append/672562846 var3241 ". Tried ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Tried ") 
(declare-const var3241!1 String)
(assert (= var3241!1 (str.++ var3241 ". Tried ")))
(assert true)
(define-const var404 String (append/-1001720160 var1179 10000)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(10000) 
(declare-const var1179!1 String)
(assert (str.prefixof var1179 var1179!1))
(assert true)
(define-const var3118 String (append/672562846 var404 " times. ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" times. ") 
(declare-const var404!1 String)
(assert (= var404!1 (str.++ var404 " times. ")))
(assert true)
(define-const var997 String (append/672562846 var3118 "Last attempted to create: ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Last attempted to create: ") 
(declare-const var3118!1 String)
(assert (= var3118!1 (str.++ var3118 "Last attempted to create: ")))
(assert true)
(define-const var1162 String (toString/180451120 var2831)) ; Statement: $r9 = virtualinvoke r18.<java.io.File: java.lang.String toString()>() 
(assert true)
(define-const var474 String (append/672562846 var997 var1162)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var997!1 String)
(assert (= var997!1 (str.++ var997 var1162)))
(assert true)
(define-const var1466 String (toString/-2075883882 var474)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var2699 var1466)) ; Statement: specialinvoke $r0.<java.io.IOException: void <init>(java.lang.String)>($r12) 

(declare-const var2699!1 var1475)
(declare-const var1466!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1475-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/180451120=([java.io.File], java.lang.String), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var2416=java.io.File, var1112=r2, var2831=r18, var2881=i3, var1475=java.io.IOException, var2699=$r0, var3055=$r1, var1956=$r4, var2245=$r3, var3241=$r5, var1179=$r6, var404=$r7, var3118=$r8, var997=$r10, var1162=$r9, var474=$r11, var1466=$r12}
; {java.io.File=var2416, r2=var1112, r18=var2831, i3=var2881, java.io.IOException=var1475, $r0=var2699, $r1=var3055, $r4=var1956, $r3=var2245, $r5=var3241, $r6=var1179, $r7=var404, $r8=var3118, $r10=var997, $r9=var1162, $r11=var474, $r12=var1466}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.io.File: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.io.File: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.io.File;	r18 = null;	i3 = 0;	if i3 >= 10000 goto $r0 = new java.io.IOException;	$r0 = new java.io.IOException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create temporary directory in: ");	$r3 = virtualinvoke r2.<java.io.File: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Tried ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(10000);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" times. ");	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Last attempted to create: ");	$r9 = virtualinvoke r18.<java.io.File: java.lang.String toString()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.IOException: void <init>(java.lang.String)>($r12);	throw $r0
;block_num 3