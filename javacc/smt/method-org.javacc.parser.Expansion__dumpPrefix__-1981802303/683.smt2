(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3624 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-const null-var3624 var3624)
(declare-const null-Int Int)
(declare-const var3903 var3624) ; Statement: r1 := @this: org.javacc.parser.Expansion 
(assert (not (= var3903 null-var3624)))
(declare-const var882 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var882 null-Int)))
(define-const var1390 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var1390 128)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>(int)>(128) 

(declare-const var1390!1 String)
(declare-const var2720 Int)
(define-const var3436 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return $r0 
(assert (>= var3436 var882)) ; Cond: i1 >= i0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void)}
; {var3624=org.javacc.parser.Expansion, var3903=r1, var882=i0, var1390=$r0, var2720=128, var3436=i1}
; {org.javacc.parser.Expansion=var3624, r1=var3903, i0=var882, $r0=var1390, 128=var2720, i1=var3436}
;seq <java.lang.StringBuffer: void <init>(int)>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1}
;stmts r1 := @this: org.javacc.parser.Expansion;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>(int)>(128);	i1 = 0;	if i1 >= i0 goto return $r0;	return $r0
;block_num 3