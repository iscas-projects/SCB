(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3837 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3837 null-String)))
(declare-const var2135 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2135 null-String)))
 ; Statement: if r0 != null goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(assert (not (= var2135 null-String))) ; Cond: r0 != null 
(assert true)
;(assert (append/672562846 var3837 "\u0022")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3837!1 String)
(assert (= var3837!1 (str.++ var3837 "\u0022")))
(define-const var1450 Int 0) ; Statement: i2 = 0 
 ; Statement: goto [?= $i0 = virtualinvoke r0.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2236 Int (length/-134980193 var2135)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i2 < $i0 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i2) 
(assert (not (< var1450 var2236))) ; Negate: Cond: i2 < $i0  
(assert true)
;(assert (append/672562846 var3837!1 "\u0022")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3837!2 String)
(assert (= var3837!2 (str.++ var3837!1 "\u0022")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-134980193=([java.lang.String], int)}
; {var3837=r1, var2135=r0, var2811=null_type, var1450=i2, var2236=$i0}
; {r1=var3837, r0=var2135, null_type=var2811, i2=var1450, $i0=var2236}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: int length()>": 1}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.String;	if r0 != null goto virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	i2 = 0;	goto [?= $i0 = virtualinvoke r0.<java.lang.String: int length()>()];	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i2 < $i0 goto $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(i2);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	return
;block_num 4