(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var284 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun String-init () String)
(declare-fun code/-116239427 (var284) (Array Int Int))
(declare-fun <init>/1703972987 (String (Array Int Int) Int Int) void)
(declare-const null-var284 var284)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var800 var284) ; Statement: r4 := @this: jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter 
(assert (not (= var800 null-var284)))
(declare-const var2321 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2321 null-String)))
(declare-const var1498 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1498 null-Int)))
(declare-const var1667 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1667 null-Int)))
(assert true)
(define-const var3606 String (append/672562846 var2321 ":")) ; Statement: $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2321!1 String)
(assert (= var2321!1 (str.++ var2321 ":")))
(assert true)
(define-const var231 String (append/-1001720160 var3606 var1498)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3606!1 String)
(assert (str.prefixof var3606 var3606!1))
(assert true)
;(assert (append/672562846 var231 ":")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var231!1 String)
(assert (= var231!1 (str.++ var231 ":")))
(define-const var1550 String String-init) ; Statement: $r3 = new java.lang.String 
(define-const var3419 (Array Int Int) (code/-116239427 var800)) ; Statement: $r5 = r4.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code> 
(assert true)
;(assert (<init>/1703972987 var1550 var3419 var1667 var1498)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(int[],int,int)>($r5, i1, i0) 

(declare-const var1550!1 String)
(declare-const var3419!1 (Array Int Int))
(declare-const var1667!1 Int)
(declare-const var1498!1 Int)
(assert true)
;(assert (append/672562846 var2321!1 var1550!1)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2321!2 String)
(assert (= var2321!2 (str.++ var2321!1 var1550!1)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), String-init=([], java.lang.String), code/-116239427=([jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter], int[]), <init>/1703972987=([java.lang.String, int[], int, int], void)}
; {var284=jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter, var800=r4, var2321=r0, var1498=i0, var1667=i1, var3606=$r1, var231=$r2, var1550=$r3, var3419=$r5}
; {jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter=var284, r4=var800, r0=var2321, i0=var1498, i1=var1667, $r1=var3606, $r2=var231, $r3=var1550, $r5=var3419}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(int[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.String: void <init>(int[],int,int)>": 1}
;stmts r4 := @this: jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter;	r0 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	i1 := @parameter2: int;	$r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r3 = new java.lang.String;	$r5 = r4.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;	specialinvoke $r3.<java.lang.String: void <init>(int[],int,int)>($r5, i1, i0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	return
;block_num 1