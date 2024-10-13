(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var849 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var849 null-String)))
(define-const var427 Int 0) ; Statement: b2 = 0 
(define-const var2137 Int 0) ; Statement: b6 = 0 
(define-const var2119 Int 0) ; Statement: b5 = 0 
(define-const var1251 Int 0) ; Statement: b4 = 0 
(define-const var2714 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var414 Int (length/-134980193 var849)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i0 goto (branch) 
(assert (>= var2714 var414)) ; Cond: i3 >= $i0 
 ; Statement: lookupswitch(b6) {     case 0: goto return r0;     case 34: goto $r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String ftlQuote(java.lang.String)>(r0);     case 92: goto $r1 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String backslashEscapeIdentifier(java.lang.String)>(r0);     default: goto $r4 = new freemarker.core.BugException; } 
(assert (and (= var2137 0) true)) ; Intersect: Cond: b6 == 0  and Non Conditional 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var849=r0, var633=null_type, var427=b2, var2137=b6, var2119=b5, var1251=b4, var2714=i3, var414=$i0}
; {r0=var849, null_type=var633, b2=var427, b6=var2137, b5=var2119, b4=var1251, i3=var2714, $i0=var414}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	b2 = 0;	b6 = 0;	b5 = 0;	b4 = 0;	i3 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i3 >= $i0 goto (branch);	lookupswitch(b6) {     case 0: goto return r0;     case 34: goto $r2 = staticinvoke <freemarker.template.utility.StringUtil: java.lang.String ftlQuote(java.lang.String)>(r0);     case 92: goto $r1 = staticinvoke <freemarker.core._CoreStringUtils: java.lang.String backslashEscapeIdentifier(java.lang.String)>(r0);     default: goto $r4 = new freemarker.core.BugException; };	return r0
;block_num 4