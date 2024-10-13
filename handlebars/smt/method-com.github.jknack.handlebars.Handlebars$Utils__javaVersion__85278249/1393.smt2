(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1830 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1830_getProperty/258823597 (String) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun Int_parseInt/1370970945 (String) Int)
(define-const var102 String (var1830_getProperty/258823597 "java.specification.version")) ; Statement: $r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.specification.version") 
(assert true)
(define-const var103 String (trim/-847153721 var102)) ; Statement: r1 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var318 String (replace/2138489945 var103 (cast-from-String-to-String "1.") (cast-from-String-to-String ""))) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("1.", "") 
(define-const var2011 Int (Int_parseInt/1370970945 var318)) ; Statement: $i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r2) 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1830_getProperty/258823597=([java.lang.String], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), Int_parseInt/1370970945=([java.lang.String], int)}
; {var1830=java.lang.System, var102=$r0, var103=r1, var318=$r2, var2011=$i0}
; {java.lang.System=var1830, $r0=var102, r1=var103, $r2=var318, $i0=var2011}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1}
;stmts $r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("java.specification.version");	r1 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("1.", "");	$i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r2);	return $i0
;block_num 1