(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var741 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var2802 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2802 null-String)))
(declare-const var3241 String) ; Statement: r16 := @parameter1: java.lang.String 
(assert (not (= var3241 null-String)))
 ; Statement: if r16 != null goto $i11 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var3241 null-String))) ; Cond: r16 != null 
(assert true)
(define-const var1099 Int (length/-134980193 var2802)) ; Statement: $i11 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var3897 Bool (startsWith/-1785782452 var2802 "is")) ; Statement: $z11 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("is") 
(assert true)
(define-const var2240 Bool (startsWith/-1785782452 var2802 "get")) ; Statement: $z12 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("get") 
 ; Statement: if $z11 == 0 goto (branch) 
(assert (not (= (ite var3897 1 0) 0))) ; Negate: Cond: $z11 == 0  
(define-const var2626 Int 2) ; Statement: b12 = 2 
(define-const var1787 Int 2) ; Statement: b31 = 2 
(define-const var159 Int 2) ; Statement: b30 = 2 
(define-const var205 Int 2) ; Statement: b29 = 2 
(define-const var1472 Int 2) ; Statement: b28 = 2 
(define-const var2647 Int 2) ; Statement: b27 = 2 
(define-const var2180 Int 2) ; Statement: b26 = 2 
(define-const var3212 Int 2) ; Statement: b25 = 2 
(define-const var2191 Int 2) ; Statement: b24 = 2 
(define-const var908 Int 2) ; Statement: b23 = 2 
(define-const var1666 Int 2) ; Statement: b22 = 2 
(define-const var79 Int 2) ; Statement: b21 = 2 
(define-const var1520 Int 2) ; Statement: b20 = 2 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $i11 != b24 goto b13 = -1 
(assert (not (not (= var1099 var2191)))) ; Negate: Cond: $i11 != b24  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2802=r0, var741=null_type, var3241=r16, var1099=$i11, var3897=$z11, var2240=$z12, var2626=b12, var1787=b31, var159=b30, var205=b29, var1472=b28, var2647=b27, var2180=b26, var3212=b25, var2191=b24, var908=b23, var1666=b22, var79=b21, var1520=b20}
; {r0=var2802, null_type=var741, r16=var3241, $i11=var1099, $z11=var3897, $z12=var2240, b12=var2626, b31=var1787, b30=var159, b29=var205, b28=var1472, b27=var2647, b26=var2180, b25=var3212, b24=var2191, b23=var908, b22=var1666, b21=var79, b20=var1520}
;seq <java.lang.String: int length()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 2}
;stmts r0 := @parameter0: java.lang.String;	r16 := @parameter1: java.lang.String;	if r16 != null goto $i11 = virtualinvoke r0.<java.lang.String: int length()>();	$i11 = virtualinvoke r0.<java.lang.String: int length()>();	$z11 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("is");	$z12 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("get");	if $z11 == 0 goto (branch);	b12 = 2;	b31 = 2;	b30 = 2;	b29 = 2;	b28 = 2;	b27 = 2;	b26 = 2;	b25 = 2;	b24 = 2;	b23 = 2;	b22 = 2;	b21 = 2;	b20 = 2;	goto [?= (branch)];	if $i11 != b24 goto b13 = -1;	return r0
;block_num 5