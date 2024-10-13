(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var913 0)
(declare-sort var3298 0)
(declare-sort var20 0)
(declare-sort var2499 0)
(declare-sort var3914 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toUpperCase/398655892 (String var2499) String)
(declare-fun var3298_contains/1636690605 (var3298 var3914) Bool)
(declare-fun cast-from-String-to-var3914 (String) var3914)
(declare-const null-String String)
(declare-const var20-MULTIBYTE_ENCODINGS var3298)
(declare-const var2499-ENGLISH var2499)
(declare-const var1076 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1076 null-String)))
(define-const var1764 var3298 var20-MULTIBYTE_ENCODINGS) ; Statement: $r2 = <com.mysql.cj.CharsetMapping: java.util.Set MULTIBYTE_ENCODINGS> 
(define-const var133 var2499 var2499-ENGLISH) ; Statement: $r1 = <java.util.Locale: java.util.Locale ENGLISH> 
(assert true)
(define-const var3703 String (toUpperCase/398655892 var1076 var133)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1) 
(define-const var2966 Bool (var3298_contains/1636690605 var1764 (cast-from-String-to-var3914 var3703))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Set: boolean contains(java.lang.Object)>($r3) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {toUpperCase/398655892=([java.lang.String, java.util.Locale], java.lang.String), var3298_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var3914=([java.lang.String], java.lang.Object)}
; {var1076=r0, var913=null_type, var3298=java.util.Set, var20=com.mysql.cj.CharsetMapping, var1764=$r2, var2499=java.util.Locale, var133=$r1, var3703=$r3, var3914=java.lang.Object, var2966=$z0}
; {r0=var1076, null_type=var913, java.util.Set=var3298, com.mysql.cj.CharsetMapping=var20, $r2=var1764, java.util.Locale=var2499, $r1=var133, $r3=var3703, java.lang.Object=var3914, $z0=var2966}
;seq <java.lang.String: java.lang.String toUpperCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r2 = <com.mysql.cj.CharsetMapping: java.util.Set MULTIBYTE_ENCODINGS>;	$r1 = <java.util.Locale: java.util.Locale ENGLISH>;	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String toUpperCase(java.util.Locale)>($r1);	$z0 = interfaceinvoke $r2.<java.util.Set: boolean contains(java.lang.Object)>($r3);	return $z0
;block_num 1