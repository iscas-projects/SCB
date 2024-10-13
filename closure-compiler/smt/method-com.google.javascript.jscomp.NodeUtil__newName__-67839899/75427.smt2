(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var575 0)
(declare-sort var831 0)
(declare-sort var155 0)
(declare-sort var2393 0)
(declare-sort var261 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2393_name/56234954 (String) var155)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun setLength/1649856911 (var155 Int) void)
(declare-fun getCodingConvention/-1064940228 (var575) var261)
(declare-fun var261_isConstant/1355272346 (var261 String) Bool)
(declare-const null-var575 var575)
(declare-const null-String String)
(declare-const var1234 var575) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.AbstractCompiler 
(assert (not (= var1234 null-var575)))
(declare-const var1417 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1417 null-String)))
(define-const var3851 var155 (var2393_name/56234954 var1417)) ; Statement: r1 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node name(java.lang.String)>(r0) 
(assert true)
(define-const var531 Int (length/-134980193 var1417)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
;(assert (setLength/1649856911 var3851 var531)) ; Statement: virtualinvoke r1.<com.google.javascript.rhino.Node: void setLength(int)>($i0) 

(declare-const var3851!1 var155)
(declare-const var531!1 Int)
(assert true)
(define-const var3829 var261 (getCodingConvention/-1064940228 var1234)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.jscomp.CodingConvention getCodingConvention()>() 
(define-const var823 Bool (var261_isConstant/1355272346 var3829 var1417)) ; Statement: $z0 = interfaceinvoke $r3.<com.google.javascript.jscomp.CodingConvention: boolean isConstant(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto return r1 
(assert (= (ite var823 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2393_name/56234954=([java.lang.String], com.google.javascript.rhino.Node), length/-134980193=([java.lang.String], int), setLength/1649856911=([com.google.javascript.rhino.Node, int], void), getCodingConvention/-1064940228=([com.google.javascript.jscomp.AbstractCompiler], com.google.javascript.jscomp.CodingConvention), var261_isConstant/1355272346=([com.google.javascript.jscomp.CodingConvention, java.lang.String], boolean)}
; {var575=com.google.javascript.jscomp.AbstractCompiler, var1234=r2, var1417=r0, var831=null_type, var155=com.google.javascript.rhino.Node, var2393=com.google.javascript.rhino.IR, var3851=r1, var531=$i0, var261=com.google.javascript.jscomp.CodingConvention, var3829=$r3, var823=$z0}
; {com.google.javascript.jscomp.AbstractCompiler=var575, r2=var1234, r0=var1417, null_type=var831, com.google.javascript.rhino.Node=var155, com.google.javascript.rhino.IR=var2393, r1=var3851, $i0=var531, com.google.javascript.jscomp.CodingConvention=var261, $r3=var3829, $z0=var823}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @parameter0: com.google.javascript.jscomp.AbstractCompiler;	r0 := @parameter1: java.lang.String;	r1 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node name(java.lang.String)>(r0);	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	virtualinvoke r1.<com.google.javascript.rhino.Node: void setLength(int)>($i0);	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.AbstractCompiler: com.google.javascript.jscomp.CodingConvention getCodingConvention()>();	$z0 = interfaceinvoke $r3.<com.google.javascript.jscomp.CodingConvention: boolean isConstant(java.lang.String)>(r0);	if $z0 == 0 goto return r1;	return r1
;block_num 2