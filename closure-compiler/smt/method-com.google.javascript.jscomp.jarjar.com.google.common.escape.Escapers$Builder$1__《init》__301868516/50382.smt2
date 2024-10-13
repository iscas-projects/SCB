(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1748 0)
(declare-sort var2371 0)
(declare-sort var183 0)
(declare-sort var80 0)
(declare-sort var3901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-40459481 (var1748) var2371)
(declare-fun <init>/376704069 (var80 var183 Int Int) void)
(declare-fun cast-from-var1748-to-var80 (var1748) var80)
(declare-fun var2371_access$100/-424430225 (var2371) String)
(declare-fun replacementChars/-40459481 (var1748) (Array Int Int))
(declare-const null-var1748 var1748)
(declare-const null-var2371 var2371)
(declare-const null-var183 var183)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1343 var1748) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1 
(assert (not (= var1343 null-var1748)))
(declare-const var228 var2371) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder 
(assert (not (= var228 null-var2371)))
(declare-const var1201 var183) ; Statement: r2 := @parameter1: java.util.Map 
(assert (not (= var1201 null-var183)))
(declare-const var3028 Int) ; Statement: c0 := @parameter2: char 
(assert (not (= var3028 null-Int)))
(declare-const var1305 Int) ; Statement: c1 := @parameter3: char 
(assert (not (= var1305 null-Int)))
(declare-const var1343!1 var1748)
(assert (not (= var1343!1 null-var1748)))
(assert (= (this$0/-40459481 var1343!1) var228)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder this$0> = r1 
(assert true)
;(assert (<init>/376704069 (cast-from-var1748-to-var80 var1343!1) var1201 var3028 var1305)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedCharEscaper: void <init>(java.util.Map,char,char)>(r2, c0, c1) 

(declare-const var1343!2 var1748)
(declare-const var1201!1 var183)
(declare-const var3028!1 Int)
(declare-const var1305!1 Int)
(define-const var1609 var2371 (this$0/-40459481 var1343!2)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder this$0> 
(define-const var3767 String (var2371_access$100/-424430225 var1609)) ; Statement: $r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder: java.lang.String access$100(com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder)>($r3) 
 ; Statement: if $r4 == null goto $r7 = null 
(assert (= var3767 null-String)) ; Cond: $r4 == null 
(define-const var1948 (Array Int Int) null-__Array__Int__Int__) ; Statement: $r7 = null 
(assert true) ; Non Conditional
(declare-const var1343!3 var1748)
(assert (not (= var1343!3 null-var1748)))
(assert (= (replacementChars/-40459481 var1343!3) var1948)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1: char[] replacementChars> = $r7 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-40459481=([com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1], com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder), <init>/376704069=([com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedCharEscaper, java.util.Map, char, char], void), cast-from-var1748-to-var80=([com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1], com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedCharEscaper), var2371_access$100/-424430225=([com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder], java.lang.String), replacementChars/-40459481=([com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1], char[])}
; {var1748=com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1, var1343=r0, var2371=com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder, var228=r1, var183=java.util.Map, var1201=r2, var3028=c0, var1305=c1, var80=com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedCharEscaper, var1609=$r3, var3767=$r4, var3901=null_type, var1948=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1=var1748, r0=var1343, com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder=var2371, r1=var228, java.util.Map=var183, r2=var1201, c0=var3028, c1=var1305, com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedCharEscaper=var80, $r3=var1609, $r4=var3767, null_type=var3901, $r7=var1948}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder;	r2 := @parameter1: java.util.Map;	c0 := @parameter2: char;	c1 := @parameter3: char;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder this$0> = r1;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.ArrayBasedCharEscaper: void <init>(java.util.Map,char,char)>(r2, c0, c1);	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1: com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder this$0>;	$r4 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder: java.lang.String access$100(com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder)>($r3);	if $r4 == null goto $r7 = null;	$r7 = null;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.escape.Escapers$Builder$1: char[] replacementChars> = $r7;	return
;block_num 3