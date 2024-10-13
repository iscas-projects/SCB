(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1273 0)
(declare-sort var3021 0)
(declare-sort var3028 0)
(declare-sort var3953 0)
(declare-sort var1976 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getIndex/-2136393185 (var3028) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3953-init () var3953)
(declare-fun <init>/582965326 (var3953 var1976) void)
(declare-fun cast-from-String-to-var1976 (String) var1976)
(declare-const null-var1273 var1273)
(declare-const null-String String)
(declare-const null-var3028 var3028)
(declare-const var1273-$assertionsDisabled Bool)
(declare-const var3384 var1273) ; Statement: r1 := @this: org.apache.commons.lang3.text.ExtendedMessageFormat 
(assert (not (= var3384 null-var1273)))
(declare-const var148 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var148 null-String)))
(declare-const var1202 var3028) ; Statement: r2 := @parameter1: java.text.ParsePosition 
(assert (not (= var1202 null-var3028)))
(declare-const var2276 String) ; Statement: r0 := @parameter2: java.lang.StringBuilder 
(assert (not (= var2276 null-String)))
(define-const var3494 Bool var1273-$assertionsDisabled) ; Statement: $z0 = <org.apache.commons.lang3.text.ExtendedMessageFormat: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto (branch) 
(assert (not (not (= (ite var3494 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var3369 (Array Int Int) (toCharArray/415275702 var148)) ; Statement: $r10 = virtualinvoke r3.<java.lang.String: char[] toCharArray()>() 
(assert true)
(define-const var3174 Int (getIndex/-2136393185 var1202)) ; Statement: $i5 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>() 
(define-const var3750 Int (select var3369 var3174)) ; Statement: $c6 = $r10[$i5] 
(define-const var852 Int (cast-from-Int-to-Int var3750)) ; Statement: $i9 = (int) $c6 
 ; Statement: if $i9 == 39 goto (branch) 
(assert (not (= var852 39))) ; Negate: Cond: $i9 == 39  
(define-const var3406 var3953 var3953-init) ; Statement: $r13 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/582965326 var3406 (cast-from-String-to-var1976 "Quoted string must start with quote character"))) ; Statement: specialinvoke $r13.<java.lang.AssertionError: void <init>(java.lang.Object)>("Quoted string must start with quote character") 

(declare-const var3406!1 var3953)
(declare-const var857 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), getIndex/-2136393185=([java.text.ParsePosition], int), cast-from-Int-to-Int=([char], int), var3953-init=([], java.lang.AssertionError), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var1976=([java.lang.String], java.lang.Object)}
; {var1273=org.apache.commons.lang3.text.ExtendedMessageFormat, var3384=r1, var148=r3, var3021=null_type, var3028=java.text.ParsePosition, var1202=r2, var2276=r0, var3494=$z0, var3369=$r10, var3174=$i5, var3750=$c6, var852=$i9, var3953=java.lang.AssertionError, var3406=$r13, var1976=java.lang.Object, var857="Quoted string must start with quote character"}
; {org.apache.commons.lang3.text.ExtendedMessageFormat=var1273, r1=var3384, r3=var148, null_type=var3021, java.text.ParsePosition=var3028, r2=var1202, r0=var2276, $z0=var3494, $r10=var3369, $i5=var3174, $c6=var3750, $i9=var852, java.lang.AssertionError=var3953, $r13=var3406, java.lang.Object=var1976, "Quoted string must start with quote character"=var857}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.ExtendedMessageFormat;	r3 := @parameter0: java.lang.String;	r2 := @parameter1: java.text.ParsePosition;	r0 := @parameter2: java.lang.StringBuilder;	$z0 = <org.apache.commons.lang3.text.ExtendedMessageFormat: boolean $assertionsDisabled>;	if $z0 != 0 goto (branch);	$r10 = virtualinvoke r3.<java.lang.String: char[] toCharArray()>();	$i5 = virtualinvoke r2.<java.text.ParsePosition: int getIndex()>();	$c6 = $r10[$i5];	$i9 = (int) $c6;	if $i9 == 39 goto (branch);	$r13 = new java.lang.AssertionError;	specialinvoke $r13.<java.lang.AssertionError: void <init>(java.lang.Object)>("Quoted string must start with quote character");	throw $r13
;block_num 3