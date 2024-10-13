(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1733 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String-init () String)
(declare-fun code/-116239427 (var1733) (Array Int Int))
(declare-fun <init>/1703972987 (String (Array Int Int) Int Int) void)
(declare-const null-var1733 var1733)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1196 var1733) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter 
(assert (not (= var1196 null-var1733)))
(declare-const var1645 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1645 null-String)))
(declare-const var590 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var590 null-Int)))
(declare-const var1601 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1601 null-Int)))
(assert true)
;(assert (append/672562846 var1645 ":")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1645!1 String)
(assert (= var1645!1 (str.++ var1645 ":")))
(define-const var3534 String String-init) ; Statement: $r1 = new java.lang.String 
(define-const var1302 (Array Int Int) (code/-116239427 var1196)) ; Statement: $r3 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code> 
(assert true)
;(assert (<init>/1703972987 var3534 var1302 var1601 var590)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(int[],int,int)>($r3, i0, i1) 

(declare-const var3534!1 String)
(declare-const var1302!1 (Array Int Int))
(declare-const var1601!1 Int)
(declare-const var590!1 Int)
(assert true)
;(assert (append/672562846 var1645!1 var3534!1)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var1645!2 String)
(assert (= var1645!2 (str.++ var1645!1 var3534!1)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String-init=([], java.lang.String), code/-116239427=([jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter], int[]), <init>/1703972987=([java.lang.String, int[], int, int], void)}
; {var1733=jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter, var1196=r2, var1645=r0, var590=i1, var1601=i0, var3534=$r1, var1302=$r3}
; {jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter=var1733, r2=var1196, r0=var1645, i1=var590, i0=var1601, $r1=var3534, $r3=var1302}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(int[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: void <init>(int[],int,int)>": 1}
;stmts r2 := @this: jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter;	r0 := @parameter0: java.lang.StringBuilder;	i1 := @parameter1: int;	i0 := @parameter2: int;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r1 = new java.lang.String;	$r3 = r2.<jdk.nashorn.internal.runtime.regexp.joni.ByteCodePrinter: int[] code>;	specialinvoke $r1.<java.lang.String: void <init>(int[],int,int)>($r3, i0, i1);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	return
;block_num 1