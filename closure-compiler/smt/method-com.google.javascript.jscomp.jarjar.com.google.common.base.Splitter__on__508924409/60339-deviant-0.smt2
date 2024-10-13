(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3573 0)
(declare-sort var3679 0)
(declare-sort var1912 0)
(declare-sort var885 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3679_checkArgument/-972017905 (Bool var1912) void)
(declare-fun cast-from-String-to-var1912 (String) var1912)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var885_on/1427090730 (Int) var885)
(declare-const null-String String)
(declare-const var3316 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3316 null-String)))
(assert true)
(define-const var1283 Int (length/-134980193 var3316)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 0 goto $z0 = 0 
(assert (not (= var1283 0))) ; Negate: Cond: $i0 == 0  
(define-const var3798 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, "The separator may not be the empty string.")] 
(assert true) ; Non Conditional
;(assert (var3679_checkArgument/-972017905 var3798 (cast-from-String-to-var1912 "The separator may not be the empty string."))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, "The separator may not be the empty string.") 

(declare-const var3798!1 Bool)
(declare-const var2801 String)
(assert true)
(define-const var763 Int (length/-134980193 var3316)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i1 != 1 goto $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter 
(assert (not (not (= var763 1)))) ; Negate: Cond: $i1 != 1  
(assert (not (and true (and (> (str.len var3316) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3679_checkArgument/-972017905=([boolean, java.lang.Object], void), cast-from-String-to-var1912=([java.lang.String], java.lang.Object), charAt/698050440=([java.lang.String, int], char), var885_on/1427090730=([char], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter)}
; {var3316=r0, var3573=null_type, var1283=$i0, var3798=$z0, var3679=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1912=java.lang.Object, var2801="The separator may not be the empty string.", var763=$i1, var2388=$c2, var885=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter, var1321=$r3}
; {r0=var3316, null_type=var3573, $i0=var1283, $z0=var3798, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3679, java.lang.Object=var1912, "The separator may not be the empty string."=var2801, $i1=var763, $c2=var2388, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter=var885, $r3=var1321}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 0 goto $z0 = 0;	$z0 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, "The separator may not be the empty string.")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, "The separator may not be the empty string.");	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if $i1 != 1 goto $r1 = new com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter;	$c2 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter on(char)>($c2);	return $r3
;block_num 4