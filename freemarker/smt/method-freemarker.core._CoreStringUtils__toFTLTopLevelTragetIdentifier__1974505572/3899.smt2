(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var323 0)
(declare-sort var3848 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3848_backslashEscapeIdentifier/1717972786 (String) String)
(declare-const null-String String)
(declare-const var530 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var530 null-String)))
(define-const var1880 Int 0) ; Statement: b2 = 0 
(define-const var2960 Int 0) ; Statement: b6 = 0 
(define-const var574 Int 0) ; Statement: b5 = 0 
(define-const var1709 Int 0) ; Statement: b4 = 0 
(define-const var3435 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var881 Int (length/-134980193 var530)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i0 goto (branch) 
(assert (>= var3435 var881)) ; Cond: i3 >= $i0 
 ; Statement: lookupswitch(b6) {     case 0: goto return r0;     case 34: goto $r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String ftlQuote(java.lang.String)>(r0);     case 92: goto $r1 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String backslashEscapeIdentifier(java.lang.String)>(r0);     default: goto $r4 = new freemarker.core.BugException; } 
(assert (and (= var2960 92) (and (not (= var2960 34)) (and (not (= var2960 0)) true)))) ; Intersect: Cond: b6 == 92  and Intersect: Negate: Cond: b6 == 34   and Intersect: Negate: Cond: b6 == 0   and Non Conditional   
(define-const var2820 String (var3848_backslashEscapeIdentifier/1717972786 var530)) ; Statement: $r1 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String backslashEscapeIdentifier(java.lang.String)>(r0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var3848_backslashEscapeIdentifier/1717972786=([java.lang.String], java.lang.String)}
; {var530=r0, var323=null_type, var1880=b2, var2960=b6, var574=b5, var1709=b4, var3435=i3, var881=$i0, var3848=freemarker.core._CoreStringUtils, var2820=$r1}
; {r0=var530, null_type=var323, b2=var1880, b6=var2960, b5=var574, b4=var1709, i3=var3435, $i0=var881, freemarker.core._CoreStringUtils=var3848, $r1=var2820}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	b2 = 0;	b6 = 0;	b5 = 0;	b4 = 0;	i3 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i3 >= $i0 goto (branch);	lookupswitch(b6) {     case 0: goto return r0;     case 34: goto $r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String ftlQuote(java.lang.String)>(r0);     case 92: goto $r1 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String backslashEscapeIdentifier(java.lang.String)>(r0);     default: goto $r4 = new freemarker.core.BugException; };	$r1 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String backslashEscapeIdentifier(java.lang.String)>(r0);	return $r1
;block_num 4