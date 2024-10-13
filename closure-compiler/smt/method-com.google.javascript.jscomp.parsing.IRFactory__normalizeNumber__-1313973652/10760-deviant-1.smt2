(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var702 0)
(declare-sort var3917 0)
(declare-sort var3826 0)
(declare-sort var1618 0)
(declare-sort var2504 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-732511682 (var3917) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun location/-1390561083 (var1618) var3826)
(declare-fun cast-from-var3917-to-var1618 (var3917) var1618)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2504_checkState/1431124798 (Bool) void)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Float64_parseDouble/1471110886 (String) Float64)
(declare-const null-var702 var702)
(declare-const null-var3917 var3917)
(declare-const var3077 var702) ; Statement: r1 := @this: com.google.javascript.jscomp.parsing.IRFactory 
(assert (not (= var3077 null-var702)))
(declare-const var2909 var3917) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.LiteralToken 
(assert (not (= var2909 null-var3917)))
(define-const var2585 String (value/-732511682 var2909)) ; Statement: r24 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value> 
(assert true)
(define-const var1640 Bool (contains/1009244746 var2585 (cast-from-String-to-String "_"))) ; Statement: $z0 = virtualinvoke r24.<java.lang.String: boolean contains(java.lang.CharSequence)>("_") 
 ; Statement: if $z0 == 0 goto $r23 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: com.google.javascript.jscomp.parsing.parser.util.SourceRange location> 
(assert (= (ite var1640 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2214 var3826 (location/-1390561083 (cast-from-var3917-to-var1618 var2909))) ; Statement: $r23 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: com.google.javascript.jscomp.parsing.parser.util.SourceRange location> 
(assert true)
(define-const var1575 Int (length/-134980193 var2585)) ; Statement: $i21 = virtualinvoke r24.<java.lang.String: int length()>() 
 ; Statement: if $i21 <= 0 goto $z3 = 0 
(assert (not (<= var1575 0))) ; Negate: Cond: $i21 <= 0  
(define-const var154 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3)] 
(assert true) ; Non Conditional
;(assert (var2504_checkState/1431124798 var154)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3) 

(declare-const var154!1 Bool)
(assert (and true (and (> (str.len var2585) 0) (<= 0 0))))
(define-const var3277 Int (charAt/698050440 var2585 0)) ; Statement: $c0 = virtualinvoke r24.<java.lang.String: char charAt(int)>(0) 
(define-const var1797 Int (cast-from-Int-to-Int var3277)) ; Statement: $i27 = (int) $c0 
 ; Statement: if $i27 == 45 goto $z4 = 0 
(assert (= var1797 45)) ; Cond: $i27 == 45 
(define-const var1346 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
;(assert (var2504_checkState/1431124798 var1346)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z4) 

(declare-const var1346!1 Bool)
(assert (not (and true (and (> (str.len var2585) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {value/-732511682=([com.google.javascript.jscomp.parsing.parser.LiteralToken], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), location/-1390561083=([com.google.javascript.jscomp.parsing.parser.Token], com.google.javascript.jscomp.parsing.parser.util.SourceRange), cast-from-var3917-to-var1618=([com.google.javascript.jscomp.parsing.parser.LiteralToken], com.google.javascript.jscomp.parsing.parser.Token), length/-134980193=([java.lang.String], int), var2504_checkState/1431124798=([boolean], void), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), Float64_parseDouble/1471110886=([java.lang.String], double)}
; {var702=com.google.javascript.jscomp.parsing.IRFactory, var3077=r1, var3917=com.google.javascript.jscomp.parsing.parser.LiteralToken, var2909=r0, var2585=r24, var1640=$z0, var3826=com.google.javascript.jscomp.parsing.parser.util.SourceRange, var1618=com.google.javascript.jscomp.parsing.parser.Token, var2214=$r23, var1575=$i21, var154=$z3, var2504=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3277=$c0, var1797=$i27, var1346=$z4, var2753=$c22, var598=$i29, var3425=$r22, var3438=$d10}
; {com.google.javascript.jscomp.parsing.IRFactory=var702, r1=var3077, com.google.javascript.jscomp.parsing.parser.LiteralToken=var3917, r0=var2909, r24=var2585, $z0=var1640, com.google.javascript.jscomp.parsing.parser.util.SourceRange=var3826, com.google.javascript.jscomp.parsing.parser.Token=var1618, $r23=var2214, $i21=var1575, $z3=var154, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2504, $c0=var3277, $i27=var1797, $z4=var1346, $c22=var2753, $i29=var598, $r22=var3425, $d10=var3438}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 2}
;stmts r1 := @this: com.google.javascript.jscomp.parsing.IRFactory;	r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.LiteralToken;	r24 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value>;	$z0 = virtualinvoke r24.<java.lang.String: boolean contains(java.lang.CharSequence)>("_");	if $z0 == 0 goto $r23 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: com.google.javascript.jscomp.parsing.parser.util.SourceRange location>;	$r23 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: com.google.javascript.jscomp.parsing.parser.util.SourceRange location>;	$i21 = virtualinvoke r24.<java.lang.String: int length()>();	if $i21 <= 0 goto $z3 = 0;	$z3 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3);	$c0 = virtualinvoke r24.<java.lang.String: char charAt(int)>(0);	$i27 = (int) $c0;	if $i27 == 45 goto $z4 = 0;	$z4 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z4);	$c22 = virtualinvoke r24.<java.lang.String: char charAt(int)>(0);	$i29 = (int) $c22;	if $i29 != 46 goto $c1 = virtualinvoke r24.<java.lang.String: char charAt(int)>(0);	$r22 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r24) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("0\u0001");	$d10 = staticinvoke <java.lang.Double: double parseDouble(java.lang.String)>($r22);	return $d10
;block_num 7