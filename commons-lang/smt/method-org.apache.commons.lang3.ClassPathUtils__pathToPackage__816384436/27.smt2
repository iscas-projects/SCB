(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1047 0)
(declare-sort var1818 0)
(declare-sort var1255 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1255_requireNonNull/1378936425 (var1818 String) var1818)
(declare-fun cast-from-String-to-var1818 (String) var1818)
(declare-fun cast-from-var1818-to-String (var1818) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-String String)
(declare-const var1049 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1049 null-String)))
(define-const var1308 var1818 (var1255_requireNonNull/1378936425 (cast-from-String-to-var1818 var1049) "path")) ; Statement: $r1 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "path") 
(define-const var800 String (cast-from-var1818-to-String var1308)) ; Statement: $r2 = (java.lang.String) $r1 
(assert true)
(define-const var1177 String (replace/1524665721 var800 47 46)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1255_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-String-to-var1818=([java.lang.String], java.lang.Object), cast-from-var1818-to-String=([java.lang.Object], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var1049=r0, var1047=null_type, var1818=java.lang.Object, var1255=java.util.Objects, var1308=$r1, var800=$r2, var1177=$r3}
; {r0=var1049, null_type=var1047, java.lang.Object=var1818, java.util.Objects=var1255, $r1=var1308, $r2=var800, $r3=var1177}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "path");	$r2 = (java.lang.String) $r1;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	return $r3
;block_num 1