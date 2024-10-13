(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3171 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun out/-1920232736 (var3171) String)
(declare-fun append/50905802 (String String Int Int) String)
(declare-const null-var3171 var3171)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1309 var3171) ; Statement: r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat 
(assert (not (= var1309 null-var3171)))
(declare-const var3720 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var3720 null-String)))
(declare-const var2123 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2123 null-Int)))
(declare-const var848 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var848 null-Int)))
(define-const var890 String (out/-1920232736 var1309)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.StringBuilder out> 
(assert true)
;(assert (append/50905802 var890 var3720 var2123 var848)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r1, i0, i1) 
(declare-const var890!1 String)
(assert (str.prefixof var890 var890!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {out/-1920232736=([com.google.javascript.jscomp.base.format.SimpleFormat], java.lang.StringBuilder), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder)}
; {var3171=com.google.javascript.jscomp.base.format.SimpleFormat, var1309=r0, var3720=r1, var2123=i0, var848=i1, var890=$r2}
; {com.google.javascript.jscomp.base.format.SimpleFormat=var3171, r0=var1309, r1=var3720, i0=var2123, i1=var848, $r2=var890}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat;	r1 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	i1 := @parameter2: int;	$r2 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.StringBuilder out>;	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r1, i0, i1);	return
;block_num 1