(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var560 0)
(declare-sort var923 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var923-init () var923)
(declare-fun <init>/1546543875 (var923) void)
(declare-const null-String String)
(declare-const var1363 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1363 null-String)))
(define-const var3015 Int 0) ; Statement: b2 = 0 
(define-const var212 Int 0) ; Statement: b6 = 0 
(define-const var733 Int 0) ; Statement: b5 = 0 
(define-const var3580 Int 0) ; Statement: b4 = 0 
(define-const var898 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1637 Int (length/-134980193 var1363)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i0 goto (branch) 
(assert (>= var898 var1637)) ; Cond: i3 >= $i0 
 ; Statement: lookupswitch(b6) {     case 0: goto return r0;     case 34: goto $r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String ftlQuote(java.lang.String)>(r0);     case 92: goto $r1 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String backslashEscapeIdentifier(java.lang.String)>(r0);     default: goto $r4 = new freemarker.core.BugException; } 
(assert (and (not (= var212 92)) (and (not (= var212 34)) (and (not (= var212 0)) true)))) ; Intersect: Negate: Cond: b6 == 92   and Intersect: Negate: Cond: b6 == 34   and Intersect: Negate: Cond: b6 == 0   and Non Conditional   
(define-const var2139 var923 var923-init) ; Statement: $r4 = new freemarker.core.BugException 
(assert true)
;(assert (<init>/1546543875 var2139)) ; Statement: specialinvoke $r4.<freemarker.core.BugException: void <init>()>() 

(declare-const var2139!1 var923)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var923-init=([], freemarker.core.BugException), <init>/1546543875=([freemarker.core.BugException], void)}
; {var1363=r0, var560=null_type, var3015=b2, var212=b6, var733=b5, var3580=b4, var898=i3, var1637=$i0, var923=freemarker.core.BugException, var2139=$r4}
; {r0=var1363, null_type=var560, b2=var3015, b6=var212, b5=var733, b4=var3580, i3=var898, $i0=var1637, freemarker.core.BugException=var923, $r4=var2139}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	b2 = 0;	b6 = 0;	b5 = 0;	b4 = 0;	i3 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i3 >= $i0 goto (branch);	lookupswitch(b6) {     case 0: goto return r0;     case 34: goto $r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String ftlQuote(java.lang.String)>(r0);     case 92: goto $r1 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String backslashEscapeIdentifier(java.lang.String)>(r0);     default: goto $r4 = new freemarker.core.BugException; };	$r4 = new freemarker.core.BugException;	specialinvoke $r4.<freemarker.core.BugException: void <init>()>();	throw $r4
;block_num 4