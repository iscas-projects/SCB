(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1274 0)
(declare-sort var3923 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3923_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/1703972987 (String (Array Int Int) Int Int) void)
(declare-const null-String String)
(declare-const var458 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var458 null-String)))
(define-const var3709 Bool (var3923_isEmpty/1595667738 (cast-from-String-to-String var458))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (= (ite var3709 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3847 Int (length/-134980193 var458)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3189 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (int)[i0] 
(define-const var8 Int 0) ; Statement: i2 = 0 
(define-const var2984 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r2 = new java.lang.String 
(assert (>= var2984 var3847)) ; Cond: i3 >= i0 
(define-const var695 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/1703972987 var695 var3189 0 var8)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(int[],int,int)>(r1, 0, i2) 

(declare-const var695!1 String)
(declare-const var3189!1 (Array Int Int))
(declare-const var2686 Int)
(declare-const var8!1 Int)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3923_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int), arr-Int-init=([], int[]), String-init=([], java.lang.String), <init>/1703972987=([java.lang.String, int[], int, int], void)}
; {var458=r0, var1274=null_type, var3923=org.apache.commons.lang3.StringUtils, var3709=$z0, var3847=i0, var3189=r1, var8=i2, var2984=i3, var695=$r2, var2686=0}
; {r0=var458, null_type=var1274, org.apache.commons.lang3.StringUtils=var3923, $z0=var3709, i0=var3847, r1=var3189, i2=var8, i3=var2984, $r2=var695, 0=var2686}
;seq <java.lang.String: int length()>;	<java.lang.String: void <init>(int[],int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: void <init>(int[],int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	r1 = newarray (int)[i0];	i2 = 0;	i3 = 0;	if i3 >= i0 goto $r2 = new java.lang.String;	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(int[],int,int)>(r1, 0, i2);	return $r2
;block_num 4