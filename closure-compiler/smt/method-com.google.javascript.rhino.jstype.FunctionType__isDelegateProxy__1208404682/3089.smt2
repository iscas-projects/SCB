(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3371 0)
(declare-sort var1858 0)
(declare-sort var1040 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasReferenceName/2138409774 (var1858) Bool)
(declare-fun cast-from-var3371-to-var1858 (var3371) var1858)
(declare-fun getReferenceName/1110290887 (var1040) String)
(declare-fun cast-from-var3371-to-var1040 (var3371) var1040)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var3371 var3371)
(declare-const var3371-DELEGATE_SUFFIX String)
(declare-const var242 var3371) ; Statement: r0 := @this: com.google.javascript.rhino.jstype.FunctionType 
(assert (not (= var242 null-var3371)))
(assert true)
(define-const var1656 Bool (hasReferenceName/2138409774 (cast-from-var3371-to-var1858 var242))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.jstype.FunctionType: boolean hasReferenceName()>() 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (not (= (ite var1656 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1694 String (getReferenceName/1110290887 (cast-from-var3371-to-var1040 var242))) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.rhino.jstype.FunctionType: java.lang.String getReferenceName()>() 
(define-const var45 String var3371-DELEGATE_SUFFIX) ; Statement: $r1 = <com.google.javascript.rhino.jstype.FunctionType: java.lang.String DELEGATE_SUFFIX> 
(assert true)
(define-const var3326 Bool (endsWith/985337093 var1694 var45)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>($r1) 
 ; Statement: if $z1 == 0 goto $z2 = 0 
(assert (= (ite var3326 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1995 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {hasReferenceName/2138409774=([com.google.javascript.rhino.jstype.ObjectType], boolean), cast-from-var3371-to-var1858=([com.google.javascript.rhino.jstype.FunctionType], com.google.javascript.rhino.jstype.ObjectType), getReferenceName/1110290887=([com.google.javascript.rhino.jstype.PrototypeObjectType], java.lang.String), cast-from-var3371-to-var1040=([com.google.javascript.rhino.jstype.FunctionType], com.google.javascript.rhino.jstype.PrototypeObjectType), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3371=com.google.javascript.rhino.jstype.FunctionType, var242=r0, var1858=com.google.javascript.rhino.jstype.ObjectType, var1656=$z0, var1040=com.google.javascript.rhino.jstype.PrototypeObjectType, var1694=$r2, var45=$r1, var3326=$z1, var1995=$z2}
; {com.google.javascript.rhino.jstype.FunctionType=var3371, r0=var242, com.google.javascript.rhino.jstype.ObjectType=var1858, $z0=var1656, com.google.javascript.rhino.jstype.PrototypeObjectType=var1040, $r2=var1694, $r1=var45, $z1=var3326, $z2=var1995}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.rhino.jstype.FunctionType;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.jstype.FunctionType: boolean hasReferenceName()>();	if $z0 == 0 goto $z2 = 0;	$r2 = virtualinvoke r0.<com.google.javascript.rhino.jstype.FunctionType: java.lang.String getReferenceName()>();	$r1 = <com.google.javascript.rhino.jstype.FunctionType: java.lang.String DELEGATE_SUFFIX>;	$z1 = virtualinvoke $r2.<java.lang.String: boolean endsWith(java.lang.String)>($r1);	if $z1 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 4