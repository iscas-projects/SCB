(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2991 0)
(declare-sort var471 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun setLength/163251007 (String Int) void)
(declare-fun var471_isUnicodeIdentifierStart/1615151030 (Int) Bool)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2763 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2763 null-Int)))
(declare-const var23 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var23 null-String)))
(declare-const var2992 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var2992 null-Int)))
(declare-const var3857 String) ; Statement: r0 := @parameter3: java.lang.StringBuffer 
(assert (not (= var3857 null-String)))
(declare-const var3389 String) ; Statement: r2 := @parameter4: java.lang.StringBuffer 
(assert (not (= var3389 null-String)))
(assert true)
;(assert (setLength/163251007 var3857 0)) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: void setLength(int)>(0) 

(declare-const var3857!1 String)
(declare-const var3792 Int)
(define-const var3783 Bool (var471_isUnicodeIdentifierStart/1615151030 var2763)) ; Statement: $z0 = staticinvoke <java.lang.Character: boolean isUnicodeIdentifierStart(char)>(c0) 
 ; Statement: if $z0 != 0 goto virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(c0) 
(assert (not (not (= (ite var3783 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return i5 
(check-sat)
(get-model)
(get-unsat-core)
; {setLength/163251007=([java.lang.StringBuffer, int], void), var471_isUnicodeIdentifierStart/1615151030=([char], boolean)}
; {var2763=c0, var23=r1, var2991=null_type, var2992=i5, var3857=r0, var3389=r2, var3792=0, var471=java.lang.Character, var3783=$z0}
; {c0=var2763, r1=var23, null_type=var2991, i5=var2992, r0=var3857, r2=var3389, 0=var3792, java.lang.Character=var471, $z0=var3783}
;seq <java.lang.StringBuffer: void setLength(int)>
;cnt {"<java.lang.StringBuffer: void setLength(int)>": 1}
;stmts c0 := @parameter0: char;	r1 := @parameter1: java.lang.String;	i5 := @parameter2: int;	r0 := @parameter3: java.lang.StringBuffer;	r2 := @parameter4: java.lang.StringBuffer;	virtualinvoke r0.<java.lang.StringBuffer: void setLength(int)>(0);	$z0 = staticinvoke <java.lang.Character: boolean isUnicodeIdentifierStart(char)>(c0);	if $z0 != 0 goto virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(c0);	return i5
;block_num 2