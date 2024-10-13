(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun delete/775836148 (String Int Int) String)
(declare-const null-String String)
(declare-const var1471 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1471 null-String)))
(declare-const var2383 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2383 null-String)))
(assert true)
(define-const var2712 String (trim/-847153721 var2383)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var3495 Int (length/-134980193 var2712)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(assert true)
;(assert (delete/775836148 var1471 0 var3495)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder delete(int,int)>(0, $i0) 

(declare-const var1471!1 String)
(declare-const var2518 Int)
(declare-const var3495!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), delete/775836148=([java.lang.StringBuilder, int, int], java.lang.StringBuilder)}
; {var1471=r0, var2383=r1, var1719=null_type, var2712=$r2, var3495=$i0, var2518=0}
; {r0=var1471, r1=var2383, null_type=var1719, $r2=var2712, $i0=var3495, 0=var2518}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder delete(int,int)>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder delete(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: java.lang.String;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>();	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder delete(int,int)>(0, $i0);	return
;block_num 1