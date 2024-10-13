(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3157 0)
(declare-sort var1066 0)
(declare-sort var2974 0)
(declare-sort var3706 0)
(declare-sort var2517 0)
(declare-sort var1830 0)
(declare-sort var2234 0)
(declare-sort var3864 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isStringLit/305832528 (var1066) Bool)
(declare-fun var2974_checkArgument/1735511034 (Bool) void)
(declare-fun var3706-init () var3706)
(declare-fun <init>/-325640736 (var3706) void)
(declare-fun getString/-897720134 (var1066) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun compiler/-772960979 (var3157) var2517)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var3864_make/233788289 (var1066 var1830 (Array Int String)) var3864)
(declare-fun report/-2002233305 (var2517 var3864) void)
(declare-const null-var3157 var3157)
(declare-const null-var1066 var1066)
(declare-const var2234-POLYMER_UNPARSABLE_STRING var1830)
(declare-const var1088 var3157) ; Statement: r4 := @this: com.google.javascript.jscomp.PolymerClassRewriter 
(assert (not (= var1088 null-var3157)))
(declare-const var3682 var1066) ; Statement: r12 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3682 null-var1066)))
(declare-const var2557 var1066) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2557 null-var1066)))
(assert true)
(define-const var2046 Bool (isStringLit/305832528 var2557)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isStringLit()>() 
;(assert (var2974_checkArgument/1735511034 var2046)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0) 

(declare-const var2046!1 Bool)
(define-const var630 var3706 var3706-init) ; Statement: $r84 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var630)) ; Statement: specialinvoke $r84.<java.util.ArrayList: void <init>()>() 

(declare-const var630!1 var3706)
(assert true)
(define-const var2527 String (getString/-897720134 var2557)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var622 String (trim/-847153721 var2527)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3505 Int (indexOf/-1037706067 var622 40)) ; Statement: i0 = virtualinvoke r3.<java.lang.String: int indexOf(int)>(40) 
(assert true)
(define-const var1505 Int (length/-134980193 var622)) ; Statement: $i1 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var2115 Int (- var1505 1)) ; Statement: $i2 = $i1 - 1 
(assert (and true (and (> (str.len var622) var2115) (<= 0 var2115))))
(define-const var802 Int (charAt/698050440 var622 var2115)) ; Statement: $c3 = virtualinvoke r3.<java.lang.String: char charAt(int)>($i2) 
(define-const var868 Int (cast-from-Int-to-Int var802)) ; Statement: $i14 = (int) $c3 
 ; Statement: if $i14 != 41 goto $r7 = r4.<com.google.javascript.jscomp.PolymerClassRewriter: com.google.javascript.jscomp.AbstractCompiler compiler> 
(assert (not (= var868 41))) ; Cond: $i14 != 41 
(define-const var52 var2517 (compiler/-772960979 var1088)) ; Statement: $r7 = r4.<com.google.javascript.jscomp.PolymerClassRewriter: com.google.javascript.jscomp.AbstractCompiler compiler> 
(define-const var2953 var1830 var2234-POLYMER_UNPARSABLE_STRING) ; Statement: $r6 = <com.google.javascript.jscomp.PolymerPassErrors: com.google.javascript.jscomp.DiagnosticType POLYMER_UNPARSABLE_STRING> 
(define-const var1904 (Array Int String) arr-String-init) ; Statement: $r5 = newarray (java.lang.String)[0] 
(define-const var132 var3864 (var3864_make/233788289 var2557 var2953 var1904)) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>(r0, $r6, $r5) 
(assert true)
;(assert (report/-2002233305 var52 var132)) ; Statement: virtualinvoke $r7.<com.google.javascript.jscomp.AbstractCompiler: void report(com.google.javascript.jscomp.JSError)>($r8) 

(declare-const var52!1 var2517)
(declare-const var132!1 var3864)
 ; Statement: return $r84 
(check-sat)
(get-model)
(get-unsat-core)
; {isStringLit/305832528=([com.google.javascript.rhino.Node], boolean), var2974_checkArgument/1735511034=([boolean], void), var3706-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), compiler/-772960979=([com.google.javascript.jscomp.PolymerClassRewriter], com.google.javascript.jscomp.AbstractCompiler), arr-String-init=([], java.lang.String[]), var3864_make/233788289=([com.google.javascript.rhino.Node, com.google.javascript.jscomp.DiagnosticType, java.lang.String[]], com.google.javascript.jscomp.JSError), report/-2002233305=([com.google.javascript.jscomp.AbstractCompiler, com.google.javascript.jscomp.JSError], void)}
; {var3157=com.google.javascript.jscomp.PolymerClassRewriter, var1088=r4, var1066=com.google.javascript.rhino.Node, var3682=r12, var2557=r0, var2046=$z0, var2974=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3706=java.util.ArrayList, var630=$r84, var2527=$r2, var622=r3, var3505=i0, var1505=$i1, var2115=$i2, var802=$c3, var868=$i14, var2517=com.google.javascript.jscomp.AbstractCompiler, var52=$r7, var1830=com.google.javascript.jscomp.DiagnosticType, var2234=com.google.javascript.jscomp.PolymerPassErrors, var2953=$r6, var1904=$r5, var3864=com.google.javascript.jscomp.JSError, var132=$r8}
; {com.google.javascript.jscomp.PolymerClassRewriter=var3157, r4=var1088, com.google.javascript.rhino.Node=var1066, r12=var3682, r0=var2557, $z0=var2046, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2974, java.util.ArrayList=var3706, $r84=var630, $r2=var2527, r3=var622, i0=var3505, $i1=var1505, $i2=var2115, $c3=var802, $i14=var868, com.google.javascript.jscomp.AbstractCompiler=var2517, $r7=var52, com.google.javascript.jscomp.DiagnosticType=var1830, com.google.javascript.jscomp.PolymerPassErrors=var2234, $r6=var2953, $r5=var1904, com.google.javascript.jscomp.JSError=var3864, $r8=var132}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.PolymerClassRewriter;	r12 := @parameter0: com.google.javascript.rhino.Node;	r0 := @parameter1: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isStringLit()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0);	$r84 = new java.util.ArrayList;	specialinvoke $r84.<java.util.ArrayList: void <init>()>();	$r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	i0 = virtualinvoke r3.<java.lang.String: int indexOf(int)>(40);	$i1 = virtualinvoke r3.<java.lang.String: int length()>();	$i2 = $i1 - 1;	$c3 = virtualinvoke r3.<java.lang.String: char charAt(int)>($i2);	$i14 = (int) $c3;	if $i14 != 41 goto $r7 = r4.<com.google.javascript.jscomp.PolymerClassRewriter: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r7 = r4.<com.google.javascript.jscomp.PolymerClassRewriter: com.google.javascript.jscomp.AbstractCompiler compiler>;	$r6 = <com.google.javascript.jscomp.PolymerPassErrors: com.google.javascript.jscomp.DiagnosticType POLYMER_UNPARSABLE_STRING>;	$r5 = newarray (java.lang.String)[0];	$r8 = staticinvoke <com.google.javascript.jscomp.JSError: com.google.javascript.jscomp.JSError make(com.google.javascript.rhino.Node,com.google.javascript.jscomp.DiagnosticType,java.lang.String[])>(r0, $r6, $r5);	virtualinvoke $r7.<com.google.javascript.jscomp.AbstractCompiler: void report(com.google.javascript.jscomp.JSError)>($r8);	return $r84
;block_num 2