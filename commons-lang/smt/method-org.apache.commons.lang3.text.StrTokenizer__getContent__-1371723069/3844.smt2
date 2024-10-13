(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1005 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun chars/1491220258 (var1005) (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var1005 var1005)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3655 var1005) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrTokenizer 
(assert (not (= var3655 null-var1005)))
(define-const var1616 (Array Int Int) (chars/1491220258 var3655)) ; Statement: $r1 = r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.String 
(assert (not (= var1616 null-__Array__Int__Int__))) ; Cond: $r1 != null 
(define-const var546 String String-init) ; Statement: $r2 = new java.lang.String 
(define-const var270 (Array Int Int) (chars/1491220258 var3655)) ; Statement: $r3 = r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars> 
(assert true)
;(assert (<init>/-915723298 var546 var270)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[])>($r3) 

(declare-const var546!1 String)
(declare-const var270!1 (Array Int Int))
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {chars/1491220258=([org.apache.commons.lang3.text.StrTokenizer], char[]), String-init=([], java.lang.String), <init>/-915723298=([java.lang.String, char[]], void)}
; {var1005=org.apache.commons.lang3.text.StrTokenizer, var3655=r0, var1616=$r1, var546=$r2, var270=$r3}
; {org.apache.commons.lang3.text.StrTokenizer=var1005, r0=var3655, $r1=var1616, $r2=var546, $r3=var270}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrTokenizer;	$r1 = r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars>;	if $r1 != null goto $r2 = new java.lang.String;	$r2 = new java.lang.String;	$r3 = r0.<org.apache.commons.lang3.text.StrTokenizer: char[] chars>;	specialinvoke $r2.<java.lang.String: void <init>(char[])>($r3);	return $r2
;block_num 2