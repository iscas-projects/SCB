(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1567 0)
(declare-sort var2155 0)
(declare-sort var2268 0)
(declare-sort var1095 0)
(declare-sort var3183 0)
(declare-sort var3494 0)
(declare-sort var3656 0)
(declare-sort var2542 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1095-init () var1095)
(declare-fun <init>/-325640736 (var1095) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun compiler/-772960979 (var1567) var3183)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var2542_make/233788289 (var2268 var3494 (Array Int String)) var2542)
(declare-fun report/-2002233305 (var3183 var2542) void)
(declare-const null-var1567 var1567)
(declare-const null-String String)
(declare-const null-var2268 var2268)
(declare-const var3656-POLYMER_UNPARSABLE_STRING var3494)
(declare-const var472 var1567) ; Statement: r3 := @this: com.google.javascript.jscomp.PolymerClassRewriter 
(assert (not (= var472 null-var1567)))
(declare-const var818 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var818 null-String)))
(declare-const var3167 var2268) ; Statement: r4 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3167 null-var2268)))
(define-const var2833 var1095 var1095-init) ; Statement: $r11 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2833)) ; Statement: specialinvoke $r11.<java.util.ArrayList: void <init>()>() 

(declare-const var2833!1 var1095)
(define-const var3850 Int 44) ; Statement: c6 = 44 
(define-const var2387 String "") ; Statement: r10 = "" 
(define-const var2900 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2672 Int (length/-134980193 var818)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i7 >= $i0 goto (branch) 
(assert (>= var2900 var2672)) ; Cond: i7 >= $i0 
 ; Statement: if c6 == 44 goto $i1 = virtualinvoke r10.<java.lang.String: int length()>() 
(assert (not (= var3850 44))) ; Negate: Cond: c6 == 44  
(define-const var3911 var3183 (compiler/-772960979 var472)) ; Statement: $r7 = r3.<com.google.javascript.jscomp.PolymerClassRewriter: com.google.javascript.jscomp.AbstractCompiler compiler> 
(define-const var3962 var3494 var3656-POLYMER_UNPARSABLE_STRING) ; Statement: $r6 = <com.google.javascript.jscomp.PolymerPassErrors: com.google.javascript.jscomp.DiagnosticType POLYMER_UNPARSABLE_STRING> 
(define-const var941 (Array Int String) arr-String-init) ; Statement: $r5 = newarray (java.lang.String)[0] 
(define-const var3686 var2542 (var2542_make/233788289 var3167 var3962 var941)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>(r4, $r6, $r5) 
(assert true)
;(assert (report/-2002233305 var3911 var3686)) ; Statement: virtualinvoke $r7.<com.google.javascript.jscomp.AbstractCompiler: void report(com.google.javascript.jscomp.JSError)>($r8) 

(declare-const var3911!1 var3183)
(declare-const var3686!1 var2542)
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1095-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), length/-134980193=([java.lang.String], int), compiler/-772960979=([com.google.javascript.jscomp.PolymerClassRewriter], com.google.javascript.jscomp.AbstractCompiler), arr-String-init=([], java.lang.String[]), var2542_make/233788289=([com.google.javascript.rhino.Node, com.google.javascript.jscomp.DiagnosticType, java.lang.String[]], com.google.javascript.jscomp.JSError), report/-2002233305=([com.google.javascript.jscomp.AbstractCompiler, com.google.javascript.jscomp.JSError], void)}
; {var1567=com.google.javascript.jscomp.PolymerClassRewriter, var472=r3, var818=r1, var2155=null_type, var2268=com.google.javascript.rhino.Node, var3167=r4, var1095=java.util.ArrayList, var2833=$r11, var3850=c6, var2387=r10, var2900=i7, var2672=$i0, var3183=com.google.javascript.jscomp.AbstractCompiler, var3911=$r7, var3494=com.google.javascript.jscomp.DiagnosticType, var3656=com.google.javascript.jscomp.PolymerPassErrors, var3962=$r6, var941=$r5, var2542=com.google.javascript.jscomp.JSError, var3686=$r8}
; {com.google.javascript.jscomp.PolymerClassRewriter=var1567, r3=var472, r1=var818, null_type=var2155, com.google.javascript.rhino.Node=var2268, r4=var3167, java.util.ArrayList=var1095, $r11=var2833, c6=var3850, r10=var2387, i7=var2900, $i0=var2672, com.google.javascript.jscomp.AbstractCompiler=var3183, $r7=var3911, com.google.javascript.jscomp.DiagnosticType=var3494, com.google.javascript.jscomp.PolymerPassErrors=var3656, $r6=var3962, $r5=var941, com.google.javascript.jscomp.JSError=var2542, $r8=var3686}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.PolymerClassRewriter;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: com.google.javascript.rhino.Node;	$r11 = new java.util.ArrayList;	specialinvoke $r11.<java.util.ArrayList: void <init>()>();	c6 = 44;	r10 = "";	i7 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i7 >= $i0 goto (branch);	if c6 == 44 goto $i1 = virtualinvoke r10.<java.lang.String: int length()>();	$r7 = r3.<com.google.javascript.jscomp.PolymerClassRewriter: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r6 = <com.google.javascript.jscomp.PolymerPassErrors: com.google.javascript.jscomp.DiagnosticType POLYMER_UNPARSABLE_STRING>;	$r5 = newarray (java.lang.String)[0];	$r8 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>(r4, $r6, $r5);	virtualinvoke $r7.<com.google.javascript.jscomp.AbstractCompiler: void report(com.google.javascript.jscomp.JSError)>($r8);	return $r11
;block_num 4