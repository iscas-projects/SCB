(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var485 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1380519146 (String (Array Int Int) Int Int) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1420 (Array Int Int)) ; Statement: r2 := @parameter0: byte[] 
(assert (not (= var1420 null-__Array__Int__Int__)))
(declare-const var1710 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1710 null-Int)))
(declare-const var1152 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1152 null-Int)))
(declare-const var177 String) ; Statement: r0 := @parameter3: java.lang.String 
(assert (not (= var177 null-String)))
 ; Statement: if r0 == null goto $r1 = new java.lang.String 
(assert (= var177 null-String)) ; Cond: r0 == null 
(define-const var212 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
;(assert (<init>/-1380519146 var212 var1420 var1710 var1152)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(byte[],int,int)>(r2, i0, i1) 

(declare-const var212!1 String)
(declare-const var1420!1 (Array Int Int))
(declare-const var1710!1 Int)
(declare-const var1152!1 Int)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-1380519146=([java.lang.String, byte[], int, int], void)}
; {var1420=r2, var1710=i0, var1152=i1, var177=r0, var485=null_type, var212=$r1}
; {r2=var1420, i0=var1710, i1=var1152, r0=var177, null_type=var485, $r1=var212}
;seq <java.lang.String: void <init>(byte[],int,int)>
;cnt {"<java.lang.String: void <init>(byte[],int,int)>": 1}
;stmts r2 := @parameter0: byte[];	i0 := @parameter1: int;	i1 := @parameter2: int;	r0 := @parameter3: java.lang.String;	if r0 == null goto $r1 = new java.lang.String;	$r1 = new java.lang.String;	specialinvoke $r1.<java.lang.String: void <init>(byte[],int,int)>(r2, i0, i1);	return $r1
;block_num 2