(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3940 0)
(declare-sort var2275 0)
(declare-sort var3222 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2275_notBlank/801935505 (String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3222-init () var3222)
(declare-fun <init>/875830710 (var3222 String) void)
(declare-const null-String String)
(declare-const var1942 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1942 null-String)))
;(assert (var2275_notBlank/801935505 (cast-from-String-to-String var1942))) ; Statement: staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence)>(r3) 

(declare-const var1942!1 String)
(assert true)
(define-const var1117 Int (length/-134980193 var1942!1)) ; Statement: i0 = virtualinvoke r3.<java.lang.String: int length()>() 
 ; Statement: if i0 == 15 goto (branch) 
(assert (not (= var1117 15))) ; Negate: Cond: i0 == 15  
 ; Statement: if i0 == 18 goto (branch) 
(assert (not (= var1117 18))) ; Negate: Cond: i0 == 18  
(define-const var3834 var3222 var3222-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var3834 "ID Card length must be 15 or 18")) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("ID Card length must be 15 or 18") 

(declare-const var3834!1 var3222)
(declare-const var1142 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2275_notBlank/801935505=([java.lang.CharSequence], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int), var3222-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1942=r3, var3940=null_type, var2275=cn.hutool.core.lang.Assert, var1117=i0, var3222=java.lang.IllegalArgumentException, var3834=$r4, var1142="ID Card length must be 15 or 18"}
; {r3=var1942, null_type=var3940, cn.hutool.core.lang.Assert=var2275, i0=var1117, java.lang.IllegalArgumentException=var3222, $r4=var3834, "ID Card length must be 15 or 18"=var1142}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @parameter0: java.lang.String;	staticinvoke <cn.hutool.core.lang.Assert: java.lang.CharSequence notBlank(java.lang.CharSequence)>(r3);	i0 = virtualinvoke r3.<java.lang.String: int length()>();	if i0 == 15 goto (branch);	if i0 == 18 goto (branch);	$r4 = new java.lang.IllegalArgumentException;	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("ID Card length must be 15 or 18");	throw $r4
;block_num 3