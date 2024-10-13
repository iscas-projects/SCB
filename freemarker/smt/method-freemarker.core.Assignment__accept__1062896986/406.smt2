(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1680 0)
(declare-sort var3129 0)
(declare-sort var2494 0)
(declare-sort var2960 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namespaceExp/-630709164 (var1680) var2494)
(declare-fun scope/-630709164 (var1680) Int)
(declare-fun var2960-init () var2960)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1326397480 (var2960 String) void)
(declare-const null-var1680 var1680)
(declare-const null-var3129 var3129)
(declare-const null-var2494 var2494)
(declare-const var1763 var1680) ; Statement: r0 := @this: freemarker.core.Assignment 
(assert (not (= var1763 null-var1680)))
(declare-const var1749 var3129) ; Statement: r2 := @parameter0: freemarker.core.Environment 
(assert (not (= var1749 null-var3129)))
(define-const var3801 var2494 (namespaceExp/-630709164 var1763)) ; Statement: $r1 = r0.<freemarker.core.Assignment: freemarker.core.Expression namespaceExp> 
 ; Statement: if $r1 != null goto $r3 = r0.<freemarker.core.Assignment: freemarker.core.Expression namespaceExp> 
(assert (not (not (= var3801 null-var2494)))) ; Negate: Cond: $r1 != null  
(define-const var3363 Int (scope/-630709164 var1763)) ; Statement: $i6 = r0.<freemarker.core.Assignment: int scope> 
 ; Statement: tableswitch($i6) {     case 1: goto r43 = virtualinvoke r2.<freemarker.core.Environment: freemarker.core.Environment$Namespace getCurrentNamespace()>();     case 2: goto r43 = null;     case 3: goto r43 = virtualinvoke r2.<freemarker.core.Environment: freemarker.core.Environment$Namespace getGlobalNamespace()>();     default: goto $r35 = new freemarker.core.BugException; } 
(assert (and (not (= var3363 3)) (and (not (= var3363 2)) (and (not (= var3363 1)) true)))) ; Intersect: Negate: Cond: $i6 == 3   and Intersect: Negate: Cond: $i6 == 2   and Intersect: Negate: Cond: $i6 == 1   and Non Conditional   
(define-const var2552 var2960 var2960-init) ; Statement: $r35 = new freemarker.core.BugException 
(define-const var862 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var862)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var862!1 String)
(assert (= var862!1 ""))
(assert true)
(define-const var958 String (append/672562846 var862!1 "Unexpected scope type: ")) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected scope type: ") 
(declare-const var862!2 String)
(assert (= var862!2 (str.++ var862!1 "Unexpected scope type: ")))
(define-const var1552 Int (scope/-630709164 var1763)) ; Statement: $i7 = r0.<freemarker.core.Assignment: int scope> 
(assert true)
(define-const var2938 String (append/-1001720160 var958 var1552)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7) 
(declare-const var958!1 String)
(assert (str.prefixof var958 var958!1))
(assert true)
(define-const var511 String (toString/-2075883882 var2938)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1326397480 var2552 var511)) ; Statement: specialinvoke $r35.<freemarker.core.BugException: void <init>(java.lang.String)>($r39) 

(declare-const var2552!1 var2960)
(declare-const var511!1 String)
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {namespaceExp/-630709164=([freemarker.core.Assignment], freemarker.core.Expression), scope/-630709164=([freemarker.core.Assignment], int), var2960-init=([], freemarker.core.BugException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1326397480=([freemarker.core.BugException, java.lang.String], void)}
; {var1680=freemarker.core.Assignment, var1763=r0, var3129=freemarker.core.Environment, var1749=r2, var2494=freemarker.core.Expression, var3801=$r1, var3363=$i6, var2960=freemarker.core.BugException, var2552=$r35, var862=$r36, var958=$r37, var1552=$i7, var2938=$r38, var511=$r39}
; {freemarker.core.Assignment=var1680, r0=var1763, freemarker.core.Environment=var3129, r2=var1749, freemarker.core.Expression=var2494, $r1=var3801, $i6=var3363, freemarker.core.BugException=var2960, $r35=var2552, $r36=var862, $r37=var958, $i7=var1552, $r38=var2938, $r39=var511}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.Assignment;	r2 := @parameter0: freemarker.core.Environment;	$r1 = r0.<freemarker.core.Assignment: freemarker.core.Expression namespaceExp>;	if $r1 != null goto $r3 = r0.<freemarker.core.Assignment: freemarker.core.Expression namespaceExp>;	$i6 = r0.<freemarker.core.Assignment: int scope>;	tableswitch($i6) {     case 1: goto r43 = virtualinvoke r2.<freemarker.core.Environment: freemarker.core.Environment$Namespace getCurrentNamespace()>();     case 2: goto r43 = null;     case 3: goto r43 = virtualinvoke r2.<freemarker.core.Environment: freemarker.core.Environment$Namespace getGlobalNamespace()>();     default: goto $r35 = new freemarker.core.BugException; };	$r35 = new freemarker.core.BugException;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected scope type: ");	$i7 = r0.<freemarker.core.Assignment: int scope>;	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7);	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r35.<freemarker.core.BugException: void <init>(java.lang.String)>($r39);	throw $r35
;block_num 3