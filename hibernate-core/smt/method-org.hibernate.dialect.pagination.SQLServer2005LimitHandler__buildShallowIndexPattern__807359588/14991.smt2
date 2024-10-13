(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2363 0)
(declare-sort var1596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1596_compile/915022044 (String Int) var1596)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var781 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var781 null-String)))
(declare-const var795 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var795 null-Bool)))
(define-const var3292 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3292)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3292!1 String)
(assert (= var3292!1 ""))
(assert true)
(define-const var2974 String (append/672562846 var3292!1 "(")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3292!2 String)
(assert (= var3292!2 (str.++ var3292!1 "(")))
 ; Statement: if z0 == 0 goto $r9 = "" 
(assert (= (ite var795 1 0) 0)) ; Cond: z0 == 0 
(define-const var1112 String "") ; Statement: $r9 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var355 String (append/672562846 var2974 var1112)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2974!1 String)
(assert (= var2974!1 (str.++ var2974 var1112)))
(assert true)
(define-const var3261 String (append/672562846 var355 var781)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var355!1 String)
(assert (= var355!1 (str.++ var355 var781)))
 ; Statement: if z0 == 0 goto $r10 = "" 
(assert (= (ite var795 1 0) 0)) ; Cond: z0 == 0 
(define-const var358 String "") ; Statement: $r10 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var3064 String (append/672562846 var3261 var358)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3261!1 String)
(assert (= var3261!1 (str.++ var3261 var358)))
(assert true)
(define-const var3121 String (append/672562846 var3064 ")(?![^\u005c(|\u005c[]*(\u005c)|\u005c]))")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")(?![^\\(|\\[]*(\\)|\\]))") 
(declare-const var3064!1 String)
(assert (= var3064!1 (str.++ var3064 ")(?![^\u005c(|\u005c[]*(\u005c)|\u005c]))")))
(assert true)
(define-const var201 String (toString/-2075883882 var3121)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2353 var1596 (var1596_compile/915022044 var201 2)) ; Statement: $r8 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r7, 2) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1596_compile/915022044=([java.lang.String, int], java.util.regex.Pattern)}
; {var781=r2, var2363=null_type, var795=z0, var3292=$r0, var2974=$r1, var1112=$r9, var355=$r3, var3261=$r4, var358=$r10, var3064=$r5, var3121=$r6, var201=$r7, var1596=java.util.regex.Pattern, var2353=$r8}
; {r2=var781, null_type=var2363, z0=var795, $r0=var3292, $r1=var2974, $r9=var1112, $r3=var355, $r4=var3261, $r10=var358, $r5=var3064, $r6=var3121, $r7=var201, java.util.regex.Pattern=var1596, $r8=var2353}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	if z0 == 0 goto $r9 = "";	$r9 = "";	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	if z0 == 0 goto $r10 = "";	$r10 = "";	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")(?![^\\(|\\[]*(\\)|\\]))");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r7, 2);	return $r8
;block_num 5