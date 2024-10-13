(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var762 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-String String)
(declare-const var3001 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3001 null-String)))
(assert true)
(define-const var1632 Int (length/-134980193 var3001)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3129 String ".class") ; Statement: $r1 = ".class" 
(assert true)
(define-const var233 Int (length/-134980193 var3129)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var2444 Int (- var1632 var233)) ; Statement: i2 = $i1 - $i0 
(assert (and true (and (>= 0 0) (>= (str.len var3001) var2444) (>= var2444 0))))
(define-const var3739 String (substring/-1240304868 var3001 0 var2444)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i2) 
(assert true)
(define-const var1499 String (replace/1524665721 var3739 47 46)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var3001=r0, var762=null_type, var1632=$i1, var3129=$r1, var233=$i0, var2444=i2, var3739=$r2, var1499=$r3}
; {r0=var3001, null_type=var762, $i1=var1632, $r1=var3129, $i0=var233, i2=var2444, $r2=var3739, $r3=var1499}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$r1 = ".class";	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	i2 = $i1 - $i0;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i2);	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	return $r3
;block_num 1