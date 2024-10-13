(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2768 0)
(declare-sort var3403 0)
(declare-sort var1696 0)
(declare-sort var480 0)
(declare-sort var244 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-732511682 (var3403) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun location/-1390561083 (var480) var1696)
(declare-fun cast-from-var3403-to-var480 (var3403) var480)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var244_checkState/1431124798 (Bool) void)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Float64_parseDouble/1471110886 (String) Float64)
(declare-const null-var2768 var2768)
(declare-const null-var3403 var3403)
(declare-const var255 var2768) ; Statement: r1 := @this: com.google.javascript.jscomp.parsing.IRFactory 
(assert (not (= var255 null-var2768)))
(declare-const var1862 var3403) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.LiteralToken 
(assert (not (= var1862 null-var3403)))
(define-const var2947 String (value/-732511682 var1862)) ; Statement: r24 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value> 
(assert true)
(define-const var1287 Bool (contains/1009244746 var2947 (cast-from-String-to-String "_"))) ; Statement: $z0 = virtualinvoke r24.<java.lang.String: boolean contains(java.lang.CharSequence)>("_") 
 ; Statement: if $z0 == 0 goto $r23 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: com.google.javascript.jscomp.parsing.parser.util.SourceRange location> 
(assert (= (ite var1287 1 0) 0)) ; Cond: $z0 == 0 
(define-const var790 var1696 (location/-1390561083 (cast-from-var3403-to-var480 var1862))) ; Statement: $r23 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: com.google.javascript.jscomp.parsing.parser.util.SourceRange location> 
(assert true)
(define-const var842 Int (length/-134980193 var2947)) ; Statement: $i21 = virtualinvoke r24.<java.lang.String: int length()>() 
 ; Statement: if $i21 <= 0 goto $z3 = 0 
(assert (<= var842 0)) ; Cond: $i21 <= 0 
(define-const var797 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
;(assert (var244_checkState/1431124798 var797)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3) 

(declare-const var797!1 Bool)
(assert (and true (and (> (str.len var2947) 0) (<= 0 0))))
(define-const var3939 Int (charAt/698050440 var2947 0)) ; Statement: $c0 = virtualinvoke r24.<java.lang.String: char charAt(int)>(0) 
(define-const var1943 Int (cast-from-Int-to-Int var3939)) ; Statement: $i27 = (int) $c0 
 ; Statement: if $i27 == 45 goto $z4 = 0 
(assert (= var1943 45)) ; Cond: $i27 == 45 
(define-const var217 Bool (ite (= 1 0) true false)) ; Statement: $z4 = 0 
(assert true) ; Non Conditional
;(assert (var244_checkState/1431124798 var217)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z4) 

(declare-const var217!1 Bool)
(assert (not (and true (and (> (str.len var2947) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {value/-732511682=([com.google.javascript.jscomp.parsing.parser.LiteralToken], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), location/-1390561083=([com.google.javascript.jscomp.parsing.parser.Token], com.google.javascript.jscomp.parsing.parser.util.SourceRange), cast-from-var3403-to-var480=([com.google.javascript.jscomp.parsing.parser.LiteralToken], com.google.javascript.jscomp.parsing.parser.Token), length/-134980193=([java.lang.String], int), var244_checkState/1431124798=([boolean], void), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), Float64_parseDouble/1471110886=([java.lang.String], double)}
; {var2768=com.google.javascript.jscomp.parsing.IRFactory, var255=r1, var3403=com.google.javascript.jscomp.parsing.parser.LiteralToken, var1862=r0, var2947=r24, var1287=$z0, var1696=com.google.javascript.jscomp.parsing.parser.util.SourceRange, var480=com.google.javascript.jscomp.parsing.parser.Token, var790=$r23, var842=$i21, var797=$z3, var244=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3939=$c0, var1943=$i27, var217=$z4, var2049=$c22, var878=$i29, var1342=$r22, var1197=$d10}
; {com.google.javascript.jscomp.parsing.IRFactory=var2768, r1=var255, com.google.javascript.jscomp.parsing.parser.LiteralToken=var3403, r0=var1862, r24=var2947, $z0=var1287, com.google.javascript.jscomp.parsing.parser.util.SourceRange=var1696, com.google.javascript.jscomp.parsing.parser.Token=var480, $r23=var790, $i21=var842, $z3=var797, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var244, $c0=var3939, $i27=var1943, $z4=var217, $c22=var2049, $i29=var878, $r22=var1342, $d10=var1197}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 2}
;stmts r1 := @this: com.google.javascript.jscomp.parsing.IRFactory;	r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.LiteralToken;	r24 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value>;	$z0 = virtualinvoke r24.<java.lang.String: boolean contains(java.lang.CharSequence)>("_");	if $z0 == 0 goto $r23 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: com.google.javascript.jscomp.parsing.parser.util.SourceRange location>;	$r23 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: com.google.javascript.jscomp.parsing.parser.util.SourceRange location>;	$i21 = virtualinvoke r24.<java.lang.String: int length()>();	if $i21 <= 0 goto $z3 = 0;	$z3 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z3);	$c0 = virtualinvoke r24.<java.lang.String: char charAt(int)>(0);	$i27 = (int) $c0;	if $i27 == 45 goto $z4 = 0;	$z4 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z4);	$c22 = virtualinvoke r24.<java.lang.String: char charAt(int)>(0);	$i29 = (int) $c22;	if $i29 != 46 goto $c1 = virtualinvoke r24.<java.lang.String: char charAt(int)>(0);	$r22 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>(r24) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("0\u0001");	$d10 = staticinvoke <java.lang.Double: double parseDouble(java.lang.String)>($r22);	return $d10
;block_num 7