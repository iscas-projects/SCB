(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3782 0)
(declare-sort var3234 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-154742961 ((s String) (prefix String) (toffset Int)) Bool (and (>= toffset 0) (>= (str.len s) toffset) (str.prefixof prefix (str.substr s toffset (- (str.len s) toffset)))))
(declare-fun var3234-init () var3234)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1788180247 (var3234 String) void)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var368 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var368 null-String)))
(declare-const var823 Bool) ; Statement: z4 := @parameter1: boolean 
(assert (not (= var823 null-Bool)))
(declare-const var3688 Bool) ; Statement: z3 := @parameter2: boolean 
(assert (not (= var3688 null-Bool)))
(define-const var2509 Int 0) ; Statement: i8 = 0 
(define-const var2395 Bool (ite (= 1 0) true false)) ; Statement: z8 = 0 
(define-const var164 Int 0) ; Statement: b13 = 0 
(define-const var3923 Int 0) ; Statement: b12 = 0 
(define-const var2273 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var1686 Bool (ite (= 1 0) true false)) ; Statement: z7 = 0 
(define-const var3838 Bool (ite (= 1 0) true false)) ; Statement: z6 = 0 
(assert true)
(define-const var746 Bool (startsWith/-154742961 var368 "-" 0)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String,int)>("-", 0) 
 ; Statement: if $z0 == 0 goto b9 = 10 
(assert (not (= (ite var746 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if z4 != 0 goto i8 = 1 
(assert (not (not (= (ite var823 1 0) 0)))) ; Negate: Cond: z4 != 0  
(define-const var613 var3234 var3234-init) ; Statement: $r40 = new java.lang.NumberFormatException 
(define-const var837 String String-init) ; Statement: $r39 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var837)) ; Statement: specialinvoke $r39.<java.lang.StringBuilder: void <init>()>() 
(declare-const var837!1 String)
(assert (= var837!1 ""))
(assert true)
(define-const var1062 String (append/672562846 var837!1 "Number must be positive: ")) ; Statement: $r34 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Number must be positive: ") 
(declare-const var837!2 String)
(assert (= var837!2 (str.++ var837!1 "Number must be positive: ")))
(assert true)
(define-const var1490 String (append/672562846 var1062 var368)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1062!1 String)
(assert (= var1062!1 (str.++ var1062 var368)))
(assert true)
(define-const var2313 String (toString/-2075883882 var1490)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1788180247 var613 var2313)) ; Statement: specialinvoke $r40.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r36) 

(declare-const var613!1 var3234)
(declare-const var2313!1 String)
 ; Statement: throw $r40 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-154742961=([java.lang.String, java.lang.String, int], boolean), var3234-init=([], java.lang.NumberFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1788180247=([java.lang.NumberFormatException, java.lang.String], void)}
; {var368=r0, var3782=null_type, var823=z4, var3688=z3, var2509=i8, var2395=z8, var164=b13, var3923=b12, var2273=z5, var1686=z7, var3838=z6, var746=$z0, var3234=java.lang.NumberFormatException, var613=$r40, var837=$r39, var1062=$r34, var1490=$r35, var2313=$r36}
; {r0=var368, null_type=var3782, z4=var823, z3=var3688, i8=var2509, z8=var2395, b13=var164, b12=var3923, z5=var2273, z7=var1686, z6=var3838, $z0=var746, java.lang.NumberFormatException=var3234, $r40=var613, $r39=var837, $r34=var1062, $r35=var1490, $r36=var2313}
;seq <java.lang.String: boolean startsWith(java.lang.String,int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String,int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z4 := @parameter1: boolean;	z3 := @parameter2: boolean;	i8 = 0;	z8 = 0;	b13 = 0;	b12 = 0;	z5 = 0;	z7 = 0;	z6 = 0;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String,int)>("-", 0);	if $z0 == 0 goto b9 = 10;	if z4 != 0 goto i8 = 1;	$r40 = new java.lang.NumberFormatException;	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r34 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Number must be positive: ");	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r40.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r36);	throw $r40
;block_num 3