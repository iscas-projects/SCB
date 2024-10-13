(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var514 0)
(declare-sort var3805 0)
(declare-sort var3944 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3944_requireNonNull/1378936425 (var3805 String) var3805)
(declare-fun cast-from-String-to-var3805 (String) var3805)
(declare-fun cast-from-var3805-to-String (var3805) String)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-String String)
(declare-const var800 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var800 null-String)))
(define-const var1091 var3805 (var3944_requireNonNull/1378936425 (cast-from-String-to-var3805 var800) "path")) ; Statement: $r1 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "path") 
(define-const var1488 String (cast-from-var3805-to-String var1091)) ; Statement: $r2 = (java.lang.String) $r1 
(assert true)
(define-const var3556 String (replace/1524665721 var1488 46 47)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(46, 47) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3944_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-String-to-var3805=([java.lang.String], java.lang.Object), cast-from-var3805-to-String=([java.lang.Object], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var800=r0, var514=null_type, var3805=java.lang.Object, var3944=java.util.Objects, var1091=$r1, var1488=$r2, var3556=$r3}
; {r0=var800, null_type=var514, java.lang.Object=var3805, java.util.Objects=var3944, $r1=var1091, $r2=var1488, $r3=var3556}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "path");	$r2 = (java.lang.String) $r1;	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(46, 47);	return $r3
;block_num 1