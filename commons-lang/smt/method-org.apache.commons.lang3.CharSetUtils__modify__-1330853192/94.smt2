(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3970 0)
(declare-sort var3063 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3063_getInstance/-1802634007 ((Array Int String)) var3063)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Bool Bool)
(declare-const var67 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var67 null-String)))
(declare-const var3789 (Array Int String)) ; Statement: r0 := @parameter1: java.lang.String[] 
(assert (not (= var3789 null-__Array__Int__String__)))
(declare-const var2211 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2211 null-Bool)))
(define-const var2157 var3063 (var3063_getInstance/-1802634007 var3789)) ; Statement: r1 = staticinvoke <org.apache.commons.lang3.CharSet: org.apache.commons.lang3.CharSet getInstance(java.lang.String[])>(r0) 
(define-const var2645 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var1690 Int (length/-134980193 var67)) ; Statement: $i0 = virtualinvoke r3.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/543593434 var2645 var1690)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var2645!1 String)
(declare-const var1690!1 Int)
(assert true)
(define-const var2733 (Array Int Int) (toCharArray/415275702 var67)) ; Statement: r4 = virtualinvoke r3.<java.lang.String: char[] toCharArray()>() 
(define-const var1035 Int (getLength-Arr-Int-1 var2733)) ; Statement: i1 = lengthof r4 
(define-const var2104 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i1 goto $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2104 var1035)) ; Cond: i3 >= i1 
(assert true)
(define-const var587 String (toString/-2075883882 var2645!1)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3063_getInstance/-1802634007=([java.lang.String[]], org.apache.commons.lang3.CharSet), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var67=r3, var3970=null_type, var3789=r0, var2211=z0, var3063=org.apache.commons.lang3.CharSet, var2157=r1, var2645=$r2, var1690=$i0, var2733=r4, var1035=i1, var2104=i3, var587=$r5}
; {r3=var67, null_type=var3970, r0=var3789, z0=var2211, org.apache.commons.lang3.CharSet=var3063, r1=var2157, $r2=var2645, $i0=var1690, r4=var2733, i1=var1035, i3=var2104, $r5=var587}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: char[] toCharArray()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String[];	z0 := @parameter2: boolean;	r1 = staticinvoke <org.apache.commons.lang3.CharSet: org.apache.commons.lang3.CharSet getInstance(java.lang.String[])>(r0);	$r2 = new java.lang.StringBuilder;	$i0 = virtualinvoke r3.<java.lang.String: int length()>();	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i0);	r4 = virtualinvoke r3.<java.lang.String: char[] toCharArray()>();	i1 = lengthof r4;	i3 = 0;	if i3 >= i1 goto $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3