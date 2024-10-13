(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3949 0)
(declare-sort var3625 0)
(declare-sort var2873 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3625_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2873-EMPTY_STRING_ARRAY (Array Int String))
(declare-const var3262 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3262 null-String)))
(declare-const var3671 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3671 null-String)))
(declare-const var1920 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1920 null-String)))
 ; Statement: if r0 == null goto return null 
(assert (not (= var3262 null-String))) ; Negate: Cond: r0 == null  
(define-const var2717 Bool (var3625_isEmpty/1595667738 (cast-from-String-to-String var3671))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z0 != 0 goto return null 
(assert (not (not (= (ite var2717 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3661 Bool (var3625_isEmpty/1595667738 (cast-from-String-to-String var1920))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r2) 
 ; Statement: if $z1 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (= (ite var3661 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3636 Int (length/-134980193 var3262)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto i1 = virtualinvoke r2.<java.lang.String: int length()>() 
(assert (not (not (= var3636 0)))) ; Negate: Cond: i0 != 0  
(define-const var992 (Array Int String) var2873-EMPTY_STRING_ARRAY) ; Statement: $r8 = <org.apache.commons.lang3.ArrayUtils: java.lang.String[] EMPTY_STRING_ARRAY> 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3625_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int)}
; {var3262=r0, var3949=null_type, var3671=r1, var1920=r2, var3625=org.apache.commons.lang3.StringUtils, var2717=$z0, var3661=$z1, var3636=i0, var2873=org.apache.commons.lang3.ArrayUtils, var992=$r8}
; {r0=var3262, null_type=var3949, r1=var3671, r2=var1920, org.apache.commons.lang3.StringUtils=var3625, $z0=var2717, $z1=var3661, i0=var3636, org.apache.commons.lang3.ArrayUtils=var2873, $r8=var992}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	if r0 == null goto return null;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z0 != 0 goto return null;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r2);	if $z1 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 != 0 goto i1 = virtualinvoke r2.<java.lang.String: int length()>();	$r8 = <org.apache.commons.lang3.ArrayUtils: java.lang.String[] EMPTY_STRING_ARRAY>;	return $r8
;block_num 5