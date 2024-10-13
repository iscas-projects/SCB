(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1990 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-171891354 (String) Int)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun delete/775836148 (String Int Int) String)
(declare-const null-String String)
(declare-const var3556 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3556 null-String)))
(declare-const var3007 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3007 null-String)))
(assert true)
(define-const var2257 Int (length/-171891354 var3556)) ; Statement: $i1 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
(assert true)
(define-const var2160 String (trim/-847153721 var3007)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2347 Int (length/-134980193 var2160)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var3179 Int (- var2257 var2347)) ; Statement: i2 = $i1 - $i0 
(assert true)
(define-const var623 Int (length/-171891354 var3556)) ; Statement: i3 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
(assert true)
;(assert (delete/775836148 var3556 var3179 var623)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder delete(int,int)>(i2, i3) 

(declare-const var3556!1 String)
(declare-const var3179!1 Int)
(declare-const var623!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-171891354=([java.lang.StringBuilder], int), trim/-847153721=([java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), delete/775836148=([java.lang.StringBuilder, int, int], java.lang.StringBuilder)}
; {var3556=r0, var3007=r1, var1990=null_type, var2257=$i1, var2160=$r2, var2347=$i0, var3179=i2, var623=i3}
; {r0=var3556, r1=var3007, null_type=var1990, $i1=var2257, $r2=var2160, $i0=var2347, i2=var3179, i3=var623}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.String: java.lang.String trim()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder delete(int,int)>
;cnt {"<java.lang.StringBuilder: int length()>": 2,"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder delete(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: java.lang.String;	$i1 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String trim()>();	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	i2 = $i1 - $i0;	i3 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder delete(int,int)>(i2, i3);	return
;block_num 1