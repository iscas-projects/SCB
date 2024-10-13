(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3803 0)
(declare-sort var3917 0)
(declare-sort var3975 0)
(declare-sort var2957 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2957-init () var2957)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun <init>/378607920 (var2957 String) void)
(declare-const null-var3803 var3803)
(declare-const null-String String)
(declare-const null-var3975 var3975)
(declare-const var1810 var3803) ; Statement: r3 := @this: freemarker.core.BuiltInsForStringsBasic$trimBI 
(assert (not (= var1810 null-var3803)))
(declare-const var303 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var303 null-String)))
(declare-const var18 var3975) ; Statement: r4 := @parameter1: freemarker.core.Environment 
(assert (not (= var18 null-var3975)))
(define-const var2671 var2957 var2957-init) ; Statement: $r0 = new freemarker.template.SimpleScalar 
(assert true)
(define-const var483 String (trim/-847153721 var303)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>() 
(assert true)
;(assert (<init>/378607920 var2671 var483)) ; Statement: specialinvoke $r0.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r2) 

(declare-const var2671!1 var2957)
(declare-const var483!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2957-init=([], freemarker.template.SimpleScalar), trim/-847153721=([java.lang.String], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var3803=freemarker.core.BuiltInsForStringsBasic$trimBI, var1810=r3, var303=r1, var3917=null_type, var3975=freemarker.core.Environment, var18=r4, var2957=freemarker.template.SimpleScalar, var2671=$r0, var483=$r2}
; {freemarker.core.BuiltInsForStringsBasic$trimBI=var3803, r3=var1810, r1=var303, null_type=var3917, freemarker.core.Environment=var3975, r4=var18, freemarker.template.SimpleScalar=var2957, $r0=var2671, $r2=var483}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r3 := @this: freemarker.core.BuiltInsForStringsBasic$trimBI;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: freemarker.core.Environment;	$r0 = new freemarker.template.SimpleScalar;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>();	specialinvoke $r0.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r2);	return $r0
;block_num 1