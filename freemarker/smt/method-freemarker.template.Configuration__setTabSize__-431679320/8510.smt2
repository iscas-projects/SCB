(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var518 0)
(declare-sort var2104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2104-init () var2104)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2104 String) void)
(declare-const null-var518 var518)
(declare-const null-Int Int)
(declare-const var1542 var518) ; Statement: r0 := @this: freemarker.template.Configuration 
(assert (not (= var1542 null-var518)))
(declare-const var772 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var772 null-Int)))
 ; Statement: if i0 >= 1 goto (branch) 
(assert (not (>= var772 1))) ; Negate: Cond: i0 >= 1  
(define-const var820 var2104 var2104-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var1471 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1471)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1471!1 String)
(assert (= var1471!1 ""))
(assert true)
(define-const var1134 String (append/672562846 var1471!1 "\u0022tabSize\u0022 must be at least 1, but was ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"tabSize\" must be at least 1, but was ") 
(declare-const var1471!2 String)
(assert (= var1471!2 (str.++ var1471!1 "\u0022tabSize\u0022 must be at least 1, but was ")))
(assert true)
(define-const var125 String (append/-1001720160 var1134 var772)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1134!1 String)
(assert (str.prefixof var1134 var1134!1))
(assert true)
(define-const var3423 String (toString/-2075883882 var125)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var820 var3423)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var820!1 var2104)
(declare-const var3423!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2104-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var518=freemarker.template.Configuration, var1542=r0, var772=i0, var2104=java.lang.IllegalArgumentException, var820=$r6, var1471=$r7, var1134=$r8, var125=$r9, var3423=$r10}
; {freemarker.template.Configuration=var518, r0=var1542, i0=var772, java.lang.IllegalArgumentException=var2104, $r6=var820, $r7=var1471, $r8=var1134, $r9=var125, $r10=var3423}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.template.Configuration;	i0 := @parameter0: int;	if i0 >= 1 goto (branch);	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"tabSize\" must be at least 1, but was ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r6
;block_num 2