(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3180 0)
(declare-sort var2564 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun quotes/2095068447 (var3180) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var3180 var3180)
(declare-const null-String String)
(declare-const var367 var3180) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.QuotedStringTokenizer 
(assert (not (= var367 null-var3180)))
(declare-const var582 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var582 null-String)))
(assert true)
(define-const var2610 String (trim/-847153721 var582)) ; Statement: r19 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(define-const var4 (Array Int Int) (quotes/2095068447 var367)) ; Statement: r2 = r1.<jdk.nashorn.internal.runtime.QuotedStringTokenizer: char[] quotes> 
(define-const var2428 Int (getLength-Arr-Int-1 var4)) ; Statement: i0 = lengthof r2 
(define-const var181 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto return r19 
(assert (>= var181 var2428)) ; Cond: i5 >= i0 
 ; Statement: return r19 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), quotes/2095068447=([jdk.nashorn.internal.runtime.QuotedStringTokenizer], char[]), getLength-Arr-Int-1=([char[]], int)}
; {var3180=jdk.nashorn.internal.runtime.QuotedStringTokenizer, var367=r1, var582=r0, var2564=null_type, var2610=r19, var4=r2, var2428=i0, var181=i5}
; {jdk.nashorn.internal.runtime.QuotedStringTokenizer=var3180, r1=var367, r0=var582, null_type=var2564, r19=var2610, r2=var4, i0=var2428, i5=var181}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.QuotedStringTokenizer;	r0 := @parameter0: java.lang.String;	r19 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	r2 = r1.<jdk.nashorn.internal.runtime.QuotedStringTokenizer: char[] quotes>;	i0 = lengthof r2;	i5 = 0;	if i5 >= i0 goto return r19;	return r19
;block_num 3