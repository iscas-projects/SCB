(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3665 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-const null-var3665 var3665)
(declare-const null-Int Int)
(declare-const var2801 var3665) ; Statement: r1 := @this: org.javacc.parser.NormalProduction 
(assert (not (= var2801 null-var3665)))
(declare-const var1105 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1105 null-Int)))
(define-const var1398 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var1398 128)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>(int)>(128) 

(declare-const var1398!1 String)
(declare-const var1516 Int)
(define-const var206 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto return $r0 
(assert (>= var206 var1105)) ; Cond: i1 >= i0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void)}
; {var3665=org.javacc.parser.NormalProduction, var2801=r1, var1105=i0, var1398=$r0, var1516=128, var206=i1}
; {org.javacc.parser.NormalProduction=var3665, r1=var2801, i0=var1105, $r0=var1398, 128=var1516, i1=var206}
;seq <java.lang.StringBuffer: void <init>(int)>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1}
;stmts r1 := @this: org.javacc.parser.NormalProduction;	i0 := @parameter0: int;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>(int)>(128);	i1 = 0;	if i1 >= i0 goto return $r0;	return $r0
;block_num 3