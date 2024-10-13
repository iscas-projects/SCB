(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1362 0)
(declare-sort var3790 0)
(declare-sort var1399 0)
(declare-sort var2075 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3790_checkArgument/-972017905 (Bool var1399) void)
(declare-fun cast-from-String-to-var1399 (String) var1399)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var2075_on/1427090730 (Int) var2075)
(declare-const null-String String)
(declare-const var3009 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3009 null-String)))
(assert true)
(define-const var761 Int (length/-134980193 var3009)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 0 goto $z0 = 0 
(assert (= var761 0)) ; Cond: $i0 == 0 
(define-const var1932 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
;(assert (var3790_checkArgument/-972017905 var1932 (cast-from-String-to-var1399 "The separator may not be the empty string."))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, "The separator may not be the empty string.") 

(declare-const var1932!1 Bool)
(declare-const var1654 String)
(assert true)
(define-const var23 Int (length/-134980193 var3009)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i1 != 1 goto $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter 
(assert (not (not (= var23 1)))) ; Negate: Cond: $i1 != 1  
(assert (and true (and (> (str.len var3009) 0) (<= 0 0))))
(define-const var352 Int (charAt/698050440 var3009 0)) ; Statement: $c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var1265 var2075 (var2075_on/1427090730 var352)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter on(char)>($c2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3790_checkArgument/-972017905=([boolean, java.lang.Object], void), cast-from-String-to-var1399=([java.lang.String], java.lang.Object), charAt/698050440=([java.lang.String, int], char), var2075_on/1427090730=([char], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter)}
; {var3009=r0, var1362=null_type, var761=$i0, var1932=$z0, var3790=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1399=java.lang.Object, var1654="The separator may not be the empty string.", var23=$i1, var352=$c2, var2075=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, var1265=$r3}
; {r0=var3009, null_type=var1362, $i0=var761, $z0=var1932, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3790, java.lang.Object=var1399, "The separator may not be the empty string."=var1654, $i1=var23, $c2=var352, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter=var2075, $r3=var1265}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 0 goto $z0 = 0;	$z0 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, "The separator may not be the empty string.");	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if $i1 != 1 goto $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter on(char)>($c2);	return $r3
;block_num 4