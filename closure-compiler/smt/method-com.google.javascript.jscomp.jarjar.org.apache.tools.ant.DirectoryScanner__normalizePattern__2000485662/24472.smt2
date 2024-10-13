(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3599 0)
(declare-sort var1878 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-String String)
(declare-const var1878-separatorChar Int)
(declare-const var1878-separator String)
(declare-const var3398 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3398 null-String)))
(define-const var128 Int var1878-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(assert true)
(define-const var1397 String (replace/1524665721 var3398 47 var128)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, $c0) 
(define-const var2623 Int var1878-separatorChar) ; Statement: $c1 = <java.io.File: char separatorChar> 
(assert true)
(define-const var2532 String (replace/1524665721 var1397 92 var2623)) ; Statement: r6 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(92, $c1) 
(define-const var2366 String var1878-separator) ; Statement: $r2 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var675 Bool (endsWith/985337093 var2532 var2366)) ; Statement: $z0 = virtualinvoke r6.<java.lang.String: boolean endsWith(java.lang.String)>($r2) 
 ; Statement: if $z0 == 0 goto return r6 
(assert (= (ite var675 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {replace/1524665721=([java.lang.String, char, char], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3398=r0, var3599=null_type, var1878=java.io.File, var128=$c0, var1397=$r1, var2623=$c1, var2532=r6, var2366=$r2, var675=$z0}
; {r0=var3398, null_type=var3599, java.io.File=var1878, $c0=var128, $r1=var1397, $c1=var2623, r6=var2532, $r2=var2366, $z0=var675}
;seq <java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 2,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$c0 = <java.io.File: char separatorChar>;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String replace(char,char)>(47, $c0);	$c1 = <java.io.File: char separatorChar>;	r6 = virtualinvoke $r1.<java.lang.String: java.lang.String replace(char,char)>(92, $c1);	$r2 = <java.io.File: java.lang.String separator>;	$z0 = virtualinvoke r6.<java.lang.String: boolean endsWith(java.lang.String)>($r2);	if $z0 == 0 goto return r6;	return r6
;block_num 2