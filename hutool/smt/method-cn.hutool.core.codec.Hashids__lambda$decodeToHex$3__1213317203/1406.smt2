(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3464 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun append/50905802 (String String Int Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-String String)
(declare-const var1156 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1156 null-String)))
(declare-const var3554 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3554 null-String)))
(assert true)
(define-const var753 Int (length/-134980193 var3554)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
;(assert (append/50905802 var1156 (cast-from-String-to-String var3554) 1 var753)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r1, 1, $i0) 
(declare-const var1156!1 String)
(assert (str.prefixof var1156 var1156!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), append/50905802=([java.lang.StringBuilder, java.lang.CharSequence, int, int], java.lang.StringBuilder), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1156=r0, var3554=r1, var3464=null_type, var753=$i0}
; {r0=var1156, r1=var3554, null_type=var3464, $i0=var753}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>": 1}
;stmts r0 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: java.lang.String;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>(r1, 1, $i0);	return
;block_num 1