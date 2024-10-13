(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2500 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun data/354367503 (var2500) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var2500 var2500)
(declare-const null-Int Int)
(declare-const var2647 var2500) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.Source 
(assert (not (= var2647 null-var2500)))
(declare-const var2091 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2091 null-Int)))
(declare-const var1540 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1540 null-Int)))
(define-const var1580 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
(define-const var1899 (Array Int Int) (data/354367503 var2647)) ; Statement: $r2 = specialinvoke r1.<jdk.nashorn.internal.runtime.Source: char[] data()>() 
(assert true)
;(assert (<init>/-253222812 var1580 var1899 var2091 var1540)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, i0, i1) 

(declare-const var1580!1 String)
(declare-const var1899!1 (Array Int Int))
(declare-const var2091!1 Int)
(declare-const var1540!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), data/354367503=([jdk.nashorn.internal.runtime.Source], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var2500=jdk.nashorn.internal.runtime.Source, var2647=r1, var2091=i0, var1540=i1, var1580=$r0, var1899=$r2}
; {jdk.nashorn.internal.runtime.Source=var2500, r1=var2647, i0=var2091, i1=var1540, $r0=var1580, $r2=var1899}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.Source;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new java.lang.String;	$r2 = specialinvoke r1.<jdk.nashorn.internal.runtime.Source: char[] data()>();	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, i0, i1);	return $r0
;block_num 1