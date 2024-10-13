(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var72 0)
(declare-sort var3341 0)
(declare-sort var232 0)
(declare-sort var3588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3588_findAndSubst/1425145515 (String var72) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var3588_instantiateByClassName/289489540 (String ClassObject var232) var232)
(declare-const null-var72 var72)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var232 var232)
(declare-const var3324 var72) ; Statement: r1 := @parameter0: java.util.Properties 
(assert (not (= var3324 null-var72)))
(declare-const var372 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var372 null-String)))
(declare-const var1432 ClassObject) ; Statement: r3 := @parameter2: java.lang.Class 
(assert (not (= var1432 null-ClassObject)))
(declare-const var2304 var232) ; Statement: r4 := @parameter3: java.lang.Object 
(assert (not (= var2304 null-var232)))
(define-const var3568 String (var3588_findAndSubst/1425145515 var372 var3324)) ; Statement: r2 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String findAndSubst(java.lang.String,java.util.Properties)>(r0, r1) 
 ; Statement: if r2 != null goto $r5 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>() 
(assert (not (= var3568 null-String))) ; Cond: r2 != null 
(assert true)
(define-const var3167 String (trim/-847153721 var3568)) ; Statement: $r5 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>() 
(define-const var1336 var232 (var3588_instantiateByClassName/289489540 var3167 var1432 var2304)) ; Statement: $r6 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>($r5, r3, r4) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var3588_findAndSubst/1425145515=([java.lang.String, java.util.Properties], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), var3588_instantiateByClassName/289489540=([java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object)}
; {var72=java.util.Properties, var3324=r1, var372=r0, var3341=null_type, var1432=r3, var232=java.lang.Object, var2304=r4, var3588=org.apache.log4j.helpers.OptionConverter, var3568=r2, var3167=$r5, var1336=$r6}
; {java.util.Properties=var72, r1=var3324, r0=var372, null_type=var3341, r3=var1432, java.lang.Object=var232, r4=var2304, org.apache.log4j.helpers.OptionConverter=var3588, r2=var3568, $r5=var3167, $r6=var1336}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @parameter0: java.util.Properties;	r0 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.Class;	r4 := @parameter3: java.lang.Object;	r2 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.String findAndSubst(java.lang.String,java.util.Properties)>(r0, r1);	if r2 != null goto $r5 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>();	$r5 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>();	$r6 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>($r5, r3, r4);	return $r6
;block_num 2