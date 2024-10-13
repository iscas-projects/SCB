(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1505 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun Int_parseLong/-436876155 (String) Int)
(declare-const null-String String)
(declare-const var43 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var43 null-String)))
(assert true)
(define-const var446 Bool (endsWith/985337093 var43 "ns")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("ns") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("us") 
(assert (not (= (ite var446 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var51 Int (length/-134980193 var43)) ; Statement: $i27 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1420 Int (- var51 2)) ; Statement: $i28 = $i27 - 2 
(assert (and true (and (>= 0 0) (>= (str.len var43) var1420) (>= var1420 0))))
(define-const var113 String (substring/-1240304868 var43 0 var1420)) ; Statement: $r31 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i28) 
(assert true)
(define-const var3541 String (trim/-847153721 var113)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.String: java.lang.String trim()>() 
(define-const var2050 Int (Int_parseLong/-436876155 var3541)) ; Statement: $l29 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>($r32) 
 ; Statement: return $l29 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), Int_parseLong/-436876155=([java.lang.String], long)}
; {var43=r0, var1505=null_type, var446=$z0, var51=$i27, var1420=$i28, var113=$r31, var3541=$r32, var2050=$l29}
; {r0=var43, null_type=var1505, $z0=var446, $i27=var51, $i28=var1420, $r31=var113, $r32=var3541, $l29=var2050}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("ns");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("us");	$i27 = virtualinvoke r0.<java.lang.String: int length()>();	$i28 = $i27 - 2;	$r31 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i28);	$r32 = virtualinvoke $r31.<java.lang.String: java.lang.String trim()>();	$l29 = staticinvoke <java.lang.Long: long parseLong(java.lang.String)>($r32);	return $l29
;block_num 2