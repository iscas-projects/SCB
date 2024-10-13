(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var332 0)
(declare-sort var2878 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasMore/-358308156 (var332) Bool)
(declare-fun var2878_checkState/1431124798 (Bool) void)
(declare-fun input/-1066869516 (var332) String)
(declare-fun position/-1066869516 (var332) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var332 var332)
(declare-const var876 var332) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer 
(assert (not (= var876 null-var332)))
(assert true)
(define-const var3774 Bool (hasMore/-358308156 var876)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: boolean hasMore()>() 
;(assert (var2878_checkState/1431124798 var3774)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var3774!1 Bool)
(define-const var679 String (input/-1066869516 var876)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: java.lang.String input> 
(define-const var3994 Int (position/-1066869516 var876)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: int position> 
(assert (and true (and (> (str.len var679) var3994) (<= 0 var3994))))
(define-const var365 Int (charAt/698050440 var679 var3994)) ; Statement: $c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0) 
 ; Statement: return $c1 
(check-sat)
(get-model)
(get-unsat-core)
; {hasMore/-358308156=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer], boolean), var2878_checkState/1431124798=([boolean], void), input/-1066869516=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer], java.lang.String), position/-1066869516=([com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer], int), charAt/698050440=([java.lang.String, int], char)}
; {var332=com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer, var876=r0, var3774=$z0, var2878=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var679=$r1, var3994=$i0, var365=$c1}
; {com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer=var332, r0=var876, $z0=var3774, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2878, $r1=var679, $i0=var3994, $c1=var365}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: boolean hasMore()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: java.lang.String input>;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.net.MediaType$Tokenizer: int position>;	$c1 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	return $c1
;block_num 1