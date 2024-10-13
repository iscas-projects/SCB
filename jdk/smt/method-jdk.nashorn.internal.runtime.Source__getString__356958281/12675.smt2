(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3643 0)
(declare-sort var3039 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3039_descPosition/987809969 (Int) Int)
(declare-fun var3039_descLength/-21988204 (Int) Int)
(declare-fun String-init () String)
(declare-fun data/354367503 (var3643) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var3643 var3643)
(declare-const null-Int Int)
(declare-const var1832 var3643) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.Source 
(assert (not (= var1832 null-var3643)))
(declare-const var560 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var560 null-Int)))
(define-const var457 Int (var3039_descPosition/987809969 var560)) ; Statement: i1 = staticinvoke <jdk.nashorn.internal.parser.Token: int descPosition(long)>(l0) 
(define-const var1845 Int (var3039_descLength/-21988204 var560)) ; Statement: i2 = staticinvoke <jdk.nashorn.internal.parser.Token: int descLength(long)>(l0) 
(define-const var2061 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
(define-const var2010 (Array Int Int) (data/354367503 var1832)) ; Statement: $r2 = specialinvoke r1.<jdk.nashorn.internal.runtime.Source: char[] data()>() 
(assert true)
;(assert (<init>/-253222812 var2061 var2010 var457 var1845)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, i1, i2) 

(declare-const var2061!1 String)
(declare-const var2010!1 (Array Int Int))
(declare-const var457!1 Int)
(declare-const var1845!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3039_descPosition/987809969=([long], int), var3039_descLength/-21988204=([long], int), String-init=([], java.lang.String), data/354367503=([jdk.nashorn.internal.runtime.Source], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var3643=jdk.nashorn.internal.runtime.Source, var1832=r1, var560=l0, var3039=jdk.nashorn.internal.parser.Token, var457=i1, var1845=i2, var2061=$r0, var2010=$r2}
; {jdk.nashorn.internal.runtime.Source=var3643, r1=var1832, l0=var560, jdk.nashorn.internal.parser.Token=var3039, i1=var457, i2=var1845, $r0=var2061, $r2=var2010}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.Source;	l0 := @parameter0: long;	i1 = staticinvoke <jdk.nashorn.internal.parser.Token: int descPosition(long)>(l0);	i2 = staticinvoke <jdk.nashorn.internal.parser.Token: int descLength(long)>(l0);	$r0 = new java.lang.String;	$r2 = specialinvoke r1.<jdk.nashorn.internal.runtime.Source: char[] data()>();	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, i1, i2);	return $r0
;block_num 1