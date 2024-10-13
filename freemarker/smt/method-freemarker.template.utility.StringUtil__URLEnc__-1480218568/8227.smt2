(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3933 0)
(declare-sort var1546 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var1546_safeInURL/-1109932563 (Int Bool) Bool)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2519 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2519 null-String)))
(declare-const var3981 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var3981 null-String)))
(declare-const var3344 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3344 null-Bool)))
(assert true)
(define-const var1181 Int (length/-134980193 var2519)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2141 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
 ; Statement: if i17 >= i0 goto (branch) 
(assert (not (>= var2141 var1181))) ; Negate: Cond: i17 >= i0  
(assert (and true (and (> (str.len var2519) var2141) (<= 0 var2141))))
(define-const var2958 Int (charAt/698050440 var2519 var2141)) ; Statement: c18 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i17) 
(define-const var3194 Bool (var1546_safeInURL/-1109932563 var2958 var3344)) ; Statement: $z2 = staticinvoke <freemarker.template.utility.StringUtil: boolean safeInURL(char,boolean)>(c18, z0) 
 ; Statement: if $z2 != 0 goto i17 = i17 + 1 
(assert (not (not (= (ite var3194 1 0) 0)))) ; Negate: Cond: $z2 != 0  
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i17 != i0 goto $r9 = new java.lang.StringBuilder 
(assert (not (not (= var2141 var1181)))) ; Negate: Cond: i17 != i0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var1546_safeInURL/-1109932563=([char, boolean], boolean)}
; {var2519=r0, var3933=null_type, var3981=r4, var3344=z0, var1181=i0, var2141=i17, var2958=c18, var1546=freemarker.template.utility.StringUtil, var3194=$z2}
; {r0=var2519, null_type=var3933, r4=var3981, z0=var3344, i0=var1181, i17=var2141, c18=var2958, freemarker.template.utility.StringUtil=var1546, $z2=var3194}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i17 = 0;	if i17 >= i0 goto (branch);	c18 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i17);	$z2 = staticinvoke <freemarker.template.utility.StringUtil: boolean safeInURL(char,boolean)>(c18, z0);	if $z2 != 0 goto i17 = i17 + 1;	goto [?= (branch)];	if i17 != i0 goto $r9 = new java.lang.StringBuilder;	return r0
;block_num 6