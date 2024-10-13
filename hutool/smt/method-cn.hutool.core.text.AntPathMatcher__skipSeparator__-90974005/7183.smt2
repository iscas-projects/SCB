(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var926 0)
(declare-sort var1400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-154742961 ((s String) (prefix String) (toffset Int)) Bool (and (>= toffset 0) (>= (str.len s) toffset) (str.prefixof prefix (str.substr s toffset (- (str.len s) toffset)))))
(declare-const null-var926 var926)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2821 var926) ; Statement: r2 := @this: cn.hutool.core.text.AntPathMatcher 
(assert (not (= var2821 null-var926)))
(declare-const var3243 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3243 null-String)))
(declare-const var2494 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2494 null-Int)))
(declare-const var2315 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var2315 null-String)))
(define-const var1090 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var3779 Int (+ var2494 var1090)) ; Statement: $i1 = i0 + i3 
(assert true)
(define-const var182 Bool (startsWith/-154742961 var3243 var2315 var3779)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String,int)>(r1, $i1) 
 ; Statement: if $z0 == 0 goto return i3 
(assert (= (ite var182 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return i3 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-154742961=([java.lang.String, java.lang.String, int], boolean)}
; {var926=cn.hutool.core.text.AntPathMatcher, var2821=r2, var3243=r0, var1400=null_type, var2494=i0, var2315=r1, var1090=i3, var3779=$i1, var182=$z0}
; {cn.hutool.core.text.AntPathMatcher=var926, r2=var2821, r0=var3243, null_type=var1400, i0=var2494, r1=var2315, i3=var1090, $i1=var3779, $z0=var182}
;seq <java.lang.String: boolean startsWith(java.lang.String,int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String,int)>": 1}
;stmts r2 := @this: cn.hutool.core.text.AntPathMatcher;	r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r1 := @parameter2: java.lang.String;	i3 = 0;	$i1 = i0 + i3;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String,int)>(r1, $i1);	if $z0 == 0 goto return i3;	return i3
;block_num 3