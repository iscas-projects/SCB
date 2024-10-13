(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2686 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isNegative/-1161372069 (var2686) Bool)
(declare-fun toString/-800585279 (var2686) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(declare-const null-var2686 var2686)
(declare-const var1973 var2686) ; Statement: r0 := @parameter0: java.time.Duration 
(assert (not (= var1973 null-var2686)))
(assert true)
(define-const var1419 Bool (isNegative/-1161372069 var1973)) ; Statement: $z0 = virtualinvoke r0.<java.time.Duration: boolean isNegative()>() 
 ; Statement: if $z0 == 0 goto $r8 = virtualinvoke r0.<java.time.Duration: java.lang.String toString()>() 
(assert (= (ite var1419 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var184 String (toString/-800585279 var1973)) ; Statement: $r8 = virtualinvoke r0.<java.time.Duration: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2766 String (replace/2138489945 var184 (cast-from-String-to-String "PT") (cast-from-String-to-String ""))) ; Statement: $r7 = virtualinvoke $r8.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("PT", "") 
(assert true)
(define-const var3284 Bool (contains/1009244746 var2766 (cast-from-String-to-String "M"))) ; Statement: $z1 = virtualinvoke $r7.<java.lang.String: boolean contains(java.lang.CharSequence)>("M") 
 ; Statement: if $z1 == 0 goto r10 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("H", ":0:0") 
(assert (= (ite var3284 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var841 String (replace/2138489945 var2766 (cast-from-String-to-String "H") (cast-from-String-to-String ":0:0"))) ; Statement: r10 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("H", ":0:0") 
(assert true) ; Non Conditional
 ; Statement: return r10 
(check-sat)
(get-model)
(get-unsat-core)
; {isNegative/-1161372069=([java.time.Duration], boolean), toString/-800585279=([java.time.Duration], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean)}
; {var2686=java.time.Duration, var1973=r0, var1419=$z0, var184=$r8, var2766=$r7, var3284=$z1, var841=r10}
; {java.time.Duration=var2686, r0=var1973, $z0=var1419, $r8=var184, $r7=var2766, $z1=var3284, r10=var841}
;seq <java.time.Duration: java.lang.String toString()>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 2,"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.time.Duration;	$z0 = virtualinvoke r0.<java.time.Duration: boolean isNegative()>();	if $z0 == 0 goto $r8 = virtualinvoke r0.<java.time.Duration: java.lang.String toString()>();	$r8 = virtualinvoke r0.<java.time.Duration: java.lang.String toString()>();	$r7 = virtualinvoke $r8.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("PT", "");	$z1 = virtualinvoke $r7.<java.lang.String: boolean contains(java.lang.CharSequence)>("M");	if $z1 == 0 goto r10 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("H", ":0:0");	r10 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("H", ":0:0");	return r10
;block_num 5