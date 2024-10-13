(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3675 0)
(declare-sort var1116 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const var1116-ESCAPES (Array Int Int))
(declare-const var468 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var468 null-String)))
(declare-const var933 Int) ; Statement: c1 := @parameter1: char 
(assert (not (= var933 null-Int)))
(declare-const var2180 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2180 null-Bool)))
(assert true)
(define-const var2692 Int (length/-134980193 var468)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if c1 != 0 goto $i26 = (int) c1 
(assert (not (not (= var933 0)))) ; Negate: Cond: c1 != 0  
(define-const var3425 Int 0) ; Statement: b16 = 0 
 ; Statement: goto [?= $r16 = <freemarker.template.utility.StringUtil: char[] ESCAPES>] 
(assert true) ; Non Conditional
(define-const var3415 (Array Int Int) var1116-ESCAPES) ; Statement: $r16 = <freemarker.template.utility.StringUtil: char[] ESCAPES> 
(define-const var1986 Int (getLength-Arr-Int-1 var3415)) ; Statement: $i17 = lengthof $r16 
(define-const var2902 String null-String) ; Statement: r17 = null 
(define-const var605 Int 0) ; Statement: i18 = 0 
(assert true) ; Non Conditional
 ; Statement: if i18 >= i0 goto (branch) 
(assert (>= var605 var2692)) ; Cond: i18 >= i0 
 ; Statement: if r17 != null goto (branch) 
(assert (not (= var2902 null-String))) ; Cond: r17 != null 
 ; Statement: if z0 == 0 goto $r6 = virtualinvoke r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2180 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1545 String (toString/-2075883882 var2902)) ; Statement: $r6 = virtualinvoke r17.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), getLength-Arr-Int-1=([char[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var468=r0, var3675=null_type, var933=c1, var2180=z0, var2692=i0, var3425=b16, var1116=freemarker.template.utility.StringUtil, var3415=$r16, var1986=$i17, var2902=r17, var605=i18, var1545=$r6}
; {r0=var468, null_type=var3675, c1=var933, z0=var2180, i0=var2692, b16=var3425, freemarker.template.utility.StringUtil=var1116, $r16=var3415, $i17=var1986, r17=var2902, i18=var605, $r6=var1545}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	c1 := @parameter1: char;	z0 := @parameter2: boolean;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if c1 != 0 goto $i26 = (int) c1;	b16 = 0;	goto [?= $r16 = <freemarker.template.utility.StringUtil: char[] ESCAPES>];	$r16 = <freemarker.template.utility.StringUtil: char[] ESCAPES>;	$i17 = lengthof $r16;	r17 = null;	i18 = 0;	if i18 >= i0 goto (branch);	if r17 != null goto (branch);	if z0 == 0 goto $r6 = virtualinvoke r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r17.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 7