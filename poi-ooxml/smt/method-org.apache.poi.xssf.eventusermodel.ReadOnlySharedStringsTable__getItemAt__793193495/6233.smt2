(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2111 0)
(declare-sort var3590 0)
(declare-sort var665 0)
(declare-sort var142 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun strings/-324702281 (var2111) var3590)
(declare-fun var665-init () var665)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var142) String)
(declare-fun cast-from-var3590-to-var142 (var3590) var142)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var665 String) void)
(declare-const null-var2111 var2111)
(declare-const null-Int Int)
(declare-const null-var3590 var3590)
(declare-const var2755 var2111) ; Statement: r0 := @this: org.apache.poi.xssf.eventusermodel.ReadOnlySharedStringsTable 
(assert (not (= var2755 null-var2111)))
(declare-const var2282 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2282 null-Int)))
(define-const var3173 var3590 (strings/-324702281 var2755)) ; Statement: $r1 = r0.<org.apache.poi.xssf.eventusermodel.ReadOnlySharedStringsTable: java.util.List strings> 
 ; Statement: if $r1 == null goto $r2 = new java.lang.IllegalStateException 
(assert (= var3173 null-var3590)) ; Cond: $r1 == null 
(define-const var2729 var665 var665-init) ; Statement: $r2 = new java.lang.IllegalStateException 
(define-const var1446 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1446)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1446!1 String)
(assert (= var1446!1 ""))
(assert true)
(define-const var3798 String (append/672562846 var1446!1 "Cannot get item at ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot get item at ") 
(declare-const var1446!2 String)
(assert (= var1446!2 (str.++ var1446!1 "Cannot get item at ")))
(assert true)
(define-const var1863 String (append/-1001720160 var3798 var2282)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3798!1 String)
(assert (str.prefixof var3798 var3798!1))
(assert true)
(define-const var3357 String (append/672562846 var1863 " with strings: ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with strings: ") 
(declare-const var1863!1 String)
(assert (= var1863!1 (str.++ var1863 " with strings: ")))
(define-const var2691 var3590 (strings/-324702281 var2755)) ; Statement: $r6 = r0.<org.apache.poi.xssf.eventusermodel.ReadOnlySharedStringsTable: java.util.List strings> 
(assert true)
(define-const var1000 String (append/-1031950772 var3357 (cast-from-var3590-to-var142 var2691))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var3357!1 String)
(assert (str.prefixof var3357 var3357!1))
(assert true)
(define-const var2826 String (toString/-2075883882 var1000)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2729 var2826)) ; Statement: specialinvoke $r2.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9) 

(declare-const var2729!1 var665)
(declare-const var2826!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {strings/-324702281=([org.apache.poi.xssf.eventusermodel.ReadOnlySharedStringsTable], java.util.List), var665-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3590-to-var142=([java.util.List], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2111=org.apache.poi.xssf.eventusermodel.ReadOnlySharedStringsTable, var2755=r0, var2282=i0, var3590=java.util.List, var3173=$r1, var665=java.lang.IllegalStateException, var2729=$r2, var1446=$r3, var3798=$r4, var1863=$r5, var3357=$r7, var2691=$r6, var142=java.lang.Object, var1000=$r8, var2826=$r9}
; {org.apache.poi.xssf.eventusermodel.ReadOnlySharedStringsTable=var2111, r0=var2755, i0=var2282, java.util.List=var3590, $r1=var3173, java.lang.IllegalStateException=var665, $r2=var2729, $r3=var1446, $r4=var3798, $r5=var1863, $r7=var3357, $r6=var2691, java.lang.Object=var142, $r8=var1000, $r9=var2826}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.eventusermodel.ReadOnlySharedStringsTable;	i0 := @parameter0: int;	$r1 = r0.<org.apache.poi.xssf.eventusermodel.ReadOnlySharedStringsTable: java.util.List strings>;	if $r1 == null goto $r2 = new java.lang.IllegalStateException;	$r2 = new java.lang.IllegalStateException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot get item at ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with strings: ");	$r6 = r0.<org.apache.poi.xssf.eventusermodel.ReadOnlySharedStringsTable: java.util.List strings>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9);	throw $r2
;block_num 2