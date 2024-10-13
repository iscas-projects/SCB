(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2352 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun findBOLN/-2044914215 (var2352 Int) Int)
(declare-fun findEOLN/1660512566 (var2352 Int) Int)
(declare-fun String-init () String)
(declare-fun data/354367503 (var2352) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var2352 var2352)
(declare-const null-Int Int)
(declare-const var657 var2352) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.Source 
(assert (not (= var657 null-var2352)))
(declare-const var2627 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2627 null-Int)))
(assert true)
(define-const var923 Int (findBOLN/-2044914215 var657 var2627)) ; Statement: i1 = specialinvoke r0.<jdk.nashorn.internal.runtime.Source: int findBOLN(int)>(i0) 
(assert true)
(define-const var822 Int (findEOLN/1660512566 var657 var2627)) ; Statement: i2 = specialinvoke r0.<jdk.nashorn.internal.runtime.Source: int findEOLN(int)>(i0) 
(define-const var2174 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
(define-const var1013 (Array Int Int) (data/354367503 var657)) ; Statement: $r2 = specialinvoke r0.<jdk.nashorn.internal.runtime.Source: char[] data()>() 
(define-const var1611 Int (- var822 var923)) ; Statement: $i3 = i2 - i1 
(define-const var544 Int (+ var1611 1)) ; Statement: $i4 = $i3 + 1 
(assert true)
;(assert (<init>/-253222812 var2174 var1013 var923 var544)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>($r2, i1, $i4) 

(declare-const var2174!1 String)
(declare-const var1013!1 (Array Int Int))
(declare-const var923!1 Int)
(declare-const var544!1 Int)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {findBOLN/-2044914215=([jdk.nashorn.internal.runtime.Source, int], int), findEOLN/1660512566=([jdk.nashorn.internal.runtime.Source, int], int), String-init=([], java.lang.String), data/354367503=([jdk.nashorn.internal.runtime.Source], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var2352=jdk.nashorn.internal.runtime.Source, var657=r0, var2627=i0, var923=i1, var822=i2, var2174=$r1, var1013=$r2, var1611=$i3, var544=$i4}
; {jdk.nashorn.internal.runtime.Source=var2352, r0=var657, i0=var2627, i1=var923, i2=var822, $r1=var2174, $r2=var1013, $i3=var1611, $i4=var544}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.Source;	i0 := @parameter0: int;	i1 = specialinvoke r0.<jdk.nashorn.internal.runtime.Source: int findBOLN(int)>(i0);	i2 = specialinvoke r0.<jdk.nashorn.internal.runtime.Source: int findEOLN(int)>(i0);	$r1 = new java.lang.String;	$r2 = specialinvoke r0.<jdk.nashorn.internal.runtime.Source: char[] data()>();	$i3 = i2 - i1;	$i4 = $i3 + 1;	specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>($r2, i1, $i4);	return $r1
;block_num 1