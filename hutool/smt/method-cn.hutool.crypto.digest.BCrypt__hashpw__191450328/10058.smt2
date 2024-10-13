(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2880 0)
(declare-sort var1170 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1170-init () var1170)
(declare-fun <init>/875830710 (var1170 String) void)
(declare-const null-String String)
(declare-const var1194 String) ; Statement: r6 := @parameter0: java.lang.String 
(assert (not (= var1194 null-String)))
(declare-const var2665 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2665 null-String)))
(define-const var1354 Int 0) ; Statement: c13 = 0 
(define-const var136 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var136)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var136!1 String)
(assert (= var136!1 ""))
(assert (and true (and (> (str.len var2665) 0) (<= 0 0))))
(define-const var3811 Int (charAt/698050440 var2665 0)) ; Statement: $c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(define-const var653 Int (cast-from-Int-to-Int var3811)) ; Statement: $i21 = (int) $c0 
 ; Statement: if $i21 != 36 goto $r27 = new java.lang.IllegalArgumentException 
(assert (not (= var653 36))) ; Cond: $i21 != 36 
(define-const var1927 var1170 var1170-init) ; Statement: $r27 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var1927 "Invalid salt version")) ; Statement: specialinvoke $r27.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid salt version") 

(declare-const var1927!1 var1170)
(declare-const var1086 String)
 ; Statement: throw $r27 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var1170-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1194=r6, var2880=null_type, var2665=r1, var1354=c13, var136=$r26, var3811=$c0, var653=$i21, var1170=java.lang.IllegalArgumentException, var1927=$r27, var1086="Invalid salt version"}
; {r6=var1194, null_type=var2880, r1=var2665, c13=var1354, $r26=var136, $c0=var3811, $i21=var653, java.lang.IllegalArgumentException=var1170, $r27=var1927, "Invalid salt version"=var1086}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r6 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	c13 = 0;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	$i21 = (int) $c0;	if $i21 != 36 goto $r27 = new java.lang.IllegalArgumentException;	$r27 = new java.lang.IllegalArgumentException;	specialinvoke $r27.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Invalid salt version");	throw $r27
;block_num 2