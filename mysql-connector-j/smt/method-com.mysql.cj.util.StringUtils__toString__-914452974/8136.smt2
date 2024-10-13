(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1380519146 (String (Array Int Int) Int Int) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1909 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var1909 null-__Array__Int__Int__)))
(declare-const var3437 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3437 null-Int)))
(declare-const var2286 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2286 null-Int)))
(define-const var3713 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
;(assert (<init>/-1380519146 var3713 var1909 var3437 var2286)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(byte[],int,int)>(r1, i0, i1) 

(declare-const var3713!1 String)
(declare-const var1909!1 (Array Int Int))
(declare-const var3437!1 Int)
(declare-const var2286!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-1380519146=([java.lang.String, byte[], int, int], void)}
; {var1909=r1, var3437=i0, var2286=i1, var3713=$r0}
; {r1=var1909, i0=var3437, i1=var2286, $r0=var3713}
;seq <java.lang.String: void <init>(byte[],int,int)>
;cnt {"<java.lang.String: void <init>(byte[],int,int)>": 1}
;stmts r1 := @parameter0: byte[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r0 = new java.lang.String;	specialinvoke $r0.<java.lang.String: void <init>(byte[],int,int)>(r1, i0, i1);	return $r0
;block_num 1