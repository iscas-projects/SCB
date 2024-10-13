(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var337 0)
(declare-sort var3487 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3487 var3487)
(declare-const var820 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var820 null-String)))
(declare-const var3502 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3502 null-String)))
(declare-const var3615 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3615 null-Bool)))
(declare-const var1326 var3487) ; Statement: r2 := @parameter3: java.nio.charset.CharsetEncoder 
(assert (not (= var1326 null-var3487)))
(assert true)
(define-const var3570 Int (length/-134980193 var3502)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
;(assert (append/-1166366385 var820 39)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var820!1 String)
(assert (str.prefixof var820 var820!1))
(define-const var3935 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(assert (>= var3935 var3570)) ; Cond: i3 >= i0 
(assert true)
;(assert (append/-1166366385 var820!1 39)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var820!2 String)
(assert (str.prefixof var820!1 var820!2))
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var820=r1, var3502=r0, var337=null_type, var3615=z0, var3487=java.nio.charset.CharsetEncoder, var1326=r2, var3570=i0, var3935=i3}
; {r1=var820, r0=var3502, null_type=var337, z0=var3615, java.nio.charset.CharsetEncoder=var3487, r2=var1326, i0=var3570, i3=var3935}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.String;	z0 := @parameter2: boolean;	r2 := @parameter3: java.nio.charset.CharsetEncoder;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	i3 = 0;	if i3 >= i0 goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	return r1
;block_num 3