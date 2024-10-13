(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1163 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun codeLength/-116239427 (var1163) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1163 var1163)
(declare-const var1138 var1163) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter 
(assert (not (= var1138 null-var1163)))
(define-const var3391 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3391)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3391!1 String)
(assert (= var3391!1 ""))
(assert true)
(define-const var991 String (append/672562846 var3391!1 "code length: ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("code length: ") 
(declare-const var3391!2 String)
(assert (= var3391!2 (str.++ var3391!1 "code length: ")))
(define-const var3816 Int (codeLength/-116239427 var1138)) ; Statement: $i0 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int codeLength> 
(assert true)
(define-const var1530 String (append/-1001720160 var991 var3816)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var991!1 String)
(assert (str.prefixof var991 var991!1))
(assert true)
;(assert (append/672562846 var1530 "\n")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var1530!1 String)
(assert (= var1530!1 (str.++ var1530 "\n")))
(define-const var1485 Int 0) ; Statement: i3 = 0 
(define-const var2983 Int 0) ; Statement: i4 = 0 
(define-const var3060 Int (codeLength/-116239427 var1138)) ; Statement: i1 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int codeLength> 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(assert (>= var2983 var3060)) ; Cond: i4 >= i1 
(assert true)
;(assert (append/672562846 var3391!2 "\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var3391!3 String)
(assert (= var3391!3 (str.++ var3391!2 "\n")))
(assert true)
(define-const var2851 String (toString/-2075883882 var3391!3)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), codeLength/-116239427=([jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1163=jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter, var1138=r1, var3391=$r0, var991=$r2, var3816=$i0, var1530=$r3, var1485=i3, var2983=i4, var3060=i1, var2851=$r4}
; {jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter=var1163, r1=var1138, $r0=var3391, $r2=var991, $i0=var3816, $r3=var1530, i3=var1485, i4=var2983, i1=var3060, $r4=var2851}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("code length: ");	$i0 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int codeLength>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	i3 = 0;	i4 = 0;	i1 = r1.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int codeLength>;	if i4 >= i1 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3