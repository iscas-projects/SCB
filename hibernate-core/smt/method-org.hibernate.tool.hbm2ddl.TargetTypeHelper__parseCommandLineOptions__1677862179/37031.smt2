(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3749 0)
(declare-sort var1900 0)
(declare-sort var2456 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2456!class ClassObject)
(declare-fun var1900_noneOf/593140170 (ClassObject) var1900)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const var2056 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2056 null-String)))
(define-const var2255 var1900 (var1900_noneOf/593140170 var2456!class)) ; Statement: r0 = staticinvoke <java.util.EnumSet: java.util.EnumSet noneOf(java.lang.Class)>(class "Lorg/hibernate/tool/schema/TargetType;") 
(assert true)
(define-const var1330 Bool (equalsIgnoreCase/-92311102 var2056 "none")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("none") 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (= (ite var1330 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1900_noneOf/593140170=([java.lang.Class], java.util.EnumSet), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2056=r1, var3749=null_type, var1900=java.util.EnumSet, var2456=org.hibernate.tool.schema.TargetType, var2255=r0, var1330=$z0}
; {r1=var2056, null_type=var3749, java.util.EnumSet=var1900, org.hibernate.tool.schema.TargetType=var2456, r0=var2255, $z0=var1330}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 = staticinvoke <java.util.EnumSet: java.util.EnumSet noneOf(java.lang.Class)>(class "Lorg/hibernate/tool/schema/TargetType;");	$z0 = virtualinvoke r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("none");	if $z0 != 0 goto return r0;	return r0
;block_num 2