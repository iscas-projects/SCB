(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2634 0)
(declare-sort var3249 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3249_readType/-1674377686 (String Int String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var253 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var253 null-String)))
(define-const var2115 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2115)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2115!1 String)
(assert (= var2115!1 ""))
(assert (and true (and (> (str.len var253) 0) (<= 0 0))))
(define-const var3048 Int (charAt/698050440 var253 0)) ; Statement: $c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(define-const var2525 Int (cast-from-Int-to-Int var3048)) ; Statement: $i3 = (int) $c0 
 ; Statement: if $i3 != 40 goto staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor$PrettyPrinter: int readType(java.lang.StringBuilder,int,java.lang.String)>($r3, 0, r1) 
(assert (not (= var2525 40))) ; Cond: $i3 != 40 
;(assert (var3249_readType/-1674377686 var2115!1 0 var253)) ; Statement: staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor$PrettyPrinter: int readType(java.lang.StringBuilder,int,java.lang.String)>($r3, 0, r1) 

(declare-const var2115!2 String)
(declare-const var1068 Int)
(declare-const var253!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var796 String (toString/-2075883882 var2115!2)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var3249_readType/-1674377686=([java.lang.StringBuilder, int, java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var253=r1, var2634=null_type, var2115=$r3, var3048=$c0, var2525=$i3, var3249=org.apache.ibatis.javassist.bytecode.Descriptor$PrettyPrinter, var1068=0, var796=$r2}
; {r1=var253, null_type=var2634, $r3=var2115, $c0=var3048, $i3=var2525, org.apache.ibatis.javassist.bytecode.Descriptor$PrettyPrinter=var3249, 0=var1068, $r2=var796}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	$i3 = (int) $c0;	if $i3 != 40 goto staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor$PrettyPrinter: int readType(java.lang.StringBuilder,int,java.lang.String)>($r3, 0, r1);	staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor$PrettyPrinter: int readType(java.lang.StringBuilder,int,java.lang.String)>($r3, 0, r1);	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3