(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3773 0)
(declare-sort var2227 0)
(declare-sort var3949 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3773 var3773)
(declare-const null-String String)
(declare-const null-var3949 var3949)
(declare-const var906 var3773) ; Statement: r3 := @this: org.apache.ibatis.javassist.CtClassType 
(assert (not (= var906 null-var3773)))
(declare-const var649 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var649 null-String)))
(declare-const var2319 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2319 null-String)))
(declare-const var1519 var3949) ; Statement: r4 := @parameter2: org.apache.ibatis.javassist.CtMember 
(assert (not (= var1519 null-var3949)))
(declare-const var2646 var3949) ; Statement: r2 := @parameter3: org.apache.ibatis.javassist.CtMember 
(assert (not (= var2646 null-var3949)))
(assert true)
;(assert (append/672562846 var649 var2319)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var649!1 String)
(assert (= var649!1 (str.++ var649 var2319)))
(assert true) ; Non Conditional
 ; Statement: if r4 == r2 goto return 
(assert (= var1519 var2646)) ; Cond: r4 == r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3773=org.apache.ibatis.javassist.CtClassType, var906=r3, var649=r0, var2319=r1, var2227=null_type, var3949=org.apache.ibatis.javassist.CtMember, var1519=r4, var2646=r2}
; {org.apache.ibatis.javassist.CtClassType=var3773, r3=var906, r0=var649, r1=var2319, null_type=var2227, org.apache.ibatis.javassist.CtMember=var3949, r4=var1519, r2=var2646}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.ibatis.javassist.CtClassType;	r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: java.lang.String;	r4 := @parameter2: org.apache.ibatis.javassist.CtMember;	r2 := @parameter3: org.apache.ibatis.javassist.CtMember;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	if r4 == r2 goto return;	return
;block_num 3